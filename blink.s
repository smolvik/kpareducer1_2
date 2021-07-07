
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 95 04 00 00 25 05 00 00 25 05 00 00     ... ....%...%...
	...
      2c:	b7 4a 00 00 00 00 00 00 00 00 00 00 3d 4b 00 00     .J..........=K..
      3c:	85 4b 00 00 25 05 00 00 25 05 00 00 25 05 00 00     .K..%...%...%...
      4c:	25 05 00 00 25 05 00 00 25 05 00 00 c1 10 00 00     %...%...%.......
      5c:	51 0a 00 00 25 05 00 00 25 05 00 00 25 05 00 00     Q...%...%...%...
      6c:	25 05 00 00 25 05 00 00 25 05 00 00 3d 02 00 00     %...%...%...=...
      7c:	61 02 00 00 25 05 00 00 25 05 00 00 6d 25 00 00     a...%...%...m%..
      8c:	25 05 00 00 25 05 00 00 25 05 00 00 25 05 00 00     %...%...%...%...
      9c:	25 05 00 00 25 05 00 00 00 00 00 00 00 00 00 00     %...%...........
      ac:	25 05 00 00 e1 02 00 00 25 05 00 00 25 05 00 00     %.......%...%...
      bc:	25 05 00 00                                         %...

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
     1a4:	f001 fe3e 	bl	1e24 <SystemInit>
     1a8:	f000 f9fa 	bl	5a0 <mdb485_init>
     1ac:	f000 fe14 	bl	dd8 <mdb232_init>
     1b0:	f001 fe6c 	bl	1e8c <RemoteMacInit>
     1b4:	f001 ff1a 	bl	1fec <EthernetConfig>
     1b8:	f7ff ffbe 	bl	138 <dut_reset_off>
     1bc:	4b15      	ldr	r3, [pc, #84]	; (214 <__UVISION_VERSION+0xb>)
     1be:	0018      	movs	r0, r3
     1c0:	f006 faf2 	bl	67a8 <osMutexCreate>
     1c4:	0002      	movs	r2, r0
     1c6:	4b14      	ldr	r3, [pc, #80]	; (218 <__UVISION_VERSION+0xf>)
     1c8:	601a      	str	r2, [r3, #0]
     1ca:	f005 fced 	bl	5ba8 <osKernelInitialize>
     1ce:	4b13      	ldr	r3, [pc, #76]	; (21c <__UVISION_VERSION+0x13>)
     1d0:	2100      	movs	r1, #0
     1d2:	0018      	movs	r0, r3
     1d4:	f006 fdca 	bl	6d6c <osMessageCreate>
     1d8:	0002      	movs	r2, r0
     1da:	4b11      	ldr	r3, [pc, #68]	; (220 <__GCC_VERSION+0x3>)
     1dc:	601a      	str	r2, [r3, #0]
     1de:	4b11      	ldr	r3, [pc, #68]	; (224 <__GCC_VERSION+0x7>)
     1e0:	2100      	movs	r1, #0
     1e2:	0018      	movs	r0, r3
     1e4:	f005 fe72 	bl	5ecc <osThreadCreate>
     1e8:	0002      	movs	r2, r0
     1ea:	4b0f      	ldr	r3, [pc, #60]	; (228 <__GCC_VERSION+0xb>)
     1ec:	601a      	str	r2, [r3, #0]
     1ee:	4b0f      	ldr	r3, [pc, #60]	; (22c <__GCC_VERSION+0xf>)
     1f0:	2100      	movs	r1, #0
     1f2:	0018      	movs	r0, r3
     1f4:	f005 fe6a 	bl	5ecc <osThreadCreate>
     1f8:	0002      	movs	r2, r0
     1fa:	4b0d      	ldr	r3, [pc, #52]	; (230 <__GCC_VERSION+0x13>)
     1fc:	601a      	str	r2, [r3, #0]
     1fe:	4b0d      	ldr	r3, [pc, #52]	; (234 <__GCC_VERSION+0x17>)
     200:	2100      	movs	r1, #0
     202:	0018      	movs	r0, r3
     204:	f005 fe62 	bl	5ecc <osThreadCreate>
     208:	0002      	movs	r2, r0
     20a:	4b0b      	ldr	r3, [pc, #44]	; (238 <__GCC_VERSION+0x1b>)
     20c:	601a      	str	r2, [r3, #0]
     20e:	f005 fd67 	bl	5ce0 <osKernelStart>
     212:	e7fe      	b.n	212 <__UVISION_VERSION+0x9>
     214:	00008938 	.word	0x00008938
     218:	20000888 	.word	0x20000888
     21c:	00008930 	.word	0x00008930
     220:	20000864 	.word	0x20000864
     224:	00008900 	.word	0x00008900
     228:	20000858 	.word	0x20000858
     22c:	00008910 	.word	0x00008910
     230:	2000085c 	.word	0x2000085c
     234:	00008920 	.word	0x00008920
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
     24e:	f006 f9ef 	bl	6630 <osSignalSet>
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
     35c:	f006 f996 	bl	668c <osSignalWait>
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
     37a:	d163      	bne.n	444 <_stack_size+0x44>
     37c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     37e:	2b01      	cmp	r3, #1
     380:	d91f      	bls.n	3c2 <threadDUTProceed+0xbe>
     382:	4b31      	ldr	r3, [pc, #196]	; (448 <_stack_size+0x48>)
     384:	681b      	ldr	r3, [r3, #0]
     386:	021a      	lsls	r2, r3, #8
     388:	2318      	movs	r3, #24
     38a:	18fb      	adds	r3, r7, r3
     38c:	609a      	str	r2, [r3, #8]
     38e:	4b2f      	ldr	r3, [pc, #188]	; (44c <_stack_size+0x4c>)
     390:	681a      	ldr	r2, [r3, #0]
     392:	2318      	movs	r3, #24
     394:	18fb      	adds	r3, r7, r3
     396:	605a      	str	r2, [r3, #4]
     398:	f003 fe8a 	bl	40b0 <fsm_get_cyccnt>
     39c:	0002      	movs	r2, r0
     39e:	2318      	movs	r3, #24
     3a0:	18fb      	adds	r3, r7, r3
     3a2:	619a      	str	r2, [r3, #24]
     3a4:	f003 fe7a 	bl	409c <fsm_get_mode>
     3a8:	0003      	movs	r3, r0
     3aa:	001a      	movs	r2, r3
     3ac:	2318      	movs	r3, #24
     3ae:	18fb      	adds	r3, r7, r3
     3b0:	61da      	str	r2, [r3, #28]
     3b2:	2318      	movs	r3, #24
     3b4:	18fb      	adds	r3, r7, r3
     3b6:	2120      	movs	r1, #32
     3b8:	0018      	movs	r0, r3
     3ba:	f003 f8b7 	bl	352c <mdb_fifo_write>
     3be:	2300      	movs	r3, #0
     3c0:	647b      	str	r3, [r7, #68]	; 0x44
     3c2:	2301      	movs	r3, #1
     3c4:	647b      	str	r3, [r7, #68]	; 0x44
     3c6:	2204      	movs	r2, #4
     3c8:	2100      	movs	r1, #0
     3ca:	2001      	movs	r0, #1
     3cc:	f000 fd5e 	bl	e8c <mdb232_read_inputregs>
     3d0:	2202      	movs	r2, #2
     3d2:	2102      	movs	r1, #2
     3d4:	2010      	movs	r0, #16
     3d6:	f000 fa6b 	bl	8b0 <mdb485_read_inputregs>
     3da:	e033      	b.n	444 <_stack_size+0x44>
     3dc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3de:	2202      	movs	r2, #2
     3e0:	4313      	orrs	r3, r2
     3e2:	647b      	str	r3, [r7, #68]	; 0x44
     3e4:	f000 fe16 	bl	1014 <mdb232_bikm_get_torque>
     3e8:	0002      	movs	r2, r0
     3ea:	2318      	movs	r3, #24
     3ec:	18fb      	adds	r3, r7, r3
     3ee:	605a      	str	r2, [r3, #4]
     3f0:	e028      	b.n	444 <_stack_size+0x44>
     3f2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3f4:	2204      	movs	r2, #4
     3f6:	4313      	orrs	r3, r2
     3f8:	647b      	str	r3, [r7, #68]	; 0x44
     3fa:	f000 facf 	bl	99c <mdb485_get_crc>
     3fe:	1e03      	subs	r3, r0, #0
     400:	d11f      	bne.n	442 <_stack_size+0x42>
     402:	f000 fab7 	bl	974 <mdb485_get_func>
     406:	0003      	movs	r3, r0
     408:	643b      	str	r3, [r7, #64]	; 0x40
     40a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     40c:	2b04      	cmp	r3, #4
     40e:	d118      	bne.n	442 <_stack_size+0x42>
     410:	f000 fae2 	bl	9d8 <mdb485_si30_get_counter>
     414:	0003      	movs	r3, r0
     416:	63fb      	str	r3, [r7, #60]	; 0x3c
     418:	2318      	movs	r3, #24
     41a:	18fb      	adds	r3, r7, r3
     41c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     41e:	601a      	str	r2, [r3, #0]
     420:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     422:	0018      	movs	r0, r3
     424:	f004 fcf8 	bl	4e18 <abs>
     428:	0003      	movs	r3, r0
     42a:	021b      	lsls	r3, r3, #8
     42c:	001a      	movs	r2, r3
     42e:	2304      	movs	r3, #4
     430:	4313      	orrs	r3, r2
     432:	63bb      	str	r3, [r7, #56]	; 0x38
     434:	4b06      	ldr	r3, [pc, #24]	; (450 <_stack_size+0x50>)
     436:	681b      	ldr	r3, [r3, #0]
     438:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     43a:	2200      	movs	r2, #0
     43c:	0018      	movs	r0, r3
     43e:	f006 fcc1 	bl	6dc4 <osMessagePut>
     442:	46c0      	nop			; (mov r8, r8)
     444:	e784      	b.n	350 <threadDUTProceed+0x4c>
     446:	46c0      	nop			; (mov r8, r8)
     448:	2000089c 	.word	0x2000089c
     44c:	200008a0 	.word	0x200008a0
     450:	20000864 	.word	0x20000864

00000454 <threadFSMProceed>:
     454:	b580      	push	{r7, lr}
     456:	b086      	sub	sp, #24
     458:	af00      	add	r7, sp, #0
     45a:	6078      	str	r0, [r7, #4]
     45c:	4b0b      	ldr	r3, [pc, #44]	; (48c <threadFSMProceed+0x38>)
     45e:	6819      	ldr	r1, [r3, #0]
     460:	2308      	movs	r3, #8
     462:	18f8      	adds	r0, r7, r3
     464:	2301      	movs	r3, #1
     466:	425b      	negs	r3, r3
     468:	001a      	movs	r2, r3
     46a:	f006 fccf 	bl	6e0c <osMessageGet>
     46e:	2308      	movs	r3, #8
     470:	18fb      	adds	r3, r7, r3
     472:	681b      	ldr	r3, [r3, #0]
     474:	2b10      	cmp	r3, #16
     476:	d1f1      	bne.n	45c <threadFSMProceed+0x8>
     478:	2308      	movs	r3, #8
     47a:	18fb      	adds	r3, r7, r3
     47c:	685b      	ldr	r3, [r3, #4]
     47e:	617b      	str	r3, [r7, #20]
     480:	4b03      	ldr	r3, [pc, #12]	; (490 <threadFSMProceed+0x3c>)
     482:	681b      	ldr	r3, [r3, #0]
     484:	697a      	ldr	r2, [r7, #20]
     486:	0010      	movs	r0, r2
     488:	4798      	blx	r3
     48a:	e7e7      	b.n	45c <threadFSMProceed+0x8>
     48c:	20000864 	.word	0x20000864
     490:	20000014 	.word	0x20000014

00000494 <handler_reset>:
     494:	b580      	push	{r7, lr}
     496:	b082      	sub	sp, #8
     498:	af00      	add	r7, sp, #0
     49a:	4b1a      	ldr	r3, [pc, #104]	; (504 <handler_reset+0x70>)
     49c:	607b      	str	r3, [r7, #4]
     49e:	4b1a      	ldr	r3, [pc, #104]	; (508 <handler_reset+0x74>)
     4a0:	603b      	str	r3, [r7, #0]
     4a2:	e007      	b.n	4b4 <handler_reset+0x20>
     4a4:	683b      	ldr	r3, [r7, #0]
     4a6:	1d1a      	adds	r2, r3, #4
     4a8:	603a      	str	r2, [r7, #0]
     4aa:	687a      	ldr	r2, [r7, #4]
     4ac:	1d11      	adds	r1, r2, #4
     4ae:	6079      	str	r1, [r7, #4]
     4b0:	6812      	ldr	r2, [r2, #0]
     4b2:	601a      	str	r2, [r3, #0]
     4b4:	683a      	ldr	r2, [r7, #0]
     4b6:	4b15      	ldr	r3, [pc, #84]	; (50c <handler_reset+0x78>)
     4b8:	429a      	cmp	r2, r3
     4ba:	d3f3      	bcc.n	4a4 <handler_reset+0x10>
     4bc:	4b14      	ldr	r3, [pc, #80]	; (510 <handler_reset+0x7c>)
     4be:	607b      	str	r3, [r7, #4]
     4c0:	4b14      	ldr	r3, [pc, #80]	; (514 <handler_reset+0x80>)
     4c2:	603b      	str	r3, [r7, #0]
     4c4:	e007      	b.n	4d6 <handler_reset+0x42>
     4c6:	683b      	ldr	r3, [r7, #0]
     4c8:	1d1a      	adds	r2, r3, #4
     4ca:	603a      	str	r2, [r7, #0]
     4cc:	687a      	ldr	r2, [r7, #4]
     4ce:	1d11      	adds	r1, r2, #4
     4d0:	6079      	str	r1, [r7, #4]
     4d2:	6812      	ldr	r2, [r2, #0]
     4d4:	601a      	str	r2, [r3, #0]
     4d6:	683a      	ldr	r2, [r7, #0]
     4d8:	4b0f      	ldr	r3, [pc, #60]	; (518 <handler_reset+0x84>)
     4da:	429a      	cmp	r2, r3
     4dc:	d3f3      	bcc.n	4c6 <handler_reset+0x32>
     4de:	4b0f      	ldr	r3, [pc, #60]	; (51c <handler_reset+0x88>)
     4e0:	603b      	str	r3, [r7, #0]
     4e2:	e004      	b.n	4ee <handler_reset+0x5a>
     4e4:	683b      	ldr	r3, [r7, #0]
     4e6:	1d1a      	adds	r2, r3, #4
     4e8:	603a      	str	r2, [r7, #0]
     4ea:	2200      	movs	r2, #0
     4ec:	601a      	str	r2, [r3, #0]
     4ee:	683a      	ldr	r2, [r7, #0]
     4f0:	4b0b      	ldr	r3, [pc, #44]	; (520 <handler_reset+0x8c>)
     4f2:	429a      	cmp	r2, r3
     4f4:	d3f6      	bcc.n	4e4 <handler_reset+0x50>
     4f6:	f7ff fe53 	bl	1a0 <main>
     4fa:	46c0      	nop			; (mov r8, r8)
     4fc:	46bd      	mov	sp, r7
     4fe:	b002      	add	sp, #8
     500:	bd80      	pop	{r7, pc}
     502:	46c0      	nop			; (mov r8, r8)
     504:	00009480 	.word	0x00009480
     508:	20000000 	.word	0x20000000
     50c:	20000858 	.word	0x20000858
     510:	00009cd8 	.word	0x00009cd8
     514:	20100000 	.word	0x20100000
     518:	201002a0 	.word	0x201002a0
     51c:	20000858 	.word	0x20000858
     520:	200060fc 	.word	0x200060fc

00000524 <default_handler>:
     524:	b580      	push	{r7, lr}
     526:	af00      	add	r7, sp, #0
     528:	e7fe      	b.n	528 <default_handler+0x4>
     52a:	46c0      	nop			; (mov r8, r8)

0000052c <__NVIC_EnableIRQ>:
     52c:	b580      	push	{r7, lr}
     52e:	b082      	sub	sp, #8
     530:	af00      	add	r7, sp, #0
     532:	0002      	movs	r2, r0
     534:	1dfb      	adds	r3, r7, #7
     536:	701a      	strb	r2, [r3, #0]
     538:	1dfb      	adds	r3, r7, #7
     53a:	781b      	ldrb	r3, [r3, #0]
     53c:	2b7f      	cmp	r3, #127	; 0x7f
     53e:	d809      	bhi.n	554 <__NVIC_EnableIRQ+0x28>
     540:	4b06      	ldr	r3, [pc, #24]	; (55c <__NVIC_EnableIRQ+0x30>)
     542:	1dfa      	adds	r2, r7, #7
     544:	7812      	ldrb	r2, [r2, #0]
     546:	0011      	movs	r1, r2
     548:	221f      	movs	r2, #31
     54a:	400a      	ands	r2, r1
     54c:	2101      	movs	r1, #1
     54e:	4091      	lsls	r1, r2
     550:	000a      	movs	r2, r1
     552:	601a      	str	r2, [r3, #0]
     554:	46c0      	nop			; (mov r8, r8)
     556:	46bd      	mov	sp, r7
     558:	b002      	add	sp, #8
     55a:	bd80      	pop	{r7, pc}
     55c:	e000e100 	.word	0xe000e100

00000560 <__NVIC_DisableIRQ>:
     560:	b580      	push	{r7, lr}
     562:	b082      	sub	sp, #8
     564:	af00      	add	r7, sp, #0
     566:	0002      	movs	r2, r0
     568:	1dfb      	adds	r3, r7, #7
     56a:	701a      	strb	r2, [r3, #0]
     56c:	1dfb      	adds	r3, r7, #7
     56e:	781b      	ldrb	r3, [r3, #0]
     570:	2b7f      	cmp	r3, #127	; 0x7f
     572:	d80e      	bhi.n	592 <__NVIC_DisableIRQ+0x32>
     574:	4909      	ldr	r1, [pc, #36]	; (59c <__NVIC_DisableIRQ+0x3c>)
     576:	1dfb      	adds	r3, r7, #7
     578:	781b      	ldrb	r3, [r3, #0]
     57a:	001a      	movs	r2, r3
     57c:	231f      	movs	r3, #31
     57e:	4013      	ands	r3, r2
     580:	2201      	movs	r2, #1
     582:	409a      	lsls	r2, r3
     584:	0013      	movs	r3, r2
     586:	2280      	movs	r2, #128	; 0x80
     588:	508b      	str	r3, [r1, r2]
     58a:	f3bf 8f4f 	dsb	sy
     58e:	f3bf 8f6f 	isb	sy
     592:	46c0      	nop			; (mov r8, r8)
     594:	46bd      	mov	sp, r7
     596:	b002      	add	sp, #8
     598:	bd80      	pop	{r7, pc}
     59a:	46c0      	nop			; (mov r8, r8)
     59c:	e000e100 	.word	0xe000e100

000005a0 <mdb485_init>:
     5a0:	b580      	push	{r7, lr}
     5a2:	af00      	add	r7, sp, #0
     5a4:	4b14      	ldr	r3, [pc, #80]	; (5f8 <mdb485_init+0x58>)
     5a6:	2234      	movs	r2, #52	; 0x34
     5a8:	625a      	str	r2, [r3, #36]	; 0x24
     5aa:	4b13      	ldr	r3, [pc, #76]	; (5f8 <mdb485_init+0x58>)
     5ac:	2205      	movs	r2, #5
     5ae:	629a      	str	r2, [r3, #40]	; 0x28
     5b0:	4b11      	ldr	r3, [pc, #68]	; (5f8 <mdb485_init+0x58>)
     5b2:	4a11      	ldr	r2, [pc, #68]	; (5f8 <mdb485_init+0x58>)
     5b4:	6b52      	ldr	r2, [r2, #52]	; 0x34
     5b6:	213f      	movs	r1, #63	; 0x3f
     5b8:	438a      	bics	r2, r1
     5ba:	635a      	str	r2, [r3, #52]	; 0x34
     5bc:	4b0e      	ldr	r3, [pc, #56]	; (5f8 <mdb485_init+0x58>)
     5be:	4a0e      	ldr	r2, [pc, #56]	; (5f8 <mdb485_init+0x58>)
     5c0:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     5c2:	2110      	movs	r1, #16
     5c4:	430a      	orrs	r2, r1
     5c6:	62da      	str	r2, [r3, #44]	; 0x2c
     5c8:	4b0b      	ldr	r3, [pc, #44]	; (5f8 <mdb485_init+0x58>)
     5ca:	4a0b      	ldr	r2, [pc, #44]	; (5f8 <mdb485_init+0x58>)
     5cc:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     5ce:	2160      	movs	r1, #96	; 0x60
     5d0:	430a      	orrs	r2, r1
     5d2:	62da      	str	r2, [r3, #44]	; 0x2c
     5d4:	4b08      	ldr	r3, [pc, #32]	; (5f8 <mdb485_init+0x58>)
     5d6:	4a08      	ldr	r2, [pc, #32]	; (5f8 <mdb485_init+0x58>)
     5d8:	6b12      	ldr	r2, [r2, #48]	; 0x30
     5da:	4908      	ldr	r1, [pc, #32]	; (5fc <mdb485_init+0x5c>)
     5dc:	430a      	orrs	r2, r1
     5de:	631a      	str	r2, [r3, #48]	; 0x30
     5e0:	4b05      	ldr	r3, [pc, #20]	; (5f8 <mdb485_init+0x58>)
     5e2:	4a05      	ldr	r2, [pc, #20]	; (5f8 <mdb485_init+0x58>)
     5e4:	6b92      	ldr	r2, [r2, #56]	; 0x38
     5e6:	2140      	movs	r1, #64	; 0x40
     5e8:	430a      	orrs	r2, r1
     5ea:	639a      	str	r2, [r3, #56]	; 0x38
     5ec:	2007      	movs	r0, #7
     5ee:	f7ff ff9d 	bl	52c <__NVIC_EnableIRQ>
     5f2:	46c0      	nop			; (mov r8, r8)
     5f4:	46bd      	mov	sp, r7
     5f6:	bd80      	pop	{r7, pc}
     5f8:	40038000 	.word	0x40038000
     5fc:	00000301 	.word	0x00000301

00000600 <mdb485_send>:
     600:	b580      	push	{r7, lr}
     602:	b084      	sub	sp, #16
     604:	af00      	add	r7, sp, #0
     606:	6078      	str	r0, [r7, #4]
     608:	6039      	str	r1, [r7, #0]
     60a:	4b17      	ldr	r3, [pc, #92]	; (668 <mdb485_send+0x68>)
     60c:	4a16      	ldr	r2, [pc, #88]	; (668 <mdb485_send+0x68>)
     60e:	6812      	ldr	r2, [r2, #0]
     610:	2180      	movs	r1, #128	; 0x80
     612:	0209      	lsls	r1, r1, #8
     614:	430a      	orrs	r2, r1
     616:	601a      	str	r2, [r3, #0]
     618:	2300      	movs	r3, #0
     61a:	60fb      	str	r3, [r7, #12]
     61c:	e00e      	b.n	63c <mdb485_send+0x3c>
     61e:	46c0      	nop			; (mov r8, r8)
     620:	4b12      	ldr	r3, [pc, #72]	; (66c <mdb485_send+0x6c>)
     622:	699b      	ldr	r3, [r3, #24]
     624:	2220      	movs	r2, #32
     626:	4013      	ands	r3, r2
     628:	d1fa      	bne.n	620 <mdb485_send+0x20>
     62a:	4a10      	ldr	r2, [pc, #64]	; (66c <mdb485_send+0x6c>)
     62c:	687b      	ldr	r3, [r7, #4]
     62e:	1c59      	adds	r1, r3, #1
     630:	6079      	str	r1, [r7, #4]
     632:	781b      	ldrb	r3, [r3, #0]
     634:	6013      	str	r3, [r2, #0]
     636:	68fb      	ldr	r3, [r7, #12]
     638:	3301      	adds	r3, #1
     63a:	60fb      	str	r3, [r7, #12]
     63c:	68fa      	ldr	r2, [r7, #12]
     63e:	683b      	ldr	r3, [r7, #0]
     640:	429a      	cmp	r2, r3
     642:	dbec      	blt.n	61e <mdb485_send+0x1e>
     644:	46c0      	nop			; (mov r8, r8)
     646:	4b09      	ldr	r3, [pc, #36]	; (66c <mdb485_send+0x6c>)
     648:	699b      	ldr	r3, [r3, #24]
     64a:	2208      	movs	r2, #8
     64c:	4013      	ands	r3, r2
     64e:	d1fa      	bne.n	646 <mdb485_send+0x46>
     650:	4b05      	ldr	r3, [pc, #20]	; (668 <mdb485_send+0x68>)
     652:	4a05      	ldr	r2, [pc, #20]	; (668 <mdb485_send+0x68>)
     654:	6812      	ldr	r2, [r2, #0]
     656:	4906      	ldr	r1, [pc, #24]	; (670 <mdb485_send+0x70>)
     658:	400a      	ands	r2, r1
     65a:	601a      	str	r2, [r3, #0]
     65c:	683b      	ldr	r3, [r7, #0]
     65e:	0018      	movs	r0, r3
     660:	46bd      	mov	sp, r7
     662:	b004      	add	sp, #16
     664:	bd80      	pop	{r7, pc}
     666:	46c0      	nop			; (mov r8, r8)
     668:	400c0000 	.word	0x400c0000
     66c:	40038000 	.word	0x40038000
     670:	ffff7fff 	.word	0xffff7fff

00000674 <mdb485_putch>:
     674:	b580      	push	{r7, lr}
     676:	b082      	sub	sp, #8
     678:	af00      	add	r7, sp, #0
     67a:	0002      	movs	r2, r0
     67c:	1dfb      	adds	r3, r7, #7
     67e:	701a      	strb	r2, [r3, #0]
     680:	46c0      	nop			; (mov r8, r8)
     682:	4b06      	ldr	r3, [pc, #24]	; (69c <mdb485_putch+0x28>)
     684:	699b      	ldr	r3, [r3, #24]
     686:	2220      	movs	r2, #32
     688:	4013      	ands	r3, r2
     68a:	d1fa      	bne.n	682 <mdb485_putch+0xe>
     68c:	4b03      	ldr	r3, [pc, #12]	; (69c <mdb485_putch+0x28>)
     68e:	1dfa      	adds	r2, r7, #7
     690:	7812      	ldrb	r2, [r2, #0]
     692:	601a      	str	r2, [r3, #0]
     694:	46c0      	nop			; (mov r8, r8)
     696:	46bd      	mov	sp, r7
     698:	b002      	add	sp, #8
     69a:	bd80      	pop	{r7, pc}
     69c:	40038000 	.word	0x40038000

000006a0 <mdb485_writeregs>:
     6a0:	b590      	push	{r4, r7, lr}
     6a2:	b089      	sub	sp, #36	; 0x24
     6a4:	af00      	add	r7, sp, #0
     6a6:	0004      	movs	r4, r0
     6a8:	0008      	movs	r0, r1
     6aa:	0011      	movs	r1, r2
     6ac:	607b      	str	r3, [r7, #4]
     6ae:	230f      	movs	r3, #15
     6b0:	18fb      	adds	r3, r7, r3
     6b2:	1c22      	adds	r2, r4, #0
     6b4:	701a      	strb	r2, [r3, #0]
     6b6:	230c      	movs	r3, #12
     6b8:	18fb      	adds	r3, r7, r3
     6ba:	1c02      	adds	r2, r0, #0
     6bc:	801a      	strh	r2, [r3, #0]
     6be:	230a      	movs	r3, #10
     6c0:	18fb      	adds	r3, r7, r3
     6c2:	1c0a      	adds	r2, r1, #0
     6c4:	801a      	strh	r2, [r3, #0]
     6c6:	4b48      	ldr	r3, [pc, #288]	; (7e8 <mdb485_writeregs+0x148>)
     6c8:	61bb      	str	r3, [r7, #24]
     6ca:	230a      	movs	r3, #10
     6cc:	18fb      	adds	r3, r7, r3
     6ce:	881b      	ldrh	r3, [r3, #0]
     6d0:	005b      	lsls	r3, r3, #1
     6d2:	617b      	str	r3, [r7, #20]
     6d4:	69bb      	ldr	r3, [r7, #24]
     6d6:	1c5a      	adds	r2, r3, #1
     6d8:	61ba      	str	r2, [r7, #24]
     6da:	220f      	movs	r2, #15
     6dc:	18ba      	adds	r2, r7, r2
     6de:	7812      	ldrb	r2, [r2, #0]
     6e0:	701a      	strb	r2, [r3, #0]
     6e2:	69bb      	ldr	r3, [r7, #24]
     6e4:	1c5a      	adds	r2, r3, #1
     6e6:	61ba      	str	r2, [r7, #24]
     6e8:	2210      	movs	r2, #16
     6ea:	701a      	strb	r2, [r3, #0]
     6ec:	69bb      	ldr	r3, [r7, #24]
     6ee:	1c5a      	adds	r2, r3, #1
     6f0:	61ba      	str	r2, [r7, #24]
     6f2:	220c      	movs	r2, #12
     6f4:	18ba      	adds	r2, r7, r2
     6f6:	8812      	ldrh	r2, [r2, #0]
     6f8:	0a12      	lsrs	r2, r2, #8
     6fa:	b292      	uxth	r2, r2
     6fc:	b2d2      	uxtb	r2, r2
     6fe:	701a      	strb	r2, [r3, #0]
     700:	69bb      	ldr	r3, [r7, #24]
     702:	1c5a      	adds	r2, r3, #1
     704:	61ba      	str	r2, [r7, #24]
     706:	220c      	movs	r2, #12
     708:	18ba      	adds	r2, r7, r2
     70a:	8812      	ldrh	r2, [r2, #0]
     70c:	b2d2      	uxtb	r2, r2
     70e:	701a      	strb	r2, [r3, #0]
     710:	69bb      	ldr	r3, [r7, #24]
     712:	1c5a      	adds	r2, r3, #1
     714:	61ba      	str	r2, [r7, #24]
     716:	220a      	movs	r2, #10
     718:	18ba      	adds	r2, r7, r2
     71a:	8812      	ldrh	r2, [r2, #0]
     71c:	0a12      	lsrs	r2, r2, #8
     71e:	b292      	uxth	r2, r2
     720:	b2d2      	uxtb	r2, r2
     722:	701a      	strb	r2, [r3, #0]
     724:	69bb      	ldr	r3, [r7, #24]
     726:	1c5a      	adds	r2, r3, #1
     728:	61ba      	str	r2, [r7, #24]
     72a:	220a      	movs	r2, #10
     72c:	18ba      	adds	r2, r7, r2
     72e:	8812      	ldrh	r2, [r2, #0]
     730:	b2d2      	uxtb	r2, r2
     732:	701a      	strb	r2, [r3, #0]
     734:	69bb      	ldr	r3, [r7, #24]
     736:	1c5a      	adds	r2, r3, #1
     738:	61ba      	str	r2, [r7, #24]
     73a:	697a      	ldr	r2, [r7, #20]
     73c:	b2d2      	uxtb	r2, r2
     73e:	701a      	strb	r2, [r3, #0]
     740:	697b      	ldr	r3, [r7, #20]
     742:	3307      	adds	r3, #7
     744:	2b10      	cmp	r3, #16
     746:	dc4a      	bgt.n	7de <mdb485_writeregs+0x13e>
     748:	2300      	movs	r3, #0
     74a:	61fb      	str	r3, [r7, #28]
     74c:	e01b      	b.n	786 <mdb485_writeregs+0xe6>
     74e:	687b      	ldr	r3, [r7, #4]
     750:	1c9a      	adds	r2, r3, #2
     752:	607a      	str	r2, [r7, #4]
     754:	2212      	movs	r2, #18
     756:	18ba      	adds	r2, r7, r2
     758:	881b      	ldrh	r3, [r3, #0]
     75a:	8013      	strh	r3, [r2, #0]
     75c:	69bb      	ldr	r3, [r7, #24]
     75e:	1c5a      	adds	r2, r3, #1
     760:	61ba      	str	r2, [r7, #24]
     762:	2212      	movs	r2, #18
     764:	18ba      	adds	r2, r7, r2
     766:	8812      	ldrh	r2, [r2, #0]
     768:	0a12      	lsrs	r2, r2, #8
     76a:	b292      	uxth	r2, r2
     76c:	b2d2      	uxtb	r2, r2
     76e:	701a      	strb	r2, [r3, #0]
     770:	69bb      	ldr	r3, [r7, #24]
     772:	1c5a      	adds	r2, r3, #1
     774:	61ba      	str	r2, [r7, #24]
     776:	2212      	movs	r2, #18
     778:	18ba      	adds	r2, r7, r2
     77a:	8812      	ldrh	r2, [r2, #0]
     77c:	b2d2      	uxtb	r2, r2
     77e:	701a      	strb	r2, [r3, #0]
     780:	69fb      	ldr	r3, [r7, #28]
     782:	3301      	adds	r3, #1
     784:	61fb      	str	r3, [r7, #28]
     786:	230a      	movs	r3, #10
     788:	18fb      	adds	r3, r7, r3
     78a:	881a      	ldrh	r2, [r3, #0]
     78c:	69fb      	ldr	r3, [r7, #28]
     78e:	429a      	cmp	r2, r3
     790:	dcdd      	bgt.n	74e <mdb485_writeregs+0xae>
     792:	697b      	ldr	r3, [r7, #20]
     794:	1dda      	adds	r2, r3, #7
     796:	2310      	movs	r3, #16
     798:	18fc      	adds	r4, r7, r3
     79a:	4b13      	ldr	r3, [pc, #76]	; (7e8 <mdb485_writeregs+0x148>)
     79c:	0011      	movs	r1, r2
     79e:	0018      	movs	r0, r3
     7a0:	f002 fca4 	bl	30ec <crc16>
     7a4:	0003      	movs	r3, r0
     7a6:	8023      	strh	r3, [r4, #0]
     7a8:	69bb      	ldr	r3, [r7, #24]
     7aa:	1c5a      	adds	r2, r3, #1
     7ac:	61ba      	str	r2, [r7, #24]
     7ae:	2210      	movs	r2, #16
     7b0:	18ba      	adds	r2, r7, r2
     7b2:	8812      	ldrh	r2, [r2, #0]
     7b4:	b2d2      	uxtb	r2, r2
     7b6:	701a      	strb	r2, [r3, #0]
     7b8:	69bb      	ldr	r3, [r7, #24]
     7ba:	1c5a      	adds	r2, r3, #1
     7bc:	61ba      	str	r2, [r7, #24]
     7be:	2210      	movs	r2, #16
     7c0:	18ba      	adds	r2, r7, r2
     7c2:	8812      	ldrh	r2, [r2, #0]
     7c4:	0a12      	lsrs	r2, r2, #8
     7c6:	b292      	uxth	r2, r2
     7c8:	b2d2      	uxtb	r2, r2
     7ca:	701a      	strb	r2, [r3, #0]
     7cc:	697b      	ldr	r3, [r7, #20]
     7ce:	3309      	adds	r3, #9
     7d0:	001a      	movs	r2, r3
     7d2:	4b05      	ldr	r3, [pc, #20]	; (7e8 <mdb485_writeregs+0x148>)
     7d4:	0011      	movs	r1, r2
     7d6:	0018      	movs	r0, r3
     7d8:	f7ff ff12 	bl	600 <mdb485_send>
     7dc:	e000      	b.n	7e0 <mdb485_writeregs+0x140>
     7de:	46c0      	nop			; (mov r8, r8)
     7e0:	46bd      	mov	sp, r7
     7e2:	b009      	add	sp, #36	; 0x24
     7e4:	bd90      	pop	{r4, r7, pc}
     7e6:	46c0      	nop			; (mov r8, r8)
     7e8:	200008bc 	.word	0x200008bc

000007ec <mdb485_readregs>:
     7ec:	b590      	push	{r4, r7, lr}
     7ee:	b085      	sub	sp, #20
     7f0:	af00      	add	r7, sp, #0
     7f2:	0004      	movs	r4, r0
     7f4:	0008      	movs	r0, r1
     7f6:	0011      	movs	r1, r2
     7f8:	1dfb      	adds	r3, r7, #7
     7fa:	1c22      	adds	r2, r4, #0
     7fc:	701a      	strb	r2, [r3, #0]
     7fe:	1d3b      	adds	r3, r7, #4
     800:	1c02      	adds	r2, r0, #0
     802:	801a      	strh	r2, [r3, #0]
     804:	1cbb      	adds	r3, r7, #2
     806:	1c0a      	adds	r2, r1, #0
     808:	801a      	strh	r2, [r3, #0]
     80a:	4b28      	ldr	r3, [pc, #160]	; (8ac <mdb485_readregs+0xc0>)
     80c:	60fb      	str	r3, [r7, #12]
     80e:	68fb      	ldr	r3, [r7, #12]
     810:	1c5a      	adds	r2, r3, #1
     812:	60fa      	str	r2, [r7, #12]
     814:	1dfa      	adds	r2, r7, #7
     816:	7812      	ldrb	r2, [r2, #0]
     818:	701a      	strb	r2, [r3, #0]
     81a:	68fb      	ldr	r3, [r7, #12]
     81c:	1c5a      	adds	r2, r3, #1
     81e:	60fa      	str	r2, [r7, #12]
     820:	2203      	movs	r2, #3
     822:	701a      	strb	r2, [r3, #0]
     824:	68fb      	ldr	r3, [r7, #12]
     826:	1c5a      	adds	r2, r3, #1
     828:	60fa      	str	r2, [r7, #12]
     82a:	1d3a      	adds	r2, r7, #4
     82c:	8812      	ldrh	r2, [r2, #0]
     82e:	0a12      	lsrs	r2, r2, #8
     830:	b292      	uxth	r2, r2
     832:	b2d2      	uxtb	r2, r2
     834:	701a      	strb	r2, [r3, #0]
     836:	68fb      	ldr	r3, [r7, #12]
     838:	1c5a      	adds	r2, r3, #1
     83a:	60fa      	str	r2, [r7, #12]
     83c:	1d3a      	adds	r2, r7, #4
     83e:	8812      	ldrh	r2, [r2, #0]
     840:	b2d2      	uxtb	r2, r2
     842:	701a      	strb	r2, [r3, #0]
     844:	68fb      	ldr	r3, [r7, #12]
     846:	1c5a      	adds	r2, r3, #1
     848:	60fa      	str	r2, [r7, #12]
     84a:	1cba      	adds	r2, r7, #2
     84c:	8812      	ldrh	r2, [r2, #0]
     84e:	0a12      	lsrs	r2, r2, #8
     850:	b292      	uxth	r2, r2
     852:	b2d2      	uxtb	r2, r2
     854:	701a      	strb	r2, [r3, #0]
     856:	68fb      	ldr	r3, [r7, #12]
     858:	1c5a      	adds	r2, r3, #1
     85a:	60fa      	str	r2, [r7, #12]
     85c:	1cba      	adds	r2, r7, #2
     85e:	8812      	ldrh	r2, [r2, #0]
     860:	b2d2      	uxtb	r2, r2
     862:	701a      	strb	r2, [r3, #0]
     864:	230a      	movs	r3, #10
     866:	18fc      	adds	r4, r7, r3
     868:	4b10      	ldr	r3, [pc, #64]	; (8ac <mdb485_readregs+0xc0>)
     86a:	2106      	movs	r1, #6
     86c:	0018      	movs	r0, r3
     86e:	f002 fc3d 	bl	30ec <crc16>
     872:	0003      	movs	r3, r0
     874:	8023      	strh	r3, [r4, #0]
     876:	68fb      	ldr	r3, [r7, #12]
     878:	1c5a      	adds	r2, r3, #1
     87a:	60fa      	str	r2, [r7, #12]
     87c:	220a      	movs	r2, #10
     87e:	18ba      	adds	r2, r7, r2
     880:	8812      	ldrh	r2, [r2, #0]
     882:	b2d2      	uxtb	r2, r2
     884:	701a      	strb	r2, [r3, #0]
     886:	68fb      	ldr	r3, [r7, #12]
     888:	1c5a      	adds	r2, r3, #1
     88a:	60fa      	str	r2, [r7, #12]
     88c:	220a      	movs	r2, #10
     88e:	18ba      	adds	r2, r7, r2
     890:	8812      	ldrh	r2, [r2, #0]
     892:	0a12      	lsrs	r2, r2, #8
     894:	b292      	uxth	r2, r2
     896:	b2d2      	uxtb	r2, r2
     898:	701a      	strb	r2, [r3, #0]
     89a:	4b04      	ldr	r3, [pc, #16]	; (8ac <mdb485_readregs+0xc0>)
     89c:	2108      	movs	r1, #8
     89e:	0018      	movs	r0, r3
     8a0:	f7ff feae 	bl	600 <mdb485_send>
     8a4:	46c0      	nop			; (mov r8, r8)
     8a6:	46bd      	mov	sp, r7
     8a8:	b005      	add	sp, #20
     8aa:	bd90      	pop	{r4, r7, pc}
     8ac:	200008bc 	.word	0x200008bc

000008b0 <mdb485_read_inputregs>:
     8b0:	b590      	push	{r4, r7, lr}
     8b2:	b085      	sub	sp, #20
     8b4:	af00      	add	r7, sp, #0
     8b6:	0004      	movs	r4, r0
     8b8:	0008      	movs	r0, r1
     8ba:	0011      	movs	r1, r2
     8bc:	1dfb      	adds	r3, r7, #7
     8be:	1c22      	adds	r2, r4, #0
     8c0:	701a      	strb	r2, [r3, #0]
     8c2:	1d3b      	adds	r3, r7, #4
     8c4:	1c02      	adds	r2, r0, #0
     8c6:	801a      	strh	r2, [r3, #0]
     8c8:	1cbb      	adds	r3, r7, #2
     8ca:	1c0a      	adds	r2, r1, #0
     8cc:	801a      	strh	r2, [r3, #0]
     8ce:	4b28      	ldr	r3, [pc, #160]	; (970 <mdb485_read_inputregs+0xc0>)
     8d0:	60fb      	str	r3, [r7, #12]
     8d2:	68fb      	ldr	r3, [r7, #12]
     8d4:	1c5a      	adds	r2, r3, #1
     8d6:	60fa      	str	r2, [r7, #12]
     8d8:	1dfa      	adds	r2, r7, #7
     8da:	7812      	ldrb	r2, [r2, #0]
     8dc:	701a      	strb	r2, [r3, #0]
     8de:	68fb      	ldr	r3, [r7, #12]
     8e0:	1c5a      	adds	r2, r3, #1
     8e2:	60fa      	str	r2, [r7, #12]
     8e4:	2204      	movs	r2, #4
     8e6:	701a      	strb	r2, [r3, #0]
     8e8:	68fb      	ldr	r3, [r7, #12]
     8ea:	1c5a      	adds	r2, r3, #1
     8ec:	60fa      	str	r2, [r7, #12]
     8ee:	1d3a      	adds	r2, r7, #4
     8f0:	8812      	ldrh	r2, [r2, #0]
     8f2:	0a12      	lsrs	r2, r2, #8
     8f4:	b292      	uxth	r2, r2
     8f6:	b2d2      	uxtb	r2, r2
     8f8:	701a      	strb	r2, [r3, #0]
     8fa:	68fb      	ldr	r3, [r7, #12]
     8fc:	1c5a      	adds	r2, r3, #1
     8fe:	60fa      	str	r2, [r7, #12]
     900:	1d3a      	adds	r2, r7, #4
     902:	8812      	ldrh	r2, [r2, #0]
     904:	b2d2      	uxtb	r2, r2
     906:	701a      	strb	r2, [r3, #0]
     908:	68fb      	ldr	r3, [r7, #12]
     90a:	1c5a      	adds	r2, r3, #1
     90c:	60fa      	str	r2, [r7, #12]
     90e:	1cba      	adds	r2, r7, #2
     910:	8812      	ldrh	r2, [r2, #0]
     912:	0a12      	lsrs	r2, r2, #8
     914:	b292      	uxth	r2, r2
     916:	b2d2      	uxtb	r2, r2
     918:	701a      	strb	r2, [r3, #0]
     91a:	68fb      	ldr	r3, [r7, #12]
     91c:	1c5a      	adds	r2, r3, #1
     91e:	60fa      	str	r2, [r7, #12]
     920:	1cba      	adds	r2, r7, #2
     922:	8812      	ldrh	r2, [r2, #0]
     924:	b2d2      	uxtb	r2, r2
     926:	701a      	strb	r2, [r3, #0]
     928:	230a      	movs	r3, #10
     92a:	18fc      	adds	r4, r7, r3
     92c:	4b10      	ldr	r3, [pc, #64]	; (970 <mdb485_read_inputregs+0xc0>)
     92e:	2106      	movs	r1, #6
     930:	0018      	movs	r0, r3
     932:	f002 fbdb 	bl	30ec <crc16>
     936:	0003      	movs	r3, r0
     938:	8023      	strh	r3, [r4, #0]
     93a:	68fb      	ldr	r3, [r7, #12]
     93c:	1c5a      	adds	r2, r3, #1
     93e:	60fa      	str	r2, [r7, #12]
     940:	220a      	movs	r2, #10
     942:	18ba      	adds	r2, r7, r2
     944:	8812      	ldrh	r2, [r2, #0]
     946:	b2d2      	uxtb	r2, r2
     948:	701a      	strb	r2, [r3, #0]
     94a:	68fb      	ldr	r3, [r7, #12]
     94c:	1c5a      	adds	r2, r3, #1
     94e:	60fa      	str	r2, [r7, #12]
     950:	220a      	movs	r2, #10
     952:	18ba      	adds	r2, r7, r2
     954:	8812      	ldrh	r2, [r2, #0]
     956:	0a12      	lsrs	r2, r2, #8
     958:	b292      	uxth	r2, r2
     95a:	b2d2      	uxtb	r2, r2
     95c:	701a      	strb	r2, [r3, #0]
     95e:	4b04      	ldr	r3, [pc, #16]	; (970 <mdb485_read_inputregs+0xc0>)
     960:	2108      	movs	r1, #8
     962:	0018      	movs	r0, r3
     964:	f7ff fe4c 	bl	600 <mdb485_send>
     968:	46c0      	nop			; (mov r8, r8)
     96a:	46bd      	mov	sp, r7
     96c:	b005      	add	sp, #20
     96e:	bd90      	pop	{r4, r7, pc}
     970:	200008bc 	.word	0x200008bc

00000974 <mdb485_get_func>:
     974:	b580      	push	{r7, lr}
     976:	b082      	sub	sp, #8
     978:	af00      	add	r7, sp, #0
     97a:	2007      	movs	r0, #7
     97c:	f7ff fdf0 	bl	560 <__NVIC_DisableIRQ>
     980:	4b05      	ldr	r3, [pc, #20]	; (998 <mdb485_get_func+0x24>)
     982:	785b      	ldrb	r3, [r3, #1]
     984:	607b      	str	r3, [r7, #4]
     986:	2007      	movs	r0, #7
     988:	f7ff fdd0 	bl	52c <__NVIC_EnableIRQ>
     98c:	687b      	ldr	r3, [r7, #4]
     98e:	0018      	movs	r0, r3
     990:	46bd      	mov	sp, r7
     992:	b002      	add	sp, #8
     994:	bd80      	pop	{r7, pc}
     996:	46c0      	nop			; (mov r8, r8)
     998:	200008ac 	.word	0x200008ac

0000099c <mdb485_get_crc>:
     99c:	b590      	push	{r4, r7, lr}
     99e:	b083      	sub	sp, #12
     9a0:	af00      	add	r7, sp, #0
     9a2:	2007      	movs	r0, #7
     9a4:	f7ff fddc 	bl	560 <__NVIC_DisableIRQ>
     9a8:	4b09      	ldr	r3, [pc, #36]	; (9d0 <mdb485_get_crc+0x34>)
     9aa:	681a      	ldr	r2, [r3, #0]
     9ac:	1dbc      	adds	r4, r7, #6
     9ae:	4b09      	ldr	r3, [pc, #36]	; (9d4 <mdb485_get_crc+0x38>)
     9b0:	0011      	movs	r1, r2
     9b2:	0018      	movs	r0, r3
     9b4:	f002 fb9a 	bl	30ec <crc16>
     9b8:	0003      	movs	r3, r0
     9ba:	8023      	strh	r3, [r4, #0]
     9bc:	2007      	movs	r0, #7
     9be:	f7ff fdb5 	bl	52c <__NVIC_EnableIRQ>
     9c2:	1dbb      	adds	r3, r7, #6
     9c4:	881b      	ldrh	r3, [r3, #0]
     9c6:	0018      	movs	r0, r3
     9c8:	46bd      	mov	sp, r7
     9ca:	b003      	add	sp, #12
     9cc:	bd90      	pop	{r4, r7, pc}
     9ce:	46c0      	nop			; (mov r8, r8)
     9d0:	200008cc 	.word	0x200008cc
     9d4:	200008ac 	.word	0x200008ac

000009d8 <mdb485_si30_get_counter>:
     9d8:	b580      	push	{r7, lr}
     9da:	b082      	sub	sp, #8
     9dc:	af00      	add	r7, sp, #0
     9de:	4b1a      	ldr	r3, [pc, #104]	; (a48 <mdb485_si30_get_counter+0x70>)
     9e0:	607b      	str	r3, [r7, #4]
     9e2:	2007      	movs	r0, #7
     9e4:	f7ff fdbc 	bl	560 <__NVIC_DisableIRQ>
     9e8:	4b18      	ldr	r3, [pc, #96]	; (a4c <mdb485_si30_get_counter+0x74>)
     9ea:	681b      	ldr	r3, [r3, #0]
     9ec:	2b00      	cmp	r3, #0
     9ee:	d022      	beq.n	a36 <mdb485_si30_get_counter+0x5e>
     9f0:	687b      	ldr	r3, [r7, #4]
     9f2:	1c5a      	adds	r2, r3, #1
     9f4:	607a      	str	r2, [r7, #4]
     9f6:	781b      	ldrb	r3, [r3, #0]
     9f8:	061b      	lsls	r3, r3, #24
     9fa:	603b      	str	r3, [r7, #0]
     9fc:	687b      	ldr	r3, [r7, #4]
     9fe:	1c5a      	adds	r2, r3, #1
     a00:	607a      	str	r2, [r7, #4]
     a02:	781b      	ldrb	r3, [r3, #0]
     a04:	041b      	lsls	r3, r3, #16
     a06:	001a      	movs	r2, r3
     a08:	683b      	ldr	r3, [r7, #0]
     a0a:	4313      	orrs	r3, r2
     a0c:	603b      	str	r3, [r7, #0]
     a0e:	687b      	ldr	r3, [r7, #4]
     a10:	1c5a      	adds	r2, r3, #1
     a12:	607a      	str	r2, [r7, #4]
     a14:	781b      	ldrb	r3, [r3, #0]
     a16:	021b      	lsls	r3, r3, #8
     a18:	001a      	movs	r2, r3
     a1a:	683b      	ldr	r3, [r7, #0]
     a1c:	4313      	orrs	r3, r2
     a1e:	603b      	str	r3, [r7, #0]
     a20:	687b      	ldr	r3, [r7, #4]
     a22:	781b      	ldrb	r3, [r3, #0]
     a24:	001a      	movs	r2, r3
     a26:	683b      	ldr	r3, [r7, #0]
     a28:	4313      	orrs	r3, r2
     a2a:	603b      	str	r3, [r7, #0]
     a2c:	2007      	movs	r0, #7
     a2e:	f7ff fd7d 	bl	52c <__NVIC_EnableIRQ>
     a32:	683b      	ldr	r3, [r7, #0]
     a34:	e003      	b.n	a3e <mdb485_si30_get_counter+0x66>
     a36:	2007      	movs	r0, #7
     a38:	f7ff fd78 	bl	52c <__NVIC_EnableIRQ>
     a3c:	2300      	movs	r3, #0
     a3e:	0018      	movs	r0, r3
     a40:	46bd      	mov	sp, r7
     a42:	b002      	add	sp, #8
     a44:	bd80      	pop	{r7, pc}
     a46:	46c0      	nop			; (mov r8, r8)
     a48:	200008af 	.word	0x200008af
     a4c:	200008cc 	.word	0x200008cc

00000a50 <UART2_Handler>:
     a50:	b580      	push	{r7, lr}
     a52:	b082      	sub	sp, #8
     a54:	af00      	add	r7, sp, #0
     a56:	4b16      	ldr	r3, [pc, #88]	; (ab0 <UART2_Handler+0x60>)
     a58:	2200      	movs	r2, #0
     a5a:	601a      	str	r2, [r3, #0]
     a5c:	4b15      	ldr	r3, [pc, #84]	; (ab4 <UART2_Handler+0x64>)
     a5e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a60:	2240      	movs	r2, #64	; 0x40
     a62:	4013      	ands	r3, r2
     a64:	d016      	beq.n	a94 <UART2_Handler+0x44>
     a66:	4b14      	ldr	r3, [pc, #80]	; (ab8 <UART2_Handler+0x68>)
     a68:	603b      	str	r3, [r7, #0]
     a6a:	2300      	movs	r3, #0
     a6c:	607b      	str	r3, [r7, #4]
     a6e:	e009      	b.n	a84 <UART2_Handler+0x34>
     a70:	683b      	ldr	r3, [r7, #0]
     a72:	1c5a      	adds	r2, r3, #1
     a74:	603a      	str	r2, [r7, #0]
     a76:	4a0f      	ldr	r2, [pc, #60]	; (ab4 <UART2_Handler+0x64>)
     a78:	6812      	ldr	r2, [r2, #0]
     a7a:	b2d2      	uxtb	r2, r2
     a7c:	701a      	strb	r2, [r3, #0]
     a7e:	687b      	ldr	r3, [r7, #4]
     a80:	3301      	adds	r3, #1
     a82:	607b      	str	r3, [r7, #4]
     a84:	687b      	ldr	r3, [r7, #4]
     a86:	2b0f      	cmp	r3, #15
     a88:	dc04      	bgt.n	a94 <UART2_Handler+0x44>
     a8a:	4b0a      	ldr	r3, [pc, #40]	; (ab4 <UART2_Handler+0x64>)
     a8c:	699b      	ldr	r3, [r3, #24]
     a8e:	2210      	movs	r2, #16
     a90:	4013      	ands	r3, r2
     a92:	d0ed      	beq.n	a70 <UART2_Handler+0x20>
     a94:	4b06      	ldr	r3, [pc, #24]	; (ab0 <UART2_Handler+0x60>)
     a96:	687a      	ldr	r2, [r7, #4]
     a98:	601a      	str	r2, [r3, #0]
     a9a:	4b08      	ldr	r3, [pc, #32]	; (abc <UART2_Handler+0x6c>)
     a9c:	681b      	ldr	r3, [r3, #0]
     a9e:	2108      	movs	r1, #8
     aa0:	0018      	movs	r0, r3
     aa2:	f005 fdc5 	bl	6630 <osSignalSet>
     aa6:	46c0      	nop			; (mov r8, r8)
     aa8:	46bd      	mov	sp, r7
     aaa:	b002      	add	sp, #8
     aac:	bd80      	pop	{r7, pc}
     aae:	46c0      	nop			; (mov r8, r8)
     ab0:	200008cc 	.word	0x200008cc
     ab4:	40038000 	.word	0x40038000
     ab8:	200008ac 	.word	0x200008ac
     abc:	20000860 	.word	0x20000860

00000ac0 <_exit>:
     ac0:	b580      	push	{r7, lr}
     ac2:	b082      	sub	sp, #8
     ac4:	af00      	add	r7, sp, #0
     ac6:	6078      	str	r0, [r7, #4]
     ac8:	4b03      	ldr	r3, [pc, #12]	; (ad8 <_exit+0x18>)
     aca:	2204      	movs	r2, #4
     acc:	0019      	movs	r1, r3
     ace:	2001      	movs	r0, #1
     ad0:	f000 f90c 	bl	cec <_write>
     ad4:	e7fe      	b.n	ad4 <_exit+0x14>
     ad6:	46c0      	nop			; (mov r8, r8)
     ad8:	0000893c 	.word	0x0000893c

00000adc <_close>:
     adc:	b580      	push	{r7, lr}
     ade:	b082      	sub	sp, #8
     ae0:	af00      	add	r7, sp, #0
     ae2:	6078      	str	r0, [r7, #4]
     ae4:	2301      	movs	r3, #1
     ae6:	425b      	negs	r3, r3
     ae8:	0018      	movs	r0, r3
     aea:	46bd      	mov	sp, r7
     aec:	b002      	add	sp, #8
     aee:	bd80      	pop	{r7, pc}

00000af0 <_execve>:
     af0:	b580      	push	{r7, lr}
     af2:	b084      	sub	sp, #16
     af4:	af00      	add	r7, sp, #0
     af6:	60f8      	str	r0, [r7, #12]
     af8:	60b9      	str	r1, [r7, #8]
     afa:	607a      	str	r2, [r7, #4]
     afc:	4b04      	ldr	r3, [pc, #16]	; (b10 <_execve+0x20>)
     afe:	220c      	movs	r2, #12
     b00:	601a      	str	r2, [r3, #0]
     b02:	2301      	movs	r3, #1
     b04:	425b      	negs	r3, r3
     b06:	0018      	movs	r0, r3
     b08:	46bd      	mov	sp, r7
     b0a:	b004      	add	sp, #16
     b0c:	bd80      	pop	{r7, pc}
     b0e:	46c0      	nop			; (mov r8, r8)
     b10:	20006074 	.word	0x20006074

00000b14 <_fork>:
     b14:	b580      	push	{r7, lr}
     b16:	af00      	add	r7, sp, #0
     b18:	4b03      	ldr	r3, [pc, #12]	; (b28 <_fork+0x14>)
     b1a:	220b      	movs	r2, #11
     b1c:	601a      	str	r2, [r3, #0]
     b1e:	2301      	movs	r3, #1
     b20:	425b      	negs	r3, r3
     b22:	0018      	movs	r0, r3
     b24:	46bd      	mov	sp, r7
     b26:	bd80      	pop	{r7, pc}
     b28:	20006074 	.word	0x20006074

00000b2c <_fstat>:
     b2c:	b580      	push	{r7, lr}
     b2e:	b082      	sub	sp, #8
     b30:	af00      	add	r7, sp, #0
     b32:	6078      	str	r0, [r7, #4]
     b34:	6039      	str	r1, [r7, #0]
     b36:	683b      	ldr	r3, [r7, #0]
     b38:	2280      	movs	r2, #128	; 0x80
     b3a:	0192      	lsls	r2, r2, #6
     b3c:	605a      	str	r2, [r3, #4]
     b3e:	2300      	movs	r3, #0
     b40:	0018      	movs	r0, r3
     b42:	46bd      	mov	sp, r7
     b44:	b002      	add	sp, #8
     b46:	bd80      	pop	{r7, pc}

00000b48 <_getpid>:
     b48:	b580      	push	{r7, lr}
     b4a:	af00      	add	r7, sp, #0
     b4c:	2301      	movs	r3, #1
     b4e:	0018      	movs	r0, r3
     b50:	46bd      	mov	sp, r7
     b52:	bd80      	pop	{r7, pc}

00000b54 <_isatty>:
     b54:	b580      	push	{r7, lr}
     b56:	b082      	sub	sp, #8
     b58:	af00      	add	r7, sp, #0
     b5a:	6078      	str	r0, [r7, #4]
     b5c:	687b      	ldr	r3, [r7, #4]
     b5e:	3300      	adds	r3, #0
     b60:	2b02      	cmp	r3, #2
     b62:	d801      	bhi.n	b68 <_isatty+0x14>
     b64:	2301      	movs	r3, #1
     b66:	e003      	b.n	b70 <_isatty+0x1c>
     b68:	4b03      	ldr	r3, [pc, #12]	; (b78 <_isatty+0x24>)
     b6a:	2209      	movs	r2, #9
     b6c:	601a      	str	r2, [r3, #0]
     b6e:	2300      	movs	r3, #0
     b70:	0018      	movs	r0, r3
     b72:	46bd      	mov	sp, r7
     b74:	b002      	add	sp, #8
     b76:	bd80      	pop	{r7, pc}
     b78:	20006074 	.word	0x20006074

00000b7c <_kill>:
     b7c:	b580      	push	{r7, lr}
     b7e:	b082      	sub	sp, #8
     b80:	af00      	add	r7, sp, #0
     b82:	6078      	str	r0, [r7, #4]
     b84:	6039      	str	r1, [r7, #0]
     b86:	4b04      	ldr	r3, [pc, #16]	; (b98 <_kill+0x1c>)
     b88:	2216      	movs	r2, #22
     b8a:	601a      	str	r2, [r3, #0]
     b8c:	2301      	movs	r3, #1
     b8e:	425b      	negs	r3, r3
     b90:	0018      	movs	r0, r3
     b92:	46bd      	mov	sp, r7
     b94:	b002      	add	sp, #8
     b96:	bd80      	pop	{r7, pc}
     b98:	20006074 	.word	0x20006074

00000b9c <_link>:
     b9c:	b580      	push	{r7, lr}
     b9e:	b082      	sub	sp, #8
     ba0:	af00      	add	r7, sp, #0
     ba2:	6078      	str	r0, [r7, #4]
     ba4:	6039      	str	r1, [r7, #0]
     ba6:	4b04      	ldr	r3, [pc, #16]	; (bb8 <_link+0x1c>)
     ba8:	221f      	movs	r2, #31
     baa:	601a      	str	r2, [r3, #0]
     bac:	2301      	movs	r3, #1
     bae:	425b      	negs	r3, r3
     bb0:	0018      	movs	r0, r3
     bb2:	46bd      	mov	sp, r7
     bb4:	b002      	add	sp, #8
     bb6:	bd80      	pop	{r7, pc}
     bb8:	20006074 	.word	0x20006074

00000bbc <_lseek>:
     bbc:	b580      	push	{r7, lr}
     bbe:	b084      	sub	sp, #16
     bc0:	af00      	add	r7, sp, #0
     bc2:	60f8      	str	r0, [r7, #12]
     bc4:	60b9      	str	r1, [r7, #8]
     bc6:	607a      	str	r2, [r7, #4]
     bc8:	2300      	movs	r3, #0
     bca:	0018      	movs	r0, r3
     bcc:	46bd      	mov	sp, r7
     bce:	b004      	add	sp, #16
     bd0:	bd80      	pop	{r7, pc}
     bd2:	46c0      	nop			; (mov r8, r8)

00000bd4 <_sbrk>:
     bd4:	b580      	push	{r7, lr}
     bd6:	b086      	sub	sp, #24
     bd8:	af00      	add	r7, sp, #0
     bda:	6078      	str	r0, [r7, #4]
     bdc:	4b16      	ldr	r3, [pc, #88]	; (c38 <_sbrk+0x64>)
     bde:	681b      	ldr	r3, [r3, #0]
     be0:	2b00      	cmp	r3, #0
     be2:	d102      	bne.n	bea <_sbrk+0x16>
     be4:	4b14      	ldr	r3, [pc, #80]	; (c38 <_sbrk+0x64>)
     be6:	4a15      	ldr	r2, [pc, #84]	; (c3c <_sbrk+0x68>)
     be8:	601a      	str	r2, [r3, #0]
     bea:	4b13      	ldr	r3, [pc, #76]	; (c38 <_sbrk+0x64>)
     bec:	681b      	ldr	r3, [r3, #0]
     bee:	617b      	str	r3, [r7, #20]
     bf0:	f3ef 8308 	mrs	r3, MSP
     bf4:	60fb      	str	r3, [r7, #12]
     bf6:	68fb      	ldr	r3, [r7, #12]
     bf8:	613b      	str	r3, [r7, #16]
     bfa:	4b0f      	ldr	r3, [pc, #60]	; (c38 <_sbrk+0x64>)
     bfc:	681a      	ldr	r2, [r3, #0]
     bfe:	687b      	ldr	r3, [r7, #4]
     c00:	18d2      	adds	r2, r2, r3
     c02:	693b      	ldr	r3, [r7, #16]
     c04:	429a      	cmp	r2, r3
     c06:	d90b      	bls.n	c20 <_sbrk+0x4c>
     c08:	4b0d      	ldr	r3, [pc, #52]	; (c40 <_sbrk+0x6c>)
     c0a:	2219      	movs	r2, #25
     c0c:	0019      	movs	r1, r3
     c0e:	2002      	movs	r0, #2
     c10:	f000 f86c 	bl	cec <_write>
     c14:	4b0b      	ldr	r3, [pc, #44]	; (c44 <_sbrk+0x70>)
     c16:	220c      	movs	r2, #12
     c18:	601a      	str	r2, [r3, #0]
     c1a:	2301      	movs	r3, #1
     c1c:	425b      	negs	r3, r3
     c1e:	e006      	b.n	c2e <_sbrk+0x5a>
     c20:	4b05      	ldr	r3, [pc, #20]	; (c38 <_sbrk+0x64>)
     c22:	681a      	ldr	r2, [r3, #0]
     c24:	687b      	ldr	r3, [r7, #4]
     c26:	18d2      	adds	r2, r2, r3
     c28:	4b03      	ldr	r3, [pc, #12]	; (c38 <_sbrk+0x64>)
     c2a:	601a      	str	r2, [r3, #0]
     c2c:	697b      	ldr	r3, [r7, #20]
     c2e:	0018      	movs	r0, r3
     c30:	46bd      	mov	sp, r7
     c32:	b006      	add	sp, #24
     c34:	bd80      	pop	{r7, pc}
     c36:	46c0      	nop			; (mov r8, r8)
     c38:	200008d4 	.word	0x200008d4
     c3c:	200060fc 	.word	0x200060fc
     c40:	00008944 	.word	0x00008944
     c44:	20006074 	.word	0x20006074

00000c48 <_read>:
     c48:	b580      	push	{r7, lr}
     c4a:	b086      	sub	sp, #24
     c4c:	af00      	add	r7, sp, #0
     c4e:	60f8      	str	r0, [r7, #12]
     c50:	60b9      	str	r1, [r7, #8]
     c52:	607a      	str	r2, [r7, #4]
     c54:	2300      	movs	r3, #0
     c56:	617b      	str	r3, [r7, #20]
     c58:	68fb      	ldr	r3, [r7, #12]
     c5a:	2b00      	cmp	r3, #0
     c5c:	d005      	beq.n	c6a <_read+0x22>
     c5e:	4b06      	ldr	r3, [pc, #24]	; (c78 <_read+0x30>)
     c60:	2209      	movs	r2, #9
     c62:	601a      	str	r2, [r3, #0]
     c64:	2301      	movs	r3, #1
     c66:	425b      	negs	r3, r3
     c68:	e001      	b.n	c6e <_read+0x26>
     c6a:	46c0      	nop			; (mov r8, r8)
     c6c:	697b      	ldr	r3, [r7, #20]
     c6e:	0018      	movs	r0, r3
     c70:	46bd      	mov	sp, r7
     c72:	b006      	add	sp, #24
     c74:	bd80      	pop	{r7, pc}
     c76:	46c0      	nop			; (mov r8, r8)
     c78:	20006074 	.word	0x20006074

00000c7c <_stat>:
     c7c:	b580      	push	{r7, lr}
     c7e:	b082      	sub	sp, #8
     c80:	af00      	add	r7, sp, #0
     c82:	6078      	str	r0, [r7, #4]
     c84:	6039      	str	r1, [r7, #0]
     c86:	683b      	ldr	r3, [r7, #0]
     c88:	2280      	movs	r2, #128	; 0x80
     c8a:	0192      	lsls	r2, r2, #6
     c8c:	605a      	str	r2, [r3, #4]
     c8e:	2300      	movs	r3, #0
     c90:	0018      	movs	r0, r3
     c92:	46bd      	mov	sp, r7
     c94:	b002      	add	sp, #8
     c96:	bd80      	pop	{r7, pc}

00000c98 <_times>:
     c98:	b580      	push	{r7, lr}
     c9a:	b082      	sub	sp, #8
     c9c:	af00      	add	r7, sp, #0
     c9e:	6078      	str	r0, [r7, #4]
     ca0:	2301      	movs	r3, #1
     ca2:	425b      	negs	r3, r3
     ca4:	0018      	movs	r0, r3
     ca6:	46bd      	mov	sp, r7
     ca8:	b002      	add	sp, #8
     caa:	bd80      	pop	{r7, pc}

00000cac <_unlink>:
     cac:	b580      	push	{r7, lr}
     cae:	b082      	sub	sp, #8
     cb0:	af00      	add	r7, sp, #0
     cb2:	6078      	str	r0, [r7, #4]
     cb4:	4b04      	ldr	r3, [pc, #16]	; (cc8 <_unlink+0x1c>)
     cb6:	2202      	movs	r2, #2
     cb8:	601a      	str	r2, [r3, #0]
     cba:	2301      	movs	r3, #1
     cbc:	425b      	negs	r3, r3
     cbe:	0018      	movs	r0, r3
     cc0:	46bd      	mov	sp, r7
     cc2:	b002      	add	sp, #8
     cc4:	bd80      	pop	{r7, pc}
     cc6:	46c0      	nop			; (mov r8, r8)
     cc8:	20006074 	.word	0x20006074

00000ccc <_wait>:
     ccc:	b580      	push	{r7, lr}
     cce:	b082      	sub	sp, #8
     cd0:	af00      	add	r7, sp, #0
     cd2:	6078      	str	r0, [r7, #4]
     cd4:	4b04      	ldr	r3, [pc, #16]	; (ce8 <_wait+0x1c>)
     cd6:	220a      	movs	r2, #10
     cd8:	601a      	str	r2, [r3, #0]
     cda:	2301      	movs	r3, #1
     cdc:	425b      	negs	r3, r3
     cde:	0018      	movs	r0, r3
     ce0:	46bd      	mov	sp, r7
     ce2:	b002      	add	sp, #8
     ce4:	bd80      	pop	{r7, pc}
     ce6:	46c0      	nop			; (mov r8, r8)
     ce8:	20006074 	.word	0x20006074

00000cec <_write>:
     cec:	b580      	push	{r7, lr}
     cee:	b086      	sub	sp, #24
     cf0:	af00      	add	r7, sp, #0
     cf2:	60f8      	str	r0, [r7, #12]
     cf4:	60b9      	str	r1, [r7, #8]
     cf6:	607a      	str	r2, [r7, #4]
     cf8:	68fb      	ldr	r3, [r7, #12]
     cfa:	2b01      	cmp	r3, #1
     cfc:	d002      	beq.n	d04 <_write+0x18>
     cfe:	2b02      	cmp	r3, #2
     d00:	d00b      	beq.n	d1a <_write+0x2e>
     d02:	e015      	b.n	d30 <_write+0x44>
     d04:	2300      	movs	r3, #0
     d06:	617b      	str	r3, [r7, #20]
     d08:	e002      	b.n	d10 <_write+0x24>
     d0a:	697b      	ldr	r3, [r7, #20]
     d0c:	3301      	adds	r3, #1
     d0e:	617b      	str	r3, [r7, #20]
     d10:	697a      	ldr	r2, [r7, #20]
     d12:	687b      	ldr	r3, [r7, #4]
     d14:	429a      	cmp	r2, r3
     d16:	dbf8      	blt.n	d0a <_write+0x1e>
     d18:	e010      	b.n	d3c <_write+0x50>
     d1a:	2300      	movs	r3, #0
     d1c:	617b      	str	r3, [r7, #20]
     d1e:	e002      	b.n	d26 <_write+0x3a>
     d20:	697b      	ldr	r3, [r7, #20]
     d22:	3301      	adds	r3, #1
     d24:	617b      	str	r3, [r7, #20]
     d26:	697a      	ldr	r2, [r7, #20]
     d28:	687b      	ldr	r3, [r7, #4]
     d2a:	429a      	cmp	r2, r3
     d2c:	dbf8      	blt.n	d20 <_write+0x34>
     d2e:	e005      	b.n	d3c <_write+0x50>
     d30:	4b05      	ldr	r3, [pc, #20]	; (d48 <_write+0x5c>)
     d32:	2209      	movs	r2, #9
     d34:	601a      	str	r2, [r3, #0]
     d36:	2301      	movs	r3, #1
     d38:	425b      	negs	r3, r3
     d3a:	e000      	b.n	d3e <_write+0x52>
     d3c:	687b      	ldr	r3, [r7, #4]
     d3e:	0018      	movs	r0, r3
     d40:	46bd      	mov	sp, r7
     d42:	b006      	add	sp, #24
     d44:	bd80      	pop	{r7, pc}
     d46:	46c0      	nop			; (mov r8, r8)
     d48:	20006074 	.word	0x20006074

00000d4c <_init>:
     d4c:	b580      	push	{r7, lr}
     d4e:	af00      	add	r7, sp, #0
     d50:	46c0      	nop			; (mov r8, r8)
     d52:	46bd      	mov	sp, r7
     d54:	bd80      	pop	{r7, pc}
     d56:	46c0      	nop			; (mov r8, r8)

00000d58 <_fini>:
     d58:	b580      	push	{r7, lr}
     d5a:	af00      	add	r7, sp, #0
     d5c:	46c0      	nop			; (mov r8, r8)
     d5e:	46bd      	mov	sp, r7
     d60:	bd80      	pop	{r7, pc}
     d62:	46c0      	nop			; (mov r8, r8)

00000d64 <__NVIC_EnableIRQ>:
     d64:	b580      	push	{r7, lr}
     d66:	b082      	sub	sp, #8
     d68:	af00      	add	r7, sp, #0
     d6a:	0002      	movs	r2, r0
     d6c:	1dfb      	adds	r3, r7, #7
     d6e:	701a      	strb	r2, [r3, #0]
     d70:	1dfb      	adds	r3, r7, #7
     d72:	781b      	ldrb	r3, [r3, #0]
     d74:	2b7f      	cmp	r3, #127	; 0x7f
     d76:	d809      	bhi.n	d8c <__NVIC_EnableIRQ+0x28>
     d78:	4b06      	ldr	r3, [pc, #24]	; (d94 <__NVIC_EnableIRQ+0x30>)
     d7a:	1dfa      	adds	r2, r7, #7
     d7c:	7812      	ldrb	r2, [r2, #0]
     d7e:	0011      	movs	r1, r2
     d80:	221f      	movs	r2, #31
     d82:	400a      	ands	r2, r1
     d84:	2101      	movs	r1, #1
     d86:	4091      	lsls	r1, r2
     d88:	000a      	movs	r2, r1
     d8a:	601a      	str	r2, [r3, #0]
     d8c:	46c0      	nop			; (mov r8, r8)
     d8e:	46bd      	mov	sp, r7
     d90:	b002      	add	sp, #8
     d92:	bd80      	pop	{r7, pc}
     d94:	e000e100 	.word	0xe000e100

00000d98 <__NVIC_DisableIRQ>:
     d98:	b580      	push	{r7, lr}
     d9a:	b082      	sub	sp, #8
     d9c:	af00      	add	r7, sp, #0
     d9e:	0002      	movs	r2, r0
     da0:	1dfb      	adds	r3, r7, #7
     da2:	701a      	strb	r2, [r3, #0]
     da4:	1dfb      	adds	r3, r7, #7
     da6:	781b      	ldrb	r3, [r3, #0]
     da8:	2b7f      	cmp	r3, #127	; 0x7f
     daa:	d80e      	bhi.n	dca <__NVIC_DisableIRQ+0x32>
     dac:	4909      	ldr	r1, [pc, #36]	; (dd4 <__NVIC_DisableIRQ+0x3c>)
     dae:	1dfb      	adds	r3, r7, #7
     db0:	781b      	ldrb	r3, [r3, #0]
     db2:	001a      	movs	r2, r3
     db4:	231f      	movs	r3, #31
     db6:	4013      	ands	r3, r2
     db8:	2201      	movs	r2, #1
     dba:	409a      	lsls	r2, r3
     dbc:	0013      	movs	r3, r2
     dbe:	2280      	movs	r2, #128	; 0x80
     dc0:	508b      	str	r3, [r1, r2]
     dc2:	f3bf 8f4f 	dsb	sy
     dc6:	f3bf 8f6f 	isb	sy
     dca:	46c0      	nop			; (mov r8, r8)
     dcc:	46bd      	mov	sp, r7
     dce:	b002      	add	sp, #8
     dd0:	bd80      	pop	{r7, pc}
     dd2:	46c0      	nop			; (mov r8, r8)
     dd4:	e000e100 	.word	0xe000e100

00000dd8 <mdb232_init>:
     dd8:	b580      	push	{r7, lr}
     dda:	af00      	add	r7, sp, #0
     ddc:	4b15      	ldr	r3, [pc, #84]	; (e34 <mdb232_init+0x5c>)
     dde:	229c      	movs	r2, #156	; 0x9c
     de0:	0052      	lsls	r2, r2, #1
     de2:	625a      	str	r2, [r3, #36]	; 0x24
     de4:	4b13      	ldr	r3, [pc, #76]	; (e34 <mdb232_init+0x5c>)
     de6:	2220      	movs	r2, #32
     de8:	629a      	str	r2, [r3, #40]	; 0x28
     dea:	4b12      	ldr	r3, [pc, #72]	; (e34 <mdb232_init+0x5c>)
     dec:	4a11      	ldr	r2, [pc, #68]	; (e34 <mdb232_init+0x5c>)
     dee:	6b52      	ldr	r2, [r2, #52]	; 0x34
     df0:	213f      	movs	r1, #63	; 0x3f
     df2:	438a      	bics	r2, r1
     df4:	635a      	str	r2, [r3, #52]	; 0x34
     df6:	4b0f      	ldr	r3, [pc, #60]	; (e34 <mdb232_init+0x5c>)
     df8:	4a0e      	ldr	r2, [pc, #56]	; (e34 <mdb232_init+0x5c>)
     dfa:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     dfc:	2110      	movs	r1, #16
     dfe:	430a      	orrs	r2, r1
     e00:	62da      	str	r2, [r3, #44]	; 0x2c
     e02:	4b0c      	ldr	r3, [pc, #48]	; (e34 <mdb232_init+0x5c>)
     e04:	4a0b      	ldr	r2, [pc, #44]	; (e34 <mdb232_init+0x5c>)
     e06:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     e08:	2160      	movs	r1, #96	; 0x60
     e0a:	430a      	orrs	r2, r1
     e0c:	62da      	str	r2, [r3, #44]	; 0x2c
     e0e:	4b09      	ldr	r3, [pc, #36]	; (e34 <mdb232_init+0x5c>)
     e10:	4a08      	ldr	r2, [pc, #32]	; (e34 <mdb232_init+0x5c>)
     e12:	6b12      	ldr	r2, [r2, #48]	; 0x30
     e14:	4908      	ldr	r1, [pc, #32]	; (e38 <mdb232_init+0x60>)
     e16:	430a      	orrs	r2, r1
     e18:	631a      	str	r2, [r3, #48]	; 0x30
     e1a:	4b06      	ldr	r3, [pc, #24]	; (e34 <mdb232_init+0x5c>)
     e1c:	4a05      	ldr	r2, [pc, #20]	; (e34 <mdb232_init+0x5c>)
     e1e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e20:	2140      	movs	r1, #64	; 0x40
     e22:	430a      	orrs	r2, r1
     e24:	639a      	str	r2, [r3, #56]	; 0x38
     e26:	2006      	movs	r0, #6
     e28:	f7ff ff9c 	bl	d64 <__NVIC_EnableIRQ>
     e2c:	46c0      	nop			; (mov r8, r8)
     e2e:	46bd      	mov	sp, r7
     e30:	bd80      	pop	{r7, pc}
     e32:	46c0      	nop			; (mov r8, r8)
     e34:	40030000 	.word	0x40030000
     e38:	00000301 	.word	0x00000301

00000e3c <mdb232_send>:
     e3c:	b580      	push	{r7, lr}
     e3e:	b084      	sub	sp, #16
     e40:	af00      	add	r7, sp, #0
     e42:	6078      	str	r0, [r7, #4]
     e44:	6039      	str	r1, [r7, #0]
     e46:	2300      	movs	r3, #0
     e48:	60fb      	str	r3, [r7, #12]
     e4a:	e00e      	b.n	e6a <mdb232_send+0x2e>
     e4c:	46c0      	nop			; (mov r8, r8)
     e4e:	4b0e      	ldr	r3, [pc, #56]	; (e88 <mdb232_send+0x4c>)
     e50:	699b      	ldr	r3, [r3, #24]
     e52:	2220      	movs	r2, #32
     e54:	4013      	ands	r3, r2
     e56:	d1fa      	bne.n	e4e <mdb232_send+0x12>
     e58:	4a0b      	ldr	r2, [pc, #44]	; (e88 <mdb232_send+0x4c>)
     e5a:	687b      	ldr	r3, [r7, #4]
     e5c:	1c59      	adds	r1, r3, #1
     e5e:	6079      	str	r1, [r7, #4]
     e60:	781b      	ldrb	r3, [r3, #0]
     e62:	6013      	str	r3, [r2, #0]
     e64:	68fb      	ldr	r3, [r7, #12]
     e66:	3301      	adds	r3, #1
     e68:	60fb      	str	r3, [r7, #12]
     e6a:	68fa      	ldr	r2, [r7, #12]
     e6c:	683b      	ldr	r3, [r7, #0]
     e6e:	429a      	cmp	r2, r3
     e70:	dbec      	blt.n	e4c <mdb232_send+0x10>
     e72:	46c0      	nop			; (mov r8, r8)
     e74:	4b04      	ldr	r3, [pc, #16]	; (e88 <mdb232_send+0x4c>)
     e76:	699b      	ldr	r3, [r3, #24]
     e78:	2208      	movs	r2, #8
     e7a:	4013      	ands	r3, r2
     e7c:	d1fa      	bne.n	e74 <mdb232_send+0x38>
     e7e:	683b      	ldr	r3, [r7, #0]
     e80:	0018      	movs	r0, r3
     e82:	46bd      	mov	sp, r7
     e84:	b004      	add	sp, #16
     e86:	bd80      	pop	{r7, pc}
     e88:	40030000 	.word	0x40030000

00000e8c <mdb232_read_inputregs>:
     e8c:	b590      	push	{r4, r7, lr}
     e8e:	b085      	sub	sp, #20
     e90:	af00      	add	r7, sp, #0
     e92:	0004      	movs	r4, r0
     e94:	0008      	movs	r0, r1
     e96:	0011      	movs	r1, r2
     e98:	1dfb      	adds	r3, r7, #7
     e9a:	1c22      	adds	r2, r4, #0
     e9c:	701a      	strb	r2, [r3, #0]
     e9e:	1d3b      	adds	r3, r7, #4
     ea0:	1c02      	adds	r2, r0, #0
     ea2:	801a      	strh	r2, [r3, #0]
     ea4:	1cbb      	adds	r3, r7, #2
     ea6:	1c0a      	adds	r2, r1, #0
     ea8:	801a      	strh	r2, [r3, #0]
     eaa:	4b28      	ldr	r3, [pc, #160]	; (f4c <mdb232_read_inputregs+0xc0>)
     eac:	60fb      	str	r3, [r7, #12]
     eae:	68fb      	ldr	r3, [r7, #12]
     eb0:	1c5a      	adds	r2, r3, #1
     eb2:	60fa      	str	r2, [r7, #12]
     eb4:	1dfa      	adds	r2, r7, #7
     eb6:	7812      	ldrb	r2, [r2, #0]
     eb8:	701a      	strb	r2, [r3, #0]
     eba:	68fb      	ldr	r3, [r7, #12]
     ebc:	1c5a      	adds	r2, r3, #1
     ebe:	60fa      	str	r2, [r7, #12]
     ec0:	2204      	movs	r2, #4
     ec2:	701a      	strb	r2, [r3, #0]
     ec4:	68fb      	ldr	r3, [r7, #12]
     ec6:	1c5a      	adds	r2, r3, #1
     ec8:	60fa      	str	r2, [r7, #12]
     eca:	1d3a      	adds	r2, r7, #4
     ecc:	8812      	ldrh	r2, [r2, #0]
     ece:	0a12      	lsrs	r2, r2, #8
     ed0:	b292      	uxth	r2, r2
     ed2:	b2d2      	uxtb	r2, r2
     ed4:	701a      	strb	r2, [r3, #0]
     ed6:	68fb      	ldr	r3, [r7, #12]
     ed8:	1c5a      	adds	r2, r3, #1
     eda:	60fa      	str	r2, [r7, #12]
     edc:	1d3a      	adds	r2, r7, #4
     ede:	8812      	ldrh	r2, [r2, #0]
     ee0:	b2d2      	uxtb	r2, r2
     ee2:	701a      	strb	r2, [r3, #0]
     ee4:	68fb      	ldr	r3, [r7, #12]
     ee6:	1c5a      	adds	r2, r3, #1
     ee8:	60fa      	str	r2, [r7, #12]
     eea:	1cba      	adds	r2, r7, #2
     eec:	8812      	ldrh	r2, [r2, #0]
     eee:	0a12      	lsrs	r2, r2, #8
     ef0:	b292      	uxth	r2, r2
     ef2:	b2d2      	uxtb	r2, r2
     ef4:	701a      	strb	r2, [r3, #0]
     ef6:	68fb      	ldr	r3, [r7, #12]
     ef8:	1c5a      	adds	r2, r3, #1
     efa:	60fa      	str	r2, [r7, #12]
     efc:	1cba      	adds	r2, r7, #2
     efe:	8812      	ldrh	r2, [r2, #0]
     f00:	b2d2      	uxtb	r2, r2
     f02:	701a      	strb	r2, [r3, #0]
     f04:	230a      	movs	r3, #10
     f06:	18fc      	adds	r4, r7, r3
     f08:	4b10      	ldr	r3, [pc, #64]	; (f4c <mdb232_read_inputregs+0xc0>)
     f0a:	2106      	movs	r1, #6
     f0c:	0018      	movs	r0, r3
     f0e:	f002 f8ed 	bl	30ec <crc16>
     f12:	0003      	movs	r3, r0
     f14:	8023      	strh	r3, [r4, #0]
     f16:	68fb      	ldr	r3, [r7, #12]
     f18:	1c5a      	adds	r2, r3, #1
     f1a:	60fa      	str	r2, [r7, #12]
     f1c:	220a      	movs	r2, #10
     f1e:	18ba      	adds	r2, r7, r2
     f20:	8812      	ldrh	r2, [r2, #0]
     f22:	b2d2      	uxtb	r2, r2
     f24:	701a      	strb	r2, [r3, #0]
     f26:	68fb      	ldr	r3, [r7, #12]
     f28:	1c5a      	adds	r2, r3, #1
     f2a:	60fa      	str	r2, [r7, #12]
     f2c:	220a      	movs	r2, #10
     f2e:	18ba      	adds	r2, r7, r2
     f30:	8812      	ldrh	r2, [r2, #0]
     f32:	0a12      	lsrs	r2, r2, #8
     f34:	b292      	uxth	r2, r2
     f36:	b2d2      	uxtb	r2, r2
     f38:	701a      	strb	r2, [r3, #0]
     f3a:	4b04      	ldr	r3, [pc, #16]	; (f4c <mdb232_read_inputregs+0xc0>)
     f3c:	2108      	movs	r1, #8
     f3e:	0018      	movs	r0, r3
     f40:	f7ff ff7c 	bl	e3c <mdb232_send>
     f44:	46c0      	nop			; (mov r8, r8)
     f46:	46bd      	mov	sp, r7
     f48:	b005      	add	sp, #20
     f4a:	bd90      	pop	{r4, r7, pc}
     f4c:	200008e8 	.word	0x200008e8

00000f50 <mdb232_readregs>:
     f50:	b590      	push	{r4, r7, lr}
     f52:	b085      	sub	sp, #20
     f54:	af00      	add	r7, sp, #0
     f56:	0004      	movs	r4, r0
     f58:	0008      	movs	r0, r1
     f5a:	0011      	movs	r1, r2
     f5c:	1dfb      	adds	r3, r7, #7
     f5e:	1c22      	adds	r2, r4, #0
     f60:	701a      	strb	r2, [r3, #0]
     f62:	1d3b      	adds	r3, r7, #4
     f64:	1c02      	adds	r2, r0, #0
     f66:	801a      	strh	r2, [r3, #0]
     f68:	1cbb      	adds	r3, r7, #2
     f6a:	1c0a      	adds	r2, r1, #0
     f6c:	801a      	strh	r2, [r3, #0]
     f6e:	4b28      	ldr	r3, [pc, #160]	; (1010 <mdb232_readregs+0xc0>)
     f70:	60fb      	str	r3, [r7, #12]
     f72:	68fb      	ldr	r3, [r7, #12]
     f74:	1c5a      	adds	r2, r3, #1
     f76:	60fa      	str	r2, [r7, #12]
     f78:	1dfa      	adds	r2, r7, #7
     f7a:	7812      	ldrb	r2, [r2, #0]
     f7c:	701a      	strb	r2, [r3, #0]
     f7e:	68fb      	ldr	r3, [r7, #12]
     f80:	1c5a      	adds	r2, r3, #1
     f82:	60fa      	str	r2, [r7, #12]
     f84:	2203      	movs	r2, #3
     f86:	701a      	strb	r2, [r3, #0]
     f88:	68fb      	ldr	r3, [r7, #12]
     f8a:	1c5a      	adds	r2, r3, #1
     f8c:	60fa      	str	r2, [r7, #12]
     f8e:	1d3a      	adds	r2, r7, #4
     f90:	8812      	ldrh	r2, [r2, #0]
     f92:	0a12      	lsrs	r2, r2, #8
     f94:	b292      	uxth	r2, r2
     f96:	b2d2      	uxtb	r2, r2
     f98:	701a      	strb	r2, [r3, #0]
     f9a:	68fb      	ldr	r3, [r7, #12]
     f9c:	1c5a      	adds	r2, r3, #1
     f9e:	60fa      	str	r2, [r7, #12]
     fa0:	1d3a      	adds	r2, r7, #4
     fa2:	8812      	ldrh	r2, [r2, #0]
     fa4:	b2d2      	uxtb	r2, r2
     fa6:	701a      	strb	r2, [r3, #0]
     fa8:	68fb      	ldr	r3, [r7, #12]
     faa:	1c5a      	adds	r2, r3, #1
     fac:	60fa      	str	r2, [r7, #12]
     fae:	1cba      	adds	r2, r7, #2
     fb0:	8812      	ldrh	r2, [r2, #0]
     fb2:	0a12      	lsrs	r2, r2, #8
     fb4:	b292      	uxth	r2, r2
     fb6:	b2d2      	uxtb	r2, r2
     fb8:	701a      	strb	r2, [r3, #0]
     fba:	68fb      	ldr	r3, [r7, #12]
     fbc:	1c5a      	adds	r2, r3, #1
     fbe:	60fa      	str	r2, [r7, #12]
     fc0:	1cba      	adds	r2, r7, #2
     fc2:	8812      	ldrh	r2, [r2, #0]
     fc4:	b2d2      	uxtb	r2, r2
     fc6:	701a      	strb	r2, [r3, #0]
     fc8:	230a      	movs	r3, #10
     fca:	18fc      	adds	r4, r7, r3
     fcc:	4b10      	ldr	r3, [pc, #64]	; (1010 <mdb232_readregs+0xc0>)
     fce:	2106      	movs	r1, #6
     fd0:	0018      	movs	r0, r3
     fd2:	f002 f88b 	bl	30ec <crc16>
     fd6:	0003      	movs	r3, r0
     fd8:	8023      	strh	r3, [r4, #0]
     fda:	68fb      	ldr	r3, [r7, #12]
     fdc:	1c5a      	adds	r2, r3, #1
     fde:	60fa      	str	r2, [r7, #12]
     fe0:	220a      	movs	r2, #10
     fe2:	18ba      	adds	r2, r7, r2
     fe4:	8812      	ldrh	r2, [r2, #0]
     fe6:	b2d2      	uxtb	r2, r2
     fe8:	701a      	strb	r2, [r3, #0]
     fea:	68fb      	ldr	r3, [r7, #12]
     fec:	1c5a      	adds	r2, r3, #1
     fee:	60fa      	str	r2, [r7, #12]
     ff0:	220a      	movs	r2, #10
     ff2:	18ba      	adds	r2, r7, r2
     ff4:	8812      	ldrh	r2, [r2, #0]
     ff6:	0a12      	lsrs	r2, r2, #8
     ff8:	b292      	uxth	r2, r2
     ffa:	b2d2      	uxtb	r2, r2
     ffc:	701a      	strb	r2, [r3, #0]
     ffe:	4b04      	ldr	r3, [pc, #16]	; (1010 <mdb232_readregs+0xc0>)
    1000:	2108      	movs	r1, #8
    1002:	0018      	movs	r0, r3
    1004:	f7ff ff1a 	bl	e3c <mdb232_send>
    1008:	46c0      	nop			; (mov r8, r8)
    100a:	46bd      	mov	sp, r7
    100c:	b005      	add	sp, #20
    100e:	bd90      	pop	{r4, r7, pc}
    1010:	200008e8 	.word	0x200008e8

00001014 <mdb232_bikm_get_torque>:
    1014:	b580      	push	{r7, lr}
    1016:	b084      	sub	sp, #16
    1018:	af00      	add	r7, sp, #0
    101a:	4b27      	ldr	r3, [pc, #156]	; (10b8 <mdb232_bikm_get_torque+0xa4>)
    101c:	60fb      	str	r3, [r7, #12]
    101e:	2006      	movs	r0, #6
    1020:	f7ff feba 	bl	d98 <__NVIC_DisableIRQ>
    1024:	4b25      	ldr	r3, [pc, #148]	; (10bc <mdb232_bikm_get_torque+0xa8>)
    1026:	681b      	ldr	r3, [r3, #0]
    1028:	2b00      	cmp	r3, #0
    102a:	d03c      	beq.n	10a6 <mdb232_bikm_get_torque+0x92>
    102c:	68fb      	ldr	r3, [r7, #12]
    102e:	1c5a      	adds	r2, r3, #1
    1030:	60fa      	str	r2, [r7, #12]
    1032:	781b      	ldrb	r3, [r3, #0]
    1034:	041b      	lsls	r3, r3, #16
    1036:	60bb      	str	r3, [r7, #8]
    1038:	68fb      	ldr	r3, [r7, #12]
    103a:	1c5a      	adds	r2, r3, #1
    103c:	60fa      	str	r2, [r7, #12]
    103e:	781b      	ldrb	r3, [r3, #0]
    1040:	061b      	lsls	r3, r3, #24
    1042:	001a      	movs	r2, r3
    1044:	68bb      	ldr	r3, [r7, #8]
    1046:	4313      	orrs	r3, r2
    1048:	60bb      	str	r3, [r7, #8]
    104a:	68fb      	ldr	r3, [r7, #12]
    104c:	1c5a      	adds	r2, r3, #1
    104e:	60fa      	str	r2, [r7, #12]
    1050:	781b      	ldrb	r3, [r3, #0]
    1052:	001a      	movs	r2, r3
    1054:	68bb      	ldr	r3, [r7, #8]
    1056:	4313      	orrs	r3, r2
    1058:	60bb      	str	r3, [r7, #8]
    105a:	68fb      	ldr	r3, [r7, #12]
    105c:	781b      	ldrb	r3, [r3, #0]
    105e:	021b      	lsls	r3, r3, #8
    1060:	001a      	movs	r2, r3
    1062:	68bb      	ldr	r3, [r7, #8]
    1064:	4313      	orrs	r3, r2
    1066:	60bb      	str	r3, [r7, #8]
    1068:	2006      	movs	r0, #6
    106a:	f7ff fe7b 	bl	d64 <__NVIC_EnableIRQ>
    106e:	68bb      	ldr	r3, [r7, #8]
    1070:	0ddb      	lsrs	r3, r3, #23
    1072:	22ff      	movs	r2, #255	; 0xff
    1074:	4013      	ands	r3, r2
    1076:	3b7f      	subs	r3, #127	; 0x7f
    1078:	607b      	str	r3, [r7, #4]
    107a:	68bb      	ldr	r3, [r7, #8]
    107c:	025b      	lsls	r3, r3, #9
    107e:	0a5b      	lsrs	r3, r3, #9
    1080:	2280      	movs	r2, #128	; 0x80
    1082:	0412      	lsls	r2, r2, #16
    1084:	4313      	orrs	r3, r2
    1086:	603b      	str	r3, [r7, #0]
    1088:	687b      	ldr	r3, [r7, #4]
    108a:	220e      	movs	r2, #14
    108c:	1ad3      	subs	r3, r2, r3
    108e:	2201      	movs	r2, #1
    1090:	409a      	lsls	r2, r3
    1092:	0013      	movs	r3, r2
    1094:	001a      	movs	r2, r3
    1096:	683b      	ldr	r3, [r7, #0]
    1098:	18d2      	adds	r2, r2, r3
    109a:	687b      	ldr	r3, [r7, #4]
    109c:	210f      	movs	r1, #15
    109e:	1acb      	subs	r3, r1, r3
    10a0:	40da      	lsrs	r2, r3
    10a2:	0013      	movs	r3, r2
    10a4:	e003      	b.n	10ae <mdb232_bikm_get_torque+0x9a>
    10a6:	2006      	movs	r0, #6
    10a8:	f7ff fe5c 	bl	d64 <__NVIC_EnableIRQ>
    10ac:	2300      	movs	r3, #0
    10ae:	0018      	movs	r0, r3
    10b0:	46bd      	mov	sp, r7
    10b2:	b004      	add	sp, #16
    10b4:	bd80      	pop	{r7, pc}
    10b6:	46c0      	nop			; (mov r8, r8)
    10b8:	200008db 	.word	0x200008db
    10bc:	200008f8 	.word	0x200008f8

000010c0 <UART1_Handler>:
    10c0:	b580      	push	{r7, lr}
    10c2:	b082      	sub	sp, #8
    10c4:	af00      	add	r7, sp, #0
    10c6:	4b16      	ldr	r3, [pc, #88]	; (1120 <UART1_Handler+0x60>)
    10c8:	2200      	movs	r2, #0
    10ca:	601a      	str	r2, [r3, #0]
    10cc:	4b15      	ldr	r3, [pc, #84]	; (1124 <UART1_Handler+0x64>)
    10ce:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    10d0:	2240      	movs	r2, #64	; 0x40
    10d2:	4013      	ands	r3, r2
    10d4:	d016      	beq.n	1104 <UART1_Handler+0x44>
    10d6:	4b14      	ldr	r3, [pc, #80]	; (1128 <UART1_Handler+0x68>)
    10d8:	603b      	str	r3, [r7, #0]
    10da:	2300      	movs	r3, #0
    10dc:	607b      	str	r3, [r7, #4]
    10de:	e009      	b.n	10f4 <UART1_Handler+0x34>
    10e0:	683b      	ldr	r3, [r7, #0]
    10e2:	1c5a      	adds	r2, r3, #1
    10e4:	603a      	str	r2, [r7, #0]
    10e6:	4a0f      	ldr	r2, [pc, #60]	; (1124 <UART1_Handler+0x64>)
    10e8:	6812      	ldr	r2, [r2, #0]
    10ea:	b2d2      	uxtb	r2, r2
    10ec:	701a      	strb	r2, [r3, #0]
    10ee:	687b      	ldr	r3, [r7, #4]
    10f0:	3301      	adds	r3, #1
    10f2:	607b      	str	r3, [r7, #4]
    10f4:	687b      	ldr	r3, [r7, #4]
    10f6:	2b0f      	cmp	r3, #15
    10f8:	dc04      	bgt.n	1104 <UART1_Handler+0x44>
    10fa:	4b0a      	ldr	r3, [pc, #40]	; (1124 <UART1_Handler+0x64>)
    10fc:	699b      	ldr	r3, [r3, #24]
    10fe:	2210      	movs	r2, #16
    1100:	4013      	ands	r3, r2
    1102:	d0ed      	beq.n	10e0 <UART1_Handler+0x20>
    1104:	4b06      	ldr	r3, [pc, #24]	; (1120 <UART1_Handler+0x60>)
    1106:	687a      	ldr	r2, [r7, #4]
    1108:	601a      	str	r2, [r3, #0]
    110a:	4b08      	ldr	r3, [pc, #32]	; (112c <UART1_Handler+0x6c>)
    110c:	681b      	ldr	r3, [r3, #0]
    110e:	2102      	movs	r1, #2
    1110:	0018      	movs	r0, r3
    1112:	f005 fa8d 	bl	6630 <osSignalSet>
    1116:	46c0      	nop			; (mov r8, r8)
    1118:	46bd      	mov	sp, r7
    111a:	b002      	add	sp, #8
    111c:	bd80      	pop	{r7, pc}
    111e:	46c0      	nop			; (mov r8, r8)
    1120:	200008f8 	.word	0x200008f8
    1124:	40030000 	.word	0x40030000
    1128:	200008d8 	.word	0x200008d8
    112c:	20000860 	.word	0x20000860

00001130 <xputc>:
    1130:	b580      	push	{r7, lr}
    1132:	b082      	sub	sp, #8
    1134:	af00      	add	r7, sp, #0
    1136:	0002      	movs	r2, r0
    1138:	1dfb      	adds	r3, r7, #7
    113a:	701a      	strb	r2, [r3, #0]
    113c:	1dfb      	adds	r3, r7, #7
    113e:	781b      	ldrb	r3, [r3, #0]
    1140:	2b0a      	cmp	r3, #10
    1142:	d102      	bne.n	114a <xputc+0x1a>
    1144:	200d      	movs	r0, #13
    1146:	f7ff fff3 	bl	1130 <xputc>
    114a:	4b0d      	ldr	r3, [pc, #52]	; (1180 <xputc+0x50>)
    114c:	681b      	ldr	r3, [r3, #0]
    114e:	2b00      	cmp	r3, #0
    1150:	d008      	beq.n	1164 <xputc+0x34>
    1152:	4b0b      	ldr	r3, [pc, #44]	; (1180 <xputc+0x50>)
    1154:	681b      	ldr	r3, [r3, #0]
    1156:	1c59      	adds	r1, r3, #1
    1158:	4a09      	ldr	r2, [pc, #36]	; (1180 <xputc+0x50>)
    115a:	6011      	str	r1, [r2, #0]
    115c:	1dfa      	adds	r2, r7, #7
    115e:	7812      	ldrb	r2, [r2, #0]
    1160:	701a      	strb	r2, [r3, #0]
    1162:	e009      	b.n	1178 <xputc+0x48>
    1164:	4b07      	ldr	r3, [pc, #28]	; (1184 <xputc+0x54>)
    1166:	681b      	ldr	r3, [r3, #0]
    1168:	2b00      	cmp	r3, #0
    116a:	d005      	beq.n	1178 <xputc+0x48>
    116c:	4b05      	ldr	r3, [pc, #20]	; (1184 <xputc+0x54>)
    116e:	681b      	ldr	r3, [r3, #0]
    1170:	1dfa      	adds	r2, r7, #7
    1172:	7812      	ldrb	r2, [r2, #0]
    1174:	0010      	movs	r0, r2
    1176:	4798      	blx	r3
    1178:	46bd      	mov	sp, r7
    117a:	b002      	add	sp, #8
    117c:	bd80      	pop	{r7, pc}
    117e:	46c0      	nop			; (mov r8, r8)
    1180:	20000900 	.word	0x20000900
    1184:	200008fc 	.word	0x200008fc

00001188 <xputs>:
    1188:	b580      	push	{r7, lr}
    118a:	b082      	sub	sp, #8
    118c:	af00      	add	r7, sp, #0
    118e:	6078      	str	r0, [r7, #4]
    1190:	e006      	b.n	11a0 <xputs+0x18>
    1192:	687b      	ldr	r3, [r7, #4]
    1194:	1c5a      	adds	r2, r3, #1
    1196:	607a      	str	r2, [r7, #4]
    1198:	781b      	ldrb	r3, [r3, #0]
    119a:	0018      	movs	r0, r3
    119c:	f7ff ffc8 	bl	1130 <xputc>
    11a0:	687b      	ldr	r3, [r7, #4]
    11a2:	781b      	ldrb	r3, [r3, #0]
    11a4:	2b00      	cmp	r3, #0
    11a6:	d1f4      	bne.n	1192 <xputs+0xa>
    11a8:	46c0      	nop			; (mov r8, r8)
    11aa:	46bd      	mov	sp, r7
    11ac:	b002      	add	sp, #8
    11ae:	bd80      	pop	{r7, pc}

000011b0 <xfputs>:
    11b0:	b580      	push	{r7, lr}
    11b2:	b084      	sub	sp, #16
    11b4:	af00      	add	r7, sp, #0
    11b6:	6078      	str	r0, [r7, #4]
    11b8:	6039      	str	r1, [r7, #0]
    11ba:	4b0c      	ldr	r3, [pc, #48]	; (11ec <xfputs+0x3c>)
    11bc:	681b      	ldr	r3, [r3, #0]
    11be:	60fb      	str	r3, [r7, #12]
    11c0:	4b0a      	ldr	r3, [pc, #40]	; (11ec <xfputs+0x3c>)
    11c2:	687a      	ldr	r2, [r7, #4]
    11c4:	601a      	str	r2, [r3, #0]
    11c6:	e006      	b.n	11d6 <xfputs+0x26>
    11c8:	683b      	ldr	r3, [r7, #0]
    11ca:	1c5a      	adds	r2, r3, #1
    11cc:	603a      	str	r2, [r7, #0]
    11ce:	781b      	ldrb	r3, [r3, #0]
    11d0:	0018      	movs	r0, r3
    11d2:	f7ff ffad 	bl	1130 <xputc>
    11d6:	683b      	ldr	r3, [r7, #0]
    11d8:	781b      	ldrb	r3, [r3, #0]
    11da:	2b00      	cmp	r3, #0
    11dc:	d1f4      	bne.n	11c8 <xfputs+0x18>
    11de:	4b03      	ldr	r3, [pc, #12]	; (11ec <xfputs+0x3c>)
    11e0:	68fa      	ldr	r2, [r7, #12]
    11e2:	601a      	str	r2, [r3, #0]
    11e4:	46c0      	nop			; (mov r8, r8)
    11e6:	46bd      	mov	sp, r7
    11e8:	b004      	add	sp, #16
    11ea:	bd80      	pop	{r7, pc}
    11ec:	200008fc 	.word	0x200008fc

000011f0 <xvprintf>:
    11f0:	b580      	push	{r7, lr}
    11f2:	b08e      	sub	sp, #56	; 0x38
    11f4:	af00      	add	r7, sp, #0
    11f6:	6078      	str	r0, [r7, #4]
    11f8:	6039      	str	r1, [r7, #0]
    11fa:	687b      	ldr	r3, [r7, #4]
    11fc:	1c5a      	adds	r2, r3, #1
    11fe:	607a      	str	r2, [r7, #4]
    1200:	221f      	movs	r2, #31
    1202:	18ba      	adds	r2, r7, r2
    1204:	781b      	ldrb	r3, [r3, #0]
    1206:	7013      	strb	r3, [r2, #0]
    1208:	231f      	movs	r3, #31
    120a:	18fb      	adds	r3, r7, r3
    120c:	781b      	ldrb	r3, [r3, #0]
    120e:	2b00      	cmp	r3, #0
    1210:	d100      	bne.n	1214 <xvprintf+0x24>
    1212:	e172      	b.n	14fa <xvprintf+0x30a>
    1214:	231f      	movs	r3, #31
    1216:	18fb      	adds	r3, r7, r3
    1218:	781b      	ldrb	r3, [r3, #0]
    121a:	2b25      	cmp	r3, #37	; 0x25
    121c:	d006      	beq.n	122c <xvprintf+0x3c>
    121e:	231f      	movs	r3, #31
    1220:	18fb      	adds	r3, r7, r3
    1222:	781b      	ldrb	r3, [r3, #0]
    1224:	0018      	movs	r0, r3
    1226:	f7ff ff83 	bl	1130 <xputc>
    122a:	e165      	b.n	14f8 <xvprintf+0x308>
    122c:	2300      	movs	r3, #0
    122e:	627b      	str	r3, [r7, #36]	; 0x24
    1230:	687b      	ldr	r3, [r7, #4]
    1232:	1c5a      	adds	r2, r3, #1
    1234:	607a      	str	r2, [r7, #4]
    1236:	221f      	movs	r2, #31
    1238:	18ba      	adds	r2, r7, r2
    123a:	781b      	ldrb	r3, [r3, #0]
    123c:	7013      	strb	r3, [r2, #0]
    123e:	231f      	movs	r3, #31
    1240:	18fb      	adds	r3, r7, r3
    1242:	781b      	ldrb	r3, [r3, #0]
    1244:	2b30      	cmp	r3, #48	; 0x30
    1246:	d109      	bne.n	125c <xvprintf+0x6c>
    1248:	2301      	movs	r3, #1
    124a:	627b      	str	r3, [r7, #36]	; 0x24
    124c:	687b      	ldr	r3, [r7, #4]
    124e:	1c5a      	adds	r2, r3, #1
    1250:	607a      	str	r2, [r7, #4]
    1252:	221f      	movs	r2, #31
    1254:	18ba      	adds	r2, r7, r2
    1256:	781b      	ldrb	r3, [r3, #0]
    1258:	7013      	strb	r3, [r2, #0]
    125a:	e00d      	b.n	1278 <xvprintf+0x88>
    125c:	231f      	movs	r3, #31
    125e:	18fb      	adds	r3, r7, r3
    1260:	781b      	ldrb	r3, [r3, #0]
    1262:	2b2d      	cmp	r3, #45	; 0x2d
    1264:	d108      	bne.n	1278 <xvprintf+0x88>
    1266:	2302      	movs	r3, #2
    1268:	627b      	str	r3, [r7, #36]	; 0x24
    126a:	687b      	ldr	r3, [r7, #4]
    126c:	1c5a      	adds	r2, r3, #1
    126e:	607a      	str	r2, [r7, #4]
    1270:	221f      	movs	r2, #31
    1272:	18ba      	adds	r2, r7, r2
    1274:	781b      	ldrb	r3, [r3, #0]
    1276:	7013      	strb	r3, [r2, #0]
    1278:	2300      	movs	r3, #0
    127a:	62bb      	str	r3, [r7, #40]	; 0x28
    127c:	e012      	b.n	12a4 <xvprintf+0xb4>
    127e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1280:	0013      	movs	r3, r2
    1282:	009b      	lsls	r3, r3, #2
    1284:	189b      	adds	r3, r3, r2
    1286:	005b      	lsls	r3, r3, #1
    1288:	001a      	movs	r2, r3
    128a:	231f      	movs	r3, #31
    128c:	18fb      	adds	r3, r7, r3
    128e:	781b      	ldrb	r3, [r3, #0]
    1290:	18d3      	adds	r3, r2, r3
    1292:	3b30      	subs	r3, #48	; 0x30
    1294:	62bb      	str	r3, [r7, #40]	; 0x28
    1296:	687b      	ldr	r3, [r7, #4]
    1298:	1c5a      	adds	r2, r3, #1
    129a:	607a      	str	r2, [r7, #4]
    129c:	221f      	movs	r2, #31
    129e:	18ba      	adds	r2, r7, r2
    12a0:	781b      	ldrb	r3, [r3, #0]
    12a2:	7013      	strb	r3, [r2, #0]
    12a4:	231f      	movs	r3, #31
    12a6:	18fb      	adds	r3, r7, r3
    12a8:	781b      	ldrb	r3, [r3, #0]
    12aa:	2b2f      	cmp	r3, #47	; 0x2f
    12ac:	d904      	bls.n	12b8 <xvprintf+0xc8>
    12ae:	231f      	movs	r3, #31
    12b0:	18fb      	adds	r3, r7, r3
    12b2:	781b      	ldrb	r3, [r3, #0]
    12b4:	2b39      	cmp	r3, #57	; 0x39
    12b6:	d9e2      	bls.n	127e <xvprintf+0x8e>
    12b8:	231f      	movs	r3, #31
    12ba:	18fb      	adds	r3, r7, r3
    12bc:	781b      	ldrb	r3, [r3, #0]
    12be:	2b6c      	cmp	r3, #108	; 0x6c
    12c0:	d004      	beq.n	12cc <xvprintf+0xdc>
    12c2:	231f      	movs	r3, #31
    12c4:	18fb      	adds	r3, r7, r3
    12c6:	781b      	ldrb	r3, [r3, #0]
    12c8:	2b4c      	cmp	r3, #76	; 0x4c
    12ca:	d10a      	bne.n	12e2 <xvprintf+0xf2>
    12cc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    12ce:	2204      	movs	r2, #4
    12d0:	4313      	orrs	r3, r2
    12d2:	627b      	str	r3, [r7, #36]	; 0x24
    12d4:	687b      	ldr	r3, [r7, #4]
    12d6:	1c5a      	adds	r2, r3, #1
    12d8:	607a      	str	r2, [r7, #4]
    12da:	221f      	movs	r2, #31
    12dc:	18ba      	adds	r2, r7, r2
    12de:	781b      	ldrb	r3, [r3, #0]
    12e0:	7013      	strb	r3, [r2, #0]
    12e2:	231f      	movs	r3, #31
    12e4:	18fb      	adds	r3, r7, r3
    12e6:	781b      	ldrb	r3, [r3, #0]
    12e8:	2b00      	cmp	r3, #0
    12ea:	d100      	bne.n	12ee <xvprintf+0xfe>
    12ec:	e107      	b.n	14fe <xvprintf+0x30e>
    12ee:	231e      	movs	r3, #30
    12f0:	18fb      	adds	r3, r7, r3
    12f2:	221f      	movs	r2, #31
    12f4:	18ba      	adds	r2, r7, r2
    12f6:	7812      	ldrb	r2, [r2, #0]
    12f8:	701a      	strb	r2, [r3, #0]
    12fa:	231e      	movs	r3, #30
    12fc:	18fb      	adds	r3, r7, r3
    12fe:	781b      	ldrb	r3, [r3, #0]
    1300:	2b60      	cmp	r3, #96	; 0x60
    1302:	d906      	bls.n	1312 <xvprintf+0x122>
    1304:	231e      	movs	r3, #30
    1306:	18fb      	adds	r3, r7, r3
    1308:	221e      	movs	r2, #30
    130a:	18ba      	adds	r2, r7, r2
    130c:	7812      	ldrb	r2, [r2, #0]
    130e:	3a20      	subs	r2, #32
    1310:	701a      	strb	r2, [r3, #0]
    1312:	231e      	movs	r3, #30
    1314:	18fb      	adds	r3, r7, r3
    1316:	781b      	ldrb	r3, [r3, #0]
    1318:	3b42      	subs	r3, #66	; 0x42
    131a:	2b16      	cmp	r3, #22
    131c:	d847      	bhi.n	13ae <xvprintf+0x1be>
    131e:	009a      	lsls	r2, r3, #2
    1320:	4b79      	ldr	r3, [pc, #484]	; (1508 <xvprintf+0x318>)
    1322:	18d3      	adds	r3, r2, r3
    1324:	681b      	ldr	r3, [r3, #0]
    1326:	469f      	mov	pc, r3
    1328:	683b      	ldr	r3, [r7, #0]
    132a:	1d1a      	adds	r2, r3, #4
    132c:	603a      	str	r2, [r7, #0]
    132e:	681b      	ldr	r3, [r3, #0]
    1330:	61bb      	str	r3, [r7, #24]
    1332:	2300      	movs	r3, #0
    1334:	62fb      	str	r3, [r7, #44]	; 0x2c
    1336:	e002      	b.n	133e <xvprintf+0x14e>
    1338:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    133a:	3301      	adds	r3, #1
    133c:	62fb      	str	r3, [r7, #44]	; 0x2c
    133e:	69ba      	ldr	r2, [r7, #24]
    1340:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1342:	18d3      	adds	r3, r2, r3
    1344:	781b      	ldrb	r3, [r3, #0]
    1346:	2b00      	cmp	r3, #0
    1348:	d1f6      	bne.n	1338 <xvprintf+0x148>
    134a:	e002      	b.n	1352 <xvprintf+0x162>
    134c:	2020      	movs	r0, #32
    134e:	f7ff feef 	bl	1130 <xputc>
    1352:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1354:	2202      	movs	r2, #2
    1356:	4013      	ands	r3, r2
    1358:	d105      	bne.n	1366 <xvprintf+0x176>
    135a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    135c:	1c5a      	adds	r2, r3, #1
    135e:	62fa      	str	r2, [r7, #44]	; 0x2c
    1360:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1362:	4293      	cmp	r3, r2
    1364:	d3f2      	bcc.n	134c <xvprintf+0x15c>
    1366:	69bb      	ldr	r3, [r7, #24]
    1368:	0018      	movs	r0, r3
    136a:	f7ff ff0d 	bl	1188 <xputs>
    136e:	e002      	b.n	1376 <xvprintf+0x186>
    1370:	2020      	movs	r0, #32
    1372:	f7ff fedd 	bl	1130 <xputc>
    1376:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1378:	1c5a      	adds	r2, r3, #1
    137a:	62fa      	str	r2, [r7, #44]	; 0x2c
    137c:	6aba      	ldr	r2, [r7, #40]	; 0x28
    137e:	4293      	cmp	r3, r2
    1380:	d3f6      	bcc.n	1370 <xvprintf+0x180>
    1382:	e0b9      	b.n	14f8 <xvprintf+0x308>
    1384:	683b      	ldr	r3, [r7, #0]
    1386:	1d1a      	adds	r2, r3, #4
    1388:	603a      	str	r2, [r7, #0]
    138a:	681b      	ldr	r3, [r3, #0]
    138c:	b2db      	uxtb	r3, r3
    138e:	0018      	movs	r0, r3
    1390:	f7ff fece 	bl	1130 <xputc>
    1394:	e0b0      	b.n	14f8 <xvprintf+0x308>
    1396:	2302      	movs	r3, #2
    1398:	637b      	str	r3, [r7, #52]	; 0x34
    139a:	e00f      	b.n	13bc <xvprintf+0x1cc>
    139c:	2308      	movs	r3, #8
    139e:	637b      	str	r3, [r7, #52]	; 0x34
    13a0:	e00c      	b.n	13bc <xvprintf+0x1cc>
    13a2:	230a      	movs	r3, #10
    13a4:	637b      	str	r3, [r7, #52]	; 0x34
    13a6:	e009      	b.n	13bc <xvprintf+0x1cc>
    13a8:	2310      	movs	r3, #16
    13aa:	637b      	str	r3, [r7, #52]	; 0x34
    13ac:	e006      	b.n	13bc <xvprintf+0x1cc>
    13ae:	231f      	movs	r3, #31
    13b0:	18fb      	adds	r3, r7, r3
    13b2:	781b      	ldrb	r3, [r3, #0]
    13b4:	0018      	movs	r0, r3
    13b6:	f7ff febb 	bl	1130 <xputc>
    13ba:	e09d      	b.n	14f8 <xvprintf+0x308>
    13bc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13be:	2204      	movs	r2, #4
    13c0:	4013      	ands	r3, r2
    13c2:	d004      	beq.n	13ce <xvprintf+0x1de>
    13c4:	683b      	ldr	r3, [r7, #0]
    13c6:	1d1a      	adds	r2, r3, #4
    13c8:	603a      	str	r2, [r7, #0]
    13ca:	681b      	ldr	r3, [r3, #0]
    13cc:	e00d      	b.n	13ea <xvprintf+0x1fa>
    13ce:	231e      	movs	r3, #30
    13d0:	18fb      	adds	r3, r7, r3
    13d2:	781b      	ldrb	r3, [r3, #0]
    13d4:	2b44      	cmp	r3, #68	; 0x44
    13d6:	d104      	bne.n	13e2 <xvprintf+0x1f2>
    13d8:	683b      	ldr	r3, [r7, #0]
    13da:	1d1a      	adds	r2, r3, #4
    13dc:	603a      	str	r2, [r7, #0]
    13de:	681b      	ldr	r3, [r3, #0]
    13e0:	e003      	b.n	13ea <xvprintf+0x1fa>
    13e2:	683b      	ldr	r3, [r7, #0]
    13e4:	1d1a      	adds	r2, r3, #4
    13e6:	603a      	str	r2, [r7, #0]
    13e8:	681b      	ldr	r3, [r3, #0]
    13ea:	623b      	str	r3, [r7, #32]
    13ec:	231e      	movs	r3, #30
    13ee:	18fb      	adds	r3, r7, r3
    13f0:	781b      	ldrb	r3, [r3, #0]
    13f2:	2b44      	cmp	r3, #68	; 0x44
    13f4:	d109      	bne.n	140a <xvprintf+0x21a>
    13f6:	6a3b      	ldr	r3, [r7, #32]
    13f8:	2b00      	cmp	r3, #0
    13fa:	da06      	bge.n	140a <xvprintf+0x21a>
    13fc:	6a3b      	ldr	r3, [r7, #32]
    13fe:	425b      	negs	r3, r3
    1400:	623b      	str	r3, [r7, #32]
    1402:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1404:	2208      	movs	r2, #8
    1406:	4313      	orrs	r3, r2
    1408:	627b      	str	r3, [r7, #36]	; 0x24
    140a:	2300      	movs	r3, #0
    140c:	633b      	str	r3, [r7, #48]	; 0x30
    140e:	6a3b      	ldr	r3, [r7, #32]
    1410:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1412:	0018      	movs	r0, r3
    1414:	f003 fa30 	bl	4878 <__aeabi_uidivmod>
    1418:	000b      	movs	r3, r1
    141a:	001a      	movs	r2, r3
    141c:	231e      	movs	r3, #30
    141e:	18fb      	adds	r3, r7, r3
    1420:	701a      	strb	r2, [r3, #0]
    1422:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1424:	6a38      	ldr	r0, [r7, #32]
    1426:	f003 f9a1 	bl	476c <__aeabi_uidiv>
    142a:	0003      	movs	r3, r0
    142c:	623b      	str	r3, [r7, #32]
    142e:	231e      	movs	r3, #30
    1430:	18fb      	adds	r3, r7, r3
    1432:	781b      	ldrb	r3, [r3, #0]
    1434:	2b09      	cmp	r3, #9
    1436:	d90e      	bls.n	1456 <xvprintf+0x266>
    1438:	231f      	movs	r3, #31
    143a:	18fb      	adds	r3, r7, r3
    143c:	781b      	ldrb	r3, [r3, #0]
    143e:	2b78      	cmp	r3, #120	; 0x78
    1440:	d101      	bne.n	1446 <xvprintf+0x256>
    1442:	2327      	movs	r3, #39	; 0x27
    1444:	e000      	b.n	1448 <xvprintf+0x258>
    1446:	2307      	movs	r3, #7
    1448:	221e      	movs	r2, #30
    144a:	18ba      	adds	r2, r7, r2
    144c:	211e      	movs	r1, #30
    144e:	1879      	adds	r1, r7, r1
    1450:	7809      	ldrb	r1, [r1, #0]
    1452:	185b      	adds	r3, r3, r1
    1454:	7013      	strb	r3, [r2, #0]
    1456:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1458:	1c5a      	adds	r2, r3, #1
    145a:	633a      	str	r2, [r7, #48]	; 0x30
    145c:	221e      	movs	r2, #30
    145e:	18ba      	adds	r2, r7, r2
    1460:	7812      	ldrb	r2, [r2, #0]
    1462:	3230      	adds	r2, #48	; 0x30
    1464:	b2d1      	uxtb	r1, r2
    1466:	2208      	movs	r2, #8
    1468:	18ba      	adds	r2, r7, r2
    146a:	54d1      	strb	r1, [r2, r3]
    146c:	6a3b      	ldr	r3, [r7, #32]
    146e:	2b00      	cmp	r3, #0
    1470:	d002      	beq.n	1478 <xvprintf+0x288>
    1472:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1474:	2b0f      	cmp	r3, #15
    1476:	d9ca      	bls.n	140e <xvprintf+0x21e>
    1478:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    147a:	2208      	movs	r2, #8
    147c:	4013      	ands	r3, r2
    147e:	d006      	beq.n	148e <xvprintf+0x29e>
    1480:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1482:	1c5a      	adds	r2, r3, #1
    1484:	633a      	str	r2, [r7, #48]	; 0x30
    1486:	2208      	movs	r2, #8
    1488:	18ba      	adds	r2, r7, r2
    148a:	212d      	movs	r1, #45	; 0x2d
    148c:	54d1      	strb	r1, [r2, r3]
    148e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1490:	62fb      	str	r3, [r7, #44]	; 0x2c
    1492:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1494:	2201      	movs	r2, #1
    1496:	4013      	ands	r3, r2
    1498:	d001      	beq.n	149e <xvprintf+0x2ae>
    149a:	2230      	movs	r2, #48	; 0x30
    149c:	e000      	b.n	14a0 <xvprintf+0x2b0>
    149e:	2220      	movs	r2, #32
    14a0:	231e      	movs	r3, #30
    14a2:	18fb      	adds	r3, r7, r3
    14a4:	701a      	strb	r2, [r3, #0]
    14a6:	e005      	b.n	14b4 <xvprintf+0x2c4>
    14a8:	231e      	movs	r3, #30
    14aa:	18fb      	adds	r3, r7, r3
    14ac:	781b      	ldrb	r3, [r3, #0]
    14ae:	0018      	movs	r0, r3
    14b0:	f7ff fe3e 	bl	1130 <xputc>
    14b4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14b6:	2202      	movs	r2, #2
    14b8:	4013      	ands	r3, r2
    14ba:	d105      	bne.n	14c8 <xvprintf+0x2d8>
    14bc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14be:	1c5a      	adds	r2, r3, #1
    14c0:	62fa      	str	r2, [r7, #44]	; 0x2c
    14c2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14c4:	4293      	cmp	r3, r2
    14c6:	d3ef      	bcc.n	14a8 <xvprintf+0x2b8>
    14c8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14ca:	3b01      	subs	r3, #1
    14cc:	633b      	str	r3, [r7, #48]	; 0x30
    14ce:	2308      	movs	r3, #8
    14d0:	18fa      	adds	r2, r7, r3
    14d2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14d4:	18d3      	adds	r3, r2, r3
    14d6:	781b      	ldrb	r3, [r3, #0]
    14d8:	0018      	movs	r0, r3
    14da:	f7ff fe29 	bl	1130 <xputc>
    14de:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14e0:	2b00      	cmp	r3, #0
    14e2:	d1f1      	bne.n	14c8 <xvprintf+0x2d8>
    14e4:	e002      	b.n	14ec <xvprintf+0x2fc>
    14e6:	2020      	movs	r0, #32
    14e8:	f7ff fe22 	bl	1130 <xputc>
    14ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14ee:	1c5a      	adds	r2, r3, #1
    14f0:	62fa      	str	r2, [r7, #44]	; 0x2c
    14f2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14f4:	4293      	cmp	r3, r2
    14f6:	d3f6      	bcc.n	14e6 <xvprintf+0x2f6>
    14f8:	e67f      	b.n	11fa <xvprintf+0xa>
    14fa:	46c0      	nop			; (mov r8, r8)
    14fc:	e000      	b.n	1500 <xvprintf+0x310>
    14fe:	46c0      	nop			; (mov r8, r8)
    1500:	46c0      	nop			; (mov r8, r8)
    1502:	46bd      	mov	sp, r7
    1504:	b00e      	add	sp, #56	; 0x38
    1506:	bd80      	pop	{r7, pc}
    1508:	00008960 	.word	0x00008960

0000150c <xprintf>:
    150c:	b40f      	push	{r0, r1, r2, r3}
    150e:	b580      	push	{r7, lr}
    1510:	b082      	sub	sp, #8
    1512:	af00      	add	r7, sp, #0
    1514:	2314      	movs	r3, #20
    1516:	18fb      	adds	r3, r7, r3
    1518:	607b      	str	r3, [r7, #4]
    151a:	687a      	ldr	r2, [r7, #4]
    151c:	693b      	ldr	r3, [r7, #16]
    151e:	0011      	movs	r1, r2
    1520:	0018      	movs	r0, r3
    1522:	f7ff fe65 	bl	11f0 <xvprintf>
    1526:	46c0      	nop			; (mov r8, r8)
    1528:	46bd      	mov	sp, r7
    152a:	b002      	add	sp, #8
    152c:	bc80      	pop	{r7}
    152e:	bc08      	pop	{r3}
    1530:	b004      	add	sp, #16
    1532:	4718      	bx	r3

00001534 <xsprintf>:
    1534:	b40e      	push	{r1, r2, r3}
    1536:	b580      	push	{r7, lr}
    1538:	b085      	sub	sp, #20
    153a:	af00      	add	r7, sp, #0
    153c:	6078      	str	r0, [r7, #4]
    153e:	4b0d      	ldr	r3, [pc, #52]	; (1574 <xsprintf+0x40>)
    1540:	687a      	ldr	r2, [r7, #4]
    1542:	601a      	str	r2, [r3, #0]
    1544:	2320      	movs	r3, #32
    1546:	18fb      	adds	r3, r7, r3
    1548:	60fb      	str	r3, [r7, #12]
    154a:	68fa      	ldr	r2, [r7, #12]
    154c:	69fb      	ldr	r3, [r7, #28]
    154e:	0011      	movs	r1, r2
    1550:	0018      	movs	r0, r3
    1552:	f7ff fe4d 	bl	11f0 <xvprintf>
    1556:	4b07      	ldr	r3, [pc, #28]	; (1574 <xsprintf+0x40>)
    1558:	681b      	ldr	r3, [r3, #0]
    155a:	2200      	movs	r2, #0
    155c:	701a      	strb	r2, [r3, #0]
    155e:	4b05      	ldr	r3, [pc, #20]	; (1574 <xsprintf+0x40>)
    1560:	2200      	movs	r2, #0
    1562:	601a      	str	r2, [r3, #0]
    1564:	46c0      	nop			; (mov r8, r8)
    1566:	46bd      	mov	sp, r7
    1568:	b005      	add	sp, #20
    156a:	bc80      	pop	{r7}
    156c:	bc08      	pop	{r3}
    156e:	b003      	add	sp, #12
    1570:	4718      	bx	r3
    1572:	46c0      	nop			; (mov r8, r8)
    1574:	20000900 	.word	0x20000900

00001578 <xfprintf>:
    1578:	b40e      	push	{r1, r2, r3}
    157a:	b580      	push	{r7, lr}
    157c:	b085      	sub	sp, #20
    157e:	af00      	add	r7, sp, #0
    1580:	6078      	str	r0, [r7, #4]
    1582:	4b0c      	ldr	r3, [pc, #48]	; (15b4 <xfprintf+0x3c>)
    1584:	681b      	ldr	r3, [r3, #0]
    1586:	60fb      	str	r3, [r7, #12]
    1588:	4b0a      	ldr	r3, [pc, #40]	; (15b4 <xfprintf+0x3c>)
    158a:	687a      	ldr	r2, [r7, #4]
    158c:	601a      	str	r2, [r3, #0]
    158e:	2320      	movs	r3, #32
    1590:	18fb      	adds	r3, r7, r3
    1592:	60bb      	str	r3, [r7, #8]
    1594:	68ba      	ldr	r2, [r7, #8]
    1596:	69fb      	ldr	r3, [r7, #28]
    1598:	0011      	movs	r1, r2
    159a:	0018      	movs	r0, r3
    159c:	f7ff fe28 	bl	11f0 <xvprintf>
    15a0:	4b04      	ldr	r3, [pc, #16]	; (15b4 <xfprintf+0x3c>)
    15a2:	68fa      	ldr	r2, [r7, #12]
    15a4:	601a      	str	r2, [r3, #0]
    15a6:	46c0      	nop			; (mov r8, r8)
    15a8:	46bd      	mov	sp, r7
    15aa:	b005      	add	sp, #20
    15ac:	bc80      	pop	{r7}
    15ae:	bc08      	pop	{r3}
    15b0:	b003      	add	sp, #12
    15b2:	4718      	bx	r3
    15b4:	200008fc 	.word	0x200008fc

000015b8 <put_dump>:
    15b8:	b580      	push	{r7, lr}
    15ba:	b088      	sub	sp, #32
    15bc:	af00      	add	r7, sp, #0
    15be:	60f8      	str	r0, [r7, #12]
    15c0:	60b9      	str	r1, [r7, #8]
    15c2:	607a      	str	r2, [r7, #4]
    15c4:	603b      	str	r3, [r7, #0]
    15c6:	68ba      	ldr	r2, [r7, #8]
    15c8:	4b38      	ldr	r3, [pc, #224]	; (16ac <put_dump+0xf4>)
    15ca:	0011      	movs	r1, r2
    15cc:	0018      	movs	r0, r3
    15ce:	f7ff ff9d 	bl	150c <xprintf>
    15d2:	683b      	ldr	r3, [r7, #0]
    15d4:	2b02      	cmp	r3, #2
    15d6:	d03c      	beq.n	1652 <put_dump+0x9a>
    15d8:	2b04      	cmp	r3, #4
    15da:	d04d      	beq.n	1678 <put_dump+0xc0>
    15dc:	2b01      	cmp	r3, #1
    15de:	d15d      	bne.n	169c <put_dump+0xe4>
    15e0:	68fb      	ldr	r3, [r7, #12]
    15e2:	613b      	str	r3, [r7, #16]
    15e4:	2300      	movs	r3, #0
    15e6:	61fb      	str	r3, [r7, #28]
    15e8:	e00c      	b.n	1604 <put_dump+0x4c>
    15ea:	69fb      	ldr	r3, [r7, #28]
    15ec:	693a      	ldr	r2, [r7, #16]
    15ee:	18d3      	adds	r3, r2, r3
    15f0:	781b      	ldrb	r3, [r3, #0]
    15f2:	001a      	movs	r2, r3
    15f4:	4b2e      	ldr	r3, [pc, #184]	; (16b0 <put_dump+0xf8>)
    15f6:	0011      	movs	r1, r2
    15f8:	0018      	movs	r0, r3
    15fa:	f7ff ff87 	bl	150c <xprintf>
    15fe:	69fb      	ldr	r3, [r7, #28]
    1600:	3301      	adds	r3, #1
    1602:	61fb      	str	r3, [r7, #28]
    1604:	69fa      	ldr	r2, [r7, #28]
    1606:	687b      	ldr	r3, [r7, #4]
    1608:	429a      	cmp	r2, r3
    160a:	dbee      	blt.n	15ea <put_dump+0x32>
    160c:	2020      	movs	r0, #32
    160e:	f7ff fd8f 	bl	1130 <xputc>
    1612:	2300      	movs	r3, #0
    1614:	61fb      	str	r3, [r7, #28]
    1616:	e017      	b.n	1648 <put_dump+0x90>
    1618:	69fb      	ldr	r3, [r7, #28]
    161a:	693a      	ldr	r2, [r7, #16]
    161c:	18d3      	adds	r3, r2, r3
    161e:	781b      	ldrb	r3, [r3, #0]
    1620:	2b1f      	cmp	r3, #31
    1622:	d90a      	bls.n	163a <put_dump+0x82>
    1624:	69fb      	ldr	r3, [r7, #28]
    1626:	693a      	ldr	r2, [r7, #16]
    1628:	18d3      	adds	r3, r2, r3
    162a:	781b      	ldrb	r3, [r3, #0]
    162c:	2b7e      	cmp	r3, #126	; 0x7e
    162e:	d804      	bhi.n	163a <put_dump+0x82>
    1630:	69fb      	ldr	r3, [r7, #28]
    1632:	693a      	ldr	r2, [r7, #16]
    1634:	18d3      	adds	r3, r2, r3
    1636:	781b      	ldrb	r3, [r3, #0]
    1638:	e000      	b.n	163c <put_dump+0x84>
    163a:	232e      	movs	r3, #46	; 0x2e
    163c:	0018      	movs	r0, r3
    163e:	f7ff fd77 	bl	1130 <xputc>
    1642:	69fb      	ldr	r3, [r7, #28]
    1644:	3301      	adds	r3, #1
    1646:	61fb      	str	r3, [r7, #28]
    1648:	69fa      	ldr	r2, [r7, #28]
    164a:	687b      	ldr	r3, [r7, #4]
    164c:	429a      	cmp	r2, r3
    164e:	dbe3      	blt.n	1618 <put_dump+0x60>
    1650:	e024      	b.n	169c <put_dump+0xe4>
    1652:	68fb      	ldr	r3, [r7, #12]
    1654:	61bb      	str	r3, [r7, #24]
    1656:	69bb      	ldr	r3, [r7, #24]
    1658:	1c9a      	adds	r2, r3, #2
    165a:	61ba      	str	r2, [r7, #24]
    165c:	881b      	ldrh	r3, [r3, #0]
    165e:	001a      	movs	r2, r3
    1660:	4b14      	ldr	r3, [pc, #80]	; (16b4 <put_dump+0xfc>)
    1662:	0011      	movs	r1, r2
    1664:	0018      	movs	r0, r3
    1666:	f7ff ff51 	bl	150c <xprintf>
    166a:	687b      	ldr	r3, [r7, #4]
    166c:	3b01      	subs	r3, #1
    166e:	607b      	str	r3, [r7, #4]
    1670:	687b      	ldr	r3, [r7, #4]
    1672:	2b00      	cmp	r3, #0
    1674:	d1ef      	bne.n	1656 <put_dump+0x9e>
    1676:	e011      	b.n	169c <put_dump+0xe4>
    1678:	68fb      	ldr	r3, [r7, #12]
    167a:	617b      	str	r3, [r7, #20]
    167c:	697b      	ldr	r3, [r7, #20]
    167e:	1d1a      	adds	r2, r3, #4
    1680:	617a      	str	r2, [r7, #20]
    1682:	681a      	ldr	r2, [r3, #0]
    1684:	4b0c      	ldr	r3, [pc, #48]	; (16b8 <put_dump+0x100>)
    1686:	0011      	movs	r1, r2
    1688:	0018      	movs	r0, r3
    168a:	f7ff ff3f 	bl	150c <xprintf>
    168e:	687b      	ldr	r3, [r7, #4]
    1690:	3b01      	subs	r3, #1
    1692:	607b      	str	r3, [r7, #4]
    1694:	687b      	ldr	r3, [r7, #4]
    1696:	2b00      	cmp	r3, #0
    1698:	d1f0      	bne.n	167c <put_dump+0xc4>
    169a:	46c0      	nop			; (mov r8, r8)
    169c:	200a      	movs	r0, #10
    169e:	f7ff fd47 	bl	1130 <xputc>
    16a2:	46c0      	nop			; (mov r8, r8)
    16a4:	46bd      	mov	sp, r7
    16a6:	b008      	add	sp, #32
    16a8:	bd80      	pop	{r7, pc}
    16aa:	46c0      	nop			; (mov r8, r8)
    16ac:	000089bc 	.word	0x000089bc
    16b0:	000089c4 	.word	0x000089c4
    16b4:	000089cc 	.word	0x000089cc
    16b8:	000089d4 	.word	0x000089d4

000016bc <xgets>:
    16bc:	b580      	push	{r7, lr}
    16be:	b084      	sub	sp, #16
    16c0:	af00      	add	r7, sp, #0
    16c2:	6078      	str	r0, [r7, #4]
    16c4:	6039      	str	r1, [r7, #0]
    16c6:	4b24      	ldr	r3, [pc, #144]	; (1758 <xgets+0x9c>)
    16c8:	681b      	ldr	r3, [r3, #0]
    16ca:	2b00      	cmp	r3, #0
    16cc:	d101      	bne.n	16d2 <xgets+0x16>
    16ce:	2300      	movs	r3, #0
    16d0:	e03e      	b.n	1750 <xgets+0x94>
    16d2:	2300      	movs	r3, #0
    16d4:	60fb      	str	r3, [r7, #12]
    16d6:	4b20      	ldr	r3, [pc, #128]	; (1758 <xgets+0x9c>)
    16d8:	681b      	ldr	r3, [r3, #0]
    16da:	4798      	blx	r3
    16dc:	0003      	movs	r3, r0
    16de:	60bb      	str	r3, [r7, #8]
    16e0:	68bb      	ldr	r3, [r7, #8]
    16e2:	2b00      	cmp	r3, #0
    16e4:	d101      	bne.n	16ea <xgets+0x2e>
    16e6:	2300      	movs	r3, #0
    16e8:	e032      	b.n	1750 <xgets+0x94>
    16ea:	68bb      	ldr	r3, [r7, #8]
    16ec:	2b0d      	cmp	r3, #13
    16ee:	d025      	beq.n	173c <xgets+0x80>
    16f0:	68bb      	ldr	r3, [r7, #8]
    16f2:	2b08      	cmp	r3, #8
    16f4:	d10b      	bne.n	170e <xgets+0x52>
    16f6:	68fb      	ldr	r3, [r7, #12]
    16f8:	2b00      	cmp	r3, #0
    16fa:	d008      	beq.n	170e <xgets+0x52>
    16fc:	68fb      	ldr	r3, [r7, #12]
    16fe:	3b01      	subs	r3, #1
    1700:	60fb      	str	r3, [r7, #12]
    1702:	68bb      	ldr	r3, [r7, #8]
    1704:	b2db      	uxtb	r3, r3
    1706:	0018      	movs	r0, r3
    1708:	f7ff fd12 	bl	1130 <xputc>
    170c:	e015      	b.n	173a <xgets+0x7e>
    170e:	68bb      	ldr	r3, [r7, #8]
    1710:	2b1f      	cmp	r3, #31
    1712:	dde0      	ble.n	16d6 <xgets+0x1a>
    1714:	683b      	ldr	r3, [r7, #0]
    1716:	1e5a      	subs	r2, r3, #1
    1718:	68fb      	ldr	r3, [r7, #12]
    171a:	429a      	cmp	r2, r3
    171c:	dddb      	ble.n	16d6 <xgets+0x1a>
    171e:	68fb      	ldr	r3, [r7, #12]
    1720:	1c5a      	adds	r2, r3, #1
    1722:	60fa      	str	r2, [r7, #12]
    1724:	001a      	movs	r2, r3
    1726:	687b      	ldr	r3, [r7, #4]
    1728:	189b      	adds	r3, r3, r2
    172a:	68ba      	ldr	r2, [r7, #8]
    172c:	b2d2      	uxtb	r2, r2
    172e:	701a      	strb	r2, [r3, #0]
    1730:	68bb      	ldr	r3, [r7, #8]
    1732:	b2db      	uxtb	r3, r3
    1734:	0018      	movs	r0, r3
    1736:	f7ff fcfb 	bl	1130 <xputc>
    173a:	e7cc      	b.n	16d6 <xgets+0x1a>
    173c:	46c0      	nop			; (mov r8, r8)
    173e:	68fb      	ldr	r3, [r7, #12]
    1740:	687a      	ldr	r2, [r7, #4]
    1742:	18d3      	adds	r3, r2, r3
    1744:	2200      	movs	r2, #0
    1746:	701a      	strb	r2, [r3, #0]
    1748:	200a      	movs	r0, #10
    174a:	f7ff fcf1 	bl	1130 <xputc>
    174e:	2301      	movs	r3, #1
    1750:	0018      	movs	r0, r3
    1752:	46bd      	mov	sp, r7
    1754:	b004      	add	sp, #16
    1756:	bd80      	pop	{r7, pc}
    1758:	20000904 	.word	0x20000904

0000175c <xfgets>:
    175c:	b580      	push	{r7, lr}
    175e:	b086      	sub	sp, #24
    1760:	af00      	add	r7, sp, #0
    1762:	60f8      	str	r0, [r7, #12]
    1764:	60b9      	str	r1, [r7, #8]
    1766:	607a      	str	r2, [r7, #4]
    1768:	4b0a      	ldr	r3, [pc, #40]	; (1794 <xfgets+0x38>)
    176a:	681b      	ldr	r3, [r3, #0]
    176c:	617b      	str	r3, [r7, #20]
    176e:	4b09      	ldr	r3, [pc, #36]	; (1794 <xfgets+0x38>)
    1770:	68fa      	ldr	r2, [r7, #12]
    1772:	601a      	str	r2, [r3, #0]
    1774:	687a      	ldr	r2, [r7, #4]
    1776:	68bb      	ldr	r3, [r7, #8]
    1778:	0011      	movs	r1, r2
    177a:	0018      	movs	r0, r3
    177c:	f7ff ff9e 	bl	16bc <xgets>
    1780:	0003      	movs	r3, r0
    1782:	613b      	str	r3, [r7, #16]
    1784:	4b03      	ldr	r3, [pc, #12]	; (1794 <xfgets+0x38>)
    1786:	697a      	ldr	r2, [r7, #20]
    1788:	601a      	str	r2, [r3, #0]
    178a:	693b      	ldr	r3, [r7, #16]
    178c:	0018      	movs	r0, r3
    178e:	46bd      	mov	sp, r7
    1790:	b006      	add	sp, #24
    1792:	bd80      	pop	{r7, pc}
    1794:	20000904 	.word	0x20000904

00001798 <xatoi>:
    1798:	b580      	push	{r7, lr}
    179a:	b084      	sub	sp, #16
    179c:	af00      	add	r7, sp, #0
    179e:	6078      	str	r0, [r7, #4]
    17a0:	6039      	str	r1, [r7, #0]
    17a2:	2309      	movs	r3, #9
    17a4:	18fb      	adds	r3, r7, r3
    17a6:	2200      	movs	r2, #0
    17a8:	701a      	strb	r2, [r3, #0]
    17aa:	683b      	ldr	r3, [r7, #0]
    17ac:	2200      	movs	r2, #0
    17ae:	601a      	str	r2, [r3, #0]
    17b0:	e004      	b.n	17bc <xatoi+0x24>
    17b2:	687b      	ldr	r3, [r7, #4]
    17b4:	681b      	ldr	r3, [r3, #0]
    17b6:	1c5a      	adds	r2, r3, #1
    17b8:	687b      	ldr	r3, [r7, #4]
    17ba:	601a      	str	r2, [r3, #0]
    17bc:	687b      	ldr	r3, [r7, #4]
    17be:	681a      	ldr	r2, [r3, #0]
    17c0:	230b      	movs	r3, #11
    17c2:	18fb      	adds	r3, r7, r3
    17c4:	7812      	ldrb	r2, [r2, #0]
    17c6:	701a      	strb	r2, [r3, #0]
    17c8:	230b      	movs	r3, #11
    17ca:	18fb      	adds	r3, r7, r3
    17cc:	781b      	ldrb	r3, [r3, #0]
    17ce:	2b20      	cmp	r3, #32
    17d0:	d0ef      	beq.n	17b2 <xatoi+0x1a>
    17d2:	230b      	movs	r3, #11
    17d4:	18fb      	adds	r3, r7, r3
    17d6:	781b      	ldrb	r3, [r3, #0]
    17d8:	2b2d      	cmp	r3, #45	; 0x2d
    17da:	d10e      	bne.n	17fa <xatoi+0x62>
    17dc:	2309      	movs	r3, #9
    17de:	18fb      	adds	r3, r7, r3
    17e0:	2201      	movs	r2, #1
    17e2:	701a      	strb	r2, [r3, #0]
    17e4:	687b      	ldr	r3, [r7, #4]
    17e6:	681b      	ldr	r3, [r3, #0]
    17e8:	1c5a      	adds	r2, r3, #1
    17ea:	687b      	ldr	r3, [r7, #4]
    17ec:	601a      	str	r2, [r3, #0]
    17ee:	687b      	ldr	r3, [r7, #4]
    17f0:	681a      	ldr	r2, [r3, #0]
    17f2:	230b      	movs	r3, #11
    17f4:	18fb      	adds	r3, r7, r3
    17f6:	7812      	ldrb	r2, [r2, #0]
    17f8:	701a      	strb	r2, [r3, #0]
    17fa:	230b      	movs	r3, #11
    17fc:	18fb      	adds	r3, r7, r3
    17fe:	781b      	ldrb	r3, [r3, #0]
    1800:	2b30      	cmp	r3, #48	; 0x30
    1802:	d149      	bne.n	1898 <xatoi+0x100>
    1804:	687b      	ldr	r3, [r7, #4]
    1806:	681b      	ldr	r3, [r3, #0]
    1808:	1c5a      	adds	r2, r3, #1
    180a:	687b      	ldr	r3, [r7, #4]
    180c:	601a      	str	r2, [r3, #0]
    180e:	687b      	ldr	r3, [r7, #4]
    1810:	681a      	ldr	r2, [r3, #0]
    1812:	230b      	movs	r3, #11
    1814:	18fb      	adds	r3, r7, r3
    1816:	7812      	ldrb	r2, [r2, #0]
    1818:	701a      	strb	r2, [r3, #0]
    181a:	230b      	movs	r3, #11
    181c:	18fb      	adds	r3, r7, r3
    181e:	781b      	ldrb	r3, [r3, #0]
    1820:	2b62      	cmp	r3, #98	; 0x62
    1822:	d011      	beq.n	1848 <xatoi+0xb0>
    1824:	2b78      	cmp	r3, #120	; 0x78
    1826:	d11f      	bne.n	1868 <xatoi+0xd0>
    1828:	230a      	movs	r3, #10
    182a:	18fb      	adds	r3, r7, r3
    182c:	2210      	movs	r2, #16
    182e:	701a      	strb	r2, [r3, #0]
    1830:	687b      	ldr	r3, [r7, #4]
    1832:	681b      	ldr	r3, [r3, #0]
    1834:	1c5a      	adds	r2, r3, #1
    1836:	687b      	ldr	r3, [r7, #4]
    1838:	601a      	str	r2, [r3, #0]
    183a:	687b      	ldr	r3, [r7, #4]
    183c:	681a      	ldr	r2, [r3, #0]
    183e:	230b      	movs	r3, #11
    1840:	18fb      	adds	r3, r7, r3
    1842:	7812      	ldrb	r2, [r2, #0]
    1844:	701a      	strb	r2, [r3, #0]
    1846:	e037      	b.n	18b8 <xatoi+0x120>
    1848:	230a      	movs	r3, #10
    184a:	18fb      	adds	r3, r7, r3
    184c:	2202      	movs	r2, #2
    184e:	701a      	strb	r2, [r3, #0]
    1850:	687b      	ldr	r3, [r7, #4]
    1852:	681b      	ldr	r3, [r3, #0]
    1854:	1c5a      	adds	r2, r3, #1
    1856:	687b      	ldr	r3, [r7, #4]
    1858:	601a      	str	r2, [r3, #0]
    185a:	687b      	ldr	r3, [r7, #4]
    185c:	681a      	ldr	r2, [r3, #0]
    185e:	230b      	movs	r3, #11
    1860:	18fb      	adds	r3, r7, r3
    1862:	7812      	ldrb	r2, [r2, #0]
    1864:	701a      	strb	r2, [r3, #0]
    1866:	e027      	b.n	18b8 <xatoi+0x120>
    1868:	230b      	movs	r3, #11
    186a:	18fb      	adds	r3, r7, r3
    186c:	781b      	ldrb	r3, [r3, #0]
    186e:	2b20      	cmp	r3, #32
    1870:	d801      	bhi.n	1876 <xatoi+0xde>
    1872:	2301      	movs	r3, #1
    1874:	e079      	b.n	196a <xatoi+0x1d2>
    1876:	230b      	movs	r3, #11
    1878:	18fb      	adds	r3, r7, r3
    187a:	781b      	ldrb	r3, [r3, #0]
    187c:	2b2f      	cmp	r3, #47	; 0x2f
    187e:	d904      	bls.n	188a <xatoi+0xf2>
    1880:	230b      	movs	r3, #11
    1882:	18fb      	adds	r3, r7, r3
    1884:	781b      	ldrb	r3, [r3, #0]
    1886:	2b39      	cmp	r3, #57	; 0x39
    1888:	d901      	bls.n	188e <xatoi+0xf6>
    188a:	2300      	movs	r3, #0
    188c:	e06d      	b.n	196a <xatoi+0x1d2>
    188e:	230a      	movs	r3, #10
    1890:	18fb      	adds	r3, r7, r3
    1892:	2208      	movs	r2, #8
    1894:	701a      	strb	r2, [r3, #0]
    1896:	e00f      	b.n	18b8 <xatoi+0x120>
    1898:	230b      	movs	r3, #11
    189a:	18fb      	adds	r3, r7, r3
    189c:	781b      	ldrb	r3, [r3, #0]
    189e:	2b2f      	cmp	r3, #47	; 0x2f
    18a0:	d904      	bls.n	18ac <xatoi+0x114>
    18a2:	230b      	movs	r3, #11
    18a4:	18fb      	adds	r3, r7, r3
    18a6:	781b      	ldrb	r3, [r3, #0]
    18a8:	2b39      	cmp	r3, #57	; 0x39
    18aa:	d901      	bls.n	18b0 <xatoi+0x118>
    18ac:	2300      	movs	r3, #0
    18ae:	e05c      	b.n	196a <xatoi+0x1d2>
    18b0:	230a      	movs	r3, #10
    18b2:	18fb      	adds	r3, r7, r3
    18b4:	220a      	movs	r2, #10
    18b6:	701a      	strb	r2, [r3, #0]
    18b8:	2300      	movs	r3, #0
    18ba:	60fb      	str	r3, [r7, #12]
    18bc:	e044      	b.n	1948 <xatoi+0x1b0>
    18be:	230b      	movs	r3, #11
    18c0:	18fb      	adds	r3, r7, r3
    18c2:	781b      	ldrb	r3, [r3, #0]
    18c4:	2b60      	cmp	r3, #96	; 0x60
    18c6:	d906      	bls.n	18d6 <xatoi+0x13e>
    18c8:	230b      	movs	r3, #11
    18ca:	18fb      	adds	r3, r7, r3
    18cc:	220b      	movs	r2, #11
    18ce:	18ba      	adds	r2, r7, r2
    18d0:	7812      	ldrb	r2, [r2, #0]
    18d2:	3a20      	subs	r2, #32
    18d4:	701a      	strb	r2, [r3, #0]
    18d6:	230b      	movs	r3, #11
    18d8:	18fb      	adds	r3, r7, r3
    18da:	220b      	movs	r2, #11
    18dc:	18ba      	adds	r2, r7, r2
    18de:	7812      	ldrb	r2, [r2, #0]
    18e0:	3a30      	subs	r2, #48	; 0x30
    18e2:	701a      	strb	r2, [r3, #0]
    18e4:	230b      	movs	r3, #11
    18e6:	18fb      	adds	r3, r7, r3
    18e8:	781b      	ldrb	r3, [r3, #0]
    18ea:	2b10      	cmp	r3, #16
    18ec:	d90d      	bls.n	190a <xatoi+0x172>
    18ee:	230b      	movs	r3, #11
    18f0:	18fb      	adds	r3, r7, r3
    18f2:	220b      	movs	r2, #11
    18f4:	18ba      	adds	r2, r7, r2
    18f6:	7812      	ldrb	r2, [r2, #0]
    18f8:	3a07      	subs	r2, #7
    18fa:	701a      	strb	r2, [r3, #0]
    18fc:	230b      	movs	r3, #11
    18fe:	18fb      	adds	r3, r7, r3
    1900:	781b      	ldrb	r3, [r3, #0]
    1902:	2b09      	cmp	r3, #9
    1904:	d801      	bhi.n	190a <xatoi+0x172>
    1906:	2300      	movs	r3, #0
    1908:	e02f      	b.n	196a <xatoi+0x1d2>
    190a:	230b      	movs	r3, #11
    190c:	18fa      	adds	r2, r7, r3
    190e:	230a      	movs	r3, #10
    1910:	18fb      	adds	r3, r7, r3
    1912:	7812      	ldrb	r2, [r2, #0]
    1914:	781b      	ldrb	r3, [r3, #0]
    1916:	429a      	cmp	r2, r3
    1918:	d301      	bcc.n	191e <xatoi+0x186>
    191a:	2300      	movs	r3, #0
    191c:	e025      	b.n	196a <xatoi+0x1d2>
    191e:	230a      	movs	r3, #10
    1920:	18fb      	adds	r3, r7, r3
    1922:	781b      	ldrb	r3, [r3, #0]
    1924:	68fa      	ldr	r2, [r7, #12]
    1926:	435a      	muls	r2, r3
    1928:	230b      	movs	r3, #11
    192a:	18fb      	adds	r3, r7, r3
    192c:	781b      	ldrb	r3, [r3, #0]
    192e:	18d3      	adds	r3, r2, r3
    1930:	60fb      	str	r3, [r7, #12]
    1932:	687b      	ldr	r3, [r7, #4]
    1934:	681b      	ldr	r3, [r3, #0]
    1936:	1c5a      	adds	r2, r3, #1
    1938:	687b      	ldr	r3, [r7, #4]
    193a:	601a      	str	r2, [r3, #0]
    193c:	687b      	ldr	r3, [r7, #4]
    193e:	681a      	ldr	r2, [r3, #0]
    1940:	230b      	movs	r3, #11
    1942:	18fb      	adds	r3, r7, r3
    1944:	7812      	ldrb	r2, [r2, #0]
    1946:	701a      	strb	r2, [r3, #0]
    1948:	230b      	movs	r3, #11
    194a:	18fb      	adds	r3, r7, r3
    194c:	781b      	ldrb	r3, [r3, #0]
    194e:	2b20      	cmp	r3, #32
    1950:	d8b5      	bhi.n	18be <xatoi+0x126>
    1952:	2309      	movs	r3, #9
    1954:	18fb      	adds	r3, r7, r3
    1956:	781b      	ldrb	r3, [r3, #0]
    1958:	2b00      	cmp	r3, #0
    195a:	d002      	beq.n	1962 <xatoi+0x1ca>
    195c:	68fb      	ldr	r3, [r7, #12]
    195e:	425b      	negs	r3, r3
    1960:	60fb      	str	r3, [r7, #12]
    1962:	68fa      	ldr	r2, [r7, #12]
    1964:	683b      	ldr	r3, [r7, #0]
    1966:	601a      	str	r2, [r3, #0]
    1968:	2301      	movs	r3, #1
    196a:	0018      	movs	r0, r3
    196c:	46bd      	mov	sp, r7
    196e:	b004      	add	sp, #16
    1970:	bd80      	pop	{r7, pc}
    1972:	46c0      	nop			; (mov r8, r8)

00001974 <os_idle_demon>:
    1974:	b580      	push	{r7, lr}
    1976:	af00      	add	r7, sp, #0
    1978:	e7fe      	b.n	1978 <os_idle_demon+0x4>
    197a:	46c0      	nop			; (mov r8, r8)

0000197c <os_error>:
    197c:	b580      	push	{r7, lr}
    197e:	b082      	sub	sp, #8
    1980:	af00      	add	r7, sp, #0
    1982:	6078      	str	r0, [r7, #4]
    1984:	687b      	ldr	r3, [r7, #4]
    1986:	2b02      	cmp	r3, #2
    1988:	d009      	beq.n	199e <os_error+0x22>
    198a:	d802      	bhi.n	1992 <os_error+0x16>
    198c:	2b01      	cmp	r3, #1
    198e:	d005      	beq.n	199c <os_error+0x20>
    1990:	e008      	b.n	19a4 <os_error+0x28>
    1992:	2b03      	cmp	r3, #3
    1994:	d004      	beq.n	19a0 <os_error+0x24>
    1996:	2b04      	cmp	r3, #4
    1998:	d003      	beq.n	19a2 <os_error+0x26>
    199a:	e003      	b.n	19a4 <os_error+0x28>
    199c:	e002      	b.n	19a4 <os_error+0x28>
    199e:	e001      	b.n	19a4 <os_error+0x28>
    19a0:	e000      	b.n	19a4 <os_error+0x28>
    19a2:	46c0      	nop			; (mov r8, r8)
    19a4:	e7fe      	b.n	19a4 <os_error+0x28>
    19a6:	46c0      	nop			; (mov r8, r8)

000019a8 <software_init_hook>:
    19a8:	2000      	movs	r0, #0
    19aa:	2100      	movs	r1, #0
    19ac:	4604      	mov	r4, r0
    19ae:	460d      	mov	r5, r1
    19b0:	4808      	ldr	r0, [pc, #32]	; (19d4 <software_init_hook+0x2c>)
    19b2:	f003 fa35 	bl	4e20 <atexit>
    19b6:	f003 fa65 	bl	4e84 <__libc_init_array>
    19ba:	4620      	mov	r0, r4
    19bc:	4629      	mov	r1, r5
    19be:	f004 f8f3 	bl	5ba8 <osKernelInitialize>
    19c2:	4805      	ldr	r0, [pc, #20]	; (19d8 <software_init_hook+0x30>)
    19c4:	2100      	movs	r1, #0
    19c6:	f004 fa81 	bl	5ecc <osThreadCreate>
    19ca:	f004 f989 	bl	5ce0 <osKernelStart>
    19ce:	f003 fa2f 	bl	4e30 <exit>
    19d2:	0000      	.short	0x0000
    19d4:	00004e51 	.word	0x00004e51
    19d8:	00008a34 	.word	0x00008a34

000019dc <__NVIC_EnableIRQ>:
    19dc:	b580      	push	{r7, lr}
    19de:	b082      	sub	sp, #8
    19e0:	af00      	add	r7, sp, #0
    19e2:	0002      	movs	r2, r0
    19e4:	1dfb      	adds	r3, r7, #7
    19e6:	701a      	strb	r2, [r3, #0]
    19e8:	1dfb      	adds	r3, r7, #7
    19ea:	781b      	ldrb	r3, [r3, #0]
    19ec:	2b7f      	cmp	r3, #127	; 0x7f
    19ee:	d809      	bhi.n	1a04 <__NVIC_EnableIRQ+0x28>
    19f0:	4b06      	ldr	r3, [pc, #24]	; (1a0c <__NVIC_EnableIRQ+0x30>)
    19f2:	1dfa      	adds	r2, r7, #7
    19f4:	7812      	ldrb	r2, [r2, #0]
    19f6:	0011      	movs	r1, r2
    19f8:	221f      	movs	r2, #31
    19fa:	400a      	ands	r2, r1
    19fc:	2101      	movs	r1, #1
    19fe:	4091      	lsls	r1, r2
    1a00:	000a      	movs	r2, r1
    1a02:	601a      	str	r2, [r3, #0]
    1a04:	46c0      	nop			; (mov r8, r8)
    1a06:	46bd      	mov	sp, r7
    1a08:	b002      	add	sp, #8
    1a0a:	bd80      	pop	{r7, pc}
    1a0c:	e000e100 	.word	0xe000e100

00001a10 <__NVIC_ClearPendingIRQ>:
    1a10:	b580      	push	{r7, lr}
    1a12:	b082      	sub	sp, #8
    1a14:	af00      	add	r7, sp, #0
    1a16:	0002      	movs	r2, r0
    1a18:	1dfb      	adds	r3, r7, #7
    1a1a:	701a      	strb	r2, [r3, #0]
    1a1c:	1dfb      	adds	r3, r7, #7
    1a1e:	781b      	ldrb	r3, [r3, #0]
    1a20:	2b7f      	cmp	r3, #127	; 0x7f
    1a22:	d80a      	bhi.n	1a3a <__NVIC_ClearPendingIRQ+0x2a>
    1a24:	4907      	ldr	r1, [pc, #28]	; (1a44 <__NVIC_ClearPendingIRQ+0x34>)
    1a26:	1dfb      	adds	r3, r7, #7
    1a28:	781b      	ldrb	r3, [r3, #0]
    1a2a:	001a      	movs	r2, r3
    1a2c:	231f      	movs	r3, #31
    1a2e:	4013      	ands	r3, r2
    1a30:	2201      	movs	r2, #1
    1a32:	409a      	lsls	r2, r3
    1a34:	23c0      	movs	r3, #192	; 0xc0
    1a36:	005b      	lsls	r3, r3, #1
    1a38:	50ca      	str	r2, [r1, r3]
    1a3a:	46c0      	nop			; (mov r8, r8)
    1a3c:	46bd      	mov	sp, r7
    1a3e:	b002      	add	sp, #8
    1a40:	bd80      	pop	{r7, pc}
    1a42:	46c0      	nop			; (mov r8, r8)
    1a44:	e000e100 	.word	0xe000e100

00001a48 <__NVIC_SetPriority>:
    1a48:	b5b0      	push	{r4, r5, r7, lr}
    1a4a:	b082      	sub	sp, #8
    1a4c:	af00      	add	r7, sp, #0
    1a4e:	0002      	movs	r2, r0
    1a50:	6039      	str	r1, [r7, #0]
    1a52:	1dfb      	adds	r3, r7, #7
    1a54:	701a      	strb	r2, [r3, #0]
    1a56:	1dfb      	adds	r3, r7, #7
    1a58:	781b      	ldrb	r3, [r3, #0]
    1a5a:	2b7f      	cmp	r3, #127	; 0x7f
    1a5c:	d828      	bhi.n	1ab0 <__NVIC_SetPriority+0x68>
    1a5e:	4c2f      	ldr	r4, [pc, #188]	; (1b1c <__NVIC_SetPriority+0xd4>)
    1a60:	1dfb      	adds	r3, r7, #7
    1a62:	781b      	ldrb	r3, [r3, #0]
    1a64:	b25b      	sxtb	r3, r3
    1a66:	089b      	lsrs	r3, r3, #2
    1a68:	492c      	ldr	r1, [pc, #176]	; (1b1c <__NVIC_SetPriority+0xd4>)
    1a6a:	1dfa      	adds	r2, r7, #7
    1a6c:	7812      	ldrb	r2, [r2, #0]
    1a6e:	b252      	sxtb	r2, r2
    1a70:	0892      	lsrs	r2, r2, #2
    1a72:	32c0      	adds	r2, #192	; 0xc0
    1a74:	0092      	lsls	r2, r2, #2
    1a76:	5852      	ldr	r2, [r2, r1]
    1a78:	1df9      	adds	r1, r7, #7
    1a7a:	7809      	ldrb	r1, [r1, #0]
    1a7c:	0008      	movs	r0, r1
    1a7e:	2103      	movs	r1, #3
    1a80:	4001      	ands	r1, r0
    1a82:	00c9      	lsls	r1, r1, #3
    1a84:	20ff      	movs	r0, #255	; 0xff
    1a86:	4088      	lsls	r0, r1
    1a88:	0001      	movs	r1, r0
    1a8a:	43c9      	mvns	r1, r1
    1a8c:	4011      	ands	r1, r2
    1a8e:	683a      	ldr	r2, [r7, #0]
    1a90:	0192      	lsls	r2, r2, #6
    1a92:	20ff      	movs	r0, #255	; 0xff
    1a94:	4010      	ands	r0, r2
    1a96:	1dfa      	adds	r2, r7, #7
    1a98:	7812      	ldrb	r2, [r2, #0]
    1a9a:	0015      	movs	r5, r2
    1a9c:	2203      	movs	r2, #3
    1a9e:	402a      	ands	r2, r5
    1aa0:	00d2      	lsls	r2, r2, #3
    1aa2:	4090      	lsls	r0, r2
    1aa4:	0002      	movs	r2, r0
    1aa6:	430a      	orrs	r2, r1
    1aa8:	33c0      	adds	r3, #192	; 0xc0
    1aaa:	009b      	lsls	r3, r3, #2
    1aac:	511a      	str	r2, [r3, r4]
    1aae:	e031      	b.n	1b14 <__NVIC_SetPriority+0xcc>
    1ab0:	4c1b      	ldr	r4, [pc, #108]	; (1b20 <__NVIC_SetPriority+0xd8>)
    1ab2:	1dfb      	adds	r3, r7, #7
    1ab4:	781b      	ldrb	r3, [r3, #0]
    1ab6:	001a      	movs	r2, r3
    1ab8:	230f      	movs	r3, #15
    1aba:	4013      	ands	r3, r2
    1abc:	3b08      	subs	r3, #8
    1abe:	0899      	lsrs	r1, r3, #2
    1ac0:	4a17      	ldr	r2, [pc, #92]	; (1b20 <__NVIC_SetPriority+0xd8>)
    1ac2:	1dfb      	adds	r3, r7, #7
    1ac4:	781b      	ldrb	r3, [r3, #0]
    1ac6:	0018      	movs	r0, r3
    1ac8:	230f      	movs	r3, #15
    1aca:	4003      	ands	r3, r0
    1acc:	3b08      	subs	r3, #8
    1ace:	089b      	lsrs	r3, r3, #2
    1ad0:	3306      	adds	r3, #6
    1ad2:	009b      	lsls	r3, r3, #2
    1ad4:	18d3      	adds	r3, r2, r3
    1ad6:	3304      	adds	r3, #4
    1ad8:	681b      	ldr	r3, [r3, #0]
    1ada:	1dfa      	adds	r2, r7, #7
    1adc:	7812      	ldrb	r2, [r2, #0]
    1ade:	0010      	movs	r0, r2
    1ae0:	2203      	movs	r2, #3
    1ae2:	4002      	ands	r2, r0
    1ae4:	00d2      	lsls	r2, r2, #3
    1ae6:	20ff      	movs	r0, #255	; 0xff
    1ae8:	4090      	lsls	r0, r2
    1aea:	0002      	movs	r2, r0
    1aec:	43d2      	mvns	r2, r2
    1aee:	401a      	ands	r2, r3
    1af0:	683b      	ldr	r3, [r7, #0]
    1af2:	019b      	lsls	r3, r3, #6
    1af4:	20ff      	movs	r0, #255	; 0xff
    1af6:	4018      	ands	r0, r3
    1af8:	1dfb      	adds	r3, r7, #7
    1afa:	781b      	ldrb	r3, [r3, #0]
    1afc:	001d      	movs	r5, r3
    1afe:	2303      	movs	r3, #3
    1b00:	402b      	ands	r3, r5
    1b02:	00db      	lsls	r3, r3, #3
    1b04:	4098      	lsls	r0, r3
    1b06:	0003      	movs	r3, r0
    1b08:	431a      	orrs	r2, r3
    1b0a:	1d8b      	adds	r3, r1, #6
    1b0c:	009b      	lsls	r3, r3, #2
    1b0e:	18e3      	adds	r3, r4, r3
    1b10:	3304      	adds	r3, #4
    1b12:	601a      	str	r2, [r3, #0]
    1b14:	46c0      	nop			; (mov r8, r8)
    1b16:	46bd      	mov	sp, r7
    1b18:	b002      	add	sp, #8
    1b1a:	bdb0      	pop	{r4, r5, r7, pc}
    1b1c:	e000e100 	.word	0xe000e100
    1b20:	e000ed00 	.word	0xe000ed00

00001b24 <PortConfig>:
    1b24:	b580      	push	{r7, lr}
    1b26:	af00      	add	r7, sp, #0
    1b28:	4b43      	ldr	r3, [pc, #268]	; (1c38 <PortConfig+0x114>)
    1b2a:	4a43      	ldr	r2, [pc, #268]	; (1c38 <PortConfig+0x114>)
    1b2c:	68d2      	ldr	r2, [r2, #12]
    1b2e:	21de      	movs	r1, #222	; 0xde
    1b30:	0209      	lsls	r1, r1, #8
    1b32:	430a      	orrs	r2, r1
    1b34:	60da      	str	r2, [r3, #12]
    1b36:	4b40      	ldr	r3, [pc, #256]	; (1c38 <PortConfig+0x114>)
    1b38:	4a3f      	ldr	r2, [pc, #252]	; (1c38 <PortConfig+0x114>)
    1b3a:	6812      	ldr	r2, [r2, #0]
    1b3c:	493f      	ldr	r1, [pc, #252]	; (1c3c <PortConfig+0x118>)
    1b3e:	400a      	ands	r2, r1
    1b40:	601a      	str	r2, [r3, #0]
    1b42:	4b3d      	ldr	r3, [pc, #244]	; (1c38 <PortConfig+0x114>)
    1b44:	4a3c      	ldr	r2, [pc, #240]	; (1c38 <PortConfig+0x114>)
    1b46:	6852      	ldr	r2, [r2, #4]
    1b48:	21de      	movs	r1, #222	; 0xde
    1b4a:	0209      	lsls	r1, r1, #8
    1b4c:	430a      	orrs	r2, r1
    1b4e:	605a      	str	r2, [r3, #4]
    1b50:	4b39      	ldr	r3, [pc, #228]	; (1c38 <PortConfig+0x114>)
    1b52:	4a39      	ldr	r2, [pc, #228]	; (1c38 <PortConfig+0x114>)
    1b54:	6992      	ldr	r2, [r2, #24]
    1b56:	493a      	ldr	r1, [pc, #232]	; (1c40 <PortConfig+0x11c>)
    1b58:	430a      	orrs	r2, r1
    1b5a:	619a      	str	r2, [r3, #24]
    1b5c:	4b36      	ldr	r3, [pc, #216]	; (1c38 <PortConfig+0x114>)
    1b5e:	4a36      	ldr	r2, [pc, #216]	; (1c38 <PortConfig+0x114>)
    1b60:	68d2      	ldr	r2, [r2, #12]
    1b62:	4938      	ldr	r1, [pc, #224]	; (1c44 <PortConfig+0x120>)
    1b64:	430a      	orrs	r2, r1
    1b66:	60da      	str	r2, [r3, #12]
    1b68:	4b33      	ldr	r3, [pc, #204]	; (1c38 <PortConfig+0x114>)
    1b6a:	4a33      	ldr	r2, [pc, #204]	; (1c38 <PortConfig+0x114>)
    1b6c:	6812      	ldr	r2, [r2, #0]
    1b6e:	0a52      	lsrs	r2, r2, #9
    1b70:	0252      	lsls	r2, r2, #9
    1b72:	601a      	str	r2, [r3, #0]
    1b74:	4b30      	ldr	r3, [pc, #192]	; (1c38 <PortConfig+0x114>)
    1b76:	4a30      	ldr	r2, [pc, #192]	; (1c38 <PortConfig+0x114>)
    1b78:	6852      	ldr	r2, [r2, #4]
    1b7a:	4932      	ldr	r1, [pc, #200]	; (1c44 <PortConfig+0x120>)
    1b7c:	430a      	orrs	r2, r1
    1b7e:	605a      	str	r2, [r3, #4]
    1b80:	4b2d      	ldr	r3, [pc, #180]	; (1c38 <PortConfig+0x114>)
    1b82:	4a2d      	ldr	r2, [pc, #180]	; (1c38 <PortConfig+0x114>)
    1b84:	6992      	ldr	r2, [r2, #24]
    1b86:	4930      	ldr	r1, [pc, #192]	; (1c48 <PortConfig+0x124>)
    1b88:	430a      	orrs	r2, r1
    1b8a:	619a      	str	r2, [r3, #24]
    1b8c:	4b2f      	ldr	r3, [pc, #188]	; (1c4c <PortConfig+0x128>)
    1b8e:	4a2f      	ldr	r2, [pc, #188]	; (1c4c <PortConfig+0x128>)
    1b90:	6892      	ldr	r2, [r2, #8]
    1b92:	21a0      	movs	r1, #160	; 0xa0
    1b94:	0549      	lsls	r1, r1, #21
    1b96:	430a      	orrs	r2, r1
    1b98:	609a      	str	r2, [r3, #8]
    1b9a:	4b2c      	ldr	r3, [pc, #176]	; (1c4c <PortConfig+0x128>)
    1b9c:	4a2b      	ldr	r2, [pc, #172]	; (1c4c <PortConfig+0x128>)
    1b9e:	68d2      	ldr	r2, [r2, #12]
    1ba0:	21e0      	movs	r1, #224	; 0xe0
    1ba2:	0209      	lsls	r1, r1, #8
    1ba4:	430a      	orrs	r2, r1
    1ba6:	60da      	str	r2, [r3, #12]
    1ba8:	4b28      	ldr	r3, [pc, #160]	; (1c4c <PortConfig+0x128>)
    1baa:	4a28      	ldr	r2, [pc, #160]	; (1c4c <PortConfig+0x128>)
    1bac:	6992      	ldr	r2, [r2, #24]
    1bae:	21fc      	movs	r1, #252	; 0xfc
    1bb0:	0609      	lsls	r1, r1, #24
    1bb2:	430a      	orrs	r2, r1
    1bb4:	619a      	str	r2, [r3, #24]
    1bb6:	4b25      	ldr	r3, [pc, #148]	; (1c4c <PortConfig+0x128>)
    1bb8:	4a24      	ldr	r2, [pc, #144]	; (1c4c <PortConfig+0x128>)
    1bba:	6812      	ldr	r2, [r2, #0]
    1bbc:	4924      	ldr	r1, [pc, #144]	; (1c50 <PortConfig+0x12c>)
    1bbe:	400a      	ands	r2, r1
    1bc0:	601a      	str	r2, [r3, #0]
    1bc2:	4b22      	ldr	r3, [pc, #136]	; (1c4c <PortConfig+0x128>)
    1bc4:	4a21      	ldr	r2, [pc, #132]	; (1c4c <PortConfig+0x128>)
    1bc6:	6852      	ldr	r2, [r2, #4]
    1bc8:	2180      	movs	r1, #128	; 0x80
    1bca:	0209      	lsls	r1, r1, #8
    1bcc:	430a      	orrs	r2, r1
    1bce:	605a      	str	r2, [r3, #4]
    1bd0:	4b20      	ldr	r3, [pc, #128]	; (1c54 <PortConfig+0x130>)
    1bd2:	4a20      	ldr	r2, [pc, #128]	; (1c54 <PortConfig+0x130>)
    1bd4:	6892      	ldr	r2, [r2, #8]
    1bd6:	4920      	ldr	r1, [pc, #128]	; (1c58 <PortConfig+0x134>)
    1bd8:	400a      	ands	r2, r1
    1bda:	609a      	str	r2, [r3, #8]
    1bdc:	4b1d      	ldr	r3, [pc, #116]	; (1c54 <PortConfig+0x130>)
    1bde:	4a1d      	ldr	r2, [pc, #116]	; (1c54 <PortConfig+0x130>)
    1be0:	6892      	ldr	r2, [r2, #8]
    1be2:	21a0      	movs	r1, #160	; 0xa0
    1be4:	0049      	lsls	r1, r1, #1
    1be6:	430a      	orrs	r2, r1
    1be8:	609a      	str	r2, [r3, #8]
    1bea:	4b1a      	ldr	r3, [pc, #104]	; (1c54 <PortConfig+0x130>)
    1bec:	4a19      	ldr	r2, [pc, #100]	; (1c54 <PortConfig+0x130>)
    1bee:	68d2      	ldr	r2, [r2, #12]
    1bf0:	2118      	movs	r1, #24
    1bf2:	430a      	orrs	r2, r1
    1bf4:	60da      	str	r2, [r3, #12]
    1bf6:	4b17      	ldr	r3, [pc, #92]	; (1c54 <PortConfig+0x130>)
    1bf8:	4a16      	ldr	r2, [pc, #88]	; (1c54 <PortConfig+0x130>)
    1bfa:	6992      	ldr	r2, [r2, #24]
    1bfc:	21f0      	movs	r1, #240	; 0xf0
    1bfe:	0089      	lsls	r1, r1, #2
    1c00:	430a      	orrs	r2, r1
    1c02:	619a      	str	r2, [r3, #24]
    1c04:	4b13      	ldr	r3, [pc, #76]	; (1c54 <PortConfig+0x130>)
    1c06:	4a13      	ldr	r2, [pc, #76]	; (1c54 <PortConfig+0x130>)
    1c08:	6812      	ldr	r2, [r2, #0]
    1c0a:	2118      	movs	r1, #24
    1c0c:	438a      	bics	r2, r1
    1c0e:	601a      	str	r2, [r3, #0]
    1c10:	4b10      	ldr	r3, [pc, #64]	; (1c54 <PortConfig+0x130>)
    1c12:	4a10      	ldr	r2, [pc, #64]	; (1c54 <PortConfig+0x130>)
    1c14:	68d2      	ldr	r2, [r2, #12]
    1c16:	2120      	movs	r1, #32
    1c18:	430a      	orrs	r2, r1
    1c1a:	60da      	str	r2, [r3, #12]
    1c1c:	4b0d      	ldr	r3, [pc, #52]	; (1c54 <PortConfig+0x130>)
    1c1e:	4a0d      	ldr	r2, [pc, #52]	; (1c54 <PortConfig+0x130>)
    1c20:	6892      	ldr	r2, [r2, #8]
    1c22:	2180      	movs	r1, #128	; 0x80
    1c24:	00c9      	lsls	r1, r1, #3
    1c26:	430a      	orrs	r2, r1
    1c28:	609a      	str	r2, [r3, #8]
    1c2a:	201c      	movs	r0, #28
    1c2c:	f7ff fef0 	bl	1a10 <__NVIC_ClearPendingIRQ>
    1c30:	46c0      	nop			; (mov r8, r8)
    1c32:	46bd      	mov	sp, r7
    1c34:	bd80      	pop	{r7, pc}
    1c36:	46c0      	nop			; (mov r8, r8)
    1c38:	400b0000 	.word	0x400b0000
    1c3c:	ffff21ff 	.word	0xffff21ff
    1c40:	f3fc0000 	.word	0xf3fc0000
    1c44:	000001ff 	.word	0x000001ff
    1c48:	0003ffff 	.word	0x0003ffff
    1c4c:	400c0000 	.word	0x400c0000
    1c50:	ffff1fff 	.word	0xffff1fff
    1c54:	400b8000 	.word	0x400b8000
    1c58:	fffffc3f 	.word	0xfffffc3f

00001c5c <ClkConfig>:
    1c5c:	b580      	push	{r7, lr}
    1c5e:	af00      	add	r7, sp, #0
    1c60:	4b4b      	ldr	r3, [pc, #300]	; (1d90 <ClkConfig+0x134>)
    1c62:	2280      	movs	r2, #128	; 0x80
    1c64:	0092      	lsls	r2, r2, #2
    1c66:	619a      	str	r2, [r3, #24]
    1c68:	4b4a      	ldr	r3, [pc, #296]	; (1d94 <ClkConfig+0x138>)
    1c6a:	4a4a      	ldr	r2, [pc, #296]	; (1d94 <ClkConfig+0x138>)
    1c6c:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1c6e:	2118      	movs	r1, #24
    1c70:	430a      	orrs	r2, r1
    1c72:	63da      	str	r2, [r3, #60]	; 0x3c
    1c74:	4b47      	ldr	r3, [pc, #284]	; (1d94 <ClkConfig+0x138>)
    1c76:	4a48      	ldr	r2, [pc, #288]	; (1d98 <ClkConfig+0x13c>)
    1c78:	649a      	str	r2, [r3, #72]	; 0x48
    1c7a:	4b46      	ldr	r3, [pc, #280]	; (1d94 <ClkConfig+0x138>)
    1c7c:	2201      	movs	r2, #1
    1c7e:	645a      	str	r2, [r3, #68]	; 0x44
    1c80:	4b43      	ldr	r3, [pc, #268]	; (1d90 <ClkConfig+0x134>)
    1c82:	4a43      	ldr	r2, [pc, #268]	; (1d90 <ClkConfig+0x134>)
    1c84:	6892      	ldr	r2, [r2, #8]
    1c86:	2105      	movs	r1, #5
    1c88:	430a      	orrs	r2, r1
    1c8a:	609a      	str	r2, [r3, #8]
    1c8c:	46c0      	nop			; (mov r8, r8)
    1c8e:	4b40      	ldr	r3, [pc, #256]	; (1d90 <ClkConfig+0x134>)
    1c90:	681b      	ldr	r3, [r3, #0]
    1c92:	220c      	movs	r2, #12
    1c94:	4013      	ands	r3, r2
    1c96:	2b0c      	cmp	r3, #12
    1c98:	d1f9      	bne.n	1c8e <ClkConfig+0x32>
    1c9a:	4b3d      	ldr	r3, [pc, #244]	; (1d90 <ClkConfig+0x134>)
    1c9c:	4a3c      	ldr	r2, [pc, #240]	; (1d90 <ClkConfig+0x134>)
    1c9e:	68d2      	ldr	r2, [r2, #12]
    1ca0:	2102      	movs	r1, #2
    1ca2:	430a      	orrs	r2, r1
    1ca4:	60da      	str	r2, [r3, #12]
    1ca6:	4b3a      	ldr	r3, [pc, #232]	; (1d90 <ClkConfig+0x134>)
    1ca8:	4a3c      	ldr	r2, [pc, #240]	; (1d9c <ClkConfig+0x140>)
    1caa:	605a      	str	r2, [r3, #4]
    1cac:	46c0      	nop			; (mov r8, r8)
    1cae:	4b38      	ldr	r3, [pc, #224]	; (1d90 <ClkConfig+0x134>)
    1cb0:	681b      	ldr	r3, [r3, #0]
    1cb2:	2202      	movs	r2, #2
    1cb4:	4013      	ands	r3, r2
    1cb6:	d0fa      	beq.n	1cae <ClkConfig+0x52>
    1cb8:	4b35      	ldr	r3, [pc, #212]	; (1d90 <ClkConfig+0x134>)
    1cba:	4a35      	ldr	r2, [pc, #212]	; (1d90 <ClkConfig+0x134>)
    1cbc:	69d2      	ldr	r2, [r2, #28]
    1cbe:	2108      	movs	r1, #8
    1cc0:	430a      	orrs	r2, r1
    1cc2:	61da      	str	r2, [r3, #28]
    1cc4:	4b36      	ldr	r3, [pc, #216]	; (1da0 <ClkConfig+0x144>)
    1cc6:	4a36      	ldr	r2, [pc, #216]	; (1da0 <ClkConfig+0x144>)
    1cc8:	6812      	ldr	r2, [r2, #0]
    1cca:	2118      	movs	r1, #24
    1ccc:	430a      	orrs	r2, r1
    1cce:	601a      	str	r2, [r3, #0]
    1cd0:	4b2f      	ldr	r3, [pc, #188]	; (1d90 <ClkConfig+0x134>)
    1cd2:	4a2f      	ldr	r2, [pc, #188]	; (1d90 <ClkConfig+0x134>)
    1cd4:	69d2      	ldr	r2, [r2, #28]
    1cd6:	2108      	movs	r1, #8
    1cd8:	438a      	bics	r2, r1
    1cda:	61da      	str	r2, [r3, #28]
    1cdc:	4b2c      	ldr	r3, [pc, #176]	; (1d90 <ClkConfig+0x134>)
    1cde:	4a2c      	ldr	r2, [pc, #176]	; (1d90 <ClkConfig+0x134>)
    1ce0:	68d2      	ldr	r2, [r2, #12]
    1ce2:	2180      	movs	r1, #128	; 0x80
    1ce4:	0049      	lsls	r1, r1, #1
    1ce6:	430a      	orrs	r2, r1
    1ce8:	60da      	str	r2, [r3, #12]
    1cea:	4b29      	ldr	r3, [pc, #164]	; (1d90 <ClkConfig+0x134>)
    1cec:	4a28      	ldr	r2, [pc, #160]	; (1d90 <ClkConfig+0x134>)
    1cee:	68d2      	ldr	r2, [r2, #12]
    1cf0:	2104      	movs	r1, #4
    1cf2:	430a      	orrs	r2, r1
    1cf4:	60da      	str	r2, [r3, #12]
    1cf6:	4b26      	ldr	r3, [pc, #152]	; (1d90 <ClkConfig+0x134>)
    1cf8:	22e4      	movs	r2, #228	; 0xe4
    1cfa:	0592      	lsls	r2, r2, #22
    1cfc:	635a      	str	r2, [r3, #52]	; 0x34
    1cfe:	4b24      	ldr	r3, [pc, #144]	; (1d90 <ClkConfig+0x134>)
    1d00:	4a23      	ldr	r2, [pc, #140]	; (1d90 <ClkConfig+0x134>)
    1d02:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d04:	2180      	movs	r1, #128	; 0x80
    1d06:	0449      	lsls	r1, r1, #17
    1d08:	430a      	orrs	r2, r1
    1d0a:	625a      	str	r2, [r3, #36]	; 0x24
    1d0c:	4b20      	ldr	r3, [pc, #128]	; (1d90 <ClkConfig+0x134>)
    1d0e:	4a20      	ldr	r2, [pc, #128]	; (1d90 <ClkConfig+0x134>)
    1d10:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d12:	21ff      	movs	r1, #255	; 0xff
    1d14:	438a      	bics	r2, r1
    1d16:	625a      	str	r2, [r3, #36]	; 0x24
    1d18:	4b1d      	ldr	r3, [pc, #116]	; (1d90 <ClkConfig+0x134>)
    1d1a:	4a1d      	ldr	r2, [pc, #116]	; (1d90 <ClkConfig+0x134>)
    1d1c:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d1e:	2180      	movs	r1, #128	; 0x80
    1d20:	0489      	lsls	r1, r1, #18
    1d22:	430a      	orrs	r2, r1
    1d24:	625a      	str	r2, [r3, #36]	; 0x24
    1d26:	4b1a      	ldr	r3, [pc, #104]	; (1d90 <ClkConfig+0x134>)
    1d28:	4a19      	ldr	r2, [pc, #100]	; (1d90 <ClkConfig+0x134>)
    1d2a:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d2c:	491d      	ldr	r1, [pc, #116]	; (1da4 <ClkConfig+0x148>)
    1d2e:	400a      	ands	r2, r1
    1d30:	625a      	str	r2, [r3, #36]	; 0x24
    1d32:	4b17      	ldr	r3, [pc, #92]	; (1d90 <ClkConfig+0x134>)
    1d34:	4a16      	ldr	r2, [pc, #88]	; (1d90 <ClkConfig+0x134>)
    1d36:	69d2      	ldr	r2, [r2, #28]
    1d38:	491b      	ldr	r1, [pc, #108]	; (1da8 <ClkConfig+0x14c>)
    1d3a:	430a      	orrs	r2, r1
    1d3c:	61da      	str	r2, [r3, #28]
    1d3e:	4b14      	ldr	r3, [pc, #80]	; (1d90 <ClkConfig+0x134>)
    1d40:	4a13      	ldr	r2, [pc, #76]	; (1d90 <ClkConfig+0x134>)
    1d42:	69d2      	ldr	r2, [r2, #28]
    1d44:	2180      	movs	r1, #128	; 0x80
    1d46:	430a      	orrs	r2, r1
    1d48:	61da      	str	r2, [r3, #28]
    1d4a:	4b11      	ldr	r3, [pc, #68]	; (1d90 <ClkConfig+0x134>)
    1d4c:	4a10      	ldr	r2, [pc, #64]	; (1d90 <ClkConfig+0x134>)
    1d4e:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d50:	2180      	movs	r1, #128	; 0x80
    1d52:	0489      	lsls	r1, r1, #18
    1d54:	430a      	orrs	r2, r1
    1d56:	629a      	str	r2, [r3, #40]	; 0x28
    1d58:	4b0d      	ldr	r3, [pc, #52]	; (1d90 <ClkConfig+0x134>)
    1d5a:	4a0d      	ldr	r2, [pc, #52]	; (1d90 <ClkConfig+0x134>)
    1d5c:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d5e:	4911      	ldr	r1, [pc, #68]	; (1da4 <ClkConfig+0x148>)
    1d60:	400a      	ands	r2, r1
    1d62:	629a      	str	r2, [r3, #40]	; 0x28
    1d64:	4b0a      	ldr	r3, [pc, #40]	; (1d90 <ClkConfig+0x134>)
    1d66:	4a0a      	ldr	r2, [pc, #40]	; (1d90 <ClkConfig+0x134>)
    1d68:	69d2      	ldr	r2, [r2, #28]
    1d6a:	2140      	movs	r1, #64	; 0x40
    1d6c:	430a      	orrs	r2, r1
    1d6e:	61da      	str	r2, [r3, #28]
    1d70:	4b07      	ldr	r3, [pc, #28]	; (1d90 <ClkConfig+0x134>)
    1d72:	4a07      	ldr	r2, [pc, #28]	; (1d90 <ClkConfig+0x134>)
    1d74:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d76:	2180      	movs	r1, #128	; 0x80
    1d78:	0449      	lsls	r1, r1, #17
    1d7a:	430a      	orrs	r2, r1
    1d7c:	629a      	str	r2, [r3, #40]	; 0x28
    1d7e:	4b04      	ldr	r3, [pc, #16]	; (1d90 <ClkConfig+0x134>)
    1d80:	4a03      	ldr	r2, [pc, #12]	; (1d90 <ClkConfig+0x134>)
    1d82:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d84:	21ff      	movs	r1, #255	; 0xff
    1d86:	438a      	bics	r2, r1
    1d88:	629a      	str	r2, [r3, #40]	; 0x28
    1d8a:	46c0      	nop			; (mov r8, r8)
    1d8c:	46bd      	mov	sp, r7
    1d8e:	bd80      	pop	{r7, pc}
    1d90:	40020000 	.word	0x40020000
    1d94:	400d8000 	.word	0x400d8000
    1d98:	000fffff 	.word	0x000fffff
    1d9c:	00000b04 	.word	0x00000b04
    1da0:	40018000 	.word	0x40018000
    1da4:	ffff00ff 	.word	0xffff00ff
    1da8:	03c0c000 	.word	0x03c0c000

00001dac <TimerConfig>:
    1dac:	b580      	push	{r7, lr}
    1dae:	af00      	add	r7, sp, #0
    1db0:	4b19      	ldr	r3, [pc, #100]	; (1e18 <TimerConfig+0x6c>)
    1db2:	2200      	movs	r2, #0
    1db4:	601a      	str	r2, [r3, #0]
    1db6:	4b18      	ldr	r3, [pc, #96]	; (1e18 <TimerConfig+0x6c>)
    1db8:	225f      	movs	r2, #95	; 0x5f
    1dba:	605a      	str	r2, [r3, #4]
    1dbc:	4b16      	ldr	r3, [pc, #88]	; (1e18 <TimerConfig+0x6c>)
    1dbe:	4a17      	ldr	r2, [pc, #92]	; (1e1c <TimerConfig+0x70>)
    1dc0:	609a      	str	r2, [r3, #8]
    1dc2:	4b15      	ldr	r3, [pc, #84]	; (1e18 <TimerConfig+0x6c>)
    1dc4:	4a14      	ldr	r2, [pc, #80]	; (1e18 <TimerConfig+0x6c>)
    1dc6:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1dc8:	2102      	movs	r1, #2
    1dca:	430a      	orrs	r2, r1
    1dcc:	659a      	str	r2, [r3, #88]	; 0x58
    1dce:	4b12      	ldr	r3, [pc, #72]	; (1e18 <TimerConfig+0x6c>)
    1dd0:	4a11      	ldr	r2, [pc, #68]	; (1e18 <TimerConfig+0x6c>)
    1dd2:	68d2      	ldr	r2, [r2, #12]
    1dd4:	2101      	movs	r1, #1
    1dd6:	430a      	orrs	r2, r1
    1dd8:	60da      	str	r2, [r3, #12]
    1dda:	200e      	movs	r0, #14
    1ddc:	f7ff fdfe 	bl	19dc <__NVIC_EnableIRQ>
    1de0:	4b0f      	ldr	r3, [pc, #60]	; (1e20 <TimerConfig+0x74>)
    1de2:	2200      	movs	r2, #0
    1de4:	601a      	str	r2, [r3, #0]
    1de6:	4b0e      	ldr	r3, [pc, #56]	; (1e20 <TimerConfig+0x74>)
    1de8:	225f      	movs	r2, #95	; 0x5f
    1dea:	605a      	str	r2, [r3, #4]
    1dec:	4b0c      	ldr	r3, [pc, #48]	; (1e20 <TimerConfig+0x74>)
    1dee:	22ee      	movs	r2, #238	; 0xee
    1df0:	0092      	lsls	r2, r2, #2
    1df2:	609a      	str	r2, [r3, #8]
    1df4:	4b0a      	ldr	r3, [pc, #40]	; (1e20 <TimerConfig+0x74>)
    1df6:	4a0a      	ldr	r2, [pc, #40]	; (1e20 <TimerConfig+0x74>)
    1df8:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1dfa:	2102      	movs	r1, #2
    1dfc:	430a      	orrs	r2, r1
    1dfe:	659a      	str	r2, [r3, #88]	; 0x58
    1e00:	4b07      	ldr	r3, [pc, #28]	; (1e20 <TimerConfig+0x74>)
    1e02:	4a07      	ldr	r2, [pc, #28]	; (1e20 <TimerConfig+0x74>)
    1e04:	68d2      	ldr	r2, [r2, #12]
    1e06:	2101      	movs	r1, #1
    1e08:	430a      	orrs	r2, r1
    1e0a:	60da      	str	r2, [r3, #12]
    1e0c:	200f      	movs	r0, #15
    1e0e:	f7ff fde5 	bl	19dc <__NVIC_EnableIRQ>
    1e12:	46c0      	nop			; (mov r8, r8)
    1e14:	46bd      	mov	sp, r7
    1e16:	bd80      	pop	{r7, pc}
    1e18:	40070000 	.word	0x40070000
    1e1c:	0001869f 	.word	0x0001869f
    1e20:	40078000 	.word	0x40078000

00001e24 <SystemInit>:
    1e24:	b580      	push	{r7, lr}
    1e26:	af00      	add	r7, sp, #0
    1e28:	f7ff ff18 	bl	1c5c <ClkConfig>
    1e2c:	f7ff fe7a 	bl	1b24 <PortConfig>
    1e30:	f7ff ffbc 	bl	1dac <TimerConfig>
    1e34:	2100      	movs	r1, #0
    1e36:	2012      	movs	r0, #18
    1e38:	f7ff fe06 	bl	1a48 <__NVIC_SetPriority>
    1e3c:	2101      	movs	r1, #1
    1e3e:	200e      	movs	r0, #14
    1e40:	f7ff fe02 	bl	1a48 <__NVIC_SetPriority>
    1e44:	2301      	movs	r3, #1
    1e46:	425b      	negs	r3, r3
    1e48:	2103      	movs	r1, #3
    1e4a:	0018      	movs	r0, r3
    1e4c:	f7ff fdfc 	bl	1a48 <__NVIC_SetPriority>
    1e50:	46c0      	nop			; (mov r8, r8)
    1e52:	46bd      	mov	sp, r7
    1e54:	bd80      	pop	{r7, pc}
    1e56:	46c0      	nop			; (mov r8, r8)

00001e58 <__NVIC_EnableIRQ>:
    1e58:	b580      	push	{r7, lr}
    1e5a:	b082      	sub	sp, #8
    1e5c:	af00      	add	r7, sp, #0
    1e5e:	0002      	movs	r2, r0
    1e60:	1dfb      	adds	r3, r7, #7
    1e62:	701a      	strb	r2, [r3, #0]
    1e64:	1dfb      	adds	r3, r7, #7
    1e66:	781b      	ldrb	r3, [r3, #0]
    1e68:	2b7f      	cmp	r3, #127	; 0x7f
    1e6a:	d809      	bhi.n	1e80 <__NVIC_EnableIRQ+0x28>
    1e6c:	4b06      	ldr	r3, [pc, #24]	; (1e88 <__NVIC_EnableIRQ+0x30>)
    1e6e:	1dfa      	adds	r2, r7, #7
    1e70:	7812      	ldrb	r2, [r2, #0]
    1e72:	0011      	movs	r1, r2
    1e74:	221f      	movs	r2, #31
    1e76:	400a      	ands	r2, r1
    1e78:	2101      	movs	r1, #1
    1e7a:	4091      	lsls	r1, r2
    1e7c:	000a      	movs	r2, r1
    1e7e:	601a      	str	r2, [r3, #0]
    1e80:	46c0      	nop			; (mov r8, r8)
    1e82:	46bd      	mov	sp, r7
    1e84:	b002      	add	sp, #8
    1e86:	bd80      	pop	{r7, pc}
    1e88:	e000e100 	.word	0xe000e100

00001e8c <RemoteMacInit>:
    1e8c:	b580      	push	{r7, lr}
    1e8e:	af00      	add	r7, sp, #0
    1e90:	4b0a      	ldr	r3, [pc, #40]	; (1ebc <RemoteMacInit+0x30>)
    1e92:	2200      	movs	r2, #0
    1e94:	801a      	strh	r2, [r3, #0]
    1e96:	4b09      	ldr	r3, [pc, #36]	; (1ebc <RemoteMacInit+0x30>)
    1e98:	2200      	movs	r2, #0
    1e9a:	805a      	strh	r2, [r3, #2]
    1e9c:	4b07      	ldr	r3, [pc, #28]	; (1ebc <RemoteMacInit+0x30>)
    1e9e:	2200      	movs	r2, #0
    1ea0:	809a      	strh	r2, [r3, #4]
    1ea2:	4b06      	ldr	r3, [pc, #24]	; (1ebc <RemoteMacInit+0x30>)
    1ea4:	2200      	movs	r2, #0
    1ea6:	80da      	strh	r2, [r3, #6]
    1ea8:	4b04      	ldr	r3, [pc, #16]	; (1ebc <RemoteMacInit+0x30>)
    1eaa:	2200      	movs	r2, #0
    1eac:	811a      	strh	r2, [r3, #8]
    1eae:	4b03      	ldr	r3, [pc, #12]	; (1ebc <RemoteMacInit+0x30>)
    1eb0:	2200      	movs	r2, #0
    1eb2:	815a      	strh	r2, [r3, #10]
    1eb4:	46c0      	nop			; (mov r8, r8)
    1eb6:	46bd      	mov	sp, r7
    1eb8:	bd80      	pop	{r7, pc}
    1eba:	46c0      	nop			; (mov r8, r8)
    1ebc:	20004d1c 	.word	0x20004d1c

00001ec0 <PHYInit>:
    1ec0:	b580      	push	{r7, lr}
    1ec2:	b084      	sub	sp, #16
    1ec4:	af00      	add	r7, sp, #0
    1ec6:	0002      	movs	r2, r0
    1ec8:	1dfb      	adds	r3, r7, #7
    1eca:	701a      	strb	r2, [r3, #0]
    1ecc:	1dbb      	adds	r3, r7, #6
    1ece:	1c0a      	adds	r2, r1, #0
    1ed0:	701a      	strb	r2, [r3, #0]
    1ed2:	23c0      	movs	r3, #192	; 0xc0
    1ed4:	059b      	lsls	r3, r3, #22
    1ed6:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    1ed8:	b29b      	uxth	r3, r3
    1eda:	60fb      	str	r3, [r7, #12]
    1edc:	68fa      	ldr	r2, [r7, #12]
    1ede:	23ee      	movs	r3, #238	; 0xee
    1ee0:	00db      	lsls	r3, r3, #3
    1ee2:	4013      	ands	r3, r2
    1ee4:	60fb      	str	r3, [r7, #12]
    1ee6:	1dfb      	adds	r3, r7, #7
    1ee8:	781b      	ldrb	r3, [r3, #0]
    1eea:	02da      	lsls	r2, r3, #11
    1eec:	1dbb      	adds	r3, r7, #6
    1eee:	781b      	ldrb	r3, [r3, #0]
    1ef0:	005b      	lsls	r3, r3, #1
    1ef2:	4313      	orrs	r3, r2
    1ef4:	001a      	movs	r2, r3
    1ef6:	68fb      	ldr	r3, [r7, #12]
    1ef8:	4313      	orrs	r3, r2
    1efa:	2201      	movs	r2, #1
    1efc:	4313      	orrs	r3, r2
    1efe:	60fb      	str	r3, [r7, #12]
    1f00:	23c0      	movs	r3, #192	; 0xc0
    1f02:	059b      	lsls	r3, r3, #22
    1f04:	68fa      	ldr	r2, [r7, #12]
    1f06:	b292      	uxth	r2, r2
    1f08:	869a      	strh	r2, [r3, #52]	; 0x34
    1f0a:	46c0      	nop			; (mov r8, r8)
    1f0c:	23c0      	movs	r3, #192	; 0xc0
    1f0e:	059b      	lsls	r3, r3, #22
    1f10:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    1f12:	b29b      	uxth	r3, r3
    1f14:	001a      	movs	r2, r3
    1f16:	2310      	movs	r3, #16
    1f18:	4013      	ands	r3, r2
    1f1a:	d0f7      	beq.n	1f0c <PHYInit+0x4c>
    1f1c:	46c0      	nop			; (mov r8, r8)
    1f1e:	46bd      	mov	sp, r7
    1f20:	b004      	add	sp, #16
    1f22:	bd80      	pop	{r7, pc}

00001f24 <SetPHYReg>:
    1f24:	b590      	push	{r4, r7, lr}
    1f26:	b085      	sub	sp, #20
    1f28:	af00      	add	r7, sp, #0
    1f2a:	0004      	movs	r4, r0
    1f2c:	0008      	movs	r0, r1
    1f2e:	0011      	movs	r1, r2
    1f30:	1dfb      	adds	r3, r7, #7
    1f32:	1c22      	adds	r2, r4, #0
    1f34:	701a      	strb	r2, [r3, #0]
    1f36:	1dbb      	adds	r3, r7, #6
    1f38:	1c02      	adds	r2, r0, #0
    1f3a:	701a      	strb	r2, [r3, #0]
    1f3c:	1d3b      	adds	r3, r7, #4
    1f3e:	1c0a      	adds	r2, r1, #0
    1f40:	801a      	strh	r2, [r3, #0]
    1f42:	23c0      	movs	r3, #192	; 0xc0
    1f44:	059b      	lsls	r3, r3, #22
    1f46:	1d3a      	adds	r2, r7, #4
    1f48:	8812      	ldrh	r2, [r2, #0]
    1f4a:	84da      	strh	r2, [r3, #38]	; 0x26
    1f4c:	1dfb      	adds	r3, r7, #7
    1f4e:	781b      	ldrb	r3, [r3, #0]
    1f50:	021a      	lsls	r2, r3, #8
    1f52:	23f8      	movs	r3, #248	; 0xf8
    1f54:	015b      	lsls	r3, r3, #5
    1f56:	4013      	ands	r3, r2
    1f58:	22c0      	movs	r2, #192	; 0xc0
    1f5a:	0212      	lsls	r2, r2, #8
    1f5c:	431a      	orrs	r2, r3
    1f5e:	1dbb      	adds	r3, r7, #6
    1f60:	781b      	ldrb	r3, [r3, #0]
    1f62:	211f      	movs	r1, #31
    1f64:	400b      	ands	r3, r1
    1f66:	4313      	orrs	r3, r2
    1f68:	2220      	movs	r2, #32
    1f6a:	4313      	orrs	r3, r2
    1f6c:	60fb      	str	r3, [r7, #12]
    1f6e:	23c0      	movs	r3, #192	; 0xc0
    1f70:	059b      	lsls	r3, r3, #22
    1f72:	68fa      	ldr	r2, [r7, #12]
    1f74:	b292      	uxth	r2, r2
    1f76:	849a      	strh	r2, [r3, #36]	; 0x24
    1f78:	46c0      	nop			; (mov r8, r8)
    1f7a:	23c0      	movs	r3, #192	; 0xc0
    1f7c:	059b      	lsls	r3, r3, #22
    1f7e:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f80:	b29b      	uxth	r3, r3
    1f82:	b21b      	sxth	r3, r3
    1f84:	2b00      	cmp	r3, #0
    1f86:	daf8      	bge.n	1f7a <SetPHYReg+0x56>
    1f88:	46c0      	nop			; (mov r8, r8)
    1f8a:	46bd      	mov	sp, r7
    1f8c:	b005      	add	sp, #20
    1f8e:	bd90      	pop	{r4, r7, pc}

00001f90 <GetPHYReg>:
    1f90:	b580      	push	{r7, lr}
    1f92:	b084      	sub	sp, #16
    1f94:	af00      	add	r7, sp, #0
    1f96:	0002      	movs	r2, r0
    1f98:	1dfb      	adds	r3, r7, #7
    1f9a:	701a      	strb	r2, [r3, #0]
    1f9c:	1dbb      	adds	r3, r7, #6
    1f9e:	1c0a      	adds	r2, r1, #0
    1fa0:	701a      	strb	r2, [r3, #0]
    1fa2:	1dfb      	adds	r3, r7, #7
    1fa4:	781b      	ldrb	r3, [r3, #0]
    1fa6:	021a      	lsls	r2, r3, #8
    1fa8:	23f8      	movs	r3, #248	; 0xf8
    1faa:	015b      	lsls	r3, r3, #5
    1fac:	4013      	ands	r3, r2
    1fae:	4a0e      	ldr	r2, [pc, #56]	; (1fe8 <GetPHYReg+0x58>)
    1fb0:	431a      	orrs	r2, r3
    1fb2:	1dbb      	adds	r3, r7, #6
    1fb4:	781b      	ldrb	r3, [r3, #0]
    1fb6:	211f      	movs	r1, #31
    1fb8:	400b      	ands	r3, r1
    1fba:	4313      	orrs	r3, r2
    1fbc:	60fb      	str	r3, [r7, #12]
    1fbe:	23c0      	movs	r3, #192	; 0xc0
    1fc0:	059b      	lsls	r3, r3, #22
    1fc2:	68fa      	ldr	r2, [r7, #12]
    1fc4:	b292      	uxth	r2, r2
    1fc6:	849a      	strh	r2, [r3, #36]	; 0x24
    1fc8:	46c0      	nop			; (mov r8, r8)
    1fca:	23c0      	movs	r3, #192	; 0xc0
    1fcc:	059b      	lsls	r3, r3, #22
    1fce:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1fd0:	b29b      	uxth	r3, r3
    1fd2:	b21b      	sxth	r3, r3
    1fd4:	2b00      	cmp	r3, #0
    1fd6:	daf8      	bge.n	1fca <GetPHYReg+0x3a>
    1fd8:	23c0      	movs	r3, #192	; 0xc0
    1fda:	059b      	lsls	r3, r3, #22
    1fdc:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    1fde:	b29b      	uxth	r3, r3
    1fe0:	0018      	movs	r0, r3
    1fe2:	46bd      	mov	sp, r7
    1fe4:	b004      	add	sp, #16
    1fe6:	bd80      	pop	{r7, pc}
    1fe8:	0000e020 	.word	0x0000e020

00001fec <EthernetConfig>:
    1fec:	b580      	push	{r7, lr}
    1fee:	b082      	sub	sp, #8
    1ff0:	af00      	add	r7, sp, #0
    1ff2:	2103      	movs	r1, #3
    1ff4:	201c      	movs	r0, #28
    1ff6:	f7ff ff63 	bl	1ec0 <PHYInit>
    1ffa:	23c0      	movs	r3, #192	; 0xc0
    1ffc:	059b      	lsls	r3, r3, #22
    1ffe:	4a12      	ldr	r2, [pc, #72]	; (2048 <EthernetConfig+0x5c>)
    2000:	8812      	ldrh	r2, [r2, #0]
    2002:	805a      	strh	r2, [r3, #2]
    2004:	23c0      	movs	r3, #192	; 0xc0
    2006:	059b      	lsls	r3, r3, #22
    2008:	4a0f      	ldr	r2, [pc, #60]	; (2048 <EthernetConfig+0x5c>)
    200a:	8852      	ldrh	r2, [r2, #2]
    200c:	809a      	strh	r2, [r3, #4]
    200e:	23c0      	movs	r3, #192	; 0xc0
    2010:	059b      	lsls	r3, r3, #22
    2012:	4a0d      	ldr	r2, [pc, #52]	; (2048 <EthernetConfig+0x5c>)
    2014:	8892      	ldrh	r2, [r2, #4]
    2016:	80da      	strh	r2, [r3, #6]
    2018:	f000 f81e 	bl	2058 <MACReset>
    201c:	23c0      	movs	r3, #192	; 0xc0
    201e:	059b      	lsls	r3, r3, #22
    2020:	2207      	movs	r2, #7
    2022:	841a      	strh	r2, [r3, #32]
    2024:	2012      	movs	r0, #18
    2026:	f7ff ff17 	bl	1e58 <__NVIC_EnableIRQ>
    202a:	4b08      	ldr	r3, [pc, #32]	; (204c <EthernetConfig+0x60>)
    202c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    202e:	607b      	str	r3, [r7, #4]
    2030:	687b      	ldr	r3, [r7, #4]
    2032:	b29a      	uxth	r2, r3
    2034:	4b06      	ldr	r3, [pc, #24]	; (2050 <EthernetConfig+0x64>)
    2036:	801a      	strh	r2, [r3, #0]
    2038:	687b      	ldr	r3, [r7, #4]
    203a:	b29a      	uxth	r2, r3
    203c:	4b05      	ldr	r3, [pc, #20]	; (2054 <EthernetConfig+0x68>)
    203e:	801a      	strh	r2, [r3, #0]
    2040:	46c0      	nop			; (mov r8, r8)
    2042:	46bd      	mov	sp, r7
    2044:	b002      	add	sp, #8
    2046:	bd80      	pop	{r7, pc}
    2048:	20000008 	.word	0x20000008
    204c:	400d8000 	.word	0x400d8000
    2050:	20004d30 	.word	0x20004d30
    2054:	20004d32 	.word	0x20004d32

00002058 <MACReset>:
    2058:	b580      	push	{r7, lr}
    205a:	af00      	add	r7, sp, #0
    205c:	23c0      	movs	r3, #192	; 0xc0
    205e:	059b      	lsls	r3, r3, #22
    2060:	22c0      	movs	r2, #192	; 0xc0
    2062:	0592      	lsls	r2, r2, #22
    2064:	8bd2      	ldrh	r2, [r2, #30]
    2066:	b292      	uxth	r2, r2
    2068:	2103      	movs	r1, #3
    206a:	430a      	orrs	r2, r1
    206c:	b292      	uxth	r2, r2
    206e:	83da      	strh	r2, [r3, #30]
    2070:	f000 f86a 	bl	2148 <ClearMemory>
    2074:	23c0      	movs	r3, #192	; 0xc0
    2076:	059b      	lsls	r3, r3, #22
    2078:	2280      	movs	r2, #128	; 0x80
    207a:	0152      	lsls	r2, r2, #5
    207c:	801a      	strh	r2, [r3, #0]
    207e:	23c0      	movs	r3, #192	; 0xc0
    2080:	059b      	lsls	r3, r3, #22
    2082:	2200      	movs	r2, #0
    2084:	811a      	strh	r2, [r3, #8]
    2086:	23c0      	movs	r3, #192	; 0xc0
    2088:	059b      	lsls	r3, r3, #22
    208a:	2200      	movs	r2, #0
    208c:	815a      	strh	r2, [r3, #10]
    208e:	23c0      	movs	r3, #192	; 0xc0
    2090:	059b      	lsls	r3, r3, #22
    2092:	2200      	movs	r2, #0
    2094:	819a      	strh	r2, [r3, #12]
    2096:	23c0      	movs	r3, #192	; 0xc0
    2098:	059b      	lsls	r3, r3, #22
    209a:	4a26      	ldr	r2, [pc, #152]	; (2134 <MACReset+0xdc>)
    209c:	81da      	strh	r2, [r3, #14]
    209e:	23c0      	movs	r3, #192	; 0xc0
    20a0:	059b      	lsls	r3, r3, #22
    20a2:	2260      	movs	r2, #96	; 0x60
    20a4:	821a      	strh	r2, [r3, #16]
    20a6:	23c0      	movs	r3, #192	; 0xc0
    20a8:	059b      	lsls	r3, r3, #22
    20aa:	2250      	movs	r2, #80	; 0x50
    20ac:	825a      	strh	r2, [r3, #18]
    20ae:	23c0      	movs	r3, #192	; 0xc0
    20b0:	059b      	lsls	r3, r3, #22
    20b2:	2280      	movs	r2, #128	; 0x80
    20b4:	0092      	lsls	r2, r2, #2
    20b6:	829a      	strh	r2, [r3, #20]
    20b8:	23c0      	movs	r3, #192	; 0xc0
    20ba:	059b      	lsls	r3, r3, #22
    20bc:	2205      	movs	r2, #5
    20be:	82da      	strh	r2, [r3, #22]
    20c0:	23c0      	movs	r3, #192	; 0xc0
    20c2:	059b      	lsls	r3, r3, #22
    20c4:	4a1c      	ldr	r2, [pc, #112]	; (2138 <MACReset+0xe0>)
    20c6:	831a      	strh	r2, [r3, #24]
    20c8:	23c0      	movs	r3, #192	; 0xc0
    20ca:	059b      	lsls	r3, r3, #22
    20cc:	4a1b      	ldr	r2, [pc, #108]	; (213c <MACReset+0xe4>)
    20ce:	835a      	strh	r2, [r3, #26]
    20d0:	23c0      	movs	r3, #192	; 0xc0
    20d2:	059b      	lsls	r3, r3, #22
    20d4:	2280      	movs	r2, #128	; 0x80
    20d6:	839a      	strh	r2, [r3, #28]
    20d8:	23c0      	movs	r3, #192	; 0xc0
    20da:	059b      	lsls	r3, r3, #22
    20dc:	4a18      	ldr	r2, [pc, #96]	; (2140 <MACReset+0xe8>)
    20de:	83da      	strh	r2, [r3, #30]
    20e0:	23c0      	movs	r3, #192	; 0xc0
    20e2:	059b      	lsls	r3, r3, #22
    20e4:	2200      	movs	r2, #0
    20e6:	841a      	strh	r2, [r3, #32]
    20e8:	23c0      	movs	r3, #192	; 0xc0
    20ea:	059b      	lsls	r3, r3, #22
    20ec:	2201      	movs	r2, #1
    20ee:	4252      	negs	r2, r2
    20f0:	845a      	strh	r2, [r3, #34]	; 0x22
    20f2:	23c0      	movs	r3, #192	; 0xc0
    20f4:	059b      	lsls	r3, r3, #22
    20f6:	2200      	movs	r2, #0
    20f8:	851a      	strh	r2, [r3, #40]	; 0x28
    20fa:	23c0      	movs	r3, #192	; 0xc0
    20fc:	059b      	lsls	r3, r3, #22
    20fe:	2280      	movs	r2, #128	; 0x80
    2100:	0152      	lsls	r2, r2, #5
    2102:	855a      	strh	r2, [r3, #42]	; 0x2a
    2104:	23c0      	movs	r3, #192	; 0xc0
    2106:	059b      	lsls	r3, r3, #22
    2108:	22c0      	movs	r2, #192	; 0xc0
    210a:	0592      	lsls	r2, r2, #22
    210c:	8b92      	ldrh	r2, [r2, #28]
    210e:	b292      	uxth	r2, r2
    2110:	490c      	ldr	r1, [pc, #48]	; (2144 <MACReset+0xec>)
    2112:	400a      	ands	r2, r1
    2114:	b292      	uxth	r2, r2
    2116:	839a      	strh	r2, [r3, #28]
    2118:	23c0      	movs	r3, #192	; 0xc0
    211a:	059b      	lsls	r3, r3, #22
    211c:	22c0      	movs	r2, #192	; 0xc0
    211e:	0592      	lsls	r2, r2, #22
    2120:	8bd2      	ldrh	r2, [r2, #30]
    2122:	b292      	uxth	r2, r2
    2124:	2103      	movs	r1, #3
    2126:	438a      	bics	r2, r1
    2128:	b292      	uxth	r2, r2
    212a:	83da      	strh	r2, [r3, #30]
    212c:	46c0      	nop			; (mov r8, r8)
    212e:	46bd      	mov	sp, r7
    2130:	bd80      	pop	{r7, pc}
    2132:	46c0      	nop			; (mov r8, r8)
    2134:	ffff8000 	.word	0xffff8000
    2138:	ffff8606 	.word	0xffff8606
    213c:	ffff81fa 	.word	0xffff81fa
    2140:	00003003 	.word	0x00003003
    2144:	ffffbfff 	.word	0xffffbfff

00002148 <ClearMemory>:
    2148:	b580      	push	{r7, lr}
    214a:	b082      	sub	sp, #8
    214c:	af00      	add	r7, sp, #0
    214e:	23e0      	movs	r3, #224	; 0xe0
    2150:	059b      	lsls	r3, r3, #22
    2152:	603b      	str	r3, [r7, #0]
    2154:	2300      	movs	r3, #0
    2156:	607b      	str	r3, [r7, #4]
    2158:	e007      	b.n	216a <ClearMemory+0x22>
    215a:	683b      	ldr	r3, [r7, #0]
    215c:	1d1a      	adds	r2, r3, #4
    215e:	603a      	str	r2, [r7, #0]
    2160:	2200      	movs	r2, #0
    2162:	601a      	str	r2, [r3, #0]
    2164:	687b      	ldr	r3, [r7, #4]
    2166:	3301      	adds	r3, #1
    2168:	607b      	str	r3, [r7, #4]
    216a:	687b      	ldr	r3, [r7, #4]
    216c:	4a03      	ldr	r2, [pc, #12]	; (217c <ClearMemory+0x34>)
    216e:	4293      	cmp	r3, r2
    2170:	d9f3      	bls.n	215a <ClearMemory+0x12>
    2172:	46c0      	nop			; (mov r8, r8)
    2174:	46bd      	mov	sp, r7
    2176:	b002      	add	sp, #8
    2178:	bd80      	pop	{r7, pc}
    217a:	46c0      	nop			; (mov r8, r8)
    217c:	000007ff 	.word	0x000007ff

00002180 <ReadPacket>:
    2180:	b580      	push	{r7, lr}
    2182:	b08a      	sub	sp, #40	; 0x28
    2184:	af00      	add	r7, sp, #0
    2186:	6078      	str	r0, [r7, #4]
    2188:	2316      	movs	r3, #22
    218a:	18fb      	adds	r3, r7, r3
    218c:	2200      	movs	r2, #0
    218e:	801a      	strh	r2, [r3, #0]
    2190:	2326      	movs	r3, #38	; 0x26
    2192:	18fb      	adds	r3, r7, r3
    2194:	2200      	movs	r2, #0
    2196:	801a      	strh	r2, [r3, #0]
    2198:	4b71      	ldr	r3, [pc, #452]	; (2360 <ReadPacket+0x1e0>)
    219a:	681a      	ldr	r2, [r3, #0]
    219c:	2301      	movs	r3, #1
    219e:	425b      	negs	r3, r3
    21a0:	0019      	movs	r1, r3
    21a2:	0010      	movs	r0, r2
    21a4:	f004 fb26 	bl	67f4 <osMutexWait>
    21a8:	23c0      	movs	r3, #192	; 0xc0
    21aa:	059a      	lsls	r2, r3, #22
    21ac:	2314      	movs	r3, #20
    21ae:	18fb      	adds	r3, r7, r3
    21b0:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    21b2:	801a      	strh	r2, [r3, #0]
    21b4:	23c0      	movs	r3, #192	; 0xc0
    21b6:	059a      	lsls	r2, r3, #22
    21b8:	2312      	movs	r3, #18
    21ba:	18fb      	adds	r3, r7, r3
    21bc:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    21be:	801a      	strh	r2, [r3, #0]
    21c0:	2314      	movs	r3, #20
    21c2:	18fa      	adds	r2, r7, r3
    21c4:	2312      	movs	r3, #18
    21c6:	18fb      	adds	r3, r7, r3
    21c8:	8812      	ldrh	r2, [r2, #0]
    21ca:	881b      	ldrh	r3, [r3, #0]
    21cc:	429a      	cmp	r2, r3
    21ce:	d90e      	bls.n	21ee <ReadPacket+0x6e>
    21d0:	2326      	movs	r3, #38	; 0x26
    21d2:	18fb      	adds	r3, r7, r3
    21d4:	2214      	movs	r2, #20
    21d6:	18b9      	adds	r1, r7, r2
    21d8:	2212      	movs	r2, #18
    21da:	18ba      	adds	r2, r7, r2
    21dc:	8809      	ldrh	r1, [r1, #0]
    21de:	8812      	ldrh	r2, [r2, #0]
    21e0:	1a8a      	subs	r2, r1, r2
    21e2:	801a      	strh	r2, [r3, #0]
    21e4:	2316      	movs	r3, #22
    21e6:	18fb      	adds	r3, r7, r3
    21e8:	2200      	movs	r2, #0
    21ea:	801a      	strh	r2, [r3, #0]
    21ec:	e00e      	b.n	220c <ReadPacket+0x8c>
    21ee:	2326      	movs	r3, #38	; 0x26
    21f0:	18fb      	adds	r3, r7, r3
    21f2:	2212      	movs	r2, #18
    21f4:	18ba      	adds	r2, r7, r2
    21f6:	8812      	ldrh	r2, [r2, #0]
    21f8:	2180      	movs	r1, #128	; 0x80
    21fa:	0149      	lsls	r1, r1, #5
    21fc:	1a8a      	subs	r2, r1, r2
    21fe:	801a      	strh	r2, [r3, #0]
    2200:	2316      	movs	r3, #22
    2202:	18fb      	adds	r3, r7, r3
    2204:	2214      	movs	r2, #20
    2206:	18ba      	adds	r2, r7, r2
    2208:	8812      	ldrh	r2, [r2, #0]
    220a:	801a      	strh	r2, [r3, #0]
    220c:	2312      	movs	r3, #18
    220e:	18fb      	adds	r3, r7, r3
    2210:	881b      	ldrh	r3, [r3, #0]
    2212:	22e0      	movs	r2, #224	; 0xe0
    2214:	0592      	lsls	r2, r2, #22
    2216:	4694      	mov	ip, r2
    2218:	4463      	add	r3, ip
    221a:	623b      	str	r3, [r7, #32]
    221c:	687b      	ldr	r3, [r7, #4]
    221e:	61fb      	str	r3, [r7, #28]
    2220:	2308      	movs	r3, #8
    2222:	18fa      	adds	r2, r7, r3
    2224:	6a3b      	ldr	r3, [r7, #32]
    2226:	1d19      	adds	r1, r3, #4
    2228:	6239      	str	r1, [r7, #32]
    222a:	681b      	ldr	r3, [r3, #0]
    222c:	6013      	str	r3, [r2, #0]
    222e:	2308      	movs	r3, #8
    2230:	18fb      	adds	r3, r7, r3
    2232:	881b      	ldrh	r3, [r3, #0]
    2234:	3303      	adds	r3, #3
    2236:	2b00      	cmp	r3, #0
    2238:	da00      	bge.n	223c <ReadPacket+0xbc>
    223a:	3303      	adds	r3, #3
    223c:	109b      	asrs	r3, r3, #2
    223e:	60fb      	str	r3, [r7, #12]
    2240:	2326      	movs	r3, #38	; 0x26
    2242:	18fb      	adds	r3, r7, r3
    2244:	2226      	movs	r2, #38	; 0x26
    2246:	18ba      	adds	r2, r7, r2
    2248:	8812      	ldrh	r2, [r2, #0]
    224a:	3a04      	subs	r2, #4
    224c:	801a      	strh	r2, [r3, #0]
    224e:	6a3b      	ldr	r3, [r7, #32]
    2250:	b29b      	uxth	r3, r3
    2252:	4a44      	ldr	r2, [pc, #272]	; (2364 <ReadPacket+0x1e4>)
    2254:	4293      	cmp	r3, r2
    2256:	d902      	bls.n	225e <ReadPacket+0xde>
    2258:	23e0      	movs	r3, #224	; 0xe0
    225a:	059b      	lsls	r3, r3, #22
    225c:	623b      	str	r3, [r7, #32]
    225e:	2308      	movs	r3, #8
    2260:	18fb      	adds	r3, r7, r3
    2262:	881b      	ldrh	r3, [r3, #0]
    2264:	2226      	movs	r2, #38	; 0x26
    2266:	18ba      	adds	r2, r7, r2
    2268:	8812      	ldrh	r2, [r2, #0]
    226a:	429a      	cmp	r2, r3
    226c:	d312      	bcc.n	2294 <ReadPacket+0x114>
    226e:	2300      	movs	r3, #0
    2270:	61bb      	str	r3, [r7, #24]
    2272:	e00a      	b.n	228a <ReadPacket+0x10a>
    2274:	69fb      	ldr	r3, [r7, #28]
    2276:	1d1a      	adds	r2, r3, #4
    2278:	61fa      	str	r2, [r7, #28]
    227a:	6a3a      	ldr	r2, [r7, #32]
    227c:	1d11      	adds	r1, r2, #4
    227e:	6239      	str	r1, [r7, #32]
    2280:	6812      	ldr	r2, [r2, #0]
    2282:	601a      	str	r2, [r3, #0]
    2284:	69bb      	ldr	r3, [r7, #24]
    2286:	3301      	adds	r3, #1
    2288:	61bb      	str	r3, [r7, #24]
    228a:	69ba      	ldr	r2, [r7, #24]
    228c:	68fb      	ldr	r3, [r7, #12]
    228e:	429a      	cmp	r2, r3
    2290:	d3f0      	bcc.n	2274 <ReadPacket+0xf4>
    2292:	e034      	b.n	22fe <ReadPacket+0x17e>
    2294:	2326      	movs	r3, #38	; 0x26
    2296:	18fb      	adds	r3, r7, r3
    2298:	881b      	ldrh	r3, [r3, #0]
    229a:	089b      	lsrs	r3, r3, #2
    229c:	b29b      	uxth	r3, r3
    229e:	001a      	movs	r2, r3
    22a0:	68fb      	ldr	r3, [r7, #12]
    22a2:	1a9b      	subs	r3, r3, r2
    22a4:	60fb      	str	r3, [r7, #12]
    22a6:	2300      	movs	r3, #0
    22a8:	61bb      	str	r3, [r7, #24]
    22aa:	e00a      	b.n	22c2 <ReadPacket+0x142>
    22ac:	69fb      	ldr	r3, [r7, #28]
    22ae:	1d1a      	adds	r2, r3, #4
    22b0:	61fa      	str	r2, [r7, #28]
    22b2:	6a3a      	ldr	r2, [r7, #32]
    22b4:	1d11      	adds	r1, r2, #4
    22b6:	6239      	str	r1, [r7, #32]
    22b8:	6812      	ldr	r2, [r2, #0]
    22ba:	601a      	str	r2, [r3, #0]
    22bc:	69bb      	ldr	r3, [r7, #24]
    22be:	3301      	adds	r3, #1
    22c0:	61bb      	str	r3, [r7, #24]
    22c2:	2326      	movs	r3, #38	; 0x26
    22c4:	18fb      	adds	r3, r7, r3
    22c6:	881b      	ldrh	r3, [r3, #0]
    22c8:	089b      	lsrs	r3, r3, #2
    22ca:	b29b      	uxth	r3, r3
    22cc:	001a      	movs	r2, r3
    22ce:	69bb      	ldr	r3, [r7, #24]
    22d0:	429a      	cmp	r2, r3
    22d2:	d8eb      	bhi.n	22ac <ReadPacket+0x12c>
    22d4:	23e0      	movs	r3, #224	; 0xe0
    22d6:	059b      	lsls	r3, r3, #22
    22d8:	623b      	str	r3, [r7, #32]
    22da:	2300      	movs	r3, #0
    22dc:	61bb      	str	r3, [r7, #24]
    22de:	e00a      	b.n	22f6 <ReadPacket+0x176>
    22e0:	69fb      	ldr	r3, [r7, #28]
    22e2:	1d1a      	adds	r2, r3, #4
    22e4:	61fa      	str	r2, [r7, #28]
    22e6:	6a3a      	ldr	r2, [r7, #32]
    22e8:	1d11      	adds	r1, r2, #4
    22ea:	6239      	str	r1, [r7, #32]
    22ec:	6812      	ldr	r2, [r2, #0]
    22ee:	601a      	str	r2, [r3, #0]
    22f0:	69bb      	ldr	r3, [r7, #24]
    22f2:	3301      	adds	r3, #1
    22f4:	61bb      	str	r3, [r7, #24]
    22f6:	69ba      	ldr	r2, [r7, #24]
    22f8:	68fb      	ldr	r3, [r7, #12]
    22fa:	429a      	cmp	r2, r3
    22fc:	d3f0      	bcc.n	22e0 <ReadPacket+0x160>
    22fe:	6a3b      	ldr	r3, [r7, #32]
    2300:	b29b      	uxth	r3, r3
    2302:	4a18      	ldr	r2, [pc, #96]	; (2364 <ReadPacket+0x1e4>)
    2304:	4293      	cmp	r3, r2
    2306:	d902      	bls.n	230e <ReadPacket+0x18e>
    2308:	23e0      	movs	r3, #224	; 0xe0
    230a:	059b      	lsls	r3, r3, #22
    230c:	623b      	str	r3, [r7, #32]
    230e:	23c0      	movs	r3, #192	; 0xc0
    2310:	059b      	lsls	r3, r3, #22
    2312:	6a3a      	ldr	r2, [r7, #32]
    2314:	b292      	uxth	r2, r2
    2316:	851a      	strh	r2, [r3, #40]	; 0x28
    2318:	23c0      	movs	r3, #192	; 0xc0
    231a:	059b      	lsls	r3, r3, #22
    231c:	22c0      	movs	r2, #192	; 0xc0
    231e:	0592      	lsls	r2, r2, #22
    2320:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    2322:	b292      	uxth	r2, r2
    2324:	3a20      	subs	r2, #32
    2326:	b292      	uxth	r2, r2
    2328:	861a      	strh	r2, [r3, #48]	; 0x30
    232a:	687b      	ldr	r3, [r7, #4]
    232c:	88da      	ldrh	r2, [r3, #6]
    232e:	4b0e      	ldr	r3, [pc, #56]	; (2368 <ReadPacket+0x1e8>)
    2330:	801a      	strh	r2, [r3, #0]
    2332:	687b      	ldr	r3, [r7, #4]
    2334:	891a      	ldrh	r2, [r3, #8]
    2336:	4b0c      	ldr	r3, [pc, #48]	; (2368 <ReadPacket+0x1e8>)
    2338:	805a      	strh	r2, [r3, #2]
    233a:	687b      	ldr	r3, [r7, #4]
    233c:	895a      	ldrh	r2, [r3, #10]
    233e:	4b0a      	ldr	r3, [pc, #40]	; (2368 <ReadPacket+0x1e8>)
    2340:	809a      	strh	r2, [r3, #4]
    2342:	4b09      	ldr	r3, [pc, #36]	; (2368 <ReadPacket+0x1e8>)
    2344:	2201      	movs	r2, #1
    2346:	815a      	strh	r2, [r3, #10]
    2348:	4b05      	ldr	r3, [pc, #20]	; (2360 <ReadPacket+0x1e0>)
    234a:	681b      	ldr	r3, [r3, #0]
    234c:	0018      	movs	r0, r3
    234e:	f004 fa61 	bl	6814 <osMutexRelease>
    2352:	2308      	movs	r3, #8
    2354:	18fb      	adds	r3, r7, r3
    2356:	881b      	ldrh	r3, [r3, #0]
    2358:	0018      	movs	r0, r3
    235a:	46bd      	mov	sp, r7
    235c:	b00a      	add	sp, #40	; 0x28
    235e:	bd80      	pop	{r7, pc}
    2360:	2000532c 	.word	0x2000532c
    2364:	00000fff 	.word	0x00000fff
    2368:	20004d1c 	.word	0x20004d1c

0000236c <SendPacket>:
    236c:	b580      	push	{r7, lr}
    236e:	b08a      	sub	sp, #40	; 0x28
    2370:	af00      	add	r7, sp, #0
    2372:	6078      	str	r0, [r7, #4]
    2374:	6039      	str	r1, [r7, #0]
    2376:	4b79      	ldr	r3, [pc, #484]	; (255c <SendPacket+0x1f0>)
    2378:	681a      	ldr	r2, [r3, #0]
    237a:	2301      	movs	r3, #1
    237c:	425b      	negs	r3, r3
    237e:	0019      	movs	r1, r3
    2380:	0010      	movs	r0, r2
    2382:	f004 fa37 	bl	67f4 <osMutexWait>
    2386:	23c0      	movs	r3, #192	; 0xc0
    2388:	059b      	lsls	r3, r3, #22
    238a:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    238c:	b29b      	uxth	r3, r3
    238e:	61bb      	str	r3, [r7, #24]
    2390:	23c0      	movs	r3, #192	; 0xc0
    2392:	059b      	lsls	r3, r3, #22
    2394:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    2396:	b29b      	uxth	r3, r3
    2398:	617b      	str	r3, [r7, #20]
    239a:	69ba      	ldr	r2, [r7, #24]
    239c:	697b      	ldr	r3, [r7, #20]
    239e:	429a      	cmp	r2, r3
    23a0:	d90d      	bls.n	23be <SendPacket+0x52>
    23a2:	69bb      	ldr	r3, [r7, #24]
    23a4:	b29a      	uxth	r2, r3
    23a6:	697b      	ldr	r3, [r7, #20]
    23a8:	b29b      	uxth	r3, r3
    23aa:	1ad3      	subs	r3, r2, r3
    23ac:	b29a      	uxth	r2, r3
    23ae:	230c      	movs	r3, #12
    23b0:	18fb      	adds	r3, r7, r3
    23b2:	801a      	strh	r2, [r3, #0]
    23b4:	230c      	movs	r3, #12
    23b6:	18fb      	adds	r3, r7, r3
    23b8:	2200      	movs	r2, #0
    23ba:	805a      	strh	r2, [r3, #2]
    23bc:	e011      	b.n	23e2 <SendPacket+0x76>
    23be:	697b      	ldr	r3, [r7, #20]
    23c0:	b29b      	uxth	r3, r3
    23c2:	2280      	movs	r2, #128	; 0x80
    23c4:	0192      	lsls	r2, r2, #6
    23c6:	1ad3      	subs	r3, r2, r3
    23c8:	b29a      	uxth	r2, r3
    23ca:	230c      	movs	r3, #12
    23cc:	18fb      	adds	r3, r7, r3
    23ce:	801a      	strh	r2, [r3, #0]
    23d0:	69bb      	ldr	r3, [r7, #24]
    23d2:	b29b      	uxth	r3, r3
    23d4:	4a62      	ldr	r2, [pc, #392]	; (2560 <SendPacket+0x1f4>)
    23d6:	4694      	mov	ip, r2
    23d8:	4463      	add	r3, ip
    23da:	b29a      	uxth	r2, r3
    23dc:	230c      	movs	r3, #12
    23de:	18fb      	adds	r3, r7, r3
    23e0:	805a      	strh	r2, [r3, #2]
    23e2:	230c      	movs	r3, #12
    23e4:	18fb      	adds	r3, r7, r3
    23e6:	881b      	ldrh	r3, [r3, #0]
    23e8:	001a      	movs	r2, r3
    23ea:	230c      	movs	r3, #12
    23ec:	18fb      	adds	r3, r7, r3
    23ee:	885b      	ldrh	r3, [r3, #2]
    23f0:	18d3      	adds	r3, r2, r3
    23f2:	3b08      	subs	r3, #8
    23f4:	001a      	movs	r2, r3
    23f6:	683b      	ldr	r3, [r7, #0]
    23f8:	429a      	cmp	r2, r3
    23fa:	da01      	bge.n	2400 <SendPacket+0x94>
    23fc:	2300      	movs	r3, #0
    23fe:	e0a9      	b.n	2554 <SendPacket+0x1e8>
    2400:	683b      	ldr	r3, [r7, #0]
    2402:	613b      	str	r3, [r7, #16]
    2404:	687b      	ldr	r3, [r7, #4]
    2406:	623b      	str	r3, [r7, #32]
    2408:	697b      	ldr	r3, [r7, #20]
    240a:	22e0      	movs	r2, #224	; 0xe0
    240c:	0592      	lsls	r2, r2, #22
    240e:	4694      	mov	ip, r2
    2410:	4463      	add	r3, ip
    2412:	61fb      	str	r3, [r7, #28]
    2414:	69fb      	ldr	r3, [r7, #28]
    2416:	1d1a      	adds	r2, r3, #4
    2418:	61fa      	str	r2, [r7, #28]
    241a:	693a      	ldr	r2, [r7, #16]
    241c:	601a      	str	r2, [r3, #0]
    241e:	230c      	movs	r3, #12
    2420:	18fb      	adds	r3, r7, r3
    2422:	881b      	ldrh	r3, [r3, #0]
    2424:	3b04      	subs	r3, #4
    2426:	b29a      	uxth	r2, r3
    2428:	230c      	movs	r3, #12
    242a:	18fb      	adds	r3, r7, r3
    242c:	801a      	strh	r2, [r3, #0]
    242e:	69fb      	ldr	r3, [r7, #28]
    2430:	b29b      	uxth	r3, r3
    2432:	4a4c      	ldr	r2, [pc, #304]	; (2564 <SendPacket+0x1f8>)
    2434:	4293      	cmp	r3, r2
    2436:	d901      	bls.n	243c <SendPacket+0xd0>
    2438:	4b4b      	ldr	r3, [pc, #300]	; (2568 <SendPacket+0x1fc>)
    243a:	61fb      	str	r3, [r7, #28]
    243c:	683b      	ldr	r3, [r7, #0]
    243e:	3303      	adds	r3, #3
    2440:	2b00      	cmp	r3, #0
    2442:	da00      	bge.n	2446 <SendPacket+0xda>
    2444:	3303      	adds	r3, #3
    2446:	109b      	asrs	r3, r3, #2
    2448:	613b      	str	r3, [r7, #16]
    244a:	230c      	movs	r3, #12
    244c:	18fb      	adds	r3, r7, r3
    244e:	881b      	ldrh	r3, [r3, #0]
    2450:	001a      	movs	r2, r3
    2452:	683b      	ldr	r3, [r7, #0]
    2454:	429a      	cmp	r2, r3
    2456:	db1a      	blt.n	248e <SendPacket+0x122>
    2458:	2326      	movs	r3, #38	; 0x26
    245a:	18fb      	adds	r3, r7, r3
    245c:	2200      	movs	r2, #0
    245e:	801a      	strh	r2, [r3, #0]
    2460:	e00e      	b.n	2480 <SendPacket+0x114>
    2462:	69fb      	ldr	r3, [r7, #28]
    2464:	1d1a      	adds	r2, r3, #4
    2466:	61fa      	str	r2, [r7, #28]
    2468:	6a3a      	ldr	r2, [r7, #32]
    246a:	1d11      	adds	r1, r2, #4
    246c:	6239      	str	r1, [r7, #32]
    246e:	6812      	ldr	r2, [r2, #0]
    2470:	601a      	str	r2, [r3, #0]
    2472:	2326      	movs	r3, #38	; 0x26
    2474:	18fb      	adds	r3, r7, r3
    2476:	881a      	ldrh	r2, [r3, #0]
    2478:	2326      	movs	r3, #38	; 0x26
    247a:	18fb      	adds	r3, r7, r3
    247c:	3201      	adds	r2, #1
    247e:	801a      	strh	r2, [r3, #0]
    2480:	2326      	movs	r3, #38	; 0x26
    2482:	18fb      	adds	r3, r7, r3
    2484:	881a      	ldrh	r2, [r3, #0]
    2486:	693b      	ldr	r3, [r7, #16]
    2488:	429a      	cmp	r2, r3
    248a:	d3ea      	bcc.n	2462 <SendPacket+0xf6>
    248c:	e042      	b.n	2514 <SendPacket+0x1a8>
    248e:	230c      	movs	r3, #12
    2490:	18fb      	adds	r3, r7, r3
    2492:	881b      	ldrh	r3, [r3, #0]
    2494:	089b      	lsrs	r3, r3, #2
    2496:	b29b      	uxth	r3, r3
    2498:	001a      	movs	r2, r3
    249a:	693b      	ldr	r3, [r7, #16]
    249c:	1a9b      	subs	r3, r3, r2
    249e:	613b      	str	r3, [r7, #16]
    24a0:	2326      	movs	r3, #38	; 0x26
    24a2:	18fb      	adds	r3, r7, r3
    24a4:	2200      	movs	r2, #0
    24a6:	801a      	strh	r2, [r3, #0]
    24a8:	e00e      	b.n	24c8 <SendPacket+0x15c>
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
    24c8:	230c      	movs	r3, #12
    24ca:	18fb      	adds	r3, r7, r3
    24cc:	881b      	ldrh	r3, [r3, #0]
    24ce:	089b      	lsrs	r3, r3, #2
    24d0:	b29b      	uxth	r3, r3
    24d2:	2226      	movs	r2, #38	; 0x26
    24d4:	18ba      	adds	r2, r7, r2
    24d6:	8812      	ldrh	r2, [r2, #0]
    24d8:	429a      	cmp	r2, r3
    24da:	d3e6      	bcc.n	24aa <SendPacket+0x13e>
    24dc:	4b22      	ldr	r3, [pc, #136]	; (2568 <SendPacket+0x1fc>)
    24de:	61fb      	str	r3, [r7, #28]
    24e0:	2326      	movs	r3, #38	; 0x26
    24e2:	18fb      	adds	r3, r7, r3
    24e4:	2200      	movs	r2, #0
    24e6:	801a      	strh	r2, [r3, #0]
    24e8:	e00e      	b.n	2508 <SendPacket+0x19c>
    24ea:	69fb      	ldr	r3, [r7, #28]
    24ec:	1d1a      	adds	r2, r3, #4
    24ee:	61fa      	str	r2, [r7, #28]
    24f0:	6a3a      	ldr	r2, [r7, #32]
    24f2:	1d11      	adds	r1, r2, #4
    24f4:	6239      	str	r1, [r7, #32]
    24f6:	6812      	ldr	r2, [r2, #0]
    24f8:	601a      	str	r2, [r3, #0]
    24fa:	2326      	movs	r3, #38	; 0x26
    24fc:	18fb      	adds	r3, r7, r3
    24fe:	881a      	ldrh	r2, [r3, #0]
    2500:	2326      	movs	r3, #38	; 0x26
    2502:	18fb      	adds	r3, r7, r3
    2504:	3201      	adds	r2, #1
    2506:	801a      	strh	r2, [r3, #0]
    2508:	2326      	movs	r3, #38	; 0x26
    250a:	18fb      	adds	r3, r7, r3
    250c:	881a      	ldrh	r2, [r3, #0]
    250e:	693b      	ldr	r3, [r7, #16]
    2510:	429a      	cmp	r2, r3
    2512:	d3ea      	bcc.n	24ea <SendPacket+0x17e>
    2514:	69fb      	ldr	r3, [r7, #28]
    2516:	b29b      	uxth	r3, r3
    2518:	4a12      	ldr	r2, [pc, #72]	; (2564 <SendPacket+0x1f8>)
    251a:	4293      	cmp	r3, r2
    251c:	d901      	bls.n	2522 <SendPacket+0x1b6>
    251e:	4b12      	ldr	r3, [pc, #72]	; (2568 <SendPacket+0x1fc>)
    2520:	61fb      	str	r3, [r7, #28]
    2522:	2300      	movs	r3, #0
    2524:	613b      	str	r3, [r7, #16]
    2526:	69fb      	ldr	r3, [r7, #28]
    2528:	1d1a      	adds	r2, r3, #4
    252a:	61fa      	str	r2, [r7, #28]
    252c:	693a      	ldr	r2, [r7, #16]
    252e:	601a      	str	r2, [r3, #0]
    2530:	69fb      	ldr	r3, [r7, #28]
    2532:	b29b      	uxth	r3, r3
    2534:	4a0b      	ldr	r2, [pc, #44]	; (2564 <SendPacket+0x1f8>)
    2536:	4293      	cmp	r3, r2
    2538:	d901      	bls.n	253e <SendPacket+0x1d2>
    253a:	4b0b      	ldr	r3, [pc, #44]	; (2568 <SendPacket+0x1fc>)
    253c:	61fb      	str	r3, [r7, #28]
    253e:	23c0      	movs	r3, #192	; 0xc0
    2540:	059b      	lsls	r3, r3, #22
    2542:	69fa      	ldr	r2, [r7, #28]
    2544:	b292      	uxth	r2, r2
    2546:	855a      	strh	r2, [r3, #42]	; 0x2a
    2548:	4b04      	ldr	r3, [pc, #16]	; (255c <SendPacket+0x1f0>)
    254a:	681b      	ldr	r3, [r3, #0]
    254c:	0018      	movs	r0, r3
    254e:	f004 f961 	bl	6814 <osMutexRelease>
    2552:	683b      	ldr	r3, [r7, #0]
    2554:	0018      	movs	r0, r3
    2556:	46bd      	mov	sp, r7
    2558:	b00a      	add	sp, #40	; 0x28
    255a:	bd80      	pop	{r7, pc}
    255c:	20005340 	.word	0x20005340
    2560:	fffff000 	.word	0xfffff000
    2564:	00001ffc 	.word	0x00001ffc
    2568:	38001000 	.word	0x38001000

0000256c <ETHERNET_Handler>:
    256c:	b580      	push	{r7, lr}
    256e:	b082      	sub	sp, #8
    2570:	af00      	add	r7, sp, #0
    2572:	23c0      	movs	r3, #192	; 0xc0
    2574:	059a      	lsls	r2, r3, #22
    2576:	1dbb      	adds	r3, r7, #6
    2578:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    257a:	801a      	strh	r2, [r3, #0]
    257c:	23c0      	movs	r3, #192	; 0xc0
    257e:	059b      	lsls	r3, r3, #22
    2580:	1dba      	adds	r2, r7, #6
    2582:	8812      	ldrh	r2, [r2, #0]
    2584:	845a      	strh	r2, [r3, #34]	; 0x22
    2586:	1dbb      	adds	r3, r7, #6
    2588:	881b      	ldrh	r3, [r3, #0]
    258a:	2201      	movs	r2, #1
    258c:	4013      	ands	r3, r2
    258e:	d008      	beq.n	25a2 <ETHERNET_Handler+0x36>
    2590:	4b0a      	ldr	r3, [pc, #40]	; (25bc <ETHERNET_Handler+0x50>)
    2592:	2201      	movs	r2, #1
    2594:	601a      	str	r2, [r3, #0]
    2596:	4b0a      	ldr	r3, [pc, #40]	; (25c0 <ETHERNET_Handler+0x54>)
    2598:	681b      	ldr	r3, [r3, #0]
    259a:	2101      	movs	r1, #1
    259c:	0018      	movs	r0, r3
    259e:	f004 f847 	bl	6630 <osSignalSet>
    25a2:	1dbb      	adds	r3, r7, #6
    25a4:	881b      	ldrh	r3, [r3, #0]
    25a6:	2202      	movs	r2, #2
    25a8:	4013      	ands	r3, r2
    25aa:	d002      	beq.n	25b2 <ETHERNET_Handler+0x46>
    25ac:	4b05      	ldr	r3, [pc, #20]	; (25c4 <ETHERNET_Handler+0x58>)
    25ae:	2201      	movs	r2, #1
    25b0:	601a      	str	r2, [r3, #0]
    25b2:	46c0      	nop			; (mov r8, r8)
    25b4:	46bd      	mov	sp, r7
    25b6:	b002      	add	sp, #8
    25b8:	bd80      	pop	{r7, pc}
    25ba:	46c0      	nop			; (mov r8, r8)
    25bc:	20004d28 	.word	0x20004d28
    25c0:	20000858 	.word	0x20000858
    25c4:	20004d2c 	.word	0x20004d2c

000025c8 <network_config>:
    25c8:	b580      	push	{r7, lr}
    25ca:	af00      	add	r7, sp, #0
    25cc:	46c0      	nop			; (mov r8, r8)
    25ce:	46bd      	mov	sp, r7
    25d0:	bd80      	pop	{r7, pc}
    25d2:	46c0      	nop			; (mov r8, r8)

000025d4 <Answear_ARP>:
    25d4:	b580      	push	{r7, lr}
    25d6:	b08c      	sub	sp, #48	; 0x30
    25d8:	af00      	add	r7, sp, #0
    25da:	4b36      	ldr	r3, [pc, #216]	; (26b4 <Answear_ARP+0xe0>)
    25dc:	88da      	ldrh	r2, [r3, #6]
    25de:	1d3b      	adds	r3, r7, #4
    25e0:	801a      	strh	r2, [r3, #0]
    25e2:	4b34      	ldr	r3, [pc, #208]	; (26b4 <Answear_ARP+0xe0>)
    25e4:	891a      	ldrh	r2, [r3, #8]
    25e6:	1d3b      	adds	r3, r7, #4
    25e8:	805a      	strh	r2, [r3, #2]
    25ea:	4b32      	ldr	r3, [pc, #200]	; (26b4 <Answear_ARP+0xe0>)
    25ec:	895a      	ldrh	r2, [r3, #10]
    25ee:	1d3b      	adds	r3, r7, #4
    25f0:	809a      	strh	r2, [r3, #4]
    25f2:	23c0      	movs	r3, #192	; 0xc0
    25f4:	059b      	lsls	r3, r3, #22
    25f6:	885b      	ldrh	r3, [r3, #2]
    25f8:	b29a      	uxth	r2, r3
    25fa:	1d3b      	adds	r3, r7, #4
    25fc:	80da      	strh	r2, [r3, #6]
    25fe:	23c0      	movs	r3, #192	; 0xc0
    2600:	059b      	lsls	r3, r3, #22
    2602:	889b      	ldrh	r3, [r3, #4]
    2604:	b29a      	uxth	r2, r3
    2606:	1d3b      	adds	r3, r7, #4
    2608:	811a      	strh	r2, [r3, #8]
    260a:	23c0      	movs	r3, #192	; 0xc0
    260c:	059b      	lsls	r3, r3, #22
    260e:	88db      	ldrh	r3, [r3, #6]
    2610:	b29a      	uxth	r2, r3
    2612:	1d3b      	adds	r3, r7, #4
    2614:	815a      	strh	r2, [r3, #10]
    2616:	4b27      	ldr	r3, [pc, #156]	; (26b4 <Answear_ARP+0xe0>)
    2618:	899a      	ldrh	r2, [r3, #12]
    261a:	1d3b      	adds	r3, r7, #4
    261c:	819a      	strh	r2, [r3, #12]
    261e:	4b25      	ldr	r3, [pc, #148]	; (26b4 <Answear_ARP+0xe0>)
    2620:	89da      	ldrh	r2, [r3, #14]
    2622:	1d3b      	adds	r3, r7, #4
    2624:	81da      	strh	r2, [r3, #14]
    2626:	4b23      	ldr	r3, [pc, #140]	; (26b4 <Answear_ARP+0xe0>)
    2628:	8a1a      	ldrh	r2, [r3, #16]
    262a:	1d3b      	adds	r3, r7, #4
    262c:	821a      	strh	r2, [r3, #16]
    262e:	4b21      	ldr	r3, [pc, #132]	; (26b4 <Answear_ARP+0xe0>)
    2630:	8a5a      	ldrh	r2, [r3, #18]
    2632:	1d3b      	adds	r3, r7, #4
    2634:	825a      	strh	r2, [r3, #18]
    2636:	1d3b      	adds	r3, r7, #4
    2638:	2280      	movs	r2, #128	; 0x80
    263a:	0092      	lsls	r2, r2, #2
    263c:	829a      	strh	r2, [r3, #20]
    263e:	23c0      	movs	r3, #192	; 0xc0
    2640:	059b      	lsls	r3, r3, #22
    2642:	885b      	ldrh	r3, [r3, #2]
    2644:	b29a      	uxth	r2, r3
    2646:	1d3b      	adds	r3, r7, #4
    2648:	82da      	strh	r2, [r3, #22]
    264a:	23c0      	movs	r3, #192	; 0xc0
    264c:	059b      	lsls	r3, r3, #22
    264e:	889b      	ldrh	r3, [r3, #4]
    2650:	b29a      	uxth	r2, r3
    2652:	1d3b      	adds	r3, r7, #4
    2654:	831a      	strh	r2, [r3, #24]
    2656:	23c0      	movs	r3, #192	; 0xc0
    2658:	059b      	lsls	r3, r3, #22
    265a:	88db      	ldrh	r3, [r3, #6]
    265c:	b29a      	uxth	r2, r3
    265e:	1d3b      	adds	r3, r7, #4
    2660:	835a      	strh	r2, [r3, #26]
    2662:	4b15      	ldr	r3, [pc, #84]	; (26b8 <Answear_ARP+0xe4>)
    2664:	881a      	ldrh	r2, [r3, #0]
    2666:	1d3b      	adds	r3, r7, #4
    2668:	839a      	strh	r2, [r3, #28]
    266a:	4b13      	ldr	r3, [pc, #76]	; (26b8 <Answear_ARP+0xe4>)
    266c:	885a      	ldrh	r2, [r3, #2]
    266e:	1d3b      	adds	r3, r7, #4
    2670:	83da      	strh	r2, [r3, #30]
    2672:	4b10      	ldr	r3, [pc, #64]	; (26b4 <Answear_ARP+0xe0>)
    2674:	88da      	ldrh	r2, [r3, #6]
    2676:	1d3b      	adds	r3, r7, #4
    2678:	841a      	strh	r2, [r3, #32]
    267a:	4b0e      	ldr	r3, [pc, #56]	; (26b4 <Answear_ARP+0xe0>)
    267c:	891a      	ldrh	r2, [r3, #8]
    267e:	1d3b      	adds	r3, r7, #4
    2680:	845a      	strh	r2, [r3, #34]	; 0x22
    2682:	4b0c      	ldr	r3, [pc, #48]	; (26b4 <Answear_ARP+0xe0>)
    2684:	895a      	ldrh	r2, [r3, #10]
    2686:	1d3b      	adds	r3, r7, #4
    2688:	849a      	strh	r2, [r3, #36]	; 0x24
    268a:	4b0a      	ldr	r3, [pc, #40]	; (26b4 <Answear_ARP+0xe0>)
    268c:	8b9a      	ldrh	r2, [r3, #28]
    268e:	1d3b      	adds	r3, r7, #4
    2690:	84da      	strh	r2, [r3, #38]	; 0x26
    2692:	4b08      	ldr	r3, [pc, #32]	; (26b4 <Answear_ARP+0xe0>)
    2694:	8bda      	ldrh	r2, [r3, #30]
    2696:	1d3b      	adds	r3, r7, #4
    2698:	851a      	strh	r2, [r3, #40]	; 0x28
    269a:	1d3b      	adds	r3, r7, #4
    269c:	2200      	movs	r2, #0
    269e:	855a      	strh	r2, [r3, #42]	; 0x2a
    26a0:	1d3b      	adds	r3, r7, #4
    26a2:	212a      	movs	r1, #42	; 0x2a
    26a4:	0018      	movs	r0, r3
    26a6:	f7ff fe61 	bl	236c <SendPacket>
    26aa:	46c0      	nop			; (mov r8, r8)
    26ac:	46bd      	mov	sp, r7
    26ae:	b00c      	add	sp, #48	; 0x30
    26b0:	bd80      	pop	{r7, pc}
    26b2:	46c0      	nop			; (mov r8, r8)
    26b4:	20004d38 	.word	0x20004d38
    26b8:	20000010 	.word	0x20000010

000026bc <CheckSum_UDP>:
    26bc:	b580      	push	{r7, lr}
    26be:	b086      	sub	sp, #24
    26c0:	af00      	add	r7, sp, #0
    26c2:	0002      	movs	r2, r0
    26c4:	6039      	str	r1, [r7, #0]
    26c6:	1dbb      	adds	r3, r7, #6
    26c8:	801a      	strh	r2, [r3, #0]
    26ca:	2300      	movs	r3, #0
    26cc:	613b      	str	r3, [r7, #16]
    26ce:	230d      	movs	r3, #13
    26d0:	617b      	str	r3, [r7, #20]
    26d2:	e019      	b.n	2708 <CheckSum_UDP+0x4c>
    26d4:	697b      	ldr	r3, [r7, #20]
    26d6:	005b      	lsls	r3, r3, #1
    26d8:	683a      	ldr	r2, [r7, #0]
    26da:	18d3      	adds	r3, r2, r3
    26dc:	881b      	ldrh	r3, [r3, #0]
    26de:	021b      	lsls	r3, r3, #8
    26e0:	041b      	lsls	r3, r3, #16
    26e2:	0c1a      	lsrs	r2, r3, #16
    26e4:	697b      	ldr	r3, [r7, #20]
    26e6:	005b      	lsls	r3, r3, #1
    26e8:	6839      	ldr	r1, [r7, #0]
    26ea:	18cb      	adds	r3, r1, r3
    26ec:	881b      	ldrh	r3, [r3, #0]
    26ee:	0a1b      	lsrs	r3, r3, #8
    26f0:	b29b      	uxth	r3, r3
    26f2:	0019      	movs	r1, r3
    26f4:	23ff      	movs	r3, #255	; 0xff
    26f6:	400b      	ands	r3, r1
    26f8:	18d3      	adds	r3, r2, r3
    26fa:	001a      	movs	r2, r3
    26fc:	693b      	ldr	r3, [r7, #16]
    26fe:	189b      	adds	r3, r3, r2
    2700:	613b      	str	r3, [r7, #16]
    2702:	697b      	ldr	r3, [r7, #20]
    2704:	3301      	adds	r3, #1
    2706:	617b      	str	r3, [r7, #20]
    2708:	697b      	ldr	r3, [r7, #20]
    270a:	2b10      	cmp	r3, #16
    270c:	d9e2      	bls.n	26d4 <CheckSum_UDP+0x18>
    270e:	683b      	ldr	r3, [r7, #0]
    2710:	3316      	adds	r3, #22
    2712:	881b      	ldrh	r3, [r3, #0]
    2714:	0a1b      	lsrs	r3, r3, #8
    2716:	b29b      	uxth	r3, r3
    2718:	001a      	movs	r2, r3
    271a:	23ff      	movs	r3, #255	; 0xff
    271c:	4013      	ands	r3, r2
    271e:	693a      	ldr	r2, [r7, #16]
    2720:	18d3      	adds	r3, r2, r3
    2722:	613b      	str	r3, [r7, #16]
    2724:	1dbb      	adds	r3, r7, #6
    2726:	881b      	ldrh	r3, [r3, #0]
    2728:	693a      	ldr	r2, [r7, #16]
    272a:	18d3      	adds	r3, r2, r3
    272c:	613b      	str	r3, [r7, #16]
    272e:	683b      	ldr	r3, [r7, #0]
    2730:	3322      	adds	r3, #34	; 0x22
    2732:	881b      	ldrh	r3, [r3, #0]
    2734:	021b      	lsls	r3, r3, #8
    2736:	041b      	lsls	r3, r3, #16
    2738:	0c1a      	lsrs	r2, r3, #16
    273a:	683b      	ldr	r3, [r7, #0]
    273c:	3322      	adds	r3, #34	; 0x22
    273e:	881b      	ldrh	r3, [r3, #0]
    2740:	0a1b      	lsrs	r3, r3, #8
    2742:	b29b      	uxth	r3, r3
    2744:	0019      	movs	r1, r3
    2746:	23ff      	movs	r3, #255	; 0xff
    2748:	400b      	ands	r3, r1
    274a:	18d3      	adds	r3, r2, r3
    274c:	001a      	movs	r2, r3
    274e:	693b      	ldr	r3, [r7, #16]
    2750:	189b      	adds	r3, r3, r2
    2752:	613b      	str	r3, [r7, #16]
    2754:	683b      	ldr	r3, [r7, #0]
    2756:	3324      	adds	r3, #36	; 0x24
    2758:	881b      	ldrh	r3, [r3, #0]
    275a:	021b      	lsls	r3, r3, #8
    275c:	041b      	lsls	r3, r3, #16
    275e:	0c1a      	lsrs	r2, r3, #16
    2760:	683b      	ldr	r3, [r7, #0]
    2762:	3324      	adds	r3, #36	; 0x24
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
    277a:	1dbb      	adds	r3, r7, #6
    277c:	881b      	ldrh	r3, [r3, #0]
    277e:	693a      	ldr	r2, [r7, #16]
    2780:	18d3      	adds	r3, r2, r3
    2782:	613b      	str	r3, [r7, #16]
    2784:	683b      	ldr	r3, [r7, #0]
    2786:	3328      	adds	r3, #40	; 0x28
    2788:	881b      	ldrh	r3, [r3, #0]
    278a:	021b      	lsls	r3, r3, #8
    278c:	041b      	lsls	r3, r3, #16
    278e:	0c1a      	lsrs	r2, r3, #16
    2790:	683b      	ldr	r3, [r7, #0]
    2792:	3328      	adds	r3, #40	; 0x28
    2794:	881b      	ldrh	r3, [r3, #0]
    2796:	0a1b      	lsrs	r3, r3, #8
    2798:	b29b      	uxth	r3, r3
    279a:	0019      	movs	r1, r3
    279c:	23ff      	movs	r3, #255	; 0xff
    279e:	400b      	ands	r3, r1
    27a0:	18d3      	adds	r3, r2, r3
    27a2:	001a      	movs	r2, r3
    27a4:	693b      	ldr	r3, [r7, #16]
    27a6:	189b      	adds	r3, r3, r2
    27a8:	613b      	str	r3, [r7, #16]
    27aa:	683b      	ldr	r3, [r7, #0]
    27ac:	332a      	adds	r3, #42	; 0x2a
    27ae:	60fb      	str	r3, [r7, #12]
    27b0:	2300      	movs	r3, #0
    27b2:	617b      	str	r3, [r7, #20]
    27b4:	e017      	b.n	27e6 <CheckSum_UDP+0x12a>
    27b6:	697b      	ldr	r3, [r7, #20]
    27b8:	2201      	movs	r2, #1
    27ba:	4013      	ands	r3, r2
    27bc:	d008      	beq.n	27d0 <CheckSum_UDP+0x114>
    27be:	68fb      	ldr	r3, [r7, #12]
    27c0:	1c5a      	adds	r2, r3, #1
    27c2:	60fa      	str	r2, [r7, #12]
    27c4:	781b      	ldrb	r3, [r3, #0]
    27c6:	001a      	movs	r2, r3
    27c8:	693b      	ldr	r3, [r7, #16]
    27ca:	189b      	adds	r3, r3, r2
    27cc:	613b      	str	r3, [r7, #16]
    27ce:	e007      	b.n	27e0 <CheckSum_UDP+0x124>
    27d0:	68fb      	ldr	r3, [r7, #12]
    27d2:	1c5a      	adds	r2, r3, #1
    27d4:	60fa      	str	r2, [r7, #12]
    27d6:	781b      	ldrb	r3, [r3, #0]
    27d8:	021b      	lsls	r3, r3, #8
    27da:	693a      	ldr	r2, [r7, #16]
    27dc:	18d3      	adds	r3, r2, r3
    27de:	613b      	str	r3, [r7, #16]
    27e0:	697b      	ldr	r3, [r7, #20]
    27e2:	3301      	adds	r3, #1
    27e4:	617b      	str	r3, [r7, #20]
    27e6:	1dbb      	adds	r3, r7, #6
    27e8:	881b      	ldrh	r3, [r3, #0]
    27ea:	3b08      	subs	r3, #8
    27ec:	001a      	movs	r2, r3
    27ee:	697b      	ldr	r3, [r7, #20]
    27f0:	429a      	cmp	r2, r3
    27f2:	d8e0      	bhi.n	27b6 <CheckSum_UDP+0xfa>
    27f4:	e006      	b.n	2804 <CheckSum_UDP+0x148>
    27f6:	693b      	ldr	r3, [r7, #16]
    27f8:	0c1a      	lsrs	r2, r3, #16
    27fa:	693b      	ldr	r3, [r7, #16]
    27fc:	041b      	lsls	r3, r3, #16
    27fe:	0c1b      	lsrs	r3, r3, #16
    2800:	18d3      	adds	r3, r2, r3
    2802:	613b      	str	r3, [r7, #16]
    2804:	693b      	ldr	r3, [r7, #16]
    2806:	0c1b      	lsrs	r3, r3, #16
    2808:	d1f5      	bne.n	27f6 <CheckSum_UDP+0x13a>
    280a:	693b      	ldr	r3, [r7, #16]
    280c:	b29b      	uxth	r3, r3
    280e:	43db      	mvns	r3, r3
    2810:	b29b      	uxth	r3, r3
    2812:	0018      	movs	r0, r3
    2814:	46bd      	mov	sp, r7
    2816:	b006      	add	sp, #24
    2818:	bd80      	pop	{r7, pc}
    281a:	46c0      	nop			; (mov r8, r8)

0000281c <CheckSum_IP>:
    281c:	b580      	push	{r7, lr}
    281e:	b084      	sub	sp, #16
    2820:	af00      	add	r7, sp, #0
    2822:	6078      	str	r0, [r7, #4]
    2824:	2300      	movs	r3, #0
    2826:	60bb      	str	r3, [r7, #8]
    2828:	2300      	movs	r3, #0
    282a:	60fb      	str	r3, [r7, #12]
    282c:	e011      	b.n	2852 <CheckSum_IP+0x36>
    282e:	68fb      	ldr	r3, [r7, #12]
    2830:	2b05      	cmp	r3, #5
    2832:	d00a      	beq.n	284a <CheckSum_IP+0x2e>
    2834:	68fb      	ldr	r3, [r7, #12]
    2836:	3307      	adds	r3, #7
    2838:	005b      	lsls	r3, r3, #1
    283a:	687a      	ldr	r2, [r7, #4]
    283c:	18d3      	adds	r3, r2, r3
    283e:	881b      	ldrh	r3, [r3, #0]
    2840:	001a      	movs	r2, r3
    2842:	68bb      	ldr	r3, [r7, #8]
    2844:	189b      	adds	r3, r3, r2
    2846:	60bb      	str	r3, [r7, #8]
    2848:	e000      	b.n	284c <CheckSum_IP+0x30>
    284a:	46c0      	nop			; (mov r8, r8)
    284c:	68fb      	ldr	r3, [r7, #12]
    284e:	3301      	adds	r3, #1
    2850:	60fb      	str	r3, [r7, #12]
    2852:	68fb      	ldr	r3, [r7, #12]
    2854:	2b09      	cmp	r3, #9
    2856:	d9ea      	bls.n	282e <CheckSum_IP+0x12>
    2858:	68bb      	ldr	r3, [r7, #8]
    285a:	0c1a      	lsrs	r2, r3, #16
    285c:	68bb      	ldr	r3, [r7, #8]
    285e:	041b      	lsls	r3, r3, #16
    2860:	0c1b      	lsrs	r3, r3, #16
    2862:	18d3      	adds	r3, r2, r3
    2864:	60bb      	str	r3, [r7, #8]
    2866:	68bb      	ldr	r3, [r7, #8]
    2868:	b29b      	uxth	r3, r3
    286a:	43db      	mvns	r3, r3
    286c:	b29b      	uxth	r3, r3
    286e:	0018      	movs	r0, r3
    2870:	46bd      	mov	sp, r7
    2872:	b004      	add	sp, #16
    2874:	bd80      	pop	{r7, pc}
    2876:	46c0      	nop			; (mov r8, r8)

00002878 <CheckSum_ICMP>:
    2878:	b580      	push	{r7, lr}
    287a:	b084      	sub	sp, #16
    287c:	af00      	add	r7, sp, #0
    287e:	0002      	movs	r2, r0
    2880:	6039      	str	r1, [r7, #0]
    2882:	1dbb      	adds	r3, r7, #6
    2884:	801a      	strh	r2, [r3, #0]
    2886:	2300      	movs	r3, #0
    2888:	60bb      	str	r3, [r7, #8]
    288a:	2300      	movs	r3, #0
    288c:	60fb      	str	r3, [r7, #12]
    288e:	e011      	b.n	28b4 <CheckSum_ICMP+0x3c>
    2890:	68fb      	ldr	r3, [r7, #12]
    2892:	2b01      	cmp	r3, #1
    2894:	d00a      	beq.n	28ac <CheckSum_ICMP+0x34>
    2896:	68fb      	ldr	r3, [r7, #12]
    2898:	3311      	adds	r3, #17
    289a:	005b      	lsls	r3, r3, #1
    289c:	683a      	ldr	r2, [r7, #0]
    289e:	18d3      	adds	r3, r2, r3
    28a0:	881b      	ldrh	r3, [r3, #0]
    28a2:	001a      	movs	r2, r3
    28a4:	68bb      	ldr	r3, [r7, #8]
    28a6:	189b      	adds	r3, r3, r2
    28a8:	60bb      	str	r3, [r7, #8]
    28aa:	e000      	b.n	28ae <CheckSum_ICMP+0x36>
    28ac:	46c0      	nop			; (mov r8, r8)
    28ae:	68fb      	ldr	r3, [r7, #12]
    28b0:	3301      	adds	r3, #1
    28b2:	60fb      	str	r3, [r7, #12]
    28b4:	1dbb      	adds	r3, r7, #6
    28b6:	881a      	ldrh	r2, [r3, #0]
    28b8:	68fb      	ldr	r3, [r7, #12]
    28ba:	429a      	cmp	r2, r3
    28bc:	d8e8      	bhi.n	2890 <CheckSum_ICMP+0x18>
    28be:	68bb      	ldr	r3, [r7, #8]
    28c0:	0c1a      	lsrs	r2, r3, #16
    28c2:	68bb      	ldr	r3, [r7, #8]
    28c4:	041b      	lsls	r3, r3, #16
    28c6:	0c1b      	lsrs	r3, r3, #16
    28c8:	18d3      	adds	r3, r2, r3
    28ca:	60bb      	str	r3, [r7, #8]
    28cc:	68bb      	ldr	r3, [r7, #8]
    28ce:	b29b      	uxth	r3, r3
    28d0:	43db      	mvns	r3, r3
    28d2:	b29b      	uxth	r3, r3
    28d4:	0018      	movs	r0, r3
    28d6:	46bd      	mov	sp, r7
    28d8:	b004      	add	sp, #16
    28da:	bd80      	pop	{r7, pc}

000028dc <Request_ICMP>:
    28dc:	b580      	push	{r7, lr}
    28de:	b096      	sub	sp, #88	; 0x58
    28e0:	af00      	add	r7, sp, #0
    28e2:	4b73      	ldr	r3, [pc, #460]	; (2ab0 <Request_ICMP+0x1d4>)
    28e4:	881a      	ldrh	r2, [r3, #0]
    28e6:	1d3b      	adds	r3, r7, #4
    28e8:	801a      	strh	r2, [r3, #0]
    28ea:	4b71      	ldr	r3, [pc, #452]	; (2ab0 <Request_ICMP+0x1d4>)
    28ec:	885a      	ldrh	r2, [r3, #2]
    28ee:	1d3b      	adds	r3, r7, #4
    28f0:	805a      	strh	r2, [r3, #2]
    28f2:	4b6f      	ldr	r3, [pc, #444]	; (2ab0 <Request_ICMP+0x1d4>)
    28f4:	889a      	ldrh	r2, [r3, #4]
    28f6:	1d3b      	adds	r3, r7, #4
    28f8:	809a      	strh	r2, [r3, #4]
    28fa:	23c0      	movs	r3, #192	; 0xc0
    28fc:	059b      	lsls	r3, r3, #22
    28fe:	885b      	ldrh	r3, [r3, #2]
    2900:	b29a      	uxth	r2, r3
    2902:	1d3b      	adds	r3, r7, #4
    2904:	80da      	strh	r2, [r3, #6]
    2906:	23c0      	movs	r3, #192	; 0xc0
    2908:	059b      	lsls	r3, r3, #22
    290a:	889b      	ldrh	r3, [r3, #4]
    290c:	b29a      	uxth	r2, r3
    290e:	1d3b      	adds	r3, r7, #4
    2910:	811a      	strh	r2, [r3, #8]
    2912:	23c0      	movs	r3, #192	; 0xc0
    2914:	059b      	lsls	r3, r3, #22
    2916:	88db      	ldrh	r3, [r3, #6]
    2918:	b29a      	uxth	r2, r3
    291a:	1d3b      	adds	r3, r7, #4
    291c:	815a      	strh	r2, [r3, #10]
    291e:	1d3b      	adds	r3, r7, #4
    2920:	2208      	movs	r2, #8
    2922:	819a      	strh	r2, [r3, #12]
    2924:	1d3b      	adds	r3, r7, #4
    2926:	2245      	movs	r2, #69	; 0x45
    2928:	81da      	strh	r2, [r3, #14]
    292a:	1d3b      	adds	r3, r7, #4
    292c:	22f0      	movs	r2, #240	; 0xf0
    292e:	0192      	lsls	r2, r2, #6
    2930:	821a      	strh	r2, [r3, #16]
    2932:	4b60      	ldr	r3, [pc, #384]	; (2ab4 <Request_ICMP+0x1d8>)
    2934:	881a      	ldrh	r2, [r3, #0]
    2936:	1d3b      	adds	r3, r7, #4
    2938:	825a      	strh	r2, [r3, #18]
    293a:	1d3b      	adds	r3, r7, #4
    293c:	2200      	movs	r2, #0
    293e:	829a      	strh	r2, [r3, #20]
    2940:	1d3b      	adds	r3, r7, #4
    2942:	22c0      	movs	r2, #192	; 0xc0
    2944:	0052      	lsls	r2, r2, #1
    2946:	82da      	strh	r2, [r3, #22]
    2948:	1d3b      	adds	r3, r7, #4
    294a:	2200      	movs	r2, #0
    294c:	831a      	strh	r2, [r3, #24]
    294e:	4b5a      	ldr	r3, [pc, #360]	; (2ab8 <Request_ICMP+0x1dc>)
    2950:	881a      	ldrh	r2, [r3, #0]
    2952:	1d3b      	adds	r3, r7, #4
    2954:	835a      	strh	r2, [r3, #26]
    2956:	4b58      	ldr	r3, [pc, #352]	; (2ab8 <Request_ICMP+0x1dc>)
    2958:	885a      	ldrh	r2, [r3, #2]
    295a:	1d3b      	adds	r3, r7, #4
    295c:	839a      	strh	r2, [r3, #28]
    295e:	4b54      	ldr	r3, [pc, #336]	; (2ab0 <Request_ICMP+0x1d4>)
    2960:	88da      	ldrh	r2, [r3, #6]
    2962:	1d3b      	adds	r3, r7, #4
    2964:	83da      	strh	r2, [r3, #30]
    2966:	4b52      	ldr	r3, [pc, #328]	; (2ab0 <Request_ICMP+0x1d4>)
    2968:	891a      	ldrh	r2, [r3, #8]
    296a:	1d3b      	adds	r3, r7, #4
    296c:	841a      	strh	r2, [r3, #32]
    296e:	1d3b      	adds	r3, r7, #4
    2970:	0018      	movs	r0, r3
    2972:	f7ff ff53 	bl	281c <CheckSum_IP>
    2976:	0003      	movs	r3, r0
    2978:	001a      	movs	r2, r3
    297a:	1d3b      	adds	r3, r7, #4
    297c:	831a      	strh	r2, [r3, #24]
    297e:	1d3b      	adds	r3, r7, #4
    2980:	2208      	movs	r2, #8
    2982:	845a      	strh	r2, [r3, #34]	; 0x22
    2984:	1d3b      	adds	r3, r7, #4
    2986:	2200      	movs	r2, #0
    2988:	849a      	strh	r2, [r3, #36]	; 0x24
    298a:	1d3b      	adds	r3, r7, #4
    298c:	2202      	movs	r2, #2
    298e:	84da      	strh	r2, [r3, #38]	; 0x26
    2990:	4b4a      	ldr	r3, [pc, #296]	; (2abc <Request_ICMP+0x1e0>)
    2992:	881a      	ldrh	r2, [r3, #0]
    2994:	1d3b      	adds	r3, r7, #4
    2996:	851a      	strh	r2, [r3, #40]	; 0x28
    2998:	2300      	movs	r3, #0
    299a:	657b      	str	r3, [r7, #84]	; 0x54
    299c:	2300      	movs	r3, #0
    299e:	653b      	str	r3, [r7, #80]	; 0x50
    29a0:	e021      	b.n	29e6 <Request_ICMP+0x10a>
    29a2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29a4:	b2db      	uxtb	r3, r3
    29a6:	3361      	adds	r3, #97	; 0x61
    29a8:	b2da      	uxtb	r2, r3
    29aa:	003b      	movs	r3, r7
    29ac:	701a      	strb	r2, [r3, #0]
    29ae:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29b0:	b2db      	uxtb	r3, r3
    29b2:	3362      	adds	r3, #98	; 0x62
    29b4:	b2da      	uxtb	r2, r3
    29b6:	003b      	movs	r3, r7
    29b8:	705a      	strb	r2, [r3, #1]
    29ba:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    29bc:	3315      	adds	r3, #21
    29be:	001a      	movs	r2, r3
    29c0:	003b      	movs	r3, r7
    29c2:	785b      	ldrb	r3, [r3, #1]
    29c4:	021b      	lsls	r3, r3, #8
    29c6:	b219      	sxth	r1, r3
    29c8:	003b      	movs	r3, r7
    29ca:	781b      	ldrb	r3, [r3, #0]
    29cc:	b21b      	sxth	r3, r3
    29ce:	430b      	orrs	r3, r1
    29d0:	b21b      	sxth	r3, r3
    29d2:	b299      	uxth	r1, r3
    29d4:	1d3b      	adds	r3, r7, #4
    29d6:	0052      	lsls	r2, r2, #1
    29d8:	52d1      	strh	r1, [r2, r3]
    29da:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29dc:	3302      	adds	r3, #2
    29de:	657b      	str	r3, [r7, #84]	; 0x54
    29e0:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    29e2:	3301      	adds	r3, #1
    29e4:	653b      	str	r3, [r7, #80]	; 0x50
    29e6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29e8:	2b1f      	cmp	r3, #31
    29ea:	d9da      	bls.n	29a2 <Request_ICMP+0xc6>
    29ec:	1d3b      	adds	r3, r7, #4
    29ee:	0019      	movs	r1, r3
    29f0:	2014      	movs	r0, #20
    29f2:	f7ff ff41 	bl	2878 <CheckSum_ICMP>
    29f6:	0003      	movs	r3, r0
    29f8:	001a      	movs	r2, r3
    29fa:	1d3b      	adds	r3, r7, #4
    29fc:	849a      	strh	r2, [r3, #36]	; 0x24
    29fe:	1d3b      	adds	r3, r7, #4
    2a00:	214a      	movs	r1, #74	; 0x4a
    2a02:	0018      	movs	r0, r3
    2a04:	f7ff fcb2 	bl	236c <SendPacket>
    2a08:	4b2a      	ldr	r3, [pc, #168]	; (2ab4 <Request_ICMP+0x1d8>)
    2a0a:	881b      	ldrh	r3, [r3, #0]
    2a0c:	0a1b      	lsrs	r3, r3, #8
    2a0e:	b29b      	uxth	r3, r3
    2a10:	b2da      	uxtb	r2, r3
    2a12:	003b      	movs	r3, r7
    2a14:	701a      	strb	r2, [r3, #0]
    2a16:	4b27      	ldr	r3, [pc, #156]	; (2ab4 <Request_ICMP+0x1d8>)
    2a18:	881b      	ldrh	r3, [r3, #0]
    2a1a:	b2da      	uxtb	r2, r3
    2a1c:	003b      	movs	r3, r7
    2a1e:	705a      	strb	r2, [r3, #1]
    2a20:	003b      	movs	r3, r7
    2a22:	781b      	ldrb	r3, [r3, #0]
    2a24:	3301      	adds	r3, #1
    2a26:	b2da      	uxtb	r2, r3
    2a28:	003b      	movs	r3, r7
    2a2a:	701a      	strb	r2, [r3, #0]
    2a2c:	003b      	movs	r3, r7
    2a2e:	781b      	ldrb	r3, [r3, #0]
    2a30:	2b00      	cmp	r3, #0
    2a32:	d105      	bne.n	2a40 <Request_ICMP+0x164>
    2a34:	003b      	movs	r3, r7
    2a36:	785b      	ldrb	r3, [r3, #1]
    2a38:	3301      	adds	r3, #1
    2a3a:	b2da      	uxtb	r2, r3
    2a3c:	003b      	movs	r3, r7
    2a3e:	705a      	strb	r2, [r3, #1]
    2a40:	003b      	movs	r3, r7
    2a42:	781b      	ldrb	r3, [r3, #0]
    2a44:	021b      	lsls	r3, r3, #8
    2a46:	b21a      	sxth	r2, r3
    2a48:	003b      	movs	r3, r7
    2a4a:	785b      	ldrb	r3, [r3, #1]
    2a4c:	b21b      	sxth	r3, r3
    2a4e:	4313      	orrs	r3, r2
    2a50:	b21b      	sxth	r3, r3
    2a52:	b29a      	uxth	r2, r3
    2a54:	4b17      	ldr	r3, [pc, #92]	; (2ab4 <Request_ICMP+0x1d8>)
    2a56:	801a      	strh	r2, [r3, #0]
    2a58:	4b18      	ldr	r3, [pc, #96]	; (2abc <Request_ICMP+0x1e0>)
    2a5a:	881b      	ldrh	r3, [r3, #0]
    2a5c:	0a1b      	lsrs	r3, r3, #8
    2a5e:	b29b      	uxth	r3, r3
    2a60:	b2da      	uxtb	r2, r3
    2a62:	003b      	movs	r3, r7
    2a64:	701a      	strb	r2, [r3, #0]
    2a66:	4b15      	ldr	r3, [pc, #84]	; (2abc <Request_ICMP+0x1e0>)
    2a68:	881b      	ldrh	r3, [r3, #0]
    2a6a:	b2da      	uxtb	r2, r3
    2a6c:	003b      	movs	r3, r7
    2a6e:	705a      	strb	r2, [r3, #1]
    2a70:	003b      	movs	r3, r7
    2a72:	781b      	ldrb	r3, [r3, #0]
    2a74:	3301      	adds	r3, #1
    2a76:	b2da      	uxtb	r2, r3
    2a78:	003b      	movs	r3, r7
    2a7a:	701a      	strb	r2, [r3, #0]
    2a7c:	003b      	movs	r3, r7
    2a7e:	781b      	ldrb	r3, [r3, #0]
    2a80:	2b00      	cmp	r3, #0
    2a82:	d105      	bne.n	2a90 <Request_ICMP+0x1b4>
    2a84:	003b      	movs	r3, r7
    2a86:	785b      	ldrb	r3, [r3, #1]
    2a88:	3301      	adds	r3, #1
    2a8a:	b2da      	uxtb	r2, r3
    2a8c:	003b      	movs	r3, r7
    2a8e:	705a      	strb	r2, [r3, #1]
    2a90:	003b      	movs	r3, r7
    2a92:	781b      	ldrb	r3, [r3, #0]
    2a94:	021b      	lsls	r3, r3, #8
    2a96:	b21a      	sxth	r2, r3
    2a98:	003b      	movs	r3, r7
    2a9a:	785b      	ldrb	r3, [r3, #1]
    2a9c:	b21b      	sxth	r3, r3
    2a9e:	4313      	orrs	r3, r2
    2aa0:	b21b      	sxth	r3, r3
    2aa2:	b29a      	uxth	r2, r3
    2aa4:	4b05      	ldr	r3, [pc, #20]	; (2abc <Request_ICMP+0x1e0>)
    2aa6:	801a      	strh	r2, [r3, #0]
    2aa8:	46c0      	nop			; (mov r8, r8)
    2aaa:	46bd      	mov	sp, r7
    2aac:	b016      	add	sp, #88	; 0x58
    2aae:	bd80      	pop	{r7, pc}
    2ab0:	20004d1c 	.word	0x20004d1c
    2ab4:	20004d30 	.word	0x20004d30
    2ab8:	20000010 	.word	0x20000010
    2abc:	20004d32 	.word	0x20004d32

00002ac0 <Answear_ICMP>:
    2ac0:	b580      	push	{r7, lr}
    2ac2:	b082      	sub	sp, #8
    2ac4:	af00      	add	r7, sp, #0
    2ac6:	4b53      	ldr	r3, [pc, #332]	; (2c14 <Answear_ICMP+0x154>)
    2ac8:	4a53      	ldr	r2, [pc, #332]	; (2c18 <Answear_ICMP+0x158>)
    2aca:	5a9a      	ldrh	r2, [r3, r2]
    2acc:	1cbb      	adds	r3, r7, #2
    2ace:	3a26      	subs	r2, #38	; 0x26
    2ad0:	801a      	strh	r2, [r3, #0]
    2ad2:	1cbb      	adds	r3, r7, #2
    2ad4:	881b      	ldrh	r3, [r3, #0]
    2ad6:	2201      	movs	r2, #1
    2ad8:	4013      	ands	r3, r2
    2ada:	d017      	beq.n	2b0c <Answear_ICMP+0x4c>
    2adc:	1cbb      	adds	r3, r7, #2
    2ade:	881b      	ldrh	r3, [r3, #0]
    2ae0:	3301      	adds	r3, #1
    2ae2:	105a      	asrs	r2, r3, #1
    2ae4:	1cbb      	adds	r3, r7, #2
    2ae6:	801a      	strh	r2, [r3, #0]
    2ae8:	1cbb      	adds	r3, r7, #2
    2aea:	881b      	ldrh	r3, [r3, #0]
    2aec:	3310      	adds	r3, #16
    2aee:	001a      	movs	r2, r3
    2af0:	1cbb      	adds	r3, r7, #2
    2af2:	881b      	ldrh	r3, [r3, #0]
    2af4:	3310      	adds	r3, #16
    2af6:	0019      	movs	r1, r3
    2af8:	4b46      	ldr	r3, [pc, #280]	; (2c14 <Answear_ICMP+0x154>)
    2afa:	0049      	lsls	r1, r1, #1
    2afc:	5acb      	ldrh	r3, [r1, r3]
    2afe:	21ff      	movs	r1, #255	; 0xff
    2b00:	400b      	ands	r3, r1
    2b02:	b299      	uxth	r1, r3
    2b04:	4b43      	ldr	r3, [pc, #268]	; (2c14 <Answear_ICMP+0x154>)
    2b06:	0052      	lsls	r2, r2, #1
    2b08:	52d1      	strh	r1, [r2, r3]
    2b0a:	e004      	b.n	2b16 <Answear_ICMP+0x56>
    2b0c:	1cbb      	adds	r3, r7, #2
    2b0e:	1cba      	adds	r2, r7, #2
    2b10:	8812      	ldrh	r2, [r2, #0]
    2b12:	0852      	lsrs	r2, r2, #1
    2b14:	801a      	strh	r2, [r3, #0]
    2b16:	4b3f      	ldr	r3, [pc, #252]	; (2c14 <Answear_ICMP+0x154>)
    2b18:	88da      	ldrh	r2, [r3, #6]
    2b1a:	4b40      	ldr	r3, [pc, #256]	; (2c1c <Answear_ICMP+0x15c>)
    2b1c:	801a      	strh	r2, [r3, #0]
    2b1e:	4b3d      	ldr	r3, [pc, #244]	; (2c14 <Answear_ICMP+0x154>)
    2b20:	891a      	ldrh	r2, [r3, #8]
    2b22:	4b3e      	ldr	r3, [pc, #248]	; (2c1c <Answear_ICMP+0x15c>)
    2b24:	805a      	strh	r2, [r3, #2]
    2b26:	4b3b      	ldr	r3, [pc, #236]	; (2c14 <Answear_ICMP+0x154>)
    2b28:	895a      	ldrh	r2, [r3, #10]
    2b2a:	4b3c      	ldr	r3, [pc, #240]	; (2c1c <Answear_ICMP+0x15c>)
    2b2c:	809a      	strh	r2, [r3, #4]
    2b2e:	23c0      	movs	r3, #192	; 0xc0
    2b30:	059b      	lsls	r3, r3, #22
    2b32:	885b      	ldrh	r3, [r3, #2]
    2b34:	b29a      	uxth	r2, r3
    2b36:	4b39      	ldr	r3, [pc, #228]	; (2c1c <Answear_ICMP+0x15c>)
    2b38:	80da      	strh	r2, [r3, #6]
    2b3a:	23c0      	movs	r3, #192	; 0xc0
    2b3c:	059b      	lsls	r3, r3, #22
    2b3e:	889b      	ldrh	r3, [r3, #4]
    2b40:	b29a      	uxth	r2, r3
    2b42:	4b36      	ldr	r3, [pc, #216]	; (2c1c <Answear_ICMP+0x15c>)
    2b44:	811a      	strh	r2, [r3, #8]
    2b46:	23c0      	movs	r3, #192	; 0xc0
    2b48:	059b      	lsls	r3, r3, #22
    2b4a:	88db      	ldrh	r3, [r3, #6]
    2b4c:	b29a      	uxth	r2, r3
    2b4e:	4b33      	ldr	r3, [pc, #204]	; (2c1c <Answear_ICMP+0x15c>)
    2b50:	815a      	strh	r2, [r3, #10]
    2b52:	4b30      	ldr	r3, [pc, #192]	; (2c14 <Answear_ICMP+0x154>)
    2b54:	899a      	ldrh	r2, [r3, #12]
    2b56:	4b31      	ldr	r3, [pc, #196]	; (2c1c <Answear_ICMP+0x15c>)
    2b58:	819a      	strh	r2, [r3, #12]
    2b5a:	2307      	movs	r3, #7
    2b5c:	607b      	str	r3, [r7, #4]
    2b5e:	e00a      	b.n	2b76 <Answear_ICMP+0xb6>
    2b60:	4b2c      	ldr	r3, [pc, #176]	; (2c14 <Answear_ICMP+0x154>)
    2b62:	687a      	ldr	r2, [r7, #4]
    2b64:	0052      	lsls	r2, r2, #1
    2b66:	5ad1      	ldrh	r1, [r2, r3]
    2b68:	4b2c      	ldr	r3, [pc, #176]	; (2c1c <Answear_ICMP+0x15c>)
    2b6a:	687a      	ldr	r2, [r7, #4]
    2b6c:	0052      	lsls	r2, r2, #1
    2b6e:	52d1      	strh	r1, [r2, r3]
    2b70:	687b      	ldr	r3, [r7, #4]
    2b72:	3301      	adds	r3, #1
    2b74:	607b      	str	r3, [r7, #4]
    2b76:	687b      	ldr	r3, [r7, #4]
    2b78:	2b0b      	cmp	r3, #11
    2b7a:	d9f1      	bls.n	2b60 <Answear_ICMP+0xa0>
    2b7c:	4b25      	ldr	r3, [pc, #148]	; (2c14 <Answear_ICMP+0x154>)
    2b7e:	0018      	movs	r0, r3
    2b80:	f7ff fe4c 	bl	281c <CheckSum_IP>
    2b84:	0003      	movs	r3, r0
    2b86:	001a      	movs	r2, r3
    2b88:	4b24      	ldr	r3, [pc, #144]	; (2c1c <Answear_ICMP+0x15c>)
    2b8a:	831a      	strh	r2, [r3, #24]
    2b8c:	4b21      	ldr	r3, [pc, #132]	; (2c14 <Answear_ICMP+0x154>)
    2b8e:	8bda      	ldrh	r2, [r3, #30]
    2b90:	4b22      	ldr	r3, [pc, #136]	; (2c1c <Answear_ICMP+0x15c>)
    2b92:	835a      	strh	r2, [r3, #26]
    2b94:	4b1f      	ldr	r3, [pc, #124]	; (2c14 <Answear_ICMP+0x154>)
    2b96:	8c1a      	ldrh	r2, [r3, #32]
    2b98:	4b20      	ldr	r3, [pc, #128]	; (2c1c <Answear_ICMP+0x15c>)
    2b9a:	839a      	strh	r2, [r3, #28]
    2b9c:	4b1d      	ldr	r3, [pc, #116]	; (2c14 <Answear_ICMP+0x154>)
    2b9e:	8b5a      	ldrh	r2, [r3, #26]
    2ba0:	4b1e      	ldr	r3, [pc, #120]	; (2c1c <Answear_ICMP+0x15c>)
    2ba2:	83da      	strh	r2, [r3, #30]
    2ba4:	4b1b      	ldr	r3, [pc, #108]	; (2c14 <Answear_ICMP+0x154>)
    2ba6:	8b9a      	ldrh	r2, [r3, #28]
    2ba8:	4b1c      	ldr	r3, [pc, #112]	; (2c1c <Answear_ICMP+0x15c>)
    2baa:	841a      	strh	r2, [r3, #32]
    2bac:	4b1b      	ldr	r3, [pc, #108]	; (2c1c <Answear_ICMP+0x15c>)
    2bae:	2200      	movs	r2, #0
    2bb0:	845a      	strh	r2, [r3, #34]	; 0x22
    2bb2:	4b18      	ldr	r3, [pc, #96]	; (2c14 <Answear_ICMP+0x154>)
    2bb4:	2200      	movs	r2, #0
    2bb6:	845a      	strh	r2, [r3, #34]	; 0x22
    2bb8:	4a16      	ldr	r2, [pc, #88]	; (2c14 <Answear_ICMP+0x154>)
    2bba:	1cbb      	adds	r3, r7, #2
    2bbc:	881b      	ldrh	r3, [r3, #0]
    2bbe:	0011      	movs	r1, r2
    2bc0:	0018      	movs	r0, r3
    2bc2:	f7ff fe59 	bl	2878 <CheckSum_ICMP>
    2bc6:	0003      	movs	r3, r0
    2bc8:	001a      	movs	r2, r3
    2bca:	4b14      	ldr	r3, [pc, #80]	; (2c1c <Answear_ICMP+0x15c>)
    2bcc:	849a      	strh	r2, [r3, #36]	; 0x24
    2bce:	2313      	movs	r3, #19
    2bd0:	607b      	str	r3, [r7, #4]
    2bd2:	e00a      	b.n	2bea <Answear_ICMP+0x12a>
    2bd4:	4b0f      	ldr	r3, [pc, #60]	; (2c14 <Answear_ICMP+0x154>)
    2bd6:	687a      	ldr	r2, [r7, #4]
    2bd8:	0052      	lsls	r2, r2, #1
    2bda:	5ad1      	ldrh	r1, [r2, r3]
    2bdc:	4b0f      	ldr	r3, [pc, #60]	; (2c1c <Answear_ICMP+0x15c>)
    2bde:	687a      	ldr	r2, [r7, #4]
    2be0:	0052      	lsls	r2, r2, #1
    2be2:	52d1      	strh	r1, [r2, r3]
    2be4:	687b      	ldr	r3, [r7, #4]
    2be6:	3301      	adds	r3, #1
    2be8:	607b      	str	r3, [r7, #4]
    2bea:	1cbb      	adds	r3, r7, #2
    2bec:	881b      	ldrh	r3, [r3, #0]
    2bee:	3311      	adds	r3, #17
    2bf0:	001a      	movs	r2, r3
    2bf2:	687b      	ldr	r3, [r7, #4]
    2bf4:	429a      	cmp	r2, r3
    2bf6:	d8ed      	bhi.n	2bd4 <Answear_ICMP+0x114>
    2bf8:	1cbb      	adds	r3, r7, #2
    2bfa:	881b      	ldrh	r3, [r3, #0]
    2bfc:	3311      	adds	r3, #17
    2bfe:	005a      	lsls	r2, r3, #1
    2c00:	4b06      	ldr	r3, [pc, #24]	; (2c1c <Answear_ICMP+0x15c>)
    2c02:	0011      	movs	r1, r2
    2c04:	0018      	movs	r0, r3
    2c06:	f7ff fbb1 	bl	236c <SendPacket>
    2c0a:	46c0      	nop			; (mov r8, r8)
    2c0c:	46bd      	mov	sp, r7
    2c0e:	b002      	add	sp, #8
    2c10:	bd80      	pop	{r7, pc}
    2c12:	46c0      	nop			; (mov r8, r8)
    2c14:	20004d38 	.word	0x20004d38
    2c18:	000005dc 	.word	0x000005dc
    2c1c:	20005344 	.word	0x20005344

00002c20 <Send_UDP>:
    2c20:	b590      	push	{r4, r7, lr}
    2c22:	b089      	sub	sp, #36	; 0x24
    2c24:	af00      	add	r7, sp, #0
    2c26:	6078      	str	r0, [r7, #4]
    2c28:	6039      	str	r1, [r7, #0]
    2c2a:	4b86      	ldr	r3, [pc, #536]	; (2e44 <Send_UDP+0x224>)
    2c2c:	881a      	ldrh	r2, [r3, #0]
    2c2e:	4b86      	ldr	r3, [pc, #536]	; (2e48 <Send_UDP+0x228>)
    2c30:	801a      	strh	r2, [r3, #0]
    2c32:	4b84      	ldr	r3, [pc, #528]	; (2e44 <Send_UDP+0x224>)
    2c34:	885a      	ldrh	r2, [r3, #2]
    2c36:	4b84      	ldr	r3, [pc, #528]	; (2e48 <Send_UDP+0x228>)
    2c38:	805a      	strh	r2, [r3, #2]
    2c3a:	4b82      	ldr	r3, [pc, #520]	; (2e44 <Send_UDP+0x224>)
    2c3c:	889a      	ldrh	r2, [r3, #4]
    2c3e:	4b82      	ldr	r3, [pc, #520]	; (2e48 <Send_UDP+0x228>)
    2c40:	809a      	strh	r2, [r3, #4]
    2c42:	23c0      	movs	r3, #192	; 0xc0
    2c44:	059b      	lsls	r3, r3, #22
    2c46:	885b      	ldrh	r3, [r3, #2]
    2c48:	b29a      	uxth	r2, r3
    2c4a:	4b7f      	ldr	r3, [pc, #508]	; (2e48 <Send_UDP+0x228>)
    2c4c:	80da      	strh	r2, [r3, #6]
    2c4e:	23c0      	movs	r3, #192	; 0xc0
    2c50:	059b      	lsls	r3, r3, #22
    2c52:	889b      	ldrh	r3, [r3, #4]
    2c54:	b29a      	uxth	r2, r3
    2c56:	4b7c      	ldr	r3, [pc, #496]	; (2e48 <Send_UDP+0x228>)
    2c58:	811a      	strh	r2, [r3, #8]
    2c5a:	23c0      	movs	r3, #192	; 0xc0
    2c5c:	059b      	lsls	r3, r3, #22
    2c5e:	88db      	ldrh	r3, [r3, #6]
    2c60:	b29a      	uxth	r2, r3
    2c62:	4b79      	ldr	r3, [pc, #484]	; (2e48 <Send_UDP+0x228>)
    2c64:	815a      	strh	r2, [r3, #10]
    2c66:	4b78      	ldr	r3, [pc, #480]	; (2e48 <Send_UDP+0x228>)
    2c68:	2208      	movs	r2, #8
    2c6a:	819a      	strh	r2, [r3, #12]
    2c6c:	4b76      	ldr	r3, [pc, #472]	; (2e48 <Send_UDP+0x228>)
    2c6e:	2245      	movs	r2, #69	; 0x45
    2c70:	81da      	strh	r2, [r3, #14]
    2c72:	4b75      	ldr	r3, [pc, #468]	; (2e48 <Send_UDP+0x228>)
    2c74:	22f0      	movs	r2, #240	; 0xf0
    2c76:	0192      	lsls	r2, r2, #6
    2c78:	821a      	strh	r2, [r3, #16]
    2c7a:	4b74      	ldr	r3, [pc, #464]	; (2e4c <Send_UDP+0x22c>)
    2c7c:	881a      	ldrh	r2, [r3, #0]
    2c7e:	4b72      	ldr	r3, [pc, #456]	; (2e48 <Send_UDP+0x228>)
    2c80:	825a      	strh	r2, [r3, #18]
    2c82:	4b71      	ldr	r3, [pc, #452]	; (2e48 <Send_UDP+0x228>)
    2c84:	2200      	movs	r2, #0
    2c86:	829a      	strh	r2, [r3, #20]
    2c88:	4b6f      	ldr	r3, [pc, #444]	; (2e48 <Send_UDP+0x228>)
    2c8a:	228c      	movs	r2, #140	; 0x8c
    2c8c:	0152      	lsls	r2, r2, #5
    2c8e:	82da      	strh	r2, [r3, #22]
    2c90:	4b6d      	ldr	r3, [pc, #436]	; (2e48 <Send_UDP+0x228>)
    2c92:	2200      	movs	r2, #0
    2c94:	831a      	strh	r2, [r3, #24]
    2c96:	4b6e      	ldr	r3, [pc, #440]	; (2e50 <Send_UDP+0x230>)
    2c98:	881a      	ldrh	r2, [r3, #0]
    2c9a:	4b6b      	ldr	r3, [pc, #428]	; (2e48 <Send_UDP+0x228>)
    2c9c:	835a      	strh	r2, [r3, #26]
    2c9e:	4b6c      	ldr	r3, [pc, #432]	; (2e50 <Send_UDP+0x230>)
    2ca0:	885a      	ldrh	r2, [r3, #2]
    2ca2:	4b69      	ldr	r3, [pc, #420]	; (2e48 <Send_UDP+0x228>)
    2ca4:	839a      	strh	r2, [r3, #28]
    2ca6:	4b67      	ldr	r3, [pc, #412]	; (2e44 <Send_UDP+0x224>)
    2ca8:	88da      	ldrh	r2, [r3, #6]
    2caa:	4b67      	ldr	r3, [pc, #412]	; (2e48 <Send_UDP+0x228>)
    2cac:	83da      	strh	r2, [r3, #30]
    2cae:	4b65      	ldr	r3, [pc, #404]	; (2e44 <Send_UDP+0x224>)
    2cb0:	891a      	ldrh	r2, [r3, #8]
    2cb2:	4b65      	ldr	r3, [pc, #404]	; (2e48 <Send_UDP+0x228>)
    2cb4:	841a      	strh	r2, [r3, #32]
    2cb6:	2316      	movs	r3, #22
    2cb8:	18fb      	adds	r3, r7, r3
    2cba:	4a66      	ldr	r2, [pc, #408]	; (2e54 <Send_UDP+0x234>)
    2cbc:	801a      	strh	r2, [r3, #0]
    2cbe:	2316      	movs	r3, #22
    2cc0:	18fb      	adds	r3, r7, r3
    2cc2:	2216      	movs	r2, #22
    2cc4:	18ba      	adds	r2, r7, r2
    2cc6:	8812      	ldrh	r2, [r2, #0]
    2cc8:	ba52      	rev16	r2, r2
    2cca:	801a      	strh	r2, [r3, #0]
    2ccc:	4b62      	ldr	r3, [pc, #392]	; (2e58 <Send_UDP+0x238>)
    2cce:	881a      	ldrh	r2, [r3, #0]
    2cd0:	2314      	movs	r3, #20
    2cd2:	18fb      	adds	r3, r7, r3
    2cd4:	ba52      	rev16	r2, r2
    2cd6:	801a      	strh	r2, [r3, #0]
    2cd8:	4b5b      	ldr	r3, [pc, #364]	; (2e48 <Send_UDP+0x228>)
    2cda:	2216      	movs	r2, #22
    2cdc:	18ba      	adds	r2, r7, r2
    2cde:	8812      	ldrh	r2, [r2, #0]
    2ce0:	845a      	strh	r2, [r3, #34]	; 0x22
    2ce2:	4b59      	ldr	r3, [pc, #356]	; (2e48 <Send_UDP+0x228>)
    2ce4:	2214      	movs	r2, #20
    2ce6:	18ba      	adds	r2, r7, r2
    2ce8:	8812      	ldrh	r2, [r2, #0]
    2cea:	849a      	strh	r2, [r3, #36]	; 0x24
    2cec:	4b56      	ldr	r3, [pc, #344]	; (2e48 <Send_UDP+0x228>)
    2cee:	22c0      	movs	r2, #192	; 0xc0
    2cf0:	0112      	lsls	r2, r2, #4
    2cf2:	84da      	strh	r2, [r3, #38]	; 0x26
    2cf4:	4b54      	ldr	r3, [pc, #336]	; (2e48 <Send_UDP+0x228>)
    2cf6:	2200      	movs	r2, #0
    2cf8:	851a      	strh	r2, [r3, #40]	; 0x28
    2cfa:	4b58      	ldr	r3, [pc, #352]	; (2e5c <Send_UDP+0x23c>)
    2cfc:	61bb      	str	r3, [r7, #24]
    2cfe:	683a      	ldr	r2, [r7, #0]
    2d00:	23fe      	movs	r3, #254	; 0xfe
    2d02:	005b      	lsls	r3, r3, #1
    2d04:	429a      	cmp	r2, r3
    2d06:	dd02      	ble.n	2d0e <Send_UDP+0xee>
    2d08:	23fe      	movs	r3, #254	; 0xfe
    2d0a:	005b      	lsls	r3, r3, #1
    2d0c:	603b      	str	r3, [r7, #0]
    2d0e:	2300      	movs	r3, #0
    2d10:	61fb      	str	r3, [r7, #28]
    2d12:	e00a      	b.n	2d2a <Send_UDP+0x10a>
    2d14:	69bb      	ldr	r3, [r7, #24]
    2d16:	1c5a      	adds	r2, r3, #1
    2d18:	61ba      	str	r2, [r7, #24]
    2d1a:	687a      	ldr	r2, [r7, #4]
    2d1c:	1c51      	adds	r1, r2, #1
    2d1e:	6079      	str	r1, [r7, #4]
    2d20:	7812      	ldrb	r2, [r2, #0]
    2d22:	701a      	strb	r2, [r3, #0]
    2d24:	69fb      	ldr	r3, [r7, #28]
    2d26:	3301      	adds	r3, #1
    2d28:	61fb      	str	r3, [r7, #28]
    2d2a:	683b      	ldr	r3, [r7, #0]
    2d2c:	69fa      	ldr	r2, [r7, #28]
    2d2e:	429a      	cmp	r2, r3
    2d30:	d3f0      	bcc.n	2d14 <Send_UDP+0xf4>
    2d32:	683b      	ldr	r3, [r7, #0]
    2d34:	b29a      	uxth	r2, r3
    2d36:	2312      	movs	r3, #18
    2d38:	18fb      	adds	r3, r7, r3
    2d3a:	321c      	adds	r2, #28
    2d3c:	801a      	strh	r2, [r3, #0]
    2d3e:	2312      	movs	r3, #18
    2d40:	18fb      	adds	r3, r7, r3
    2d42:	881b      	ldrh	r3, [r3, #0]
    2d44:	021b      	lsls	r3, r3, #8
    2d46:	b29a      	uxth	r2, r3
    2d48:	2312      	movs	r3, #18
    2d4a:	18fb      	adds	r3, r7, r3
    2d4c:	881b      	ldrh	r3, [r3, #0]
    2d4e:	0a1b      	lsrs	r3, r3, #8
    2d50:	b29b      	uxth	r3, r3
    2d52:	18d3      	adds	r3, r2, r3
    2d54:	b29a      	uxth	r2, r3
    2d56:	4b3c      	ldr	r3, [pc, #240]	; (2e48 <Send_UDP+0x228>)
    2d58:	821a      	strh	r2, [r3, #16]
    2d5a:	4b3b      	ldr	r3, [pc, #236]	; (2e48 <Send_UDP+0x228>)
    2d5c:	0018      	movs	r0, r3
    2d5e:	f7ff fd5d 	bl	281c <CheckSum_IP>
    2d62:	0003      	movs	r3, r0
    2d64:	001a      	movs	r2, r3
    2d66:	4b38      	ldr	r3, [pc, #224]	; (2e48 <Send_UDP+0x228>)
    2d68:	831a      	strh	r2, [r3, #24]
    2d6a:	683b      	ldr	r3, [r7, #0]
    2d6c:	b29a      	uxth	r2, r3
    2d6e:	2310      	movs	r3, #16
    2d70:	18fb      	adds	r3, r7, r3
    2d72:	3208      	adds	r2, #8
    2d74:	801a      	strh	r2, [r3, #0]
    2d76:	2310      	movs	r3, #16
    2d78:	18fb      	adds	r3, r7, r3
    2d7a:	881b      	ldrh	r3, [r3, #0]
    2d7c:	021b      	lsls	r3, r3, #8
    2d7e:	b29a      	uxth	r2, r3
    2d80:	2310      	movs	r3, #16
    2d82:	18fb      	adds	r3, r7, r3
    2d84:	881b      	ldrh	r3, [r3, #0]
    2d86:	0a1b      	lsrs	r3, r3, #8
    2d88:	b29b      	uxth	r3, r3
    2d8a:	18d3      	adds	r3, r2, r3
    2d8c:	b29a      	uxth	r2, r3
    2d8e:	4b2e      	ldr	r3, [pc, #184]	; (2e48 <Send_UDP+0x228>)
    2d90:	84da      	strh	r2, [r3, #38]	; 0x26
    2d92:	683b      	ldr	r3, [r7, #0]
    2d94:	b29b      	uxth	r3, r3
    2d96:	3308      	adds	r3, #8
    2d98:	b29b      	uxth	r3, r3
    2d9a:	220e      	movs	r2, #14
    2d9c:	18bc      	adds	r4, r7, r2
    2d9e:	4a2a      	ldr	r2, [pc, #168]	; (2e48 <Send_UDP+0x228>)
    2da0:	0011      	movs	r1, r2
    2da2:	0018      	movs	r0, r3
    2da4:	f7ff fc8a 	bl	26bc <CheckSum_UDP>
    2da8:	0003      	movs	r3, r0
    2daa:	8023      	strh	r3, [r4, #0]
    2dac:	230e      	movs	r3, #14
    2dae:	18fb      	adds	r3, r7, r3
    2db0:	881b      	ldrh	r3, [r3, #0]
    2db2:	021b      	lsls	r3, r3, #8
    2db4:	b29a      	uxth	r2, r3
    2db6:	230e      	movs	r3, #14
    2db8:	18fb      	adds	r3, r7, r3
    2dba:	881b      	ldrh	r3, [r3, #0]
    2dbc:	0a1b      	lsrs	r3, r3, #8
    2dbe:	b29b      	uxth	r3, r3
    2dc0:	18d3      	adds	r3, r2, r3
    2dc2:	b29a      	uxth	r2, r3
    2dc4:	4b20      	ldr	r3, [pc, #128]	; (2e48 <Send_UDP+0x228>)
    2dc6:	851a      	strh	r2, [r3, #40]	; 0x28
    2dc8:	683b      	ldr	r3, [r7, #0]
    2dca:	332a      	adds	r3, #42	; 0x2a
    2dcc:	001a      	movs	r2, r3
    2dce:	4b1e      	ldr	r3, [pc, #120]	; (2e48 <Send_UDP+0x228>)
    2dd0:	0011      	movs	r1, r2
    2dd2:	0018      	movs	r0, r3
    2dd4:	f7ff faca 	bl	236c <SendPacket>
    2dd8:	4b1c      	ldr	r3, [pc, #112]	; (2e4c <Send_UDP+0x22c>)
    2dda:	881b      	ldrh	r3, [r3, #0]
    2ddc:	0a1b      	lsrs	r3, r3, #8
    2dde:	b29b      	uxth	r3, r3
    2de0:	b2da      	uxtb	r2, r3
    2de2:	230c      	movs	r3, #12
    2de4:	18fb      	adds	r3, r7, r3
    2de6:	701a      	strb	r2, [r3, #0]
    2de8:	4b18      	ldr	r3, [pc, #96]	; (2e4c <Send_UDP+0x22c>)
    2dea:	881b      	ldrh	r3, [r3, #0]
    2dec:	b2da      	uxtb	r2, r3
    2dee:	230c      	movs	r3, #12
    2df0:	18fb      	adds	r3, r7, r3
    2df2:	705a      	strb	r2, [r3, #1]
    2df4:	230c      	movs	r3, #12
    2df6:	18fb      	adds	r3, r7, r3
    2df8:	781b      	ldrb	r3, [r3, #0]
    2dfa:	3301      	adds	r3, #1
    2dfc:	b2da      	uxtb	r2, r3
    2dfe:	230c      	movs	r3, #12
    2e00:	18fb      	adds	r3, r7, r3
    2e02:	701a      	strb	r2, [r3, #0]
    2e04:	230c      	movs	r3, #12
    2e06:	18fb      	adds	r3, r7, r3
    2e08:	781b      	ldrb	r3, [r3, #0]
    2e0a:	2b00      	cmp	r3, #0
    2e0c:	d107      	bne.n	2e1e <Send_UDP+0x1fe>
    2e0e:	230c      	movs	r3, #12
    2e10:	18fb      	adds	r3, r7, r3
    2e12:	785b      	ldrb	r3, [r3, #1]
    2e14:	3301      	adds	r3, #1
    2e16:	b2da      	uxtb	r2, r3
    2e18:	230c      	movs	r3, #12
    2e1a:	18fb      	adds	r3, r7, r3
    2e1c:	705a      	strb	r2, [r3, #1]
    2e1e:	230c      	movs	r3, #12
    2e20:	18fb      	adds	r3, r7, r3
    2e22:	781b      	ldrb	r3, [r3, #0]
    2e24:	021b      	lsls	r3, r3, #8
    2e26:	b21a      	sxth	r2, r3
    2e28:	230c      	movs	r3, #12
    2e2a:	18fb      	adds	r3, r7, r3
    2e2c:	785b      	ldrb	r3, [r3, #1]
    2e2e:	b21b      	sxth	r3, r3
    2e30:	4313      	orrs	r3, r2
    2e32:	b21b      	sxth	r3, r3
    2e34:	b29a      	uxth	r2, r3
    2e36:	4b05      	ldr	r3, [pc, #20]	; (2e4c <Send_UDP+0x22c>)
    2e38:	801a      	strh	r2, [r3, #0]
    2e3a:	46c0      	nop			; (mov r8, r8)
    2e3c:	46bd      	mov	sp, r7
    2e3e:	b009      	add	sp, #36	; 0x24
    2e40:	bd90      	pop	{r4, r7, pc}
    2e42:	46c0      	nop			; (mov r8, r8)
    2e44:	20004d1c 	.word	0x20004d1c
    2e48:	20005584 	.word	0x20005584
    2e4c:	20004d30 	.word	0x20004d30
    2e50:	20000010 	.word	0x20000010
    2e54:	00001234 	.word	0x00001234
    2e58:	20005318 	.word	0x20005318
    2e5c:	200055ae 	.word	0x200055ae

00002e60 <PacketParser>:
    2e60:	b580      	push	{r7, lr}
    2e62:	b082      	sub	sp, #8
    2e64:	af00      	add	r7, sp, #0
    2e66:	4b49      	ldr	r3, [pc, #292]	; (2f8c <PacketParser+0x12c>)
    2e68:	899b      	ldrh	r3, [r3, #12]
    2e6a:	2b08      	cmp	r3, #8
    2e6c:	d005      	beq.n	2e7a <PacketParser+0x1a>
    2e6e:	22c1      	movs	r2, #193	; 0xc1
    2e70:	00d2      	lsls	r2, r2, #3
    2e72:	4293      	cmp	r3, r2
    2e74:	d100      	bne.n	2e78 <PacketParser+0x18>
    2e76:	e06b      	b.n	2f50 <PacketParser+0xf0>
    2e78:	e084      	b.n	2f84 <PacketParser+0x124>
    2e7a:	4b44      	ldr	r3, [pc, #272]	; (2f8c <PacketParser+0x12c>)
    2e7c:	8b9a      	ldrh	r2, [r3, #28]
    2e7e:	4b44      	ldr	r3, [pc, #272]	; (2f90 <PacketParser+0x130>)
    2e80:	811a      	strh	r2, [r3, #8]
    2e82:	4b42      	ldr	r3, [pc, #264]	; (2f8c <PacketParser+0x12c>)
    2e84:	8bda      	ldrh	r2, [r3, #30]
    2e86:	4b42      	ldr	r3, [pc, #264]	; (2f90 <PacketParser+0x130>)
    2e88:	80da      	strh	r2, [r3, #6]
    2e8a:	4b41      	ldr	r3, [pc, #260]	; (2f90 <PacketParser+0x130>)
    2e8c:	895b      	ldrh	r3, [r3, #10]
    2e8e:	2b00      	cmp	r3, #0
    2e90:	d100      	bne.n	2e94 <PacketParser+0x34>
    2e92:	e072      	b.n	2f7a <PacketParser+0x11a>
    2e94:	4b3d      	ldr	r3, [pc, #244]	; (2f8c <PacketParser+0x12c>)
    2e96:	8bda      	ldrh	r2, [r3, #30]
    2e98:	4b3e      	ldr	r3, [pc, #248]	; (2f94 <PacketParser+0x134>)
    2e9a:	881b      	ldrh	r3, [r3, #0]
    2e9c:	429a      	cmp	r2, r3
    2e9e:	d000      	beq.n	2ea2 <PacketParser+0x42>
    2ea0:	e06d      	b.n	2f7e <PacketParser+0x11e>
    2ea2:	4b3a      	ldr	r3, [pc, #232]	; (2f8c <PacketParser+0x12c>)
    2ea4:	8c1a      	ldrh	r2, [r3, #32]
    2ea6:	4b3b      	ldr	r3, [pc, #236]	; (2f94 <PacketParser+0x134>)
    2ea8:	885b      	ldrh	r3, [r3, #2]
    2eaa:	429a      	cmp	r2, r3
    2eac:	d000      	beq.n	2eb0 <PacketParser+0x50>
    2eae:	e066      	b.n	2f7e <PacketParser+0x11e>
    2eb0:	4b36      	ldr	r3, [pc, #216]	; (2f8c <PacketParser+0x12c>)
    2eb2:	0018      	movs	r0, r3
    2eb4:	f7ff fcb2 	bl	281c <CheckSum_IP>
    2eb8:	0003      	movs	r3, r0
    2eba:	001a      	movs	r2, r3
    2ebc:	4b33      	ldr	r3, [pc, #204]	; (2f8c <PacketParser+0x12c>)
    2ebe:	8b1b      	ldrh	r3, [r3, #24]
    2ec0:	429a      	cmp	r2, r3
    2ec2:	d15c      	bne.n	2f7e <PacketParser+0x11e>
    2ec4:	4b31      	ldr	r3, [pc, #196]	; (2f8c <PacketParser+0x12c>)
    2ec6:	8adb      	ldrh	r3, [r3, #22]
    2ec8:	001a      	movs	r2, r3
    2eca:	23ff      	movs	r3, #255	; 0xff
    2ecc:	021b      	lsls	r3, r3, #8
    2ece:	401a      	ands	r2, r3
    2ed0:	2380      	movs	r3, #128	; 0x80
    2ed2:	005b      	lsls	r3, r3, #1
    2ed4:	429a      	cmp	r2, r3
    2ed6:	d110      	bne.n	2efa <PacketParser+0x9a>
    2ed8:	4b2c      	ldr	r3, [pc, #176]	; (2f8c <PacketParser+0x12c>)
    2eda:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2edc:	2b00      	cmp	r3, #0
    2ede:	d105      	bne.n	2eec <PacketParser+0x8c>
    2ee0:	4b2d      	ldr	r3, [pc, #180]	; (2f98 <PacketParser+0x138>)
    2ee2:	681b      	ldr	r3, [r3, #0]
    2ee4:	1c5a      	adds	r2, r3, #1
    2ee6:	4b2c      	ldr	r3, [pc, #176]	; (2f98 <PacketParser+0x138>)
    2ee8:	601a      	str	r2, [r3, #0]
    2eea:	e048      	b.n	2f7e <PacketParser+0x11e>
    2eec:	4b27      	ldr	r3, [pc, #156]	; (2f8c <PacketParser+0x12c>)
    2eee:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ef0:	2b08      	cmp	r3, #8
    2ef2:	d144      	bne.n	2f7e <PacketParser+0x11e>
    2ef4:	f7ff fde4 	bl	2ac0 <Answear_ICMP>
    2ef8:	e041      	b.n	2f7e <PacketParser+0x11e>
    2efa:	4b24      	ldr	r3, [pc, #144]	; (2f8c <PacketParser+0x12c>)
    2efc:	8adb      	ldrh	r3, [r3, #22]
    2efe:	001a      	movs	r2, r3
    2f00:	23ff      	movs	r3, #255	; 0xff
    2f02:	021b      	lsls	r3, r3, #8
    2f04:	401a      	ands	r2, r3
    2f06:	2388      	movs	r3, #136	; 0x88
    2f08:	015b      	lsls	r3, r3, #5
    2f0a:	429a      	cmp	r2, r3
    2f0c:	d137      	bne.n	2f7e <PacketParser+0x11e>
    2f0e:	4b1f      	ldr	r3, [pc, #124]	; (2f8c <PacketParser+0x12c>)
    2f10:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2f12:	021b      	lsls	r3, r3, #8
    2f14:	b29a      	uxth	r2, r3
    2f16:	4b1d      	ldr	r3, [pc, #116]	; (2f8c <PacketParser+0x12c>)
    2f18:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2f1a:	0a1b      	lsrs	r3, r3, #8
    2f1c:	b29b      	uxth	r3, r3
    2f1e:	18d3      	adds	r3, r2, r3
    2f20:	b29a      	uxth	r2, r3
    2f22:	4b1e      	ldr	r3, [pc, #120]	; (2f9c <PacketParser+0x13c>)
    2f24:	801a      	strh	r2, [r3, #0]
    2f26:	4b19      	ldr	r3, [pc, #100]	; (2f8c <PacketParser+0x12c>)
    2f28:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2f2a:	021b      	lsls	r3, r3, #8
    2f2c:	b299      	uxth	r1, r3
    2f2e:	4b17      	ldr	r3, [pc, #92]	; (2f8c <PacketParser+0x12c>)
    2f30:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2f32:	0a1b      	lsrs	r3, r3, #8
    2f34:	b29a      	uxth	r2, r3
    2f36:	1dbb      	adds	r3, r7, #6
    2f38:	188a      	adds	r2, r1, r2
    2f3a:	801a      	strh	r2, [r3, #0]
    2f3c:	1dbb      	adds	r3, r7, #6
    2f3e:	881b      	ldrh	r3, [r3, #0]
    2f40:	4a17      	ldr	r2, [pc, #92]	; (2fa0 <PacketParser+0x140>)
    2f42:	4293      	cmp	r3, r2
    2f44:	d11b      	bne.n	2f7e <PacketParser+0x11e>
    2f46:	4b17      	ldr	r3, [pc, #92]	; (2fa4 <PacketParser+0x144>)
    2f48:	0018      	movs	r0, r3
    2f4a:	f001 f829 	bl	3fa0 <mdb_proc_adu>
    2f4e:	e016      	b.n	2f7e <PacketParser+0x11e>
    2f50:	4b0e      	ldr	r3, [pc, #56]	; (2f8c <PacketParser+0x12c>)
    2f52:	8a9a      	ldrh	r2, [r3, #20]
    2f54:	2380      	movs	r3, #128	; 0x80
    2f56:	005b      	lsls	r3, r3, #1
    2f58:	429a      	cmp	r2, r3
    2f5a:	d112      	bne.n	2f82 <PacketParser+0x122>
    2f5c:	4b0b      	ldr	r3, [pc, #44]	; (2f8c <PacketParser+0x12c>)
    2f5e:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    2f60:	4b0c      	ldr	r3, [pc, #48]	; (2f94 <PacketParser+0x134>)
    2f62:	881b      	ldrh	r3, [r3, #0]
    2f64:	429a      	cmp	r2, r3
    2f66:	d10c      	bne.n	2f82 <PacketParser+0x122>
    2f68:	4b08      	ldr	r3, [pc, #32]	; (2f8c <PacketParser+0x12c>)
    2f6a:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    2f6c:	4b09      	ldr	r3, [pc, #36]	; (2f94 <PacketParser+0x134>)
    2f6e:	885b      	ldrh	r3, [r3, #2]
    2f70:	429a      	cmp	r2, r3
    2f72:	d106      	bne.n	2f82 <PacketParser+0x122>
    2f74:	f7ff fb2e 	bl	25d4 <Answear_ARP>
    2f78:	e003      	b.n	2f82 <PacketParser+0x122>
    2f7a:	46c0      	nop			; (mov r8, r8)
    2f7c:	e002      	b.n	2f84 <PacketParser+0x124>
    2f7e:	46c0      	nop			; (mov r8, r8)
    2f80:	e000      	b.n	2f84 <PacketParser+0x124>
    2f82:	46c0      	nop			; (mov r8, r8)
    2f84:	46c0      	nop			; (mov r8, r8)
    2f86:	46bd      	mov	sp, r7
    2f88:	b002      	add	sp, #8
    2f8a:	bd80      	pop	{r7, pc}
    2f8c:	20004d38 	.word	0x20004d38
    2f90:	20004d1c 	.word	0x20004d1c
    2f94:	20000010 	.word	0x20000010
    2f98:	20004d34 	.word	0x20004d34
    2f9c:	20005318 	.word	0x20005318
    2fa0:	00001234 	.word	0x00001234
    2fa4:	20004d62 	.word	0x20004d62

00002fa8 <threadPacketParser>:
    2fa8:	b580      	push	{r7, lr}
    2faa:	b086      	sub	sp, #24
    2fac:	af00      	add	r7, sp, #0
    2fae:	6078      	str	r0, [r7, #4]
    2fb0:	4b31      	ldr	r3, [pc, #196]	; (3078 <threadPacketParser+0xd0>)
    2fb2:	0018      	movs	r0, r3
    2fb4:	f003 fbf8 	bl	67a8 <osMutexCreate>
    2fb8:	0002      	movs	r2, r0
    2fba:	4b30      	ldr	r3, [pc, #192]	; (307c <threadPacketParser+0xd4>)
    2fbc:	601a      	str	r2, [r3, #0]
    2fbe:	4b30      	ldr	r3, [pc, #192]	; (3080 <threadPacketParser+0xd8>)
    2fc0:	0018      	movs	r0, r3
    2fc2:	f003 fbf1 	bl	67a8 <osMutexCreate>
    2fc6:	0002      	movs	r2, r0
    2fc8:	4b2e      	ldr	r3, [pc, #184]	; (3084 <threadPacketParser+0xdc>)
    2fca:	601a      	str	r2, [r3, #0]
    2fcc:	230c      	movs	r3, #12
    2fce:	18f8      	adds	r0, r7, r3
    2fd0:	23fa      	movs	r3, #250	; 0xfa
    2fd2:	005b      	lsls	r3, r3, #1
    2fd4:	001a      	movs	r2, r3
    2fd6:	2100      	movs	r1, #0
    2fd8:	f003 fb58 	bl	668c <osSignalWait>
    2fdc:	230c      	movs	r3, #12
    2fde:	18fb      	adds	r3, r7, r3
    2fe0:	681b      	ldr	r3, [r3, #0]
    2fe2:	2b08      	cmp	r3, #8
    2fe4:	d120      	bne.n	3028 <threadPacketParser+0x80>
    2fe6:	230c      	movs	r3, #12
    2fe8:	18fb      	adds	r3, r7, r3
    2fea:	685b      	ldr	r3, [r3, #4]
    2fec:	2b01      	cmp	r3, #1
    2fee:	d142      	bne.n	3076 <threadPacketParser+0xce>
    2ff0:	4b25      	ldr	r3, [pc, #148]	; (3088 <threadPacketParser+0xe0>)
    2ff2:	4a25      	ldr	r2, [pc, #148]	; (3088 <threadPacketParser+0xe0>)
    2ff4:	6812      	ldr	r2, [r2, #0]
    2ff6:	2180      	movs	r1, #128	; 0x80
    2ff8:	404a      	eors	r2, r1
    2ffa:	601a      	str	r2, [r3, #0]
    2ffc:	e00a      	b.n	3014 <threadPacketParser+0x6c>
    2ffe:	4b23      	ldr	r3, [pc, #140]	; (308c <threadPacketParser+0xe4>)
    3000:	0018      	movs	r0, r3
    3002:	f7ff f8bd 	bl	2180 <ReadPacket>
    3006:	0003      	movs	r3, r0
    3008:	b299      	uxth	r1, r3
    300a:	4b20      	ldr	r3, [pc, #128]	; (308c <threadPacketParser+0xe4>)
    300c:	4a20      	ldr	r2, [pc, #128]	; (3090 <threadPacketParser+0xe8>)
    300e:	5299      	strh	r1, [r3, r2]
    3010:	f7ff ff26 	bl	2e60 <PacketParser>
    3014:	23c0      	movs	r3, #192	; 0xc0
    3016:	059b      	lsls	r3, r3, #22
    3018:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    301a:	b29b      	uxth	r3, r3
    301c:	001a      	movs	r2, r3
    301e:	23e0      	movs	r3, #224	; 0xe0
    3020:	4013      	ands	r3, r2
    3022:	d1ec      	bne.n	2ffe <threadPacketParser+0x56>
    3024:	46c0      	nop			; (mov r8, r8)
    3026:	e026      	b.n	3076 <threadPacketParser+0xce>
    3028:	230c      	movs	r3, #12
    302a:	18fb      	adds	r3, r7, r3
    302c:	681b      	ldr	r3, [r3, #0]
    302e:	2b40      	cmp	r3, #64	; 0x40
    3030:	d1cc      	bne.n	2fcc <threadPacketParser+0x24>
    3032:	23c0      	movs	r3, #192	; 0xc0
    3034:	059b      	lsls	r3, r3, #22
    3036:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3038:	b29b      	uxth	r3, r3
    303a:	001a      	movs	r2, r3
    303c:	2302      	movs	r3, #2
    303e:	4013      	ands	r3, r2
    3040:	d104      	bne.n	304c <threadPacketParser+0xa4>
    3042:	4b14      	ldr	r3, [pc, #80]	; (3094 <threadPacketParser+0xec>)
    3044:	2280      	movs	r2, #128	; 0x80
    3046:	0212      	lsls	r2, r2, #8
    3048:	621a      	str	r2, [r3, #32]
    304a:	e003      	b.n	3054 <threadPacketParser+0xac>
    304c:	4b11      	ldr	r3, [pc, #68]	; (3094 <threadPacketParser+0xec>)
    304e:	2280      	movs	r2, #128	; 0x80
    3050:	0212      	lsls	r2, r2, #8
    3052:	625a      	str	r2, [r3, #36]	; 0x24
    3054:	23c0      	movs	r3, #192	; 0xc0
    3056:	059b      	lsls	r3, r3, #22
    3058:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    305a:	b29b      	uxth	r3, r3
    305c:	001a      	movs	r2, r3
    305e:	2308      	movs	r3, #8
    3060:	4013      	ands	r3, r2
    3062:	d104      	bne.n	306e <threadPacketParser+0xc6>
    3064:	4b0b      	ldr	r3, [pc, #44]	; (3094 <threadPacketParser+0xec>)
    3066:	2280      	movs	r2, #128	; 0x80
    3068:	01d2      	lsls	r2, r2, #7
    306a:	621a      	str	r2, [r3, #32]
    306c:	e7ae      	b.n	2fcc <threadPacketParser+0x24>
    306e:	4b09      	ldr	r3, [pc, #36]	; (3094 <threadPacketParser+0xec>)
    3070:	2280      	movs	r2, #128	; 0x80
    3072:	01d2      	lsls	r2, r2, #7
    3074:	625a      	str	r2, [r3, #36]	; 0x24
    3076:	e7a9      	b.n	2fcc <threadPacketParser+0x24>
    3078:	00008a44 	.word	0x00008a44
    307c:	2000532c 	.word	0x2000532c
    3080:	00008a48 	.word	0x00008a48
    3084:	20005340 	.word	0x20005340
    3088:	400c0000 	.word	0x400c0000
    308c:	20004d38 	.word	0x20004d38
    3090:	000005dc 	.word	0x000005dc
    3094:	400b0000 	.word	0x400b0000

00003098 <crc32>:
    3098:	b580      	push	{r7, lr}
    309a:	b084      	sub	sp, #16
    309c:	af00      	add	r7, sp, #0
    309e:	6078      	str	r0, [r7, #4]
    30a0:	6039      	str	r1, [r7, #0]
    30a2:	2301      	movs	r3, #1
    30a4:	425b      	negs	r3, r3
    30a6:	60bb      	str	r3, [r7, #8]
    30a8:	2300      	movs	r3, #0
    30aa:	60fb      	str	r3, [r7, #12]
    30ac:	e012      	b.n	30d4 <crc32+0x3c>
    30ae:	68bb      	ldr	r3, [r7, #8]
    30b0:	0a1a      	lsrs	r2, r3, #8
    30b2:	68fb      	ldr	r3, [r7, #12]
    30b4:	6879      	ldr	r1, [r7, #4]
    30b6:	18cb      	adds	r3, r1, r3
    30b8:	781b      	ldrb	r3, [r3, #0]
    30ba:	0019      	movs	r1, r3
    30bc:	68bb      	ldr	r3, [r7, #8]
    30be:	404b      	eors	r3, r1
    30c0:	21ff      	movs	r1, #255	; 0xff
    30c2:	4019      	ands	r1, r3
    30c4:	4b08      	ldr	r3, [pc, #32]	; (30e8 <crc32+0x50>)
    30c6:	0089      	lsls	r1, r1, #2
    30c8:	58cb      	ldr	r3, [r1, r3]
    30ca:	4053      	eors	r3, r2
    30cc:	60bb      	str	r3, [r7, #8]
    30ce:	68fb      	ldr	r3, [r7, #12]
    30d0:	3301      	adds	r3, #1
    30d2:	60fb      	str	r3, [r7, #12]
    30d4:	68fa      	ldr	r2, [r7, #12]
    30d6:	683b      	ldr	r3, [r7, #0]
    30d8:	429a      	cmp	r2, r3
    30da:	d3e8      	bcc.n	30ae <crc32+0x16>
    30dc:	68bb      	ldr	r3, [r7, #8]
    30de:	0018      	movs	r0, r3
    30e0:	46bd      	mov	sp, r7
    30e2:	b004      	add	sp, #16
    30e4:	bd80      	pop	{r7, pc}
    30e6:	46c0      	nop			; (mov r8, r8)
    30e8:	00008a4c 	.word	0x00008a4c

000030ec <crc16>:
    30ec:	b580      	push	{r7, lr}
    30ee:	b086      	sub	sp, #24
    30f0:	af00      	add	r7, sp, #0
    30f2:	6078      	str	r0, [r7, #4]
    30f4:	6039      	str	r1, [r7, #0]
    30f6:	2317      	movs	r3, #23
    30f8:	18fb      	adds	r3, r7, r3
    30fa:	22ff      	movs	r2, #255	; 0xff
    30fc:	701a      	strb	r2, [r3, #0]
    30fe:	2316      	movs	r3, #22
    3100:	18fb      	adds	r3, r7, r3
    3102:	22ff      	movs	r2, #255	; 0xff
    3104:	701a      	strb	r2, [r3, #0]
    3106:	2300      	movs	r3, #0
    3108:	613b      	str	r3, [r7, #16]
    310a:	e01e      	b.n	314a <crc16+0x5e>
    310c:	693b      	ldr	r3, [r7, #16]
    310e:	687a      	ldr	r2, [r7, #4]
    3110:	18d3      	adds	r3, r2, r3
    3112:	781a      	ldrb	r2, [r3, #0]
    3114:	2317      	movs	r3, #23
    3116:	18fb      	adds	r3, r7, r3
    3118:	781b      	ldrb	r3, [r3, #0]
    311a:	4053      	eors	r3, r2
    311c:	b2db      	uxtb	r3, r3
    311e:	60fb      	str	r3, [r7, #12]
    3120:	4a14      	ldr	r2, [pc, #80]	; (3174 <crc16+0x88>)
    3122:	68fb      	ldr	r3, [r7, #12]
    3124:	18d3      	adds	r3, r2, r3
    3126:	7819      	ldrb	r1, [r3, #0]
    3128:	2317      	movs	r3, #23
    312a:	18fb      	adds	r3, r7, r3
    312c:	2216      	movs	r2, #22
    312e:	18ba      	adds	r2, r7, r2
    3130:	7812      	ldrb	r2, [r2, #0]
    3132:	404a      	eors	r2, r1
    3134:	701a      	strb	r2, [r3, #0]
    3136:	2316      	movs	r3, #22
    3138:	18fb      	adds	r3, r7, r3
    313a:	490f      	ldr	r1, [pc, #60]	; (3178 <crc16+0x8c>)
    313c:	68fa      	ldr	r2, [r7, #12]
    313e:	188a      	adds	r2, r1, r2
    3140:	7812      	ldrb	r2, [r2, #0]
    3142:	701a      	strb	r2, [r3, #0]
    3144:	693b      	ldr	r3, [r7, #16]
    3146:	3301      	adds	r3, #1
    3148:	613b      	str	r3, [r7, #16]
    314a:	693a      	ldr	r2, [r7, #16]
    314c:	683b      	ldr	r3, [r7, #0]
    314e:	429a      	cmp	r2, r3
    3150:	dbdc      	blt.n	310c <crc16+0x20>
    3152:	2316      	movs	r3, #22
    3154:	18fb      	adds	r3, r7, r3
    3156:	781b      	ldrb	r3, [r3, #0]
    3158:	021b      	lsls	r3, r3, #8
    315a:	b21a      	sxth	r2, r3
    315c:	2317      	movs	r3, #23
    315e:	18fb      	adds	r3, r7, r3
    3160:	781b      	ldrb	r3, [r3, #0]
    3162:	b21b      	sxth	r3, r3
    3164:	4313      	orrs	r3, r2
    3166:	b21b      	sxth	r3, r3
    3168:	b29b      	uxth	r3, r3
    316a:	0018      	movs	r0, r3
    316c:	46bd      	mov	sp, r7
    316e:	b006      	add	sp, #24
    3170:	bd80      	pop	{r7, pc}
    3172:	46c0      	nop			; (mov r8, r8)
    3174:	00008e4c 	.word	0x00008e4c
    3178:	00008f4c 	.word	0x00008f4c

0000317c <eeprom_on>:
    317c:	b580      	push	{r7, lr}
    317e:	af00      	add	r7, sp, #0
    3180:	b672      	cpsid	i
    3182:	4b04      	ldr	r3, [pc, #16]	; (3194 <eeprom_on+0x18>)
    3184:	4a03      	ldr	r2, [pc, #12]	; (3194 <eeprom_on+0x18>)
    3186:	69d2      	ldr	r2, [r2, #28]
    3188:	2108      	movs	r1, #8
    318a:	430a      	orrs	r2, r1
    318c:	61da      	str	r2, [r3, #28]
    318e:	46c0      	nop			; (mov r8, r8)
    3190:	46bd      	mov	sp, r7
    3192:	bd80      	pop	{r7, pc}
    3194:	40020000 	.word	0x40020000

00003198 <eeprom_off>:
    3198:	b580      	push	{r7, lr}
    319a:	af00      	add	r7, sp, #0
    319c:	b662      	cpsie	i
    319e:	4b04      	ldr	r3, [pc, #16]	; (31b0 <eeprom_off+0x18>)
    31a0:	4a03      	ldr	r2, [pc, #12]	; (31b0 <eeprom_off+0x18>)
    31a2:	69d2      	ldr	r2, [r2, #28]
    31a4:	2108      	movs	r1, #8
    31a6:	438a      	bics	r2, r1
    31a8:	61da      	str	r2, [r3, #28]
    31aa:	46c0      	nop			; (mov r8, r8)
    31ac:	46bd      	mov	sp, r7
    31ae:	bd80      	pop	{r7, pc}
    31b0:	40020000 	.word	0x40020000

000031b4 <par_default>:
    31b4:	b580      	push	{r7, lr}
    31b6:	af00      	add	r7, sp, #0
    31b8:	4b13      	ldr	r3, [pc, #76]	; (3208 <par_default+0x54>)
    31ba:	0018      	movs	r0, r3
    31bc:	2314      	movs	r3, #20
    31be:	001a      	movs	r2, r3
    31c0:	2100      	movs	r1, #0
    31c2:	f001 fe83 	bl	4ecc <memset>
    31c6:	4b10      	ldr	r3, [pc, #64]	; (3208 <par_default+0x54>)
    31c8:	22bc      	movs	r2, #188	; 0xbc
    31ca:	701a      	strb	r2, [r3, #0]
    31cc:	4b0e      	ldr	r3, [pc, #56]	; (3208 <par_default+0x54>)
    31ce:	229a      	movs	r2, #154	; 0x9a
    31d0:	705a      	strb	r2, [r3, #1]
    31d2:	4b0d      	ldr	r3, [pc, #52]	; (3208 <par_default+0x54>)
    31d4:	2278      	movs	r2, #120	; 0x78
    31d6:	709a      	strb	r2, [r3, #2]
    31d8:	4b0b      	ldr	r3, [pc, #44]	; (3208 <par_default+0x54>)
    31da:	2256      	movs	r2, #86	; 0x56
    31dc:	70da      	strb	r2, [r3, #3]
    31de:	4b0a      	ldr	r3, [pc, #40]	; (3208 <par_default+0x54>)
    31e0:	2234      	movs	r2, #52	; 0x34
    31e2:	711a      	strb	r2, [r3, #4]
    31e4:	4b08      	ldr	r3, [pc, #32]	; (3208 <par_default+0x54>)
    31e6:	2212      	movs	r2, #18
    31e8:	715a      	strb	r2, [r3, #5]
    31ea:	4b07      	ldr	r3, [pc, #28]	; (3208 <par_default+0x54>)
    31ec:	2201      	movs	r2, #1
    31ee:	719a      	strb	r2, [r3, #6]
    31f0:	4b05      	ldr	r3, [pc, #20]	; (3208 <par_default+0x54>)
    31f2:	220a      	movs	r2, #10
    31f4:	725a      	strb	r2, [r3, #9]
    31f6:	4b04      	ldr	r3, [pc, #16]	; (3208 <par_default+0x54>)
    31f8:	2202      	movs	r2, #2
    31fa:	729a      	strb	r2, [r3, #10]
    31fc:	4b02      	ldr	r3, [pc, #8]	; (3208 <par_default+0x54>)
    31fe:	220a      	movs	r2, #10
    3200:	735a      	strb	r2, [r3, #13]
    3202:	46c0      	nop			; (mov r8, r8)
    3204:	46bd      	mov	sp, r7
    3206:	bd80      	pop	{r7, pc}
    3208:	20005b60 	.word	0x20005b60

0000320c <par_save>:
    320c:	b580      	push	{r7, lr}
    320e:	b084      	sub	sp, #16
    3210:	af00      	add	r7, sp, #0
    3212:	f7ff ffb3 	bl	317c <eeprom_on>
    3216:	f005 fb5b 	bl	88d0 <__eeprom_erase_page_veneer>
    321a:	1e03      	subs	r3, r0, #0
    321c:	d01b      	beq.n	3256 <par_save+0x4a>
    321e:	4b11      	ldr	r3, [pc, #68]	; (3264 <par_save+0x58>)
    3220:	60bb      	str	r3, [r7, #8]
    3222:	2305      	movs	r3, #5
    3224:	603b      	str	r3, [r7, #0]
    3226:	2300      	movs	r3, #0
    3228:	607b      	str	r3, [r7, #4]
    322a:	2300      	movs	r3, #0
    322c:	60fb      	str	r3, [r7, #12]
    322e:	e00e      	b.n	324e <par_save+0x42>
    3230:	68bb      	ldr	r3, [r7, #8]
    3232:	1d1a      	adds	r2, r3, #4
    3234:	60ba      	str	r2, [r7, #8]
    3236:	681a      	ldr	r2, [r3, #0]
    3238:	687b      	ldr	r3, [r7, #4]
    323a:	0011      	movs	r1, r2
    323c:	0018      	movs	r0, r3
    323e:	f005 fb4f 	bl	88e0 <__eeprom_program_word_veneer>
    3242:	687b      	ldr	r3, [r7, #4]
    3244:	3304      	adds	r3, #4
    3246:	607b      	str	r3, [r7, #4]
    3248:	68fb      	ldr	r3, [r7, #12]
    324a:	3301      	adds	r3, #1
    324c:	60fb      	str	r3, [r7, #12]
    324e:	68fa      	ldr	r2, [r7, #12]
    3250:	683b      	ldr	r3, [r7, #0]
    3252:	429a      	cmp	r2, r3
    3254:	dbec      	blt.n	3230 <par_save+0x24>
    3256:	f7ff ff9f 	bl	3198 <eeprom_off>
    325a:	46c0      	nop			; (mov r8, r8)
    325c:	46bd      	mov	sp, r7
    325e:	b004      	add	sp, #16
    3260:	bd80      	pop	{r7, pc}
    3262:	46c0      	nop			; (mov r8, r8)
    3264:	20005b60 	.word	0x20005b60

00003268 <par_verify>:
    3268:	b590      	push	{r4, r7, lr}
    326a:	b087      	sub	sp, #28
    326c:	af00      	add	r7, sp, #0
    326e:	2301      	movs	r3, #1
    3270:	617b      	str	r3, [r7, #20]
    3272:	f7ff ff83 	bl	317c <eeprom_on>
    3276:	4b13      	ldr	r3, [pc, #76]	; (32c4 <par_verify+0x5c>)
    3278:	60fb      	str	r3, [r7, #12]
    327a:	2305      	movs	r3, #5
    327c:	607b      	str	r3, [r7, #4]
    327e:	2300      	movs	r3, #0
    3280:	60bb      	str	r3, [r7, #8]
    3282:	2300      	movs	r3, #0
    3284:	613b      	str	r3, [r7, #16]
    3286:	e012      	b.n	32ae <par_verify+0x46>
    3288:	68fb      	ldr	r3, [r7, #12]
    328a:	1d1a      	adds	r2, r3, #4
    328c:	60fa      	str	r2, [r7, #12]
    328e:	681c      	ldr	r4, [r3, #0]
    3290:	68bb      	ldr	r3, [r7, #8]
    3292:	0018      	movs	r0, r3
    3294:	f005 fb2c 	bl	88f0 <__eeprom_read_word_veneer>
    3298:	0003      	movs	r3, r0
    329a:	429c      	cmp	r4, r3
    329c:	d001      	beq.n	32a2 <par_verify+0x3a>
    329e:	2300      	movs	r3, #0
    32a0:	617b      	str	r3, [r7, #20]
    32a2:	68bb      	ldr	r3, [r7, #8]
    32a4:	3304      	adds	r3, #4
    32a6:	60bb      	str	r3, [r7, #8]
    32a8:	693b      	ldr	r3, [r7, #16]
    32aa:	3301      	adds	r3, #1
    32ac:	613b      	str	r3, [r7, #16]
    32ae:	693a      	ldr	r2, [r7, #16]
    32b0:	687b      	ldr	r3, [r7, #4]
    32b2:	429a      	cmp	r2, r3
    32b4:	dbe8      	blt.n	3288 <par_verify+0x20>
    32b6:	f7ff ff6f 	bl	3198 <eeprom_off>
    32ba:	697b      	ldr	r3, [r7, #20]
    32bc:	0018      	movs	r0, r3
    32be:	46bd      	mov	sp, r7
    32c0:	b007      	add	sp, #28
    32c2:	bd90      	pop	{r4, r7, pc}
    32c4:	20005b60 	.word	0x20005b60

000032c8 <par_read>:
    32c8:	b590      	push	{r4, r7, lr}
    32ca:	b085      	sub	sp, #20
    32cc:	af00      	add	r7, sp, #0
    32ce:	f7ff ff55 	bl	317c <eeprom_on>
    32d2:	4b16      	ldr	r3, [pc, #88]	; (332c <par_read+0x64>)
    32d4:	60bb      	str	r3, [r7, #8]
    32d6:	2305      	movs	r3, #5
    32d8:	603b      	str	r3, [r7, #0]
    32da:	2300      	movs	r3, #0
    32dc:	607b      	str	r3, [r7, #4]
    32de:	2300      	movs	r3, #0
    32e0:	60fb      	str	r3, [r7, #12]
    32e2:	e00e      	b.n	3302 <par_read+0x3a>
    32e4:	68bc      	ldr	r4, [r7, #8]
    32e6:	1d23      	adds	r3, r4, #4
    32e8:	60bb      	str	r3, [r7, #8]
    32ea:	687b      	ldr	r3, [r7, #4]
    32ec:	0018      	movs	r0, r3
    32ee:	f005 faff 	bl	88f0 <__eeprom_read_word_veneer>
    32f2:	0003      	movs	r3, r0
    32f4:	6023      	str	r3, [r4, #0]
    32f6:	687b      	ldr	r3, [r7, #4]
    32f8:	3304      	adds	r3, #4
    32fa:	607b      	str	r3, [r7, #4]
    32fc:	68fb      	ldr	r3, [r7, #12]
    32fe:	3301      	adds	r3, #1
    3300:	60fb      	str	r3, [r7, #12]
    3302:	68fa      	ldr	r2, [r7, #12]
    3304:	683b      	ldr	r3, [r7, #0]
    3306:	429a      	cmp	r2, r3
    3308:	dbec      	blt.n	32e4 <par_read+0x1c>
    330a:	f7ff ff45 	bl	3198 <eeprom_off>
    330e:	4b07      	ldr	r3, [pc, #28]	; (332c <par_read+0x64>)
    3310:	2114      	movs	r1, #20
    3312:	0018      	movs	r0, r3
    3314:	f7ff fec0 	bl	3098 <crc32>
    3318:	1e03      	subs	r3, r0, #0
    331a:	d001      	beq.n	3320 <par_read+0x58>
    331c:	2300      	movs	r3, #0
    331e:	e000      	b.n	3322 <par_read+0x5a>
    3320:	2301      	movs	r3, #1
    3322:	0018      	movs	r0, r3
    3324:	46bd      	mov	sp, r7
    3326:	b005      	add	sp, #20
    3328:	bd90      	pop	{r4, r7, pc}
    332a:	46c0      	nop			; (mov r8, r8)
    332c:	20005b60 	.word	0x20005b60

00003330 <par_update>:
    3330:	b580      	push	{r7, lr}
    3332:	b088      	sub	sp, #32
    3334:	af00      	add	r7, sp, #0
    3336:	6078      	str	r0, [r7, #4]
    3338:	687b      	ldr	r3, [r7, #4]
    333a:	1c5a      	adds	r2, r3, #1
    333c:	607a      	str	r2, [r7, #4]
    333e:	781b      	ldrb	r3, [r3, #0]
    3340:	617b      	str	r3, [r7, #20]
    3342:	687b      	ldr	r3, [r7, #4]
    3344:	1c5a      	adds	r2, r3, #1
    3346:	607a      	str	r2, [r7, #4]
    3348:	781b      	ldrb	r3, [r3, #0]
    334a:	613b      	str	r3, [r7, #16]
    334c:	687b      	ldr	r3, [r7, #4]
    334e:	1c5a      	adds	r2, r3, #1
    3350:	607a      	str	r2, [r7, #4]
    3352:	781b      	ldrb	r3, [r3, #0]
    3354:	60fb      	str	r3, [r7, #12]
    3356:	687b      	ldr	r3, [r7, #4]
    3358:	1c5a      	adds	r2, r3, #1
    335a:	607a      	str	r2, [r7, #4]
    335c:	781b      	ldrb	r3, [r3, #0]
    335e:	021b      	lsls	r3, r3, #8
    3360:	001a      	movs	r2, r3
    3362:	68fb      	ldr	r3, [r7, #12]
    3364:	189b      	adds	r3, r3, r2
    3366:	60fb      	str	r3, [r7, #12]
    3368:	68fb      	ldr	r3, [r7, #12]
    336a:	2201      	movs	r2, #1
    336c:	4013      	ands	r3, r2
    336e:	60bb      	str	r3, [r7, #8]
    3370:	697a      	ldr	r2, [r7, #20]
    3372:	693b      	ldr	r3, [r7, #16]
    3374:	18d3      	adds	r3, r2, r3
    3376:	2b14      	cmp	r3, #20
    3378:	d82c      	bhi.n	33d4 <par_update+0xa4>
    337a:	68bb      	ldr	r3, [r7, #8]
    337c:	2b00      	cmp	r3, #0
    337e:	d126      	bne.n	33ce <par_update+0x9e>
    3380:	697a      	ldr	r2, [r7, #20]
    3382:	4b16      	ldr	r3, [pc, #88]	; (33dc <par_update+0xac>)
    3384:	18d3      	adds	r3, r2, r3
    3386:	61bb      	str	r3, [r7, #24]
    3388:	2300      	movs	r3, #0
    338a:	61fb      	str	r3, [r7, #28]
    338c:	e00a      	b.n	33a4 <par_update+0x74>
    338e:	69bb      	ldr	r3, [r7, #24]
    3390:	1c5a      	adds	r2, r3, #1
    3392:	61ba      	str	r2, [r7, #24]
    3394:	687a      	ldr	r2, [r7, #4]
    3396:	1c51      	adds	r1, r2, #1
    3398:	6079      	str	r1, [r7, #4]
    339a:	7812      	ldrb	r2, [r2, #0]
    339c:	701a      	strb	r2, [r3, #0]
    339e:	69fb      	ldr	r3, [r7, #28]
    33a0:	3301      	adds	r3, #1
    33a2:	61fb      	str	r3, [r7, #28]
    33a4:	69fa      	ldr	r2, [r7, #28]
    33a6:	693b      	ldr	r3, [r7, #16]
    33a8:	429a      	cmp	r2, r3
    33aa:	d3f0      	bcc.n	338e <par_update+0x5e>
    33ac:	4b0b      	ldr	r3, [pc, #44]	; (33dc <par_update+0xac>)
    33ae:	2110      	movs	r1, #16
    33b0:	0018      	movs	r0, r3
    33b2:	f7ff fe71 	bl	3098 <crc32>
    33b6:	0002      	movs	r2, r0
    33b8:	4b08      	ldr	r3, [pc, #32]	; (33dc <par_update+0xac>)
    33ba:	611a      	str	r2, [r3, #16]
    33bc:	f7ff ff26 	bl	320c <par_save>
    33c0:	f7ff ff52 	bl	3268 <par_verify>
    33c4:	1e03      	subs	r3, r0, #0
    33c6:	d106      	bne.n	33d6 <par_update+0xa6>
    33c8:	f7ff fef4 	bl	31b4 <par_default>
    33cc:	e003      	b.n	33d6 <par_update+0xa6>
    33ce:	f7ff ff7b 	bl	32c8 <par_read>
    33d2:	e000      	b.n	33d6 <par_update+0xa6>
    33d4:	46c0      	nop			; (mov r8, r8)
    33d6:	46bd      	mov	sp, r7
    33d8:	b008      	add	sp, #32
    33da:	bd80      	pop	{r7, pc}
    33dc:	20005b60 	.word	0x20005b60

000033e0 <par_mac>:
    33e0:	b580      	push	{r7, lr}
    33e2:	b084      	sub	sp, #16
    33e4:	af00      	add	r7, sp, #0
    33e6:	6078      	str	r0, [r7, #4]
    33e8:	4b0b      	ldr	r3, [pc, #44]	; (3418 <par_mac+0x38>)
    33ea:	60fb      	str	r3, [r7, #12]
    33ec:	2300      	movs	r3, #0
    33ee:	60bb      	str	r3, [r7, #8]
    33f0:	e00a      	b.n	3408 <par_mac+0x28>
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
    340a:	2b05      	cmp	r3, #5
    340c:	ddf1      	ble.n	33f2 <par_mac+0x12>
    340e:	46c0      	nop			; (mov r8, r8)
    3410:	46bd      	mov	sp, r7
    3412:	b004      	add	sp, #16
    3414:	bd80      	pop	{r7, pc}
    3416:	46c0      	nop			; (mov r8, r8)
    3418:	20005b65 	.word	0x20005b65

0000341c <par_iploc>:
    341c:	b580      	push	{r7, lr}
    341e:	b084      	sub	sp, #16
    3420:	af00      	add	r7, sp, #0
    3422:	6078      	str	r0, [r7, #4]
    3424:	4b0b      	ldr	r3, [pc, #44]	; (3454 <par_iploc+0x38>)
    3426:	60fb      	str	r3, [r7, #12]
    3428:	2300      	movs	r3, #0
    342a:	60bb      	str	r3, [r7, #8]
    342c:	e00a      	b.n	3444 <par_iploc+0x28>
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
    3448:	ddf1      	ble.n	342e <par_iploc+0x12>
    344a:	46c0      	nop			; (mov r8, r8)
    344c:	46bd      	mov	sp, r7
    344e:	b004      	add	sp, #16
    3450:	bd80      	pop	{r7, pc}
    3452:	46c0      	nop			; (mov r8, r8)
    3454:	20005b69 	.word	0x20005b69

00003458 <par_iprem>:
    3458:	b580      	push	{r7, lr}
    345a:	b084      	sub	sp, #16
    345c:	af00      	add	r7, sp, #0
    345e:	6078      	str	r0, [r7, #4]
    3460:	4b0b      	ldr	r3, [pc, #44]	; (3490 <par_iprem+0x38>)
    3462:	60fb      	str	r3, [r7, #12]
    3464:	2300      	movs	r3, #0
    3466:	60bb      	str	r3, [r7, #8]
    3468:	e00a      	b.n	3480 <par_iprem+0x28>
    346a:	687b      	ldr	r3, [r7, #4]
    346c:	1c5a      	adds	r2, r3, #1
    346e:	607a      	str	r2, [r7, #4]
    3470:	68fa      	ldr	r2, [r7, #12]
    3472:	1e51      	subs	r1, r2, #1
    3474:	60f9      	str	r1, [r7, #12]
    3476:	7812      	ldrb	r2, [r2, #0]
    3478:	701a      	strb	r2, [r3, #0]
    347a:	68bb      	ldr	r3, [r7, #8]
    347c:	3301      	adds	r3, #1
    347e:	60bb      	str	r3, [r7, #8]
    3480:	68bb      	ldr	r3, [r7, #8]
    3482:	2b03      	cmp	r3, #3
    3484:	ddf1      	ble.n	346a <par_iprem+0x12>
    3486:	46c0      	nop			; (mov r8, r8)
    3488:	46bd      	mov	sp, r7
    348a:	b004      	add	sp, #16
    348c:	bd80      	pop	{r7, pc}
    348e:	46c0      	nop			; (mov r8, r8)
    3490:	20005b6d 	.word	0x20005b6d

00003494 <mdb_fifo_read>:
    3494:	b580      	push	{r7, lr}
    3496:	b086      	sub	sp, #24
    3498:	af00      	add	r7, sp, #0
    349a:	6078      	str	r0, [r7, #4]
    349c:	6039      	str	r1, [r7, #0]
    349e:	4b1f      	ldr	r3, [pc, #124]	; (351c <mdb_fifo_read+0x88>)
    34a0:	681a      	ldr	r2, [r3, #0]
    34a2:	2301      	movs	r3, #1
    34a4:	425b      	negs	r3, r3
    34a6:	0019      	movs	r1, r3
    34a8:	0010      	movs	r0, r2
    34aa:	f003 f9a3 	bl	67f4 <osMutexWait>
    34ae:	4b1c      	ldr	r3, [pc, #112]	; (3520 <mdb_fifo_read+0x8c>)
    34b0:	681a      	ldr	r2, [r3, #0]
    34b2:	4b1c      	ldr	r3, [pc, #112]	; (3524 <mdb_fifo_read+0x90>)
    34b4:	681b      	ldr	r3, [r3, #0]
    34b6:	1ad3      	subs	r3, r2, r3
    34b8:	05db      	lsls	r3, r3, #23
    34ba:	0ddb      	lsrs	r3, r3, #23
    34bc:	613b      	str	r3, [r7, #16]
    34be:	693b      	ldr	r3, [r7, #16]
    34c0:	2280      	movs	r2, #128	; 0x80
    34c2:	0092      	lsls	r2, r2, #2
    34c4:	1ad3      	subs	r3, r2, r3
    34c6:	60fb      	str	r3, [r7, #12]
    34c8:	683a      	ldr	r2, [r7, #0]
    34ca:	693b      	ldr	r3, [r7, #16]
    34cc:	429a      	cmp	r2, r3
    34ce:	d819      	bhi.n	3504 <mdb_fifo_read+0x70>
    34d0:	2300      	movs	r3, #0
    34d2:	617b      	str	r3, [r7, #20]
    34d4:	e011      	b.n	34fa <mdb_fifo_read+0x66>
    34d6:	687b      	ldr	r3, [r7, #4]
    34d8:	1c5a      	adds	r2, r3, #1
    34da:	607a      	str	r2, [r7, #4]
    34dc:	4a11      	ldr	r2, [pc, #68]	; (3524 <mdb_fifo_read+0x90>)
    34de:	6812      	ldr	r2, [r2, #0]
    34e0:	4911      	ldr	r1, [pc, #68]	; (3528 <mdb_fifo_read+0x94>)
    34e2:	5c8a      	ldrb	r2, [r1, r2]
    34e4:	701a      	strb	r2, [r3, #0]
    34e6:	4b0f      	ldr	r3, [pc, #60]	; (3524 <mdb_fifo_read+0x90>)
    34e8:	681b      	ldr	r3, [r3, #0]
    34ea:	3301      	adds	r3, #1
    34ec:	05db      	lsls	r3, r3, #23
    34ee:	0dda      	lsrs	r2, r3, #23
    34f0:	4b0c      	ldr	r3, [pc, #48]	; (3524 <mdb_fifo_read+0x90>)
    34f2:	601a      	str	r2, [r3, #0]
    34f4:	697b      	ldr	r3, [r7, #20]
    34f6:	3301      	adds	r3, #1
    34f8:	617b      	str	r3, [r7, #20]
    34fa:	697a      	ldr	r2, [r7, #20]
    34fc:	683b      	ldr	r3, [r7, #0]
    34fe:	429a      	cmp	r2, r3
    3500:	dbe9      	blt.n	34d6 <mdb_fifo_read+0x42>
    3502:	e001      	b.n	3508 <mdb_fifo_read+0x74>
    3504:	2300      	movs	r3, #0
    3506:	603b      	str	r3, [r7, #0]
    3508:	4b04      	ldr	r3, [pc, #16]	; (351c <mdb_fifo_read+0x88>)
    350a:	681b      	ldr	r3, [r3, #0]
    350c:	0018      	movs	r0, r3
    350e:	f003 f981 	bl	6814 <osMutexRelease>
    3512:	683b      	ldr	r3, [r7, #0]
    3514:	0018      	movs	r0, r3
    3516:	46bd      	mov	sp, r7
    3518:	b006      	add	sp, #24
    351a:	bd80      	pop	{r7, pc}
    351c:	20000888 	.word	0x20000888
    3520:	20005d74 	.word	0x20005d74
    3524:	20005d78 	.word	0x20005d78
    3528:	20005b74 	.word	0x20005b74

0000352c <mdb_fifo_write>:
    352c:	b580      	push	{r7, lr}
    352e:	b086      	sub	sp, #24
    3530:	af00      	add	r7, sp, #0
    3532:	6078      	str	r0, [r7, #4]
    3534:	6039      	str	r1, [r7, #0]
    3536:	4b1c      	ldr	r3, [pc, #112]	; (35a8 <mdb_fifo_write+0x7c>)
    3538:	681a      	ldr	r2, [r3, #0]
    353a:	2301      	movs	r3, #1
    353c:	425b      	negs	r3, r3
    353e:	0019      	movs	r1, r3
    3540:	0010      	movs	r0, r2
    3542:	f003 f957 	bl	67f4 <osMutexWait>
    3546:	4b19      	ldr	r3, [pc, #100]	; (35ac <mdb_fifo_write+0x80>)
    3548:	681a      	ldr	r2, [r3, #0]
    354a:	4b19      	ldr	r3, [pc, #100]	; (35b0 <mdb_fifo_write+0x84>)
    354c:	681b      	ldr	r3, [r3, #0]
    354e:	1ad3      	subs	r3, r2, r3
    3550:	05db      	lsls	r3, r3, #23
    3552:	0ddb      	lsrs	r3, r3, #23
    3554:	613b      	str	r3, [r7, #16]
    3556:	693b      	ldr	r3, [r7, #16]
    3558:	2280      	movs	r2, #128	; 0x80
    355a:	0092      	lsls	r2, r2, #2
    355c:	1ad3      	subs	r3, r2, r3
    355e:	60fb      	str	r3, [r7, #12]
    3560:	2300      	movs	r3, #0
    3562:	617b      	str	r3, [r7, #20]
    3564:	e011      	b.n	358a <mdb_fifo_write+0x5e>
    3566:	4b11      	ldr	r3, [pc, #68]	; (35ac <mdb_fifo_write+0x80>)
    3568:	681a      	ldr	r2, [r3, #0]
    356a:	687b      	ldr	r3, [r7, #4]
    356c:	1c59      	adds	r1, r3, #1
    356e:	6079      	str	r1, [r7, #4]
    3570:	7819      	ldrb	r1, [r3, #0]
    3572:	4b10      	ldr	r3, [pc, #64]	; (35b4 <mdb_fifo_write+0x88>)
    3574:	5499      	strb	r1, [r3, r2]
    3576:	4b0d      	ldr	r3, [pc, #52]	; (35ac <mdb_fifo_write+0x80>)
    3578:	681b      	ldr	r3, [r3, #0]
    357a:	3301      	adds	r3, #1
    357c:	05db      	lsls	r3, r3, #23
    357e:	0dda      	lsrs	r2, r3, #23
    3580:	4b0a      	ldr	r3, [pc, #40]	; (35ac <mdb_fifo_write+0x80>)
    3582:	601a      	str	r2, [r3, #0]
    3584:	697b      	ldr	r3, [r7, #20]
    3586:	3301      	adds	r3, #1
    3588:	617b      	str	r3, [r7, #20]
    358a:	697a      	ldr	r2, [r7, #20]
    358c:	683b      	ldr	r3, [r7, #0]
    358e:	429a      	cmp	r2, r3
    3590:	dbe9      	blt.n	3566 <mdb_fifo_write+0x3a>
    3592:	4b05      	ldr	r3, [pc, #20]	; (35a8 <mdb_fifo_write+0x7c>)
    3594:	681b      	ldr	r3, [r3, #0]
    3596:	0018      	movs	r0, r3
    3598:	f003 f93c 	bl	6814 <osMutexRelease>
    359c:	683b      	ldr	r3, [r7, #0]
    359e:	0018      	movs	r0, r3
    35a0:	46bd      	mov	sp, r7
    35a2:	b006      	add	sp, #24
    35a4:	bd80      	pop	{r7, pc}
    35a6:	46c0      	nop			; (mov r8, r8)
    35a8:	20000888 	.word	0x20000888
    35ac:	20005d74 	.word	0x20005d74
    35b0:	20005d78 	.word	0x20005d78
    35b4:	20005b74 	.word	0x20005b74

000035b8 <mdb_get_testparam>:
    35b8:	b5b0      	push	{r4, r5, r7, lr}
    35ba:	b086      	sub	sp, #24
    35bc:	af00      	add	r7, sp, #0
    35be:	6078      	str	r0, [r7, #4]
    35c0:	4b84      	ldr	r3, [pc, #528]	; (37d4 <mdb_get_testparam+0x21c>)
    35c2:	885b      	ldrh	r3, [r3, #2]
    35c4:	041b      	lsls	r3, r3, #16
    35c6:	4a83      	ldr	r2, [pc, #524]	; (37d4 <mdb_get_testparam+0x21c>)
    35c8:	8892      	ldrh	r2, [r2, #4]
    35ca:	4313      	orrs	r3, r2
    35cc:	001a      	movs	r2, r3
    35ce:	687b      	ldr	r3, [r7, #4]
    35d0:	21ff      	movs	r1, #255	; 0xff
    35d2:	4011      	ands	r1, r2
    35d4:	000c      	movs	r4, r1
    35d6:	7819      	ldrb	r1, [r3, #0]
    35d8:	2000      	movs	r0, #0
    35da:	4001      	ands	r1, r0
    35dc:	1c08      	adds	r0, r1, #0
    35de:	1c21      	adds	r1, r4, #0
    35e0:	4301      	orrs	r1, r0
    35e2:	7019      	strb	r1, [r3, #0]
    35e4:	0a11      	lsrs	r1, r2, #8
    35e6:	20ff      	movs	r0, #255	; 0xff
    35e8:	4001      	ands	r1, r0
    35ea:	000c      	movs	r4, r1
    35ec:	7859      	ldrb	r1, [r3, #1]
    35ee:	2000      	movs	r0, #0
    35f0:	4001      	ands	r1, r0
    35f2:	1c08      	adds	r0, r1, #0
    35f4:	1c21      	adds	r1, r4, #0
    35f6:	4301      	orrs	r1, r0
    35f8:	7059      	strb	r1, [r3, #1]
    35fa:	0c11      	lsrs	r1, r2, #16
    35fc:	20ff      	movs	r0, #255	; 0xff
    35fe:	4001      	ands	r1, r0
    3600:	000c      	movs	r4, r1
    3602:	7899      	ldrb	r1, [r3, #2]
    3604:	2000      	movs	r0, #0
    3606:	4001      	ands	r1, r0
    3608:	1c08      	adds	r0, r1, #0
    360a:	1c21      	adds	r1, r4, #0
    360c:	4301      	orrs	r1, r0
    360e:	7099      	strb	r1, [r3, #2]
    3610:	0e10      	lsrs	r0, r2, #24
    3612:	78da      	ldrb	r2, [r3, #3]
    3614:	2100      	movs	r1, #0
    3616:	400a      	ands	r2, r1
    3618:	1c11      	adds	r1, r2, #0
    361a:	1c02      	adds	r2, r0, #0
    361c:	430a      	orrs	r2, r1
    361e:	70da      	strb	r2, [r3, #3]
    3620:	4b6c      	ldr	r3, [pc, #432]	; (37d4 <mdb_get_testparam+0x21c>)
    3622:	88db      	ldrh	r3, [r3, #6]
    3624:	041b      	lsls	r3, r3, #16
    3626:	4a6b      	ldr	r2, [pc, #428]	; (37d4 <mdb_get_testparam+0x21c>)
    3628:	8912      	ldrh	r2, [r2, #8]
    362a:	4313      	orrs	r3, r2
    362c:	001a      	movs	r2, r3
    362e:	687b      	ldr	r3, [r7, #4]
    3630:	21ff      	movs	r1, #255	; 0xff
    3632:	4011      	ands	r1, r2
    3634:	000c      	movs	r4, r1
    3636:	7919      	ldrb	r1, [r3, #4]
    3638:	2000      	movs	r0, #0
    363a:	4001      	ands	r1, r0
    363c:	1c08      	adds	r0, r1, #0
    363e:	1c21      	adds	r1, r4, #0
    3640:	4301      	orrs	r1, r0
    3642:	7119      	strb	r1, [r3, #4]
    3644:	0a11      	lsrs	r1, r2, #8
    3646:	20ff      	movs	r0, #255	; 0xff
    3648:	4001      	ands	r1, r0
    364a:	000c      	movs	r4, r1
    364c:	7959      	ldrb	r1, [r3, #5]
    364e:	2000      	movs	r0, #0
    3650:	4001      	ands	r1, r0
    3652:	1c08      	adds	r0, r1, #0
    3654:	1c21      	adds	r1, r4, #0
    3656:	4301      	orrs	r1, r0
    3658:	7159      	strb	r1, [r3, #5]
    365a:	0c11      	lsrs	r1, r2, #16
    365c:	20ff      	movs	r0, #255	; 0xff
    365e:	4001      	ands	r1, r0
    3660:	000c      	movs	r4, r1
    3662:	7999      	ldrb	r1, [r3, #6]
    3664:	2000      	movs	r0, #0
    3666:	4001      	ands	r1, r0
    3668:	1c08      	adds	r0, r1, #0
    366a:	1c21      	adds	r1, r4, #0
    366c:	4301      	orrs	r1, r0
    366e:	7199      	strb	r1, [r3, #6]
    3670:	0e10      	lsrs	r0, r2, #24
    3672:	79da      	ldrb	r2, [r3, #7]
    3674:	2100      	movs	r1, #0
    3676:	400a      	ands	r2, r1
    3678:	1c11      	adds	r1, r2, #0
    367a:	1c02      	adds	r2, r0, #0
    367c:	430a      	orrs	r2, r1
    367e:	71da      	strb	r2, [r3, #7]
    3680:	4b54      	ldr	r3, [pc, #336]	; (37d4 <mdb_get_testparam+0x21c>)
    3682:	895b      	ldrh	r3, [r3, #10]
    3684:	041b      	lsls	r3, r3, #16
    3686:	4a53      	ldr	r2, [pc, #332]	; (37d4 <mdb_get_testparam+0x21c>)
    3688:	8992      	ldrh	r2, [r2, #12]
    368a:	4313      	orrs	r3, r2
    368c:	001a      	movs	r2, r3
    368e:	687b      	ldr	r3, [r7, #4]
    3690:	21ff      	movs	r1, #255	; 0xff
    3692:	4011      	ands	r1, r2
    3694:	000c      	movs	r4, r1
    3696:	7a19      	ldrb	r1, [r3, #8]
    3698:	2000      	movs	r0, #0
    369a:	4001      	ands	r1, r0
    369c:	1c08      	adds	r0, r1, #0
    369e:	1c21      	adds	r1, r4, #0
    36a0:	4301      	orrs	r1, r0
    36a2:	7219      	strb	r1, [r3, #8]
    36a4:	0a11      	lsrs	r1, r2, #8
    36a6:	20ff      	movs	r0, #255	; 0xff
    36a8:	4001      	ands	r1, r0
    36aa:	000c      	movs	r4, r1
    36ac:	7a59      	ldrb	r1, [r3, #9]
    36ae:	2000      	movs	r0, #0
    36b0:	4001      	ands	r1, r0
    36b2:	1c08      	adds	r0, r1, #0
    36b4:	1c21      	adds	r1, r4, #0
    36b6:	4301      	orrs	r1, r0
    36b8:	7259      	strb	r1, [r3, #9]
    36ba:	0c11      	lsrs	r1, r2, #16
    36bc:	20ff      	movs	r0, #255	; 0xff
    36be:	4001      	ands	r1, r0
    36c0:	000c      	movs	r4, r1
    36c2:	7a99      	ldrb	r1, [r3, #10]
    36c4:	2000      	movs	r0, #0
    36c6:	4001      	ands	r1, r0
    36c8:	1c08      	adds	r0, r1, #0
    36ca:	1c21      	adds	r1, r4, #0
    36cc:	4301      	orrs	r1, r0
    36ce:	7299      	strb	r1, [r3, #10]
    36d0:	0e10      	lsrs	r0, r2, #24
    36d2:	7ada      	ldrb	r2, [r3, #11]
    36d4:	2100      	movs	r1, #0
    36d6:	400a      	ands	r2, r1
    36d8:	1c11      	adds	r1, r2, #0
    36da:	1c02      	adds	r2, r0, #0
    36dc:	430a      	orrs	r2, r1
    36de:	72da      	strb	r2, [r3, #11]
    36e0:	4b3c      	ldr	r3, [pc, #240]	; (37d4 <mdb_get_testparam+0x21c>)
    36e2:	89db      	ldrh	r3, [r3, #14]
    36e4:	041b      	lsls	r3, r3, #16
    36e6:	4a3b      	ldr	r2, [pc, #236]	; (37d4 <mdb_get_testparam+0x21c>)
    36e8:	8a12      	ldrh	r2, [r2, #16]
    36ea:	4313      	orrs	r3, r2
    36ec:	001a      	movs	r2, r3
    36ee:	687b      	ldr	r3, [r7, #4]
    36f0:	21ff      	movs	r1, #255	; 0xff
    36f2:	4011      	ands	r1, r2
    36f4:	000c      	movs	r4, r1
    36f6:	7b19      	ldrb	r1, [r3, #12]
    36f8:	2000      	movs	r0, #0
    36fa:	4001      	ands	r1, r0
    36fc:	1c08      	adds	r0, r1, #0
    36fe:	1c21      	adds	r1, r4, #0
    3700:	4301      	orrs	r1, r0
    3702:	7319      	strb	r1, [r3, #12]
    3704:	0a11      	lsrs	r1, r2, #8
    3706:	20ff      	movs	r0, #255	; 0xff
    3708:	4001      	ands	r1, r0
    370a:	000c      	movs	r4, r1
    370c:	7b59      	ldrb	r1, [r3, #13]
    370e:	2000      	movs	r0, #0
    3710:	4001      	ands	r1, r0
    3712:	1c08      	adds	r0, r1, #0
    3714:	1c21      	adds	r1, r4, #0
    3716:	4301      	orrs	r1, r0
    3718:	7359      	strb	r1, [r3, #13]
    371a:	0c11      	lsrs	r1, r2, #16
    371c:	20ff      	movs	r0, #255	; 0xff
    371e:	4001      	ands	r1, r0
    3720:	000c      	movs	r4, r1
    3722:	7b99      	ldrb	r1, [r3, #14]
    3724:	2000      	movs	r0, #0
    3726:	4001      	ands	r1, r0
    3728:	1c08      	adds	r0, r1, #0
    372a:	1c21      	adds	r1, r4, #0
    372c:	4301      	orrs	r1, r0
    372e:	7399      	strb	r1, [r3, #14]
    3730:	0e10      	lsrs	r0, r2, #24
    3732:	7bda      	ldrb	r2, [r3, #15]
    3734:	2100      	movs	r1, #0
    3736:	400a      	ands	r2, r1
    3738:	1c11      	adds	r1, r2, #0
    373a:	1c02      	adds	r2, r0, #0
    373c:	430a      	orrs	r2, r1
    373e:	73da      	strb	r2, [r3, #15]
    3740:	4b25      	ldr	r3, [pc, #148]	; (37d8 <mdb_get_testparam+0x220>)
    3742:	613b      	str	r3, [r7, #16]
    3744:	4b25      	ldr	r3, [pc, #148]	; (37dc <mdb_get_testparam+0x224>)
    3746:	60fb      	str	r3, [r7, #12]
    3748:	2300      	movs	r3, #0
    374a:	617b      	str	r3, [r7, #20]
    374c:	e03a      	b.n	37c4 <mdb_get_testparam+0x20c>
    374e:	693b      	ldr	r3, [r7, #16]
    3750:	1c9a      	adds	r2, r3, #2
    3752:	613a      	str	r2, [r7, #16]
    3754:	8819      	ldrh	r1, [r3, #0]
    3756:	687a      	ldr	r2, [r7, #4]
    3758:	697b      	ldr	r3, [r7, #20]
    375a:	3308      	adds	r3, #8
    375c:	005b      	lsls	r3, r3, #1
    375e:	20ff      	movs	r0, #255	; 0xff
    3760:	4008      	ands	r0, r1
    3762:	0005      	movs	r5, r0
    3764:	5c98      	ldrb	r0, [r3, r2]
    3766:	2400      	movs	r4, #0
    3768:	4020      	ands	r0, r4
    376a:	1c04      	adds	r4, r0, #0
    376c:	1c28      	adds	r0, r5, #0
    376e:	4320      	orrs	r0, r4
    3770:	5498      	strb	r0, [r3, r2]
    3772:	0a09      	lsrs	r1, r1, #8
    3774:	b288      	uxth	r0, r1
    3776:	18d3      	adds	r3, r2, r3
    3778:	785a      	ldrb	r2, [r3, #1]
    377a:	2100      	movs	r1, #0
    377c:	400a      	ands	r2, r1
    377e:	1c11      	adds	r1, r2, #0
    3780:	1c02      	adds	r2, r0, #0
    3782:	430a      	orrs	r2, r1
    3784:	705a      	strb	r2, [r3, #1]
    3786:	68fb      	ldr	r3, [r7, #12]
    3788:	1c9a      	adds	r2, r3, #2
    378a:	60fa      	str	r2, [r7, #12]
    378c:	881a      	ldrh	r2, [r3, #0]
    378e:	6879      	ldr	r1, [r7, #4]
    3790:	697b      	ldr	r3, [r7, #20]
    3792:	330c      	adds	r3, #12
    3794:	005b      	lsls	r3, r3, #1
    3796:	18cb      	adds	r3, r1, r3
    3798:	21ff      	movs	r1, #255	; 0xff
    379a:	4011      	ands	r1, r2
    379c:	000c      	movs	r4, r1
    379e:	7899      	ldrb	r1, [r3, #2]
    37a0:	2000      	movs	r0, #0
    37a2:	4001      	ands	r1, r0
    37a4:	1c08      	adds	r0, r1, #0
    37a6:	1c21      	adds	r1, r4, #0
    37a8:	4301      	orrs	r1, r0
    37aa:	7099      	strb	r1, [r3, #2]
    37ac:	0a12      	lsrs	r2, r2, #8
    37ae:	b290      	uxth	r0, r2
    37b0:	78da      	ldrb	r2, [r3, #3]
    37b2:	2100      	movs	r1, #0
    37b4:	400a      	ands	r2, r1
    37b6:	1c11      	adds	r1, r2, #0
    37b8:	1c02      	adds	r2, r0, #0
    37ba:	430a      	orrs	r2, r1
    37bc:	70da      	strb	r2, [r3, #3]
    37be:	697b      	ldr	r3, [r7, #20]
    37c0:	3301      	adds	r3, #1
    37c2:	617b      	str	r3, [r7, #20]
    37c4:	697b      	ldr	r3, [r7, #20]
    37c6:	2b04      	cmp	r3, #4
    37c8:	ddc1      	ble.n	374e <mdb_get_testparam+0x196>
    37ca:	46c0      	nop			; (mov r8, r8)
    37cc:	46bd      	mov	sp, r7
    37ce:	b006      	add	sp, #24
    37d0:	bdb0      	pop	{r4, r5, r7, pc}
    37d2:	46c0      	nop			; (mov r8, r8)
    37d4:	20005d7c 	.word	0x20005d7c
    37d8:	20005d8e 	.word	0x20005d8e
    37dc:	20005d98 	.word	0x20005d98

000037e0 <mdb_get_holding_register>:
    37e0:	b580      	push	{r7, lr}
    37e2:	b084      	sub	sp, #16
    37e4:	af00      	add	r7, sp, #0
    37e6:	6078      	str	r0, [r7, #4]
    37e8:	687b      	ldr	r3, [r7, #4]
    37ea:	2b00      	cmp	r3, #0
    37ec:	db02      	blt.n	37f4 <mdb_get_holding_register+0x14>
    37ee:	687b      	ldr	r3, [r7, #4]
    37f0:	2b17      	cmp	r3, #23
    37f2:	dd01      	ble.n	37f8 <mdb_get_holding_register+0x18>
    37f4:	2300      	movs	r3, #0
    37f6:	e009      	b.n	380c <mdb_get_holding_register+0x2c>
    37f8:	230e      	movs	r3, #14
    37fa:	18fb      	adds	r3, r7, r3
    37fc:	4a05      	ldr	r2, [pc, #20]	; (3814 <mdb_get_holding_register+0x34>)
    37fe:	6879      	ldr	r1, [r7, #4]
    3800:	0049      	lsls	r1, r1, #1
    3802:	5a8a      	ldrh	r2, [r1, r2]
    3804:	801a      	strh	r2, [r3, #0]
    3806:	230e      	movs	r3, #14
    3808:	18fb      	adds	r3, r7, r3
    380a:	881b      	ldrh	r3, [r3, #0]
    380c:	0018      	movs	r0, r3
    380e:	46bd      	mov	sp, r7
    3810:	b004      	add	sp, #16
    3812:	bd80      	pop	{r7, pc}
    3814:	20005d7c 	.word	0x20005d7c

00003818 <pdu_report_server_id>:
    3818:	b580      	push	{r7, lr}
    381a:	b086      	sub	sp, #24
    381c:	af00      	add	r7, sp, #0
    381e:	6078      	str	r0, [r7, #4]
    3820:	2311      	movs	r3, #17
    3822:	60fb      	str	r3, [r7, #12]
    3824:	4b1f      	ldr	r3, [pc, #124]	; (38a4 <pdu_report_server_id+0x8c>)
    3826:	681a      	ldr	r2, [r3, #0]
    3828:	687b      	ldr	r3, [r7, #4]
    382a:	18d2      	adds	r2, r2, r3
    382c:	230b      	movs	r3, #11
    382e:	18fb      	adds	r3, r7, r3
    3830:	7812      	ldrb	r2, [r2, #0]
    3832:	701a      	strb	r2, [r3, #0]
    3834:	687b      	ldr	r3, [r7, #4]
    3836:	617b      	str	r3, [r7, #20]
    3838:	697b      	ldr	r3, [r7, #20]
    383a:	1c5a      	adds	r2, r3, #1
    383c:	617a      	str	r2, [r7, #20]
    383e:	4a1a      	ldr	r2, [pc, #104]	; (38a8 <pdu_report_server_id+0x90>)
    3840:	210b      	movs	r1, #11
    3842:	1879      	adds	r1, r7, r1
    3844:	7809      	ldrb	r1, [r1, #0]
    3846:	54d1      	strb	r1, [r2, r3]
    3848:	697b      	ldr	r3, [r7, #20]
    384a:	1c5a      	adds	r2, r3, #1
    384c:	617a      	str	r2, [r7, #20]
    384e:	68fa      	ldr	r2, [r7, #12]
    3850:	b2d2      	uxtb	r2, r2
    3852:	3202      	adds	r2, #2
    3854:	b2d1      	uxtb	r1, r2
    3856:	4a14      	ldr	r2, [pc, #80]	; (38a8 <pdu_report_server_id+0x90>)
    3858:	54d1      	strb	r1, [r2, r3]
    385a:	697b      	ldr	r3, [r7, #20]
    385c:	1c5a      	adds	r2, r3, #1
    385e:	617a      	str	r2, [r7, #20]
    3860:	4a11      	ldr	r2, [pc, #68]	; (38a8 <pdu_report_server_id+0x90>)
    3862:	2111      	movs	r1, #17
    3864:	54d1      	strb	r1, [r2, r3]
    3866:	697b      	ldr	r3, [r7, #20]
    3868:	1c5a      	adds	r2, r3, #1
    386a:	617a      	str	r2, [r7, #20]
    386c:	4a0e      	ldr	r2, [pc, #56]	; (38a8 <pdu_report_server_id+0x90>)
    386e:	21ff      	movs	r1, #255	; 0xff
    3870:	54d1      	strb	r1, [r2, r3]
    3872:	2300      	movs	r3, #0
    3874:	613b      	str	r3, [r7, #16]
    3876:	e00b      	b.n	3890 <pdu_report_server_id+0x78>
    3878:	697b      	ldr	r3, [r7, #20]
    387a:	1c5a      	adds	r2, r3, #1
    387c:	617a      	str	r2, [r7, #20]
    387e:	490b      	ldr	r1, [pc, #44]	; (38ac <pdu_report_server_id+0x94>)
    3880:	693a      	ldr	r2, [r7, #16]
    3882:	188a      	adds	r2, r1, r2
    3884:	7811      	ldrb	r1, [r2, #0]
    3886:	4a08      	ldr	r2, [pc, #32]	; (38a8 <pdu_report_server_id+0x90>)
    3888:	54d1      	strb	r1, [r2, r3]
    388a:	693b      	ldr	r3, [r7, #16]
    388c:	3301      	adds	r3, #1
    388e:	613b      	str	r3, [r7, #16]
    3890:	693a      	ldr	r2, [r7, #16]
    3892:	68fb      	ldr	r3, [r7, #12]
    3894:	429a      	cmp	r2, r3
    3896:	dbef      	blt.n	3878 <pdu_report_server_id+0x60>
    3898:	697b      	ldr	r3, [r7, #20]
    389a:	0018      	movs	r0, r3
    389c:	46bd      	mov	sp, r7
    389e:	b006      	add	sp, #24
    38a0:	bd80      	pop	{r7, pc}
    38a2:	46c0      	nop			; (mov r8, r8)
    38a4:	20005db8 	.word	0x20005db8
    38a8:	20005dbc 	.word	0x20005dbc
    38ac:	00009060 	.word	0x00009060

000038b0 <pdu_read_input_registers>:
    38b0:	b580      	push	{r7, lr}
    38b2:	b086      	sub	sp, #24
    38b4:	af00      	add	r7, sp, #0
    38b6:	6078      	str	r0, [r7, #4]
    38b8:	4b4e      	ldr	r3, [pc, #312]	; (39f4 <pdu_read_input_registers+0x144>)
    38ba:	681a      	ldr	r2, [r3, #0]
    38bc:	687b      	ldr	r3, [r7, #4]
    38be:	18d2      	adds	r2, r2, r3
    38c0:	230f      	movs	r3, #15
    38c2:	18fb      	adds	r3, r7, r3
    38c4:	7812      	ldrb	r2, [r2, #0]
    38c6:	701a      	strb	r2, [r3, #0]
    38c8:	4b4a      	ldr	r3, [pc, #296]	; (39f4 <pdu_read_input_registers+0x144>)
    38ca:	681a      	ldr	r2, [r3, #0]
    38cc:	687b      	ldr	r3, [r7, #4]
    38ce:	3301      	adds	r3, #1
    38d0:	18d3      	adds	r3, r2, r3
    38d2:	781b      	ldrb	r3, [r3, #0]
    38d4:	021b      	lsls	r3, r3, #8
    38d6:	b21a      	sxth	r2, r3
    38d8:	4b46      	ldr	r3, [pc, #280]	; (39f4 <pdu_read_input_registers+0x144>)
    38da:	6819      	ldr	r1, [r3, #0]
    38dc:	687b      	ldr	r3, [r7, #4]
    38de:	3302      	adds	r3, #2
    38e0:	18cb      	adds	r3, r1, r3
    38e2:	781b      	ldrb	r3, [r3, #0]
    38e4:	b21b      	sxth	r3, r3
    38e6:	4313      	orrs	r3, r2
    38e8:	b21a      	sxth	r2, r3
    38ea:	230c      	movs	r3, #12
    38ec:	18fb      	adds	r3, r7, r3
    38ee:	801a      	strh	r2, [r3, #0]
    38f0:	4b40      	ldr	r3, [pc, #256]	; (39f4 <pdu_read_input_registers+0x144>)
    38f2:	681a      	ldr	r2, [r3, #0]
    38f4:	687b      	ldr	r3, [r7, #4]
    38f6:	3303      	adds	r3, #3
    38f8:	18d3      	adds	r3, r2, r3
    38fa:	781b      	ldrb	r3, [r3, #0]
    38fc:	021b      	lsls	r3, r3, #8
    38fe:	b21a      	sxth	r2, r3
    3900:	4b3c      	ldr	r3, [pc, #240]	; (39f4 <pdu_read_input_registers+0x144>)
    3902:	6819      	ldr	r1, [r3, #0]
    3904:	687b      	ldr	r3, [r7, #4]
    3906:	3304      	adds	r3, #4
    3908:	18cb      	adds	r3, r1, r3
    390a:	781b      	ldrb	r3, [r3, #0]
    390c:	b21b      	sxth	r3, r3
    390e:	4313      	orrs	r3, r2
    3910:	b21a      	sxth	r2, r3
    3912:	230a      	movs	r3, #10
    3914:	18fb      	adds	r3, r7, r3
    3916:	801a      	strh	r2, [r3, #0]
    3918:	230c      	movs	r3, #12
    391a:	18fb      	adds	r3, r7, r3
    391c:	881b      	ldrh	r3, [r3, #0]
    391e:	2bff      	cmp	r3, #255	; 0xff
    3920:	d90a      	bls.n	3938 <pdu_read_input_registers+0x88>
    3922:	230c      	movs	r3, #12
    3924:	18fb      	adds	r3, r7, r3
    3926:	881a      	ldrh	r2, [r3, #0]
    3928:	230a      	movs	r3, #10
    392a:	18fb      	adds	r3, r7, r3
    392c:	881b      	ldrh	r3, [r3, #0]
    392e:	18d2      	adds	r2, r2, r3
    3930:	2304      	movs	r3, #4
    3932:	33ff      	adds	r3, #255	; 0xff
    3934:	429a      	cmp	r2, r3
    3936:	dd15      	ble.n	3964 <pdu_read_input_registers+0xb4>
    3938:	687b      	ldr	r3, [r7, #4]
    393a:	613b      	str	r3, [r7, #16]
    393c:	693b      	ldr	r3, [r7, #16]
    393e:	1c5a      	adds	r2, r3, #1
    3940:	613a      	str	r2, [r7, #16]
    3942:	220f      	movs	r2, #15
    3944:	18ba      	adds	r2, r7, r2
    3946:	7812      	ldrb	r2, [r2, #0]
    3948:	2180      	movs	r1, #128	; 0x80
    394a:	4249      	negs	r1, r1
    394c:	430a      	orrs	r2, r1
    394e:	b2d1      	uxtb	r1, r2
    3950:	4a29      	ldr	r2, [pc, #164]	; (39f8 <pdu_read_input_registers+0x148>)
    3952:	54d1      	strb	r1, [r2, r3]
    3954:	693b      	ldr	r3, [r7, #16]
    3956:	1c5a      	adds	r2, r3, #1
    3958:	613a      	str	r2, [r7, #16]
    395a:	4a27      	ldr	r2, [pc, #156]	; (39f8 <pdu_read_input_registers+0x148>)
    395c:	2102      	movs	r1, #2
    395e:	54d1      	strb	r1, [r2, r3]
    3960:	693b      	ldr	r3, [r7, #16]
    3962:	e042      	b.n	39ea <pdu_read_input_registers+0x13a>
    3964:	687b      	ldr	r3, [r7, #4]
    3966:	613b      	str	r3, [r7, #16]
    3968:	693b      	ldr	r3, [r7, #16]
    396a:	1c5a      	adds	r2, r3, #1
    396c:	613a      	str	r2, [r7, #16]
    396e:	4a22      	ldr	r2, [pc, #136]	; (39f8 <pdu_read_input_registers+0x148>)
    3970:	210f      	movs	r1, #15
    3972:	1879      	adds	r1, r7, r1
    3974:	7809      	ldrb	r1, [r1, #0]
    3976:	54d1      	strb	r1, [r2, r3]
    3978:	693b      	ldr	r3, [r7, #16]
    397a:	1c5a      	adds	r2, r3, #1
    397c:	613a      	str	r2, [r7, #16]
    397e:	220a      	movs	r2, #10
    3980:	18ba      	adds	r2, r7, r2
    3982:	8812      	ldrh	r2, [r2, #0]
    3984:	b2d2      	uxtb	r2, r2
    3986:	1892      	adds	r2, r2, r2
    3988:	b2d1      	uxtb	r1, r2
    398a:	4a1b      	ldr	r2, [pc, #108]	; (39f8 <pdu_read_input_registers+0x148>)
    398c:	54d1      	strb	r1, [r2, r3]
    398e:	2300      	movs	r3, #0
    3990:	617b      	str	r3, [r7, #20]
    3992:	e023      	b.n	39dc <pdu_read_input_registers+0x12c>
    3994:	230c      	movs	r3, #12
    3996:	18fb      	adds	r3, r7, r3
    3998:	881b      	ldrh	r3, [r3, #0]
    399a:	1e5a      	subs	r2, r3, #1
    399c:	3aff      	subs	r2, #255	; 0xff
    399e:	697b      	ldr	r3, [r7, #20]
    39a0:	18d1      	adds	r1, r2, r3
    39a2:	2308      	movs	r3, #8
    39a4:	18fb      	adds	r3, r7, r3
    39a6:	4a15      	ldr	r2, [pc, #84]	; (39fc <pdu_read_input_registers+0x14c>)
    39a8:	0049      	lsls	r1, r1, #1
    39aa:	5a8a      	ldrh	r2, [r1, r2]
    39ac:	801a      	strh	r2, [r3, #0]
    39ae:	693b      	ldr	r3, [r7, #16]
    39b0:	1c5a      	adds	r2, r3, #1
    39b2:	613a      	str	r2, [r7, #16]
    39b4:	2208      	movs	r2, #8
    39b6:	18ba      	adds	r2, r7, r2
    39b8:	8812      	ldrh	r2, [r2, #0]
    39ba:	0a12      	lsrs	r2, r2, #8
    39bc:	b292      	uxth	r2, r2
    39be:	b2d1      	uxtb	r1, r2
    39c0:	4a0d      	ldr	r2, [pc, #52]	; (39f8 <pdu_read_input_registers+0x148>)
    39c2:	54d1      	strb	r1, [r2, r3]
    39c4:	693b      	ldr	r3, [r7, #16]
    39c6:	1c5a      	adds	r2, r3, #1
    39c8:	613a      	str	r2, [r7, #16]
    39ca:	2208      	movs	r2, #8
    39cc:	18ba      	adds	r2, r7, r2
    39ce:	8812      	ldrh	r2, [r2, #0]
    39d0:	b2d1      	uxtb	r1, r2
    39d2:	4a09      	ldr	r2, [pc, #36]	; (39f8 <pdu_read_input_registers+0x148>)
    39d4:	54d1      	strb	r1, [r2, r3]
    39d6:	697b      	ldr	r3, [r7, #20]
    39d8:	3301      	adds	r3, #1
    39da:	617b      	str	r3, [r7, #20]
    39dc:	230a      	movs	r3, #10
    39de:	18fb      	adds	r3, r7, r3
    39e0:	881a      	ldrh	r2, [r3, #0]
    39e2:	697b      	ldr	r3, [r7, #20]
    39e4:	429a      	cmp	r2, r3
    39e6:	dcd5      	bgt.n	3994 <pdu_read_input_registers+0xe4>
    39e8:	693b      	ldr	r3, [r7, #16]
    39ea:	0018      	movs	r0, r3
    39ec:	46bd      	mov	sp, r7
    39ee:	b006      	add	sp, #24
    39f0:	bd80      	pop	{r7, pc}
    39f2:	46c0      	nop			; (mov r8, r8)
    39f4:	20005db8 	.word	0x20005db8
    39f8:	20005dbc 	.word	0x20005dbc
    39fc:	20005dac 	.word	0x20005dac

00003a00 <pdu_write_multiply_registers>:
    3a00:	b580      	push	{r7, lr}
    3a02:	b088      	sub	sp, #32
    3a04:	af00      	add	r7, sp, #0
    3a06:	6078      	str	r0, [r7, #4]
    3a08:	4b5a      	ldr	r3, [pc, #360]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3a0a:	681a      	ldr	r2, [r3, #0]
    3a0c:	687b      	ldr	r3, [r7, #4]
    3a0e:	18d2      	adds	r2, r2, r3
    3a10:	2317      	movs	r3, #23
    3a12:	18fb      	adds	r3, r7, r3
    3a14:	7812      	ldrb	r2, [r2, #0]
    3a16:	701a      	strb	r2, [r3, #0]
    3a18:	4b56      	ldr	r3, [pc, #344]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3a1a:	681a      	ldr	r2, [r3, #0]
    3a1c:	687b      	ldr	r3, [r7, #4]
    3a1e:	3301      	adds	r3, #1
    3a20:	18d3      	adds	r3, r2, r3
    3a22:	781b      	ldrb	r3, [r3, #0]
    3a24:	021b      	lsls	r3, r3, #8
    3a26:	b21a      	sxth	r2, r3
    3a28:	4b52      	ldr	r3, [pc, #328]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3a2a:	6819      	ldr	r1, [r3, #0]
    3a2c:	687b      	ldr	r3, [r7, #4]
    3a2e:	3302      	adds	r3, #2
    3a30:	18cb      	adds	r3, r1, r3
    3a32:	781b      	ldrb	r3, [r3, #0]
    3a34:	b21b      	sxth	r3, r3
    3a36:	4313      	orrs	r3, r2
    3a38:	b21a      	sxth	r2, r3
    3a3a:	2314      	movs	r3, #20
    3a3c:	18fb      	adds	r3, r7, r3
    3a3e:	801a      	strh	r2, [r3, #0]
    3a40:	4b4c      	ldr	r3, [pc, #304]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3a42:	681a      	ldr	r2, [r3, #0]
    3a44:	687b      	ldr	r3, [r7, #4]
    3a46:	3303      	adds	r3, #3
    3a48:	18d3      	adds	r3, r2, r3
    3a4a:	781b      	ldrb	r3, [r3, #0]
    3a4c:	021b      	lsls	r3, r3, #8
    3a4e:	b21a      	sxth	r2, r3
    3a50:	4b48      	ldr	r3, [pc, #288]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3a52:	6819      	ldr	r1, [r3, #0]
    3a54:	687b      	ldr	r3, [r7, #4]
    3a56:	3304      	adds	r3, #4
    3a58:	18cb      	adds	r3, r1, r3
    3a5a:	781b      	ldrb	r3, [r3, #0]
    3a5c:	b21b      	sxth	r3, r3
    3a5e:	4313      	orrs	r3, r2
    3a60:	b21a      	sxth	r2, r3
    3a62:	2312      	movs	r3, #18
    3a64:	18fb      	adds	r3, r7, r3
    3a66:	801a      	strh	r2, [r3, #0]
    3a68:	4b42      	ldr	r3, [pc, #264]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3a6a:	681a      	ldr	r2, [r3, #0]
    3a6c:	687b      	ldr	r3, [r7, #4]
    3a6e:	3305      	adds	r3, #5
    3a70:	18d2      	adds	r2, r2, r3
    3a72:	2311      	movs	r3, #17
    3a74:	18fb      	adds	r3, r7, r3
    3a76:	7812      	ldrb	r2, [r2, #0]
    3a78:	701a      	strb	r2, [r3, #0]
    3a7a:	2314      	movs	r3, #20
    3a7c:	18fb      	adds	r3, r7, r3
    3a7e:	881a      	ldrh	r2, [r3, #0]
    3a80:	2312      	movs	r3, #18
    3a82:	18fb      	adds	r3, r7, r3
    3a84:	881b      	ldrh	r3, [r3, #0]
    3a86:	18d3      	adds	r3, r2, r3
    3a88:	2b18      	cmp	r3, #24
    3a8a:	dd14      	ble.n	3ab6 <pdu_write_multiply_registers+0xb6>
    3a8c:	687b      	ldr	r3, [r7, #4]
    3a8e:	61bb      	str	r3, [r7, #24]
    3a90:	69bb      	ldr	r3, [r7, #24]
    3a92:	1c5a      	adds	r2, r3, #1
    3a94:	61ba      	str	r2, [r7, #24]
    3a96:	2217      	movs	r2, #23
    3a98:	18ba      	adds	r2, r7, r2
    3a9a:	7812      	ldrb	r2, [r2, #0]
    3a9c:	2180      	movs	r1, #128	; 0x80
    3a9e:	4249      	negs	r1, r1
    3aa0:	430a      	orrs	r2, r1
    3aa2:	b2d1      	uxtb	r1, r2
    3aa4:	4a34      	ldr	r2, [pc, #208]	; (3b78 <pdu_write_multiply_registers+0x178>)
    3aa6:	54d1      	strb	r1, [r2, r3]
    3aa8:	69bb      	ldr	r3, [r7, #24]
    3aaa:	1c5a      	adds	r2, r3, #1
    3aac:	61ba      	str	r2, [r7, #24]
    3aae:	4a32      	ldr	r2, [pc, #200]	; (3b78 <pdu_write_multiply_registers+0x178>)
    3ab0:	2102      	movs	r1, #2
    3ab2:	54d1      	strb	r1, [r2, r3]
    3ab4:	e04b      	b.n	3b4e <pdu_write_multiply_registers+0x14e>
    3ab6:	687b      	ldr	r3, [r7, #4]
    3ab8:	3306      	adds	r3, #6
    3aba:	61bb      	str	r3, [r7, #24]
    3abc:	2300      	movs	r3, #0
    3abe:	61fb      	str	r3, [r7, #28]
    3ac0:	e028      	b.n	3b14 <pdu_write_multiply_registers+0x114>
    3ac2:	4b2c      	ldr	r3, [pc, #176]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3ac4:	681a      	ldr	r2, [r3, #0]
    3ac6:	69bb      	ldr	r3, [r7, #24]
    3ac8:	1c59      	adds	r1, r3, #1
    3aca:	61b9      	str	r1, [r7, #24]
    3acc:	18d3      	adds	r3, r2, r3
    3ace:	781b      	ldrb	r3, [r3, #0]
    3ad0:	b29a      	uxth	r2, r3
    3ad2:	230e      	movs	r3, #14
    3ad4:	18fb      	adds	r3, r7, r3
    3ad6:	0212      	lsls	r2, r2, #8
    3ad8:	801a      	strh	r2, [r3, #0]
    3ada:	4b26      	ldr	r3, [pc, #152]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3adc:	681a      	ldr	r2, [r3, #0]
    3ade:	69bb      	ldr	r3, [r7, #24]
    3ae0:	1c59      	adds	r1, r3, #1
    3ae2:	61b9      	str	r1, [r7, #24]
    3ae4:	18d3      	adds	r3, r2, r3
    3ae6:	781b      	ldrb	r3, [r3, #0]
    3ae8:	b299      	uxth	r1, r3
    3aea:	230e      	movs	r3, #14
    3aec:	18fb      	adds	r3, r7, r3
    3aee:	220e      	movs	r2, #14
    3af0:	18ba      	adds	r2, r7, r2
    3af2:	8812      	ldrh	r2, [r2, #0]
    3af4:	430a      	orrs	r2, r1
    3af6:	801a      	strh	r2, [r3, #0]
    3af8:	2314      	movs	r3, #20
    3afa:	18fb      	adds	r3, r7, r3
    3afc:	881a      	ldrh	r2, [r3, #0]
    3afe:	69fb      	ldr	r3, [r7, #28]
    3b00:	18d2      	adds	r2, r2, r3
    3b02:	4b1e      	ldr	r3, [pc, #120]	; (3b7c <pdu_write_multiply_registers+0x17c>)
    3b04:	0052      	lsls	r2, r2, #1
    3b06:	210e      	movs	r1, #14
    3b08:	1879      	adds	r1, r7, r1
    3b0a:	8809      	ldrh	r1, [r1, #0]
    3b0c:	52d1      	strh	r1, [r2, r3]
    3b0e:	69fb      	ldr	r3, [r7, #28]
    3b10:	3301      	adds	r3, #1
    3b12:	61fb      	str	r3, [r7, #28]
    3b14:	2312      	movs	r3, #18
    3b16:	18fb      	adds	r3, r7, r3
    3b18:	881a      	ldrh	r2, [r3, #0]
    3b1a:	69fb      	ldr	r3, [r7, #28]
    3b1c:	429a      	cmp	r2, r3
    3b1e:	dcd0      	bgt.n	3ac2 <pdu_write_multiply_registers+0xc2>
    3b20:	687b      	ldr	r3, [r7, #4]
    3b22:	61bb      	str	r3, [r7, #24]
    3b24:	687b      	ldr	r3, [r7, #4]
    3b26:	61fb      	str	r3, [r7, #28]
    3b28:	e00c      	b.n	3b44 <pdu_write_multiply_registers+0x144>
    3b2a:	69bb      	ldr	r3, [r7, #24]
    3b2c:	1c5a      	adds	r2, r3, #1
    3b2e:	61ba      	str	r2, [r7, #24]
    3b30:	4a10      	ldr	r2, [pc, #64]	; (3b74 <pdu_write_multiply_registers+0x174>)
    3b32:	6811      	ldr	r1, [r2, #0]
    3b34:	69fa      	ldr	r2, [r7, #28]
    3b36:	188a      	adds	r2, r1, r2
    3b38:	7811      	ldrb	r1, [r2, #0]
    3b3a:	4a0f      	ldr	r2, [pc, #60]	; (3b78 <pdu_write_multiply_registers+0x178>)
    3b3c:	54d1      	strb	r1, [r2, r3]
    3b3e:	69fb      	ldr	r3, [r7, #28]
    3b40:	3301      	adds	r3, #1
    3b42:	61fb      	str	r3, [r7, #28]
    3b44:	687b      	ldr	r3, [r7, #4]
    3b46:	1d5a      	adds	r2, r3, #5
    3b48:	69fb      	ldr	r3, [r7, #28]
    3b4a:	429a      	cmp	r2, r3
    3b4c:	dced      	bgt.n	3b2a <pdu_write_multiply_registers+0x12a>
    3b4e:	2314      	movs	r3, #20
    3b50:	18fb      	adds	r3, r7, r3
    3b52:	881b      	ldrh	r3, [r3, #0]
    3b54:	2b00      	cmp	r3, #0
    3b56:	d107      	bne.n	3b68 <pdu_write_multiply_registers+0x168>
    3b58:	4b09      	ldr	r3, [pc, #36]	; (3b80 <pdu_write_multiply_registers+0x180>)
    3b5a:	6818      	ldr	r0, [r3, #0]
    3b5c:	4b07      	ldr	r3, [pc, #28]	; (3b7c <pdu_write_multiply_registers+0x17c>)
    3b5e:	881b      	ldrh	r3, [r3, #0]
    3b60:	2200      	movs	r2, #0
    3b62:	0019      	movs	r1, r3
    3b64:	f003 f92e 	bl	6dc4 <osMessagePut>
    3b68:	69bb      	ldr	r3, [r7, #24]
    3b6a:	0018      	movs	r0, r3
    3b6c:	46bd      	mov	sp, r7
    3b6e:	b008      	add	sp, #32
    3b70:	bd80      	pop	{r7, pc}
    3b72:	46c0      	nop			; (mov r8, r8)
    3b74:	20005db8 	.word	0x20005db8
    3b78:	20005dbc 	.word	0x20005dbc
    3b7c:	20005d7c 	.word	0x20005d7c
    3b80:	20000864 	.word	0x20000864

00003b84 <u16tobe>:
    3b84:	b580      	push	{r7, lr}
    3b86:	b082      	sub	sp, #8
    3b88:	af00      	add	r7, sp, #0
    3b8a:	0002      	movs	r2, r0
    3b8c:	6039      	str	r1, [r7, #0]
    3b8e:	1dbb      	adds	r3, r7, #6
    3b90:	801a      	strh	r2, [r3, #0]
    3b92:	683b      	ldr	r3, [r7, #0]
    3b94:	1c5a      	adds	r2, r3, #1
    3b96:	603a      	str	r2, [r7, #0]
    3b98:	1dba      	adds	r2, r7, #6
    3b9a:	8812      	ldrh	r2, [r2, #0]
    3b9c:	0a12      	lsrs	r2, r2, #8
    3b9e:	b292      	uxth	r2, r2
    3ba0:	b2d2      	uxtb	r2, r2
    3ba2:	701a      	strb	r2, [r3, #0]
    3ba4:	683b      	ldr	r3, [r7, #0]
    3ba6:	1c5a      	adds	r2, r3, #1
    3ba8:	603a      	str	r2, [r7, #0]
    3baa:	1dba      	adds	r2, r7, #6
    3bac:	8812      	ldrh	r2, [r2, #0]
    3bae:	b2d2      	uxtb	r2, r2
    3bb0:	701a      	strb	r2, [r3, #0]
    3bb2:	46c0      	nop			; (mov r8, r8)
    3bb4:	46bd      	mov	sp, r7
    3bb6:	b002      	add	sp, #8
    3bb8:	bd80      	pop	{r7, pc}
    3bba:	46c0      	nop			; (mov r8, r8)

00003bbc <u32tobe>:
    3bbc:	b580      	push	{r7, lr}
    3bbe:	b082      	sub	sp, #8
    3bc0:	af00      	add	r7, sp, #0
    3bc2:	6078      	str	r0, [r7, #4]
    3bc4:	6039      	str	r1, [r7, #0]
    3bc6:	683b      	ldr	r3, [r7, #0]
    3bc8:	1c5a      	adds	r2, r3, #1
    3bca:	603a      	str	r2, [r7, #0]
    3bcc:	687a      	ldr	r2, [r7, #4]
    3bce:	0e12      	lsrs	r2, r2, #24
    3bd0:	b2d2      	uxtb	r2, r2
    3bd2:	701a      	strb	r2, [r3, #0]
    3bd4:	683b      	ldr	r3, [r7, #0]
    3bd6:	1c5a      	adds	r2, r3, #1
    3bd8:	603a      	str	r2, [r7, #0]
    3bda:	687a      	ldr	r2, [r7, #4]
    3bdc:	0c12      	lsrs	r2, r2, #16
    3bde:	b2d2      	uxtb	r2, r2
    3be0:	701a      	strb	r2, [r3, #0]
    3be2:	683b      	ldr	r3, [r7, #0]
    3be4:	1c5a      	adds	r2, r3, #1
    3be6:	603a      	str	r2, [r7, #0]
    3be8:	687a      	ldr	r2, [r7, #4]
    3bea:	0a12      	lsrs	r2, r2, #8
    3bec:	b2d2      	uxtb	r2, r2
    3bee:	701a      	strb	r2, [r3, #0]
    3bf0:	683b      	ldr	r3, [r7, #0]
    3bf2:	1c5a      	adds	r2, r3, #1
    3bf4:	603a      	str	r2, [r7, #0]
    3bf6:	687a      	ldr	r2, [r7, #4]
    3bf8:	b2d2      	uxtb	r2, r2
    3bfa:	701a      	strb	r2, [r3, #0]
    3bfc:	46c0      	nop			; (mov r8, r8)
    3bfe:	46bd      	mov	sp, r7
    3c00:	b002      	add	sp, #8
    3c02:	bd80      	pop	{r7, pc}

00003c04 <pdu_read_fifo_queue>:
    3c04:	b580      	push	{r7, lr}
    3c06:	b090      	sub	sp, #64	; 0x40
    3c08:	af00      	add	r7, sp, #0
    3c0a:	6078      	str	r0, [r7, #4]
    3c0c:	2336      	movs	r3, #54	; 0x36
    3c0e:	18fb      	adds	r3, r7, r3
    3c10:	2203      	movs	r2, #3
    3c12:	801a      	strh	r2, [r3, #0]
    3c14:	4b7c      	ldr	r3, [pc, #496]	; (3e08 <pdu_read_fifo_queue+0x204>)
    3c16:	681a      	ldr	r2, [r3, #0]
    3c18:	687b      	ldr	r3, [r7, #4]
    3c1a:	18d2      	adds	r2, r2, r3
    3c1c:	2335      	movs	r3, #53	; 0x35
    3c1e:	18fb      	adds	r3, r7, r3
    3c20:	7812      	ldrb	r2, [r2, #0]
    3c22:	701a      	strb	r2, [r3, #0]
    3c24:	4b78      	ldr	r3, [pc, #480]	; (3e08 <pdu_read_fifo_queue+0x204>)
    3c26:	681a      	ldr	r2, [r3, #0]
    3c28:	687b      	ldr	r3, [r7, #4]
    3c2a:	3301      	adds	r3, #1
    3c2c:	18d3      	adds	r3, r2, r3
    3c2e:	781b      	ldrb	r3, [r3, #0]
    3c30:	021b      	lsls	r3, r3, #8
    3c32:	b21a      	sxth	r2, r3
    3c34:	4b74      	ldr	r3, [pc, #464]	; (3e08 <pdu_read_fifo_queue+0x204>)
    3c36:	6819      	ldr	r1, [r3, #0]
    3c38:	687b      	ldr	r3, [r7, #4]
    3c3a:	3302      	adds	r3, #2
    3c3c:	18cb      	adds	r3, r1, r3
    3c3e:	781b      	ldrb	r3, [r3, #0]
    3c40:	b21b      	sxth	r3, r3
    3c42:	4313      	orrs	r3, r2
    3c44:	b21a      	sxth	r2, r3
    3c46:	2332      	movs	r3, #50	; 0x32
    3c48:	18fb      	adds	r3, r7, r3
    3c4a:	801a      	strh	r2, [r3, #0]
    3c4c:	2332      	movs	r3, #50	; 0x32
    3c4e:	18fb      	adds	r3, r7, r3
    3c50:	881a      	ldrh	r2, [r3, #0]
    3c52:	2380      	movs	r3, #128	; 0x80
    3c54:	009b      	lsls	r3, r3, #2
    3c56:	429a      	cmp	r2, r3
    3c58:	d014      	beq.n	3c84 <pdu_read_fifo_queue+0x80>
    3c5a:	687b      	ldr	r3, [r7, #4]
    3c5c:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c5e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c60:	1c5a      	adds	r2, r3, #1
    3c62:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c64:	2235      	movs	r2, #53	; 0x35
    3c66:	18ba      	adds	r2, r7, r2
    3c68:	7812      	ldrb	r2, [r2, #0]
    3c6a:	2180      	movs	r1, #128	; 0x80
    3c6c:	4249      	negs	r1, r1
    3c6e:	430a      	orrs	r2, r1
    3c70:	b2d1      	uxtb	r1, r2
    3c72:	4a66      	ldr	r2, [pc, #408]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3c74:	54d1      	strb	r1, [r2, r3]
    3c76:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c78:	1c5a      	adds	r2, r3, #1
    3c7a:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c7c:	4a63      	ldr	r2, [pc, #396]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3c7e:	2102      	movs	r1, #2
    3c80:	54d1      	strb	r1, [r2, r3]
    3c82:	e0bb      	b.n	3dfc <pdu_read_fifo_queue+0x1f8>
    3c84:	687b      	ldr	r3, [r7, #4]
    3c86:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c88:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c8a:	1c5a      	adds	r2, r3, #1
    3c8c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c8e:	4a5f      	ldr	r2, [pc, #380]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3c90:	2135      	movs	r1, #53	; 0x35
    3c92:	1879      	adds	r1, r7, r1
    3c94:	7809      	ldrb	r1, [r1, #0]
    3c96:	54d1      	strb	r1, [r2, r3]
    3c98:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c9a:	1c5a      	adds	r2, r3, #1
    3c9c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c9e:	4a5b      	ldr	r2, [pc, #364]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3ca0:	2100      	movs	r1, #0
    3ca2:	54d1      	strb	r1, [r2, r3]
    3ca4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3ca6:	1c5a      	adds	r2, r3, #1
    3ca8:	63fa      	str	r2, [r7, #60]	; 0x3c
    3caa:	4a58      	ldr	r2, [pc, #352]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3cac:	2100      	movs	r1, #0
    3cae:	54d1      	strb	r1, [r2, r3]
    3cb0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cb2:	1c5a      	adds	r2, r3, #1
    3cb4:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cb6:	4a55      	ldr	r2, [pc, #340]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3cb8:	2100      	movs	r1, #0
    3cba:	54d1      	strb	r1, [r2, r3]
    3cbc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cbe:	1c5a      	adds	r2, r3, #1
    3cc0:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cc2:	4a52      	ldr	r2, [pc, #328]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3cc4:	2100      	movs	r1, #0
    3cc6:	54d1      	strb	r1, [r2, r3]
    3cc8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cca:	62fb      	str	r3, [r7, #44]	; 0x2c
    3ccc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3cce:	4b4f      	ldr	r3, [pc, #316]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3cd0:	18d3      	adds	r3, r2, r3
    3cd2:	63bb      	str	r3, [r7, #56]	; 0x38
    3cd4:	e06e      	b.n	3db4 <pdu_read_fifo_queue+0x1b0>
    3cd6:	2300      	movs	r3, #0
    3cd8:	62bb      	str	r3, [r7, #40]	; 0x28
    3cda:	2308      	movs	r3, #8
    3cdc:	18fb      	adds	r3, r7, r3
    3cde:	2120      	movs	r1, #32
    3ce0:	0018      	movs	r0, r3
    3ce2:	f7ff fbd7 	bl	3494 <mdb_fifo_read>
    3ce6:	0003      	movs	r3, r0
    3ce8:	62bb      	str	r3, [r7, #40]	; 0x28
    3cea:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3cec:	2b00      	cmp	r3, #0
    3cee:	d069      	beq.n	3dc4 <pdu_read_fifo_queue+0x1c0>
    3cf0:	2308      	movs	r3, #8
    3cf2:	18fb      	adds	r3, r7, r3
    3cf4:	681b      	ldr	r3, [r3, #0]
    3cf6:	001a      	movs	r2, r3
    3cf8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cfa:	0019      	movs	r1, r3
    3cfc:	0010      	movs	r0, r2
    3cfe:	f7ff ff5d 	bl	3bbc <u32tobe>
    3d02:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d04:	3304      	adds	r3, #4
    3d06:	63bb      	str	r3, [r7, #56]	; 0x38
    3d08:	2308      	movs	r3, #8
    3d0a:	18fb      	adds	r3, r7, r3
    3d0c:	685b      	ldr	r3, [r3, #4]
    3d0e:	001a      	movs	r2, r3
    3d10:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d12:	0019      	movs	r1, r3
    3d14:	0010      	movs	r0, r2
    3d16:	f7ff ff51 	bl	3bbc <u32tobe>
    3d1a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d1c:	3304      	adds	r3, #4
    3d1e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d20:	2308      	movs	r3, #8
    3d22:	18fb      	adds	r3, r7, r3
    3d24:	689b      	ldr	r3, [r3, #8]
    3d26:	001a      	movs	r2, r3
    3d28:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d2a:	0019      	movs	r1, r3
    3d2c:	0010      	movs	r0, r2
    3d2e:	f7ff ff45 	bl	3bbc <u32tobe>
    3d32:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d34:	3304      	adds	r3, #4
    3d36:	63bb      	str	r3, [r7, #56]	; 0x38
    3d38:	2308      	movs	r3, #8
    3d3a:	18fb      	adds	r3, r7, r3
    3d3c:	68db      	ldr	r3, [r3, #12]
    3d3e:	001a      	movs	r2, r3
    3d40:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d42:	0019      	movs	r1, r3
    3d44:	0010      	movs	r0, r2
    3d46:	f7ff ff39 	bl	3bbc <u32tobe>
    3d4a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d4c:	3304      	adds	r3, #4
    3d4e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d50:	2308      	movs	r3, #8
    3d52:	18fb      	adds	r3, r7, r3
    3d54:	691b      	ldr	r3, [r3, #16]
    3d56:	001a      	movs	r2, r3
    3d58:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d5a:	0019      	movs	r1, r3
    3d5c:	0010      	movs	r0, r2
    3d5e:	f7ff ff2d 	bl	3bbc <u32tobe>
    3d62:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d64:	3304      	adds	r3, #4
    3d66:	63bb      	str	r3, [r7, #56]	; 0x38
    3d68:	2308      	movs	r3, #8
    3d6a:	18fb      	adds	r3, r7, r3
    3d6c:	695b      	ldr	r3, [r3, #20]
    3d6e:	001a      	movs	r2, r3
    3d70:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d72:	0019      	movs	r1, r3
    3d74:	0010      	movs	r0, r2
    3d76:	f7ff ff21 	bl	3bbc <u32tobe>
    3d7a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d7c:	3304      	adds	r3, #4
    3d7e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d80:	2308      	movs	r3, #8
    3d82:	18fb      	adds	r3, r7, r3
    3d84:	699b      	ldr	r3, [r3, #24]
    3d86:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d88:	0011      	movs	r1, r2
    3d8a:	0018      	movs	r0, r3
    3d8c:	f7ff ff16 	bl	3bbc <u32tobe>
    3d90:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d92:	3304      	adds	r3, #4
    3d94:	63bb      	str	r3, [r7, #56]	; 0x38
    3d96:	2308      	movs	r3, #8
    3d98:	18fb      	adds	r3, r7, r3
    3d9a:	69db      	ldr	r3, [r3, #28]
    3d9c:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d9e:	0011      	movs	r1, r2
    3da0:	0018      	movs	r0, r3
    3da2:	f7ff ff0b 	bl	3bbc <u32tobe>
    3da6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3da8:	3304      	adds	r3, #4
    3daa:	63bb      	str	r3, [r7, #56]	; 0x38
    3dac:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3dae:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3db0:	18d3      	adds	r3, r2, r3
    3db2:	63fb      	str	r3, [r7, #60]	; 0x3c
    3db4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3db6:	3320      	adds	r3, #32
    3db8:	001a      	movs	r2, r3
    3dba:	23fc      	movs	r3, #252	; 0xfc
    3dbc:	33ff      	adds	r3, #255	; 0xff
    3dbe:	429a      	cmp	r2, r3
    3dc0:	d989      	bls.n	3cd6 <pdu_read_fifo_queue+0xd2>
    3dc2:	e000      	b.n	3dc6 <pdu_read_fifo_queue+0x1c2>
    3dc4:	46c0      	nop			; (mov r8, r8)
    3dc6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dc8:	b29a      	uxth	r2, r3
    3dca:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3dcc:	b29b      	uxth	r3, r3
    3dce:	1ad3      	subs	r3, r2, r3
    3dd0:	b29b      	uxth	r3, r3
    3dd2:	3302      	adds	r3, #2
    3dd4:	b298      	uxth	r0, r3
    3dd6:	687b      	ldr	r3, [r7, #4]
    3dd8:	1c5a      	adds	r2, r3, #1
    3dda:	4b0c      	ldr	r3, [pc, #48]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3ddc:	18d3      	adds	r3, r2, r3
    3dde:	0019      	movs	r1, r3
    3de0:	f7ff fed0 	bl	3b84 <u16tobe>
    3de4:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3de6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3de8:	1ad3      	subs	r3, r2, r3
    3dea:	105b      	asrs	r3, r3, #1
    3dec:	b298      	uxth	r0, r3
    3dee:	687b      	ldr	r3, [r7, #4]
    3df0:	1cda      	adds	r2, r3, #3
    3df2:	4b06      	ldr	r3, [pc, #24]	; (3e0c <pdu_read_fifo_queue+0x208>)
    3df4:	18d3      	adds	r3, r2, r3
    3df6:	0019      	movs	r1, r3
    3df8:	f7ff fec4 	bl	3b84 <u16tobe>
    3dfc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dfe:	0018      	movs	r0, r3
    3e00:	46bd      	mov	sp, r7
    3e02:	b010      	add	sp, #64	; 0x40
    3e04:	bd80      	pop	{r7, pc}
    3e06:	46c0      	nop			; (mov r8, r8)
    3e08:	20005db8 	.word	0x20005db8
    3e0c:	20005dbc 	.word	0x20005dbc

00003e10 <pdu_read_holding_registers>:
    3e10:	b580      	push	{r7, lr}
    3e12:	b086      	sub	sp, #24
    3e14:	af00      	add	r7, sp, #0
    3e16:	6078      	str	r0, [r7, #4]
    3e18:	4b49      	ldr	r3, [pc, #292]	; (3f40 <pdu_read_holding_registers+0x130>)
    3e1a:	681a      	ldr	r2, [r3, #0]
    3e1c:	687b      	ldr	r3, [r7, #4]
    3e1e:	18d2      	adds	r2, r2, r3
    3e20:	230f      	movs	r3, #15
    3e22:	18fb      	adds	r3, r7, r3
    3e24:	7812      	ldrb	r2, [r2, #0]
    3e26:	701a      	strb	r2, [r3, #0]
    3e28:	4b45      	ldr	r3, [pc, #276]	; (3f40 <pdu_read_holding_registers+0x130>)
    3e2a:	681a      	ldr	r2, [r3, #0]
    3e2c:	687b      	ldr	r3, [r7, #4]
    3e2e:	3301      	adds	r3, #1
    3e30:	18d3      	adds	r3, r2, r3
    3e32:	781b      	ldrb	r3, [r3, #0]
    3e34:	021b      	lsls	r3, r3, #8
    3e36:	b21a      	sxth	r2, r3
    3e38:	4b41      	ldr	r3, [pc, #260]	; (3f40 <pdu_read_holding_registers+0x130>)
    3e3a:	6819      	ldr	r1, [r3, #0]
    3e3c:	687b      	ldr	r3, [r7, #4]
    3e3e:	3302      	adds	r3, #2
    3e40:	18cb      	adds	r3, r1, r3
    3e42:	781b      	ldrb	r3, [r3, #0]
    3e44:	b21b      	sxth	r3, r3
    3e46:	4313      	orrs	r3, r2
    3e48:	b21a      	sxth	r2, r3
    3e4a:	230c      	movs	r3, #12
    3e4c:	18fb      	adds	r3, r7, r3
    3e4e:	801a      	strh	r2, [r3, #0]
    3e50:	4b3b      	ldr	r3, [pc, #236]	; (3f40 <pdu_read_holding_registers+0x130>)
    3e52:	681a      	ldr	r2, [r3, #0]
    3e54:	687b      	ldr	r3, [r7, #4]
    3e56:	3303      	adds	r3, #3
    3e58:	18d3      	adds	r3, r2, r3
    3e5a:	781b      	ldrb	r3, [r3, #0]
    3e5c:	021b      	lsls	r3, r3, #8
    3e5e:	b21a      	sxth	r2, r3
    3e60:	4b37      	ldr	r3, [pc, #220]	; (3f40 <pdu_read_holding_registers+0x130>)
    3e62:	6819      	ldr	r1, [r3, #0]
    3e64:	687b      	ldr	r3, [r7, #4]
    3e66:	3304      	adds	r3, #4
    3e68:	18cb      	adds	r3, r1, r3
    3e6a:	781b      	ldrb	r3, [r3, #0]
    3e6c:	b21b      	sxth	r3, r3
    3e6e:	4313      	orrs	r3, r2
    3e70:	b21a      	sxth	r2, r3
    3e72:	230a      	movs	r3, #10
    3e74:	18fb      	adds	r3, r7, r3
    3e76:	801a      	strh	r2, [r3, #0]
    3e78:	230c      	movs	r3, #12
    3e7a:	18fb      	adds	r3, r7, r3
    3e7c:	881a      	ldrh	r2, [r3, #0]
    3e7e:	230a      	movs	r3, #10
    3e80:	18fb      	adds	r3, r7, r3
    3e82:	881b      	ldrh	r3, [r3, #0]
    3e84:	18d3      	adds	r3, r2, r3
    3e86:	2b18      	cmp	r3, #24
    3e88:	dd14      	ble.n	3eb4 <pdu_read_holding_registers+0xa4>
    3e8a:	687b      	ldr	r3, [r7, #4]
    3e8c:	613b      	str	r3, [r7, #16]
    3e8e:	693b      	ldr	r3, [r7, #16]
    3e90:	1c5a      	adds	r2, r3, #1
    3e92:	613a      	str	r2, [r7, #16]
    3e94:	220f      	movs	r2, #15
    3e96:	18ba      	adds	r2, r7, r2
    3e98:	7812      	ldrb	r2, [r2, #0]
    3e9a:	2180      	movs	r1, #128	; 0x80
    3e9c:	4249      	negs	r1, r1
    3e9e:	430a      	orrs	r2, r1
    3ea0:	b2d1      	uxtb	r1, r2
    3ea2:	4a28      	ldr	r2, [pc, #160]	; (3f44 <pdu_read_holding_registers+0x134>)
    3ea4:	54d1      	strb	r1, [r2, r3]
    3ea6:	693b      	ldr	r3, [r7, #16]
    3ea8:	1c5a      	adds	r2, r3, #1
    3eaa:	613a      	str	r2, [r7, #16]
    3eac:	4a25      	ldr	r2, [pc, #148]	; (3f44 <pdu_read_holding_registers+0x134>)
    3eae:	2102      	movs	r1, #2
    3eb0:	54d1      	strb	r1, [r2, r3]
    3eb2:	e03f      	b.n	3f34 <pdu_read_holding_registers+0x124>
    3eb4:	687b      	ldr	r3, [r7, #4]
    3eb6:	613b      	str	r3, [r7, #16]
    3eb8:	693b      	ldr	r3, [r7, #16]
    3eba:	1c5a      	adds	r2, r3, #1
    3ebc:	613a      	str	r2, [r7, #16]
    3ebe:	4a21      	ldr	r2, [pc, #132]	; (3f44 <pdu_read_holding_registers+0x134>)
    3ec0:	210f      	movs	r1, #15
    3ec2:	1879      	adds	r1, r7, r1
    3ec4:	7809      	ldrb	r1, [r1, #0]
    3ec6:	54d1      	strb	r1, [r2, r3]
    3ec8:	693b      	ldr	r3, [r7, #16]
    3eca:	1c5a      	adds	r2, r3, #1
    3ecc:	613a      	str	r2, [r7, #16]
    3ece:	220a      	movs	r2, #10
    3ed0:	18ba      	adds	r2, r7, r2
    3ed2:	8812      	ldrh	r2, [r2, #0]
    3ed4:	b2d2      	uxtb	r2, r2
    3ed6:	1892      	adds	r2, r2, r2
    3ed8:	b2d1      	uxtb	r1, r2
    3eda:	4a1a      	ldr	r2, [pc, #104]	; (3f44 <pdu_read_holding_registers+0x134>)
    3edc:	54d1      	strb	r1, [r2, r3]
    3ede:	2300      	movs	r3, #0
    3ee0:	617b      	str	r3, [r7, #20]
    3ee2:	e021      	b.n	3f28 <pdu_read_holding_registers+0x118>
    3ee4:	230c      	movs	r3, #12
    3ee6:	18fb      	adds	r3, r7, r3
    3ee8:	881a      	ldrh	r2, [r3, #0]
    3eea:	697b      	ldr	r3, [r7, #20]
    3eec:	18d1      	adds	r1, r2, r3
    3eee:	2308      	movs	r3, #8
    3ef0:	18fb      	adds	r3, r7, r3
    3ef2:	4a15      	ldr	r2, [pc, #84]	; (3f48 <pdu_read_holding_registers+0x138>)
    3ef4:	0049      	lsls	r1, r1, #1
    3ef6:	5a8a      	ldrh	r2, [r1, r2]
    3ef8:	801a      	strh	r2, [r3, #0]
    3efa:	693b      	ldr	r3, [r7, #16]
    3efc:	1c5a      	adds	r2, r3, #1
    3efe:	613a      	str	r2, [r7, #16]
    3f00:	2208      	movs	r2, #8
    3f02:	18ba      	adds	r2, r7, r2
    3f04:	8812      	ldrh	r2, [r2, #0]
    3f06:	0a12      	lsrs	r2, r2, #8
    3f08:	b292      	uxth	r2, r2
    3f0a:	b2d1      	uxtb	r1, r2
    3f0c:	4a0d      	ldr	r2, [pc, #52]	; (3f44 <pdu_read_holding_registers+0x134>)
    3f0e:	54d1      	strb	r1, [r2, r3]
    3f10:	693b      	ldr	r3, [r7, #16]
    3f12:	1c5a      	adds	r2, r3, #1
    3f14:	613a      	str	r2, [r7, #16]
    3f16:	2208      	movs	r2, #8
    3f18:	18ba      	adds	r2, r7, r2
    3f1a:	8812      	ldrh	r2, [r2, #0]
    3f1c:	b2d1      	uxtb	r1, r2
    3f1e:	4a09      	ldr	r2, [pc, #36]	; (3f44 <pdu_read_holding_registers+0x134>)
    3f20:	54d1      	strb	r1, [r2, r3]
    3f22:	697b      	ldr	r3, [r7, #20]
    3f24:	3301      	adds	r3, #1
    3f26:	617b      	str	r3, [r7, #20]
    3f28:	230a      	movs	r3, #10
    3f2a:	18fb      	adds	r3, r7, r3
    3f2c:	881a      	ldrh	r2, [r3, #0]
    3f2e:	697b      	ldr	r3, [r7, #20]
    3f30:	429a      	cmp	r2, r3
    3f32:	dcd7      	bgt.n	3ee4 <pdu_read_holding_registers+0xd4>
    3f34:	693b      	ldr	r3, [r7, #16]
    3f36:	0018      	movs	r0, r3
    3f38:	46bd      	mov	sp, r7
    3f3a:	b006      	add	sp, #24
    3f3c:	bd80      	pop	{r7, pc}
    3f3e:	46c0      	nop			; (mov r8, r8)
    3f40:	20005db8 	.word	0x20005db8
    3f44:	20005dbc 	.word	0x20005dbc
    3f48:	20005d7c 	.word	0x20005d7c

00003f4c <pdu_illegal_function_error>:
    3f4c:	b580      	push	{r7, lr}
    3f4e:	b084      	sub	sp, #16
    3f50:	af00      	add	r7, sp, #0
    3f52:	6078      	str	r0, [r7, #4]
    3f54:	4b10      	ldr	r3, [pc, #64]	; (3f98 <pdu_illegal_function_error+0x4c>)
    3f56:	681a      	ldr	r2, [r3, #0]
    3f58:	687b      	ldr	r3, [r7, #4]
    3f5a:	18d2      	adds	r2, r2, r3
    3f5c:	230f      	movs	r3, #15
    3f5e:	18fb      	adds	r3, r7, r3
    3f60:	7812      	ldrb	r2, [r2, #0]
    3f62:	701a      	strb	r2, [r3, #0]
    3f64:	687b      	ldr	r3, [r7, #4]
    3f66:	60bb      	str	r3, [r7, #8]
    3f68:	68bb      	ldr	r3, [r7, #8]
    3f6a:	1c5a      	adds	r2, r3, #1
    3f6c:	60ba      	str	r2, [r7, #8]
    3f6e:	220f      	movs	r2, #15
    3f70:	18ba      	adds	r2, r7, r2
    3f72:	7812      	ldrb	r2, [r2, #0]
    3f74:	2180      	movs	r1, #128	; 0x80
    3f76:	4249      	negs	r1, r1
    3f78:	430a      	orrs	r2, r1
    3f7a:	b2d1      	uxtb	r1, r2
    3f7c:	4a07      	ldr	r2, [pc, #28]	; (3f9c <pdu_illegal_function_error+0x50>)
    3f7e:	54d1      	strb	r1, [r2, r3]
    3f80:	68bb      	ldr	r3, [r7, #8]
    3f82:	1c5a      	adds	r2, r3, #1
    3f84:	60ba      	str	r2, [r7, #8]
    3f86:	4a05      	ldr	r2, [pc, #20]	; (3f9c <pdu_illegal_function_error+0x50>)
    3f88:	2101      	movs	r1, #1
    3f8a:	54d1      	strb	r1, [r2, r3]
    3f8c:	68bb      	ldr	r3, [r7, #8]
    3f8e:	0018      	movs	r0, r3
    3f90:	46bd      	mov	sp, r7
    3f92:	b004      	add	sp, #16
    3f94:	bd80      	pop	{r7, pc}
    3f96:	46c0      	nop			; (mov r8, r8)
    3f98:	20005db8 	.word	0x20005db8
    3f9c:	20005dbc 	.word	0x20005dbc

00003fa0 <mdb_proc_adu>:
    3fa0:	b580      	push	{r7, lr}
    3fa2:	b086      	sub	sp, #24
    3fa4:	af00      	add	r7, sp, #0
    3fa6:	6078      	str	r0, [r7, #4]
    3fa8:	4b39      	ldr	r3, [pc, #228]	; (4090 <mdb_proc_adu+0xf0>)
    3faa:	687a      	ldr	r2, [r7, #4]
    3fac:	601a      	str	r2, [r3, #0]
    3fae:	4b38      	ldr	r3, [pc, #224]	; (4090 <mdb_proc_adu+0xf0>)
    3fb0:	681b      	ldr	r3, [r3, #0]
    3fb2:	781b      	ldrb	r3, [r3, #0]
    3fb4:	021b      	lsls	r3, r3, #8
    3fb6:	b21a      	sxth	r2, r3
    3fb8:	4b35      	ldr	r3, [pc, #212]	; (4090 <mdb_proc_adu+0xf0>)
    3fba:	681b      	ldr	r3, [r3, #0]
    3fbc:	3301      	adds	r3, #1
    3fbe:	781b      	ldrb	r3, [r3, #0]
    3fc0:	b21b      	sxth	r3, r3
    3fc2:	4313      	orrs	r3, r2
    3fc4:	b21a      	sxth	r2, r3
    3fc6:	2312      	movs	r3, #18
    3fc8:	18fb      	adds	r3, r7, r3
    3fca:	801a      	strh	r2, [r3, #0]
    3fcc:	4b30      	ldr	r3, [pc, #192]	; (4090 <mdb_proc_adu+0xf0>)
    3fce:	681b      	ldr	r3, [r3, #0]
    3fd0:	3302      	adds	r3, #2
    3fd2:	781b      	ldrb	r3, [r3, #0]
    3fd4:	021b      	lsls	r3, r3, #8
    3fd6:	b21a      	sxth	r2, r3
    3fd8:	4b2d      	ldr	r3, [pc, #180]	; (4090 <mdb_proc_adu+0xf0>)
    3fda:	681b      	ldr	r3, [r3, #0]
    3fdc:	3303      	adds	r3, #3
    3fde:	781b      	ldrb	r3, [r3, #0]
    3fe0:	b21b      	sxth	r3, r3
    3fe2:	4313      	orrs	r3, r2
    3fe4:	b21a      	sxth	r2, r3
    3fe6:	2310      	movs	r3, #16
    3fe8:	18fb      	adds	r3, r7, r3
    3fea:	801a      	strh	r2, [r3, #0]
    3fec:	4b28      	ldr	r3, [pc, #160]	; (4090 <mdb_proc_adu+0xf0>)
    3fee:	681b      	ldr	r3, [r3, #0]
    3ff0:	3304      	adds	r3, #4
    3ff2:	781b      	ldrb	r3, [r3, #0]
    3ff4:	021b      	lsls	r3, r3, #8
    3ff6:	b21a      	sxth	r2, r3
    3ff8:	4b25      	ldr	r3, [pc, #148]	; (4090 <mdb_proc_adu+0xf0>)
    3ffa:	681b      	ldr	r3, [r3, #0]
    3ffc:	3305      	adds	r3, #5
    3ffe:	781b      	ldrb	r3, [r3, #0]
    4000:	b21b      	sxth	r3, r3
    4002:	4313      	orrs	r3, r2
    4004:	b21a      	sxth	r2, r3
    4006:	230e      	movs	r3, #14
    4008:	18fb      	adds	r3, r7, r3
    400a:	801a      	strh	r2, [r3, #0]
    400c:	4b20      	ldr	r3, [pc, #128]	; (4090 <mdb_proc_adu+0xf0>)
    400e:	681a      	ldr	r2, [r3, #0]
    4010:	230d      	movs	r3, #13
    4012:	18fb      	adds	r3, r7, r3
    4014:	7992      	ldrb	r2, [r2, #6]
    4016:	701a      	strb	r2, [r3, #0]
    4018:	4b1d      	ldr	r3, [pc, #116]	; (4090 <mdb_proc_adu+0xf0>)
    401a:	681a      	ldr	r2, [r3, #0]
    401c:	230c      	movs	r3, #12
    401e:	18fb      	adds	r3, r7, r3
    4020:	79d2      	ldrb	r2, [r2, #7]
    4022:	701a      	strb	r2, [r3, #0]
    4024:	230d      	movs	r3, #13
    4026:	18fb      	adds	r3, r7, r3
    4028:	781b      	ldrb	r3, [r3, #0]
    402a:	2b11      	cmp	r3, #17
    402c:	d12b      	bne.n	4086 <mdb_proc_adu+0xe6>
    402e:	230c      	movs	r3, #12
    4030:	18fb      	adds	r3, r7, r3
    4032:	781a      	ldrb	r2, [r3, #0]
    4034:	4b17      	ldr	r3, [pc, #92]	; (4094 <mdb_proc_adu+0xf4>)
    4036:	0092      	lsls	r2, r2, #2
    4038:	58d3      	ldr	r3, [r2, r3]
    403a:	2007      	movs	r0, #7
    403c:	4798      	blx	r3
    403e:	0003      	movs	r3, r0
    4040:	60bb      	str	r3, [r7, #8]
    4042:	2300      	movs	r3, #0
    4044:	617b      	str	r3, [r7, #20]
    4046:	e00c      	b.n	4062 <mdb_proc_adu+0xc2>
    4048:	4b11      	ldr	r3, [pc, #68]	; (4090 <mdb_proc_adu+0xf0>)
    404a:	681a      	ldr	r2, [r3, #0]
    404c:	697b      	ldr	r3, [r7, #20]
    404e:	18d3      	adds	r3, r2, r3
    4050:	7819      	ldrb	r1, [r3, #0]
    4052:	4a11      	ldr	r2, [pc, #68]	; (4098 <mdb_proc_adu+0xf8>)
    4054:	697b      	ldr	r3, [r7, #20]
    4056:	18d3      	adds	r3, r2, r3
    4058:	1c0a      	adds	r2, r1, #0
    405a:	701a      	strb	r2, [r3, #0]
    405c:	697b      	ldr	r3, [r7, #20]
    405e:	3301      	adds	r3, #1
    4060:	617b      	str	r3, [r7, #20]
    4062:	697b      	ldr	r3, [r7, #20]
    4064:	2b06      	cmp	r3, #6
    4066:	ddef      	ble.n	4048 <mdb_proc_adu+0xa8>
    4068:	4b0b      	ldr	r3, [pc, #44]	; (4098 <mdb_proc_adu+0xf8>)
    406a:	2200      	movs	r2, #0
    406c:	711a      	strb	r2, [r3, #4]
    406e:	68bb      	ldr	r3, [r7, #8]
    4070:	b2db      	uxtb	r3, r3
    4072:	3b06      	subs	r3, #6
    4074:	b2da      	uxtb	r2, r3
    4076:	4b08      	ldr	r3, [pc, #32]	; (4098 <mdb_proc_adu+0xf8>)
    4078:	715a      	strb	r2, [r3, #5]
    407a:	68ba      	ldr	r2, [r7, #8]
    407c:	4b06      	ldr	r3, [pc, #24]	; (4098 <mdb_proc_adu+0xf8>)
    407e:	0011      	movs	r1, r2
    4080:	0018      	movs	r0, r3
    4082:	f7fe fdcd 	bl	2c20 <Send_UDP>
    4086:	46c0      	nop			; (mov r8, r8)
    4088:	46bd      	mov	sp, r7
    408a:	b006      	add	sp, #24
    408c:	bd80      	pop	{r7, pc}
    408e:	46c0      	nop			; (mov r8, r8)
    4090:	20005db8 	.word	0x20005db8
    4094:	00009074 	.word	0x00009074
    4098:	20005dbc 	.word	0x20005dbc

0000409c <fsm_get_mode>:
    409c:	b580      	push	{r7, lr}
    409e:	af00      	add	r7, sp, #0
    40a0:	4b02      	ldr	r3, [pc, #8]	; (40ac <fsm_get_mode+0x10>)
    40a2:	781b      	ldrb	r3, [r3, #0]
    40a4:	0018      	movs	r0, r3
    40a6:	46bd      	mov	sp, r7
    40a8:	bd80      	pop	{r7, pc}
    40aa:	46c0      	nop			; (mov r8, r8)
    40ac:	2000603c 	.word	0x2000603c

000040b0 <fsm_get_cyccnt>:
    40b0:	b580      	push	{r7, lr}
    40b2:	af00      	add	r7, sp, #0
    40b4:	4b02      	ldr	r3, [pc, #8]	; (40c0 <fsm_get_cyccnt+0x10>)
    40b6:	681b      	ldr	r3, [r3, #0]
    40b8:	0018      	movs	r0, r3
    40ba:	46bd      	mov	sp, r7
    40bc:	bd80      	pop	{r7, pc}
    40be:	46c0      	nop			; (mov r8, r8)
    40c0:	20006008 	.word	0x20006008

000040c4 <fsm_idle>:
    40c4:	b580      	push	{r7, lr}
    40c6:	b084      	sub	sp, #16
    40c8:	af00      	add	r7, sp, #0
    40ca:	6078      	str	r0, [r7, #4]
    40cc:	230b      	movs	r3, #11
    40ce:	18fb      	adds	r3, r7, r3
    40d0:	687a      	ldr	r2, [r7, #4]
    40d2:	701a      	strb	r2, [r3, #0]
    40d4:	230b      	movs	r3, #11
    40d6:	18fb      	adds	r3, r7, r3
    40d8:	781b      	ldrb	r3, [r3, #0]
    40da:	2b01      	cmp	r3, #1
    40dc:	d000      	beq.n	40e0 <fsm_idle+0x1c>
    40de:	e098      	b.n	4212 <fsm_idle+0x14e>
    40e0:	4b4e      	ldr	r3, [pc, #312]	; (421c <fsm_idle+0x158>)
    40e2:	0018      	movs	r0, r3
    40e4:	f7ff fa68 	bl	35b8 <mdb_get_testparam>
    40e8:	4b4c      	ldr	r3, [pc, #304]	; (421c <fsm_idle+0x158>)
    40ea:	681a      	ldr	r2, [r3, #0]
    40ec:	4b4c      	ldr	r3, [pc, #304]	; (4220 <fsm_idle+0x15c>)
    40ee:	601a      	str	r2, [r3, #0]
    40f0:	4b4b      	ldr	r3, [pc, #300]	; (4220 <fsm_idle+0x15c>)
    40f2:	681b      	ldr	r3, [r3, #0]
    40f4:	2b00      	cmp	r3, #0
    40f6:	d100      	bne.n	40fa <fsm_idle+0x36>
    40f8:	e08b      	b.n	4212 <fsm_idle+0x14e>
    40fa:	4b4a      	ldr	r3, [pc, #296]	; (4224 <fsm_idle+0x160>)
    40fc:	4a4a      	ldr	r2, [pc, #296]	; (4228 <fsm_idle+0x164>)
    40fe:	601a      	str	r2, [r3, #0]
    4100:	4b4a      	ldr	r3, [pc, #296]	; (422c <fsm_idle+0x168>)
    4102:	2201      	movs	r2, #1
    4104:	701a      	strb	r2, [r3, #0]
    4106:	4b4a      	ldr	r3, [pc, #296]	; (4230 <fsm_idle+0x16c>)
    4108:	2200      	movs	r2, #0
    410a:	601a      	str	r2, [r3, #0]
    410c:	4b49      	ldr	r3, [pc, #292]	; (4234 <fsm_idle+0x170>)
    410e:	2200      	movs	r2, #0
    4110:	601a      	str	r2, [r3, #0]
    4112:	2300      	movs	r3, #0
    4114:	60fb      	str	r3, [r7, #12]
    4116:	e032      	b.n	417e <fsm_idle+0xba>
    4118:	4b40      	ldr	r3, [pc, #256]	; (421c <fsm_idle+0x158>)
    411a:	689b      	ldr	r3, [r3, #8]
    411c:	4a3f      	ldr	r2, [pc, #252]	; (421c <fsm_idle+0x158>)
    411e:	68f9      	ldr	r1, [r7, #12]
    4120:	3108      	adds	r1, #8
    4122:	0049      	lsls	r1, r1, #1
    4124:	5a8a      	ldrh	r2, [r1, r2]
    4126:	435a      	muls	r2, r3
    4128:	0013      	movs	r3, r2
    412a:	009b      	lsls	r3, r3, #2
    412c:	189b      	adds	r3, r3, r2
    412e:	00db      	lsls	r3, r3, #3
    4130:	189b      	adds	r3, r3, r2
    4132:	2280      	movs	r2, #128	; 0x80
    4134:	0112      	lsls	r2, r2, #4
    4136:	4694      	mov	ip, r2
    4138:	4463      	add	r3, ip
    413a:	0b1b      	lsrs	r3, r3, #12
    413c:	0019      	movs	r1, r3
    413e:	4b3e      	ldr	r3, [pc, #248]	; (4238 <fsm_idle+0x174>)
    4140:	68fa      	ldr	r2, [r7, #12]
    4142:	0092      	lsls	r2, r2, #2
    4144:	50d1      	str	r1, [r2, r3]
    4146:	4b35      	ldr	r3, [pc, #212]	; (421c <fsm_idle+0x158>)
    4148:	68db      	ldr	r3, [r3, #12]
    414a:	4934      	ldr	r1, [pc, #208]	; (421c <fsm_idle+0x158>)
    414c:	68fa      	ldr	r2, [r7, #12]
    414e:	320c      	adds	r2, #12
    4150:	0052      	lsls	r2, r2, #1
    4152:	188a      	adds	r2, r1, r2
    4154:	3202      	adds	r2, #2
    4156:	8812      	ldrh	r2, [r2, #0]
    4158:	435a      	muls	r2, r3
    415a:	0013      	movs	r3, r2
    415c:	009b      	lsls	r3, r3, #2
    415e:	189b      	adds	r3, r3, r2
    4160:	00db      	lsls	r3, r3, #3
    4162:	189b      	adds	r3, r3, r2
    4164:	2280      	movs	r2, #128	; 0x80
    4166:	0112      	lsls	r2, r2, #4
    4168:	4694      	mov	ip, r2
    416a:	4463      	add	r3, ip
    416c:	0b1b      	lsrs	r3, r3, #12
    416e:	0019      	movs	r1, r3
    4170:	4b32      	ldr	r3, [pc, #200]	; (423c <fsm_idle+0x178>)
    4172:	68fa      	ldr	r2, [r7, #12]
    4174:	0092      	lsls	r2, r2, #2
    4176:	50d1      	str	r1, [r2, r3]
    4178:	68fb      	ldr	r3, [r7, #12]
    417a:	3301      	adds	r3, #1
    417c:	60fb      	str	r3, [r7, #12]
    417e:	68fb      	ldr	r3, [r7, #12]
    4180:	2b04      	cmp	r3, #4
    4182:	ddc9      	ble.n	4118 <fsm_idle+0x54>
    4184:	2300      	movs	r3, #0
    4186:	60fb      	str	r3, [r7, #12]
    4188:	e020      	b.n	41cc <fsm_idle+0x108>
    418a:	68fb      	ldr	r3, [r7, #12]
    418c:	1c5a      	adds	r2, r3, #1
    418e:	4b2b      	ldr	r3, [pc, #172]	; (423c <fsm_idle+0x178>)
    4190:	0092      	lsls	r2, r2, #2
    4192:	58d2      	ldr	r2, [r2, r3]
    4194:	4b29      	ldr	r3, [pc, #164]	; (423c <fsm_idle+0x178>)
    4196:	68f9      	ldr	r1, [r7, #12]
    4198:	0089      	lsls	r1, r1, #2
    419a:	58cb      	ldr	r3, [r1, r3]
    419c:	1ad3      	subs	r3, r2, r3
    419e:	0098      	lsls	r0, r3, #2
    41a0:	68fb      	ldr	r3, [r7, #12]
    41a2:	1c5a      	adds	r2, r3, #1
    41a4:	4b24      	ldr	r3, [pc, #144]	; (4238 <fsm_idle+0x174>)
    41a6:	0092      	lsls	r2, r2, #2
    41a8:	58d2      	ldr	r2, [r2, r3]
    41aa:	4b23      	ldr	r3, [pc, #140]	; (4238 <fsm_idle+0x174>)
    41ac:	68f9      	ldr	r1, [r7, #12]
    41ae:	0089      	lsls	r1, r1, #2
    41b0:	58cb      	ldr	r3, [r1, r3]
    41b2:	1ad3      	subs	r3, r2, r3
    41b4:	0019      	movs	r1, r3
    41b6:	f000 fb63 	bl	4880 <__aeabi_idiv>
    41ba:	0003      	movs	r3, r0
    41bc:	0019      	movs	r1, r3
    41be:	4b20      	ldr	r3, [pc, #128]	; (4240 <fsm_idle+0x17c>)
    41c0:	68fa      	ldr	r2, [r7, #12]
    41c2:	0092      	lsls	r2, r2, #2
    41c4:	50d1      	str	r1, [r2, r3]
    41c6:	68fb      	ldr	r3, [r7, #12]
    41c8:	3301      	adds	r3, #1
    41ca:	60fb      	str	r3, [r7, #12]
    41cc:	68fb      	ldr	r3, [r7, #12]
    41ce:	2b03      	cmp	r3, #3
    41d0:	dddb      	ble.n	418a <fsm_idle+0xc6>
    41d2:	4b19      	ldr	r3, [pc, #100]	; (4238 <fsm_idle+0x174>)
    41d4:	681a      	ldr	r2, [r3, #0]
    41d6:	4b1b      	ldr	r3, [pc, #108]	; (4244 <fsm_idle+0x180>)
    41d8:	601a      	str	r2, [r3, #0]
    41da:	4b17      	ldr	r3, [pc, #92]	; (4238 <fsm_idle+0x174>)
    41dc:	685a      	ldr	r2, [r3, #4]
    41de:	4b1a      	ldr	r3, [pc, #104]	; (4248 <fsm_idle+0x184>)
    41e0:	601a      	str	r2, [r3, #0]
    41e2:	4b16      	ldr	r3, [pc, #88]	; (423c <fsm_idle+0x178>)
    41e4:	681a      	ldr	r2, [r3, #0]
    41e6:	4b19      	ldr	r3, [pc, #100]	; (424c <fsm_idle+0x188>)
    41e8:	601a      	str	r2, [r3, #0]
    41ea:	4b14      	ldr	r3, [pc, #80]	; (423c <fsm_idle+0x178>)
    41ec:	685a      	ldr	r2, [r3, #4]
    41ee:	4b18      	ldr	r3, [pc, #96]	; (4250 <fsm_idle+0x18c>)
    41f0:	601a      	str	r2, [r3, #0]
    41f2:	4b13      	ldr	r3, [pc, #76]	; (4240 <fsm_idle+0x17c>)
    41f4:	681a      	ldr	r2, [r3, #0]
    41f6:	4b17      	ldr	r3, [pc, #92]	; (4254 <fsm_idle+0x190>)
    41f8:	601a      	str	r2, [r3, #0]
    41fa:	f7fb ffa9 	bl	150 <dut_reset_on>
    41fe:	4b07      	ldr	r3, [pc, #28]	; (421c <fsm_idle+0x158>)
    4200:	685b      	ldr	r3, [r3, #4]
    4202:	0018      	movs	r0, r3
    4204:	f7fb ffb0 	bl	168 <dut_set_speed>
    4208:	4b10      	ldr	r3, [pc, #64]	; (424c <fsm_idle+0x188>)
    420a:	681b      	ldr	r3, [r3, #0]
    420c:	0018      	movs	r0, r3
    420e:	f7fb ffb9 	bl	184 <dut_set_torque>
    4212:	46c0      	nop			; (mov r8, r8)
    4214:	46bd      	mov	sp, r7
    4216:	b004      	add	sp, #16
    4218:	bd80      	pop	{r7, pc}
    421a:	46c0      	nop			; (mov r8, r8)
    421c:	20006014 	.word	0x20006014
    4220:	20006008 	.word	0x20006008
    4224:	20000014 	.word	0x20000014
    4228:	00004259 	.word	0x00004259
    422c:	2000603c 	.word	0x2000603c
    4230:	2000600c 	.word	0x2000600c
    4234:	20006010 	.word	0x20006010
    4238:	20005fcc 	.word	0x20005fcc
    423c:	20005fe0 	.word	0x20005fe0
    4240:	20005ff4 	.word	0x20005ff4
    4244:	20005fbc 	.word	0x20005fbc
    4248:	20005fc0 	.word	0x20005fc0
    424c:	20005fc4 	.word	0x20005fc4
    4250:	20005fc8 	.word	0x20005fc8
    4254:	20005fb8 	.word	0x20005fb8

00004258 <fsm_work>:
    4258:	b580      	push	{r7, lr}
    425a:	b088      	sub	sp, #32
    425c:	af00      	add	r7, sp, #0
    425e:	6078      	str	r0, [r7, #4]
    4260:	231f      	movs	r3, #31
    4262:	18fb      	adds	r3, r7, r3
    4264:	687a      	ldr	r2, [r7, #4]
    4266:	701a      	strb	r2, [r3, #0]
    4268:	687b      	ldr	r3, [r7, #4]
    426a:	0a1b      	lsrs	r3, r3, #8
    426c:	61bb      	str	r3, [r7, #24]
    426e:	231f      	movs	r3, #31
    4270:	18fb      	adds	r3, r7, r3
    4272:	781b      	ldrb	r3, [r3, #0]
    4274:	2b04      	cmp	r3, #4
    4276:	d000      	beq.n	427a <fsm_work+0x22>
    4278:	e0a3      	b.n	43c2 <fsm_work+0x16a>
    427a:	69bb      	ldr	r3, [r7, #24]
    427c:	617b      	str	r3, [r7, #20]
    427e:	2300      	movs	r3, #0
    4280:	613b      	str	r3, [r7, #16]
    4282:	f7fb ff59 	bl	138 <dut_reset_off>
    4286:	4b63      	ldr	r3, [pc, #396]	; (4414 <fsm_work+0x1bc>)
    4288:	681b      	ldr	r3, [r3, #0]
    428a:	001a      	movs	r2, r3
    428c:	697b      	ldr	r3, [r7, #20]
    428e:	4293      	cmp	r3, r2
    4290:	d200      	bcs.n	4294 <fsm_work+0x3c>
    4292:	e078      	b.n	4386 <fsm_work+0x12e>
    4294:	4b60      	ldr	r3, [pc, #384]	; (4418 <fsm_work+0x1c0>)
    4296:	681b      	ldr	r3, [r3, #0]
    4298:	1c5a      	adds	r2, r3, #1
    429a:	4b5f      	ldr	r3, [pc, #380]	; (4418 <fsm_work+0x1c0>)
    429c:	601a      	str	r2, [r3, #0]
    429e:	4b5e      	ldr	r3, [pc, #376]	; (4418 <fsm_work+0x1c0>)
    42a0:	681b      	ldr	r3, [r3, #0]
    42a2:	2b03      	cmp	r3, #3
    42a4:	d825      	bhi.n	42f2 <fsm_work+0x9a>
    42a6:	4b5c      	ldr	r3, [pc, #368]	; (4418 <fsm_work+0x1c0>)
    42a8:	681a      	ldr	r2, [r3, #0]
    42aa:	4b5c      	ldr	r3, [pc, #368]	; (441c <fsm_work+0x1c4>)
    42ac:	0092      	lsls	r2, r2, #2
    42ae:	58d2      	ldr	r2, [r2, r3]
    42b0:	4b5b      	ldr	r3, [pc, #364]	; (4420 <fsm_work+0x1c8>)
    42b2:	601a      	str	r2, [r3, #0]
    42b4:	4b58      	ldr	r3, [pc, #352]	; (4418 <fsm_work+0x1c0>)
    42b6:	681b      	ldr	r3, [r3, #0]
    42b8:	1c5a      	adds	r2, r3, #1
    42ba:	4b58      	ldr	r3, [pc, #352]	; (441c <fsm_work+0x1c4>)
    42bc:	0092      	lsls	r2, r2, #2
    42be:	58d2      	ldr	r2, [r2, r3]
    42c0:	4b54      	ldr	r3, [pc, #336]	; (4414 <fsm_work+0x1bc>)
    42c2:	601a      	str	r2, [r3, #0]
    42c4:	4b54      	ldr	r3, [pc, #336]	; (4418 <fsm_work+0x1c0>)
    42c6:	681a      	ldr	r2, [r3, #0]
    42c8:	4b56      	ldr	r3, [pc, #344]	; (4424 <fsm_work+0x1cc>)
    42ca:	0092      	lsls	r2, r2, #2
    42cc:	58d2      	ldr	r2, [r2, r3]
    42ce:	4b56      	ldr	r3, [pc, #344]	; (4428 <fsm_work+0x1d0>)
    42d0:	601a      	str	r2, [r3, #0]
    42d2:	4b51      	ldr	r3, [pc, #324]	; (4418 <fsm_work+0x1c0>)
    42d4:	681b      	ldr	r3, [r3, #0]
    42d6:	1c5a      	adds	r2, r3, #1
    42d8:	4b52      	ldr	r3, [pc, #328]	; (4424 <fsm_work+0x1cc>)
    42da:	0092      	lsls	r2, r2, #2
    42dc:	58d2      	ldr	r2, [r2, r3]
    42de:	4b53      	ldr	r3, [pc, #332]	; (442c <fsm_work+0x1d4>)
    42e0:	601a      	str	r2, [r3, #0]
    42e2:	4b4d      	ldr	r3, [pc, #308]	; (4418 <fsm_work+0x1c0>)
    42e4:	681a      	ldr	r2, [r3, #0]
    42e6:	4b52      	ldr	r3, [pc, #328]	; (4430 <fsm_work+0x1d8>)
    42e8:	0092      	lsls	r2, r2, #2
    42ea:	58d2      	ldr	r2, [r2, r3]
    42ec:	4b51      	ldr	r3, [pc, #324]	; (4434 <fsm_work+0x1dc>)
    42ee:	601a      	str	r2, [r3, #0]
    42f0:	e049      	b.n	4386 <fsm_work+0x12e>
    42f2:	4b49      	ldr	r3, [pc, #292]	; (4418 <fsm_work+0x1c0>)
    42f4:	2200      	movs	r2, #0
    42f6:	601a      	str	r2, [r3, #0]
    42f8:	f7fb ff2a 	bl	150 <dut_reset_on>
    42fc:	4b4e      	ldr	r3, [pc, #312]	; (4438 <fsm_work+0x1e0>)
    42fe:	681b      	ldr	r3, [r3, #0]
    4300:	1c59      	adds	r1, r3, #1
    4302:	4a4d      	ldr	r2, [pc, #308]	; (4438 <fsm_work+0x1e0>)
    4304:	6011      	str	r1, [r2, #0]
    4306:	2b00      	cmp	r3, #0
    4308:	d018      	beq.n	433c <fsm_work+0xe4>
    430a:	4b4b      	ldr	r3, [pc, #300]	; (4438 <fsm_work+0x1e0>)
    430c:	2200      	movs	r2, #0
    430e:	601a      	str	r2, [r3, #0]
    4310:	4b4a      	ldr	r3, [pc, #296]	; (443c <fsm_work+0x1e4>)
    4312:	681b      	ldr	r3, [r3, #0]
    4314:	1e5a      	subs	r2, r3, #1
    4316:	4b49      	ldr	r3, [pc, #292]	; (443c <fsm_work+0x1e4>)
    4318:	601a      	str	r2, [r3, #0]
    431a:	4b48      	ldr	r3, [pc, #288]	; (443c <fsm_work+0x1e4>)
    431c:	681b      	ldr	r3, [r3, #0]
    431e:	2b00      	cmp	r3, #0
    4320:	d10c      	bne.n	433c <fsm_work+0xe4>
    4322:	4b47      	ldr	r3, [pc, #284]	; (4440 <fsm_work+0x1e8>)
    4324:	4a47      	ldr	r2, [pc, #284]	; (4444 <fsm_work+0x1ec>)
    4326:	601a      	str	r2, [r3, #0]
    4328:	4b47      	ldr	r3, [pc, #284]	; (4448 <fsm_work+0x1f0>)
    432a:	2204      	movs	r2, #4
    432c:	701a      	strb	r2, [r3, #0]
    432e:	2000      	movs	r0, #0
    4330:	f7fb ff1a 	bl	168 <dut_set_speed>
    4334:	2000      	movs	r0, #0
    4336:	f7fb ff25 	bl	184 <dut_set_torque>
    433a:	e067      	b.n	440c <fsm_work+0x1b4>
    433c:	4b3e      	ldr	r3, [pc, #248]	; (4438 <fsm_work+0x1e0>)
    433e:	681b      	ldr	r3, [r3, #0]
    4340:	2b00      	cmp	r3, #0
    4342:	d006      	beq.n	4352 <fsm_work+0xfa>
    4344:	4b41      	ldr	r3, [pc, #260]	; (444c <fsm_work+0x1f4>)
    4346:	685b      	ldr	r3, [r3, #4]
    4348:	425b      	negs	r3, r3
    434a:	0018      	movs	r0, r3
    434c:	f7fb ff0c 	bl	168 <dut_set_speed>
    4350:	e004      	b.n	435c <fsm_work+0x104>
    4352:	4b3e      	ldr	r3, [pc, #248]	; (444c <fsm_work+0x1f4>)
    4354:	685b      	ldr	r3, [r3, #4]
    4356:	0018      	movs	r0, r3
    4358:	f7fb ff06 	bl	168 <dut_set_speed>
    435c:	4b2f      	ldr	r3, [pc, #188]	; (441c <fsm_work+0x1c4>)
    435e:	681a      	ldr	r2, [r3, #0]
    4360:	4b2f      	ldr	r3, [pc, #188]	; (4420 <fsm_work+0x1c8>)
    4362:	601a      	str	r2, [r3, #0]
    4364:	4b2d      	ldr	r3, [pc, #180]	; (441c <fsm_work+0x1c4>)
    4366:	685a      	ldr	r2, [r3, #4]
    4368:	4b2a      	ldr	r3, [pc, #168]	; (4414 <fsm_work+0x1bc>)
    436a:	601a      	str	r2, [r3, #0]
    436c:	4b2d      	ldr	r3, [pc, #180]	; (4424 <fsm_work+0x1cc>)
    436e:	681a      	ldr	r2, [r3, #0]
    4370:	4b2d      	ldr	r3, [pc, #180]	; (4428 <fsm_work+0x1d0>)
    4372:	601a      	str	r2, [r3, #0]
    4374:	4b2b      	ldr	r3, [pc, #172]	; (4424 <fsm_work+0x1cc>)
    4376:	685a      	ldr	r2, [r3, #4]
    4378:	4b2c      	ldr	r3, [pc, #176]	; (442c <fsm_work+0x1d4>)
    437a:	601a      	str	r2, [r3, #0]
    437c:	4b2c      	ldr	r3, [pc, #176]	; (4430 <fsm_work+0x1d8>)
    437e:	681a      	ldr	r2, [r3, #0]
    4380:	4b2c      	ldr	r3, [pc, #176]	; (4434 <fsm_work+0x1dc>)
    4382:	601a      	str	r2, [r3, #0]
    4384:	e042      	b.n	440c <fsm_work+0x1b4>
    4386:	4b28      	ldr	r3, [pc, #160]	; (4428 <fsm_work+0x1d0>)
    4388:	681b      	ldr	r3, [r3, #0]
    438a:	009b      	lsls	r3, r3, #2
    438c:	0019      	movs	r1, r3
    438e:	4b24      	ldr	r3, [pc, #144]	; (4420 <fsm_work+0x1c8>)
    4390:	681b      	ldr	r3, [r3, #0]
    4392:	001a      	movs	r2, r3
    4394:	697b      	ldr	r3, [r7, #20]
    4396:	1a9a      	subs	r2, r3, r2
    4398:	4b26      	ldr	r3, [pc, #152]	; (4434 <fsm_work+0x1dc>)
    439a:	681b      	ldr	r3, [r3, #0]
    439c:	4353      	muls	r3, r2
    439e:	18cb      	adds	r3, r1, r3
    43a0:	60fb      	str	r3, [r7, #12]
    43a2:	4b25      	ldr	r3, [pc, #148]	; (4438 <fsm_work+0x1e0>)
    43a4:	681b      	ldr	r3, [r3, #0]
    43a6:	2b00      	cmp	r3, #0
    43a8:	d006      	beq.n	43b8 <fsm_work+0x160>
    43aa:	68fb      	ldr	r3, [r7, #12]
    43ac:	109b      	asrs	r3, r3, #2
    43ae:	425b      	negs	r3, r3
    43b0:	0018      	movs	r0, r3
    43b2:	f7fb fee7 	bl	184 <dut_set_torque>
    43b6:	e004      	b.n	43c2 <fsm_work+0x16a>
    43b8:	68fb      	ldr	r3, [r7, #12]
    43ba:	109b      	asrs	r3, r3, #2
    43bc:	0018      	movs	r0, r3
    43be:	f7fb fee1 	bl	184 <dut_set_torque>
    43c2:	231f      	movs	r3, #31
    43c4:	18fb      	adds	r3, r7, r3
    43c6:	781b      	ldrb	r3, [r3, #0]
    43c8:	2b03      	cmp	r3, #3
    43ca:	d114      	bne.n	43f6 <fsm_work+0x19e>
    43cc:	4b1c      	ldr	r3, [pc, #112]	; (4440 <fsm_work+0x1e8>)
    43ce:	4a1d      	ldr	r2, [pc, #116]	; (4444 <fsm_work+0x1ec>)
    43d0:	601a      	str	r2, [r3, #0]
    43d2:	4b1d      	ldr	r3, [pc, #116]	; (4448 <fsm_work+0x1f0>)
    43d4:	2204      	movs	r2, #4
    43d6:	701a      	strb	r2, [r3, #0]
    43d8:	2000      	movs	r0, #0
    43da:	f7fb fec5 	bl	168 <dut_set_speed>
    43de:	2000      	movs	r0, #0
    43e0:	f7fb fed0 	bl	184 <dut_set_torque>
    43e4:	f7fb feb4 	bl	150 <dut_reset_on>
    43e8:	4b14      	ldr	r3, [pc, #80]	; (443c <fsm_work+0x1e4>)
    43ea:	2200      	movs	r2, #0
    43ec:	601a      	str	r2, [r3, #0]
    43ee:	4b0a      	ldr	r3, [pc, #40]	; (4418 <fsm_work+0x1c0>)
    43f0:	2200      	movs	r2, #0
    43f2:	601a      	str	r2, [r3, #0]
    43f4:	e00a      	b.n	440c <fsm_work+0x1b4>
    43f6:	231f      	movs	r3, #31
    43f8:	18fb      	adds	r3, r7, r3
    43fa:	781b      	ldrb	r3, [r3, #0]
    43fc:	2b02      	cmp	r3, #2
    43fe:	d105      	bne.n	440c <fsm_work+0x1b4>
    4400:	4b0f      	ldr	r3, [pc, #60]	; (4440 <fsm_work+0x1e8>)
    4402:	4a13      	ldr	r2, [pc, #76]	; (4450 <fsm_work+0x1f8>)
    4404:	601a      	str	r2, [r3, #0]
    4406:	4b10      	ldr	r3, [pc, #64]	; (4448 <fsm_work+0x1f0>)
    4408:	2202      	movs	r2, #2
    440a:	701a      	strb	r2, [r3, #0]
    440c:	46bd      	mov	sp, r7
    440e:	b008      	add	sp, #32
    4410:	bd80      	pop	{r7, pc}
    4412:	46c0      	nop			; (mov r8, r8)
    4414:	20005fc0 	.word	0x20005fc0
    4418:	2000600c 	.word	0x2000600c
    441c:	20005fcc 	.word	0x20005fcc
    4420:	20005fbc 	.word	0x20005fbc
    4424:	20005fe0 	.word	0x20005fe0
    4428:	20005fc4 	.word	0x20005fc4
    442c:	20005fc8 	.word	0x20005fc8
    4430:	20005ff4 	.word	0x20005ff4
    4434:	20005fb8 	.word	0x20005fb8
    4438:	20006010 	.word	0x20006010
    443c:	20006008 	.word	0x20006008
    4440:	20000014 	.word	0x20000014
    4444:	00004455 	.word	0x00004455
    4448:	2000603c 	.word	0x2000603c
    444c:	20006014 	.word	0x20006014
    4450:	00004495 	.word	0x00004495

00004454 <fsm_clean>:
    4454:	b580      	push	{r7, lr}
    4456:	b084      	sub	sp, #16
    4458:	af00      	add	r7, sp, #0
    445a:	6078      	str	r0, [r7, #4]
    445c:	230f      	movs	r3, #15
    445e:	18fb      	adds	r3, r7, r3
    4460:	687a      	ldr	r2, [r7, #4]
    4462:	701a      	strb	r2, [r3, #0]
    4464:	230f      	movs	r3, #15
    4466:	18fb      	adds	r3, r7, r3
    4468:	781b      	ldrb	r3, [r3, #0]
    446a:	2b04      	cmp	r3, #4
    446c:	d107      	bne.n	447e <fsm_clean+0x2a>
    446e:	4b06      	ldr	r3, [pc, #24]	; (4488 <fsm_clean+0x34>)
    4470:	4a06      	ldr	r2, [pc, #24]	; (448c <fsm_clean+0x38>)
    4472:	601a      	str	r2, [r3, #0]
    4474:	4b06      	ldr	r3, [pc, #24]	; (4490 <fsm_clean+0x3c>)
    4476:	2200      	movs	r2, #0
    4478:	701a      	strb	r2, [r3, #0]
    447a:	f7fb fe5d 	bl	138 <dut_reset_off>
    447e:	46c0      	nop			; (mov r8, r8)
    4480:	46bd      	mov	sp, r7
    4482:	b004      	add	sp, #16
    4484:	bd80      	pop	{r7, pc}
    4486:	46c0      	nop			; (mov r8, r8)
    4488:	20000014 	.word	0x20000014
    448c:	000040c5 	.word	0x000040c5
    4490:	2000603c 	.word	0x2000603c

00004494 <fsm_complete>:
    4494:	b580      	push	{r7, lr}
    4496:	b088      	sub	sp, #32
    4498:	af00      	add	r7, sp, #0
    449a:	6078      	str	r0, [r7, #4]
    449c:	231f      	movs	r3, #31
    449e:	18fb      	adds	r3, r7, r3
    44a0:	687a      	ldr	r2, [r7, #4]
    44a2:	701a      	strb	r2, [r3, #0]
    44a4:	687b      	ldr	r3, [r7, #4]
    44a6:	0a1b      	lsrs	r3, r3, #8
    44a8:	61bb      	str	r3, [r7, #24]
    44aa:	231f      	movs	r3, #31
    44ac:	18fb      	adds	r3, r7, r3
    44ae:	781b      	ldrb	r3, [r3, #0]
    44b0:	2b04      	cmp	r3, #4
    44b2:	d000      	beq.n	44b6 <fsm_complete+0x22>
    44b4:	e0aa      	b.n	460c <fsm_complete+0x178>
    44b6:	69bb      	ldr	r3, [r7, #24]
    44b8:	617b      	str	r3, [r7, #20]
    44ba:	2300      	movs	r3, #0
    44bc:	613b      	str	r3, [r7, #16]
    44be:	f7fb fe3b 	bl	138 <dut_reset_off>
    44c2:	4b60      	ldr	r3, [pc, #384]	; (4644 <fsm_complete+0x1b0>)
    44c4:	681b      	ldr	r3, [r3, #0]
    44c6:	001a      	movs	r2, r3
    44c8:	697b      	ldr	r3, [r7, #20]
    44ca:	4293      	cmp	r3, r2
    44cc:	d200      	bcs.n	44d0 <fsm_complete+0x3c>
    44ce:	e07f      	b.n	45d0 <fsm_complete+0x13c>
    44d0:	4b5d      	ldr	r3, [pc, #372]	; (4648 <fsm_complete+0x1b4>)
    44d2:	681b      	ldr	r3, [r3, #0]
    44d4:	1c5a      	adds	r2, r3, #1
    44d6:	4b5c      	ldr	r3, [pc, #368]	; (4648 <fsm_complete+0x1b4>)
    44d8:	601a      	str	r2, [r3, #0]
    44da:	4b5b      	ldr	r3, [pc, #364]	; (4648 <fsm_complete+0x1b4>)
    44dc:	681b      	ldr	r3, [r3, #0]
    44de:	2b03      	cmp	r3, #3
    44e0:	d825      	bhi.n	452e <fsm_complete+0x9a>
    44e2:	4b59      	ldr	r3, [pc, #356]	; (4648 <fsm_complete+0x1b4>)
    44e4:	681a      	ldr	r2, [r3, #0]
    44e6:	4b59      	ldr	r3, [pc, #356]	; (464c <fsm_complete+0x1b8>)
    44e8:	0092      	lsls	r2, r2, #2
    44ea:	58d2      	ldr	r2, [r2, r3]
    44ec:	4b58      	ldr	r3, [pc, #352]	; (4650 <fsm_complete+0x1bc>)
    44ee:	601a      	str	r2, [r3, #0]
    44f0:	4b55      	ldr	r3, [pc, #340]	; (4648 <fsm_complete+0x1b4>)
    44f2:	681b      	ldr	r3, [r3, #0]
    44f4:	1c5a      	adds	r2, r3, #1
    44f6:	4b55      	ldr	r3, [pc, #340]	; (464c <fsm_complete+0x1b8>)
    44f8:	0092      	lsls	r2, r2, #2
    44fa:	58d2      	ldr	r2, [r2, r3]
    44fc:	4b51      	ldr	r3, [pc, #324]	; (4644 <fsm_complete+0x1b0>)
    44fe:	601a      	str	r2, [r3, #0]
    4500:	4b51      	ldr	r3, [pc, #324]	; (4648 <fsm_complete+0x1b4>)
    4502:	681a      	ldr	r2, [r3, #0]
    4504:	4b53      	ldr	r3, [pc, #332]	; (4654 <fsm_complete+0x1c0>)
    4506:	0092      	lsls	r2, r2, #2
    4508:	58d2      	ldr	r2, [r2, r3]
    450a:	4b53      	ldr	r3, [pc, #332]	; (4658 <fsm_complete+0x1c4>)
    450c:	601a      	str	r2, [r3, #0]
    450e:	4b4e      	ldr	r3, [pc, #312]	; (4648 <fsm_complete+0x1b4>)
    4510:	681b      	ldr	r3, [r3, #0]
    4512:	1c5a      	adds	r2, r3, #1
    4514:	4b4f      	ldr	r3, [pc, #316]	; (4654 <fsm_complete+0x1c0>)
    4516:	0092      	lsls	r2, r2, #2
    4518:	58d2      	ldr	r2, [r2, r3]
    451a:	4b50      	ldr	r3, [pc, #320]	; (465c <fsm_complete+0x1c8>)
    451c:	601a      	str	r2, [r3, #0]
    451e:	4b4a      	ldr	r3, [pc, #296]	; (4648 <fsm_complete+0x1b4>)
    4520:	681a      	ldr	r2, [r3, #0]
    4522:	4b4f      	ldr	r3, [pc, #316]	; (4660 <fsm_complete+0x1cc>)
    4524:	0092      	lsls	r2, r2, #2
    4526:	58d2      	ldr	r2, [r2, r3]
    4528:	4b4e      	ldr	r3, [pc, #312]	; (4664 <fsm_complete+0x1d0>)
    452a:	601a      	str	r2, [r3, #0]
    452c:	e050      	b.n	45d0 <fsm_complete+0x13c>
    452e:	4b46      	ldr	r3, [pc, #280]	; (4648 <fsm_complete+0x1b4>)
    4530:	2200      	movs	r2, #0
    4532:	601a      	str	r2, [r3, #0]
    4534:	f7fb fe0c 	bl	150 <dut_reset_on>
    4538:	4b4b      	ldr	r3, [pc, #300]	; (4668 <fsm_complete+0x1d4>)
    453a:	681b      	ldr	r3, [r3, #0]
    453c:	1c59      	adds	r1, r3, #1
    453e:	4a4a      	ldr	r2, [pc, #296]	; (4668 <fsm_complete+0x1d4>)
    4540:	6011      	str	r1, [r2, #0]
    4542:	2b00      	cmp	r3, #0
    4544:	d01f      	beq.n	4586 <fsm_complete+0xf2>
    4546:	4b48      	ldr	r3, [pc, #288]	; (4668 <fsm_complete+0x1d4>)
    4548:	2200      	movs	r2, #0
    454a:	601a      	str	r2, [r3, #0]
    454c:	4b47      	ldr	r3, [pc, #284]	; (466c <fsm_complete+0x1d8>)
    454e:	681b      	ldr	r3, [r3, #0]
    4550:	1e5a      	subs	r2, r3, #1
    4552:	4b46      	ldr	r3, [pc, #280]	; (466c <fsm_complete+0x1d8>)
    4554:	601a      	str	r2, [r3, #0]
    4556:	2000      	movs	r0, #0
    4558:	f7fb fe06 	bl	168 <dut_set_speed>
    455c:	2000      	movs	r0, #0
    455e:	f7fb fe11 	bl	184 <dut_set_torque>
    4562:	4b42      	ldr	r3, [pc, #264]	; (466c <fsm_complete+0x1d8>)
    4564:	681b      	ldr	r3, [r3, #0]
    4566:	2b00      	cmp	r3, #0
    4568:	d106      	bne.n	4578 <fsm_complete+0xe4>
    456a:	4b41      	ldr	r3, [pc, #260]	; (4670 <fsm_complete+0x1dc>)
    456c:	4a41      	ldr	r2, [pc, #260]	; (4674 <fsm_complete+0x1e0>)
    456e:	601a      	str	r2, [r3, #0]
    4570:	4b41      	ldr	r3, [pc, #260]	; (4678 <fsm_complete+0x1e4>)
    4572:	2204      	movs	r2, #4
    4574:	701a      	strb	r2, [r3, #0]
    4576:	e062      	b.n	463e <fsm_complete+0x1aa>
    4578:	4b3d      	ldr	r3, [pc, #244]	; (4670 <fsm_complete+0x1dc>)
    457a:	4a40      	ldr	r2, [pc, #256]	; (467c <fsm_complete+0x1e8>)
    457c:	601a      	str	r2, [r3, #0]
    457e:	4b3e      	ldr	r3, [pc, #248]	; (4678 <fsm_complete+0x1e4>)
    4580:	2203      	movs	r2, #3
    4582:	701a      	strb	r2, [r3, #0]
    4584:	e05b      	b.n	463e <fsm_complete+0x1aa>
    4586:	4b38      	ldr	r3, [pc, #224]	; (4668 <fsm_complete+0x1d4>)
    4588:	681b      	ldr	r3, [r3, #0]
    458a:	2b00      	cmp	r3, #0
    458c:	d006      	beq.n	459c <fsm_complete+0x108>
    458e:	4b3c      	ldr	r3, [pc, #240]	; (4680 <fsm_complete+0x1ec>)
    4590:	685b      	ldr	r3, [r3, #4]
    4592:	425b      	negs	r3, r3
    4594:	0018      	movs	r0, r3
    4596:	f7fb fde7 	bl	168 <dut_set_speed>
    459a:	e004      	b.n	45a6 <fsm_complete+0x112>
    459c:	4b38      	ldr	r3, [pc, #224]	; (4680 <fsm_complete+0x1ec>)
    459e:	685b      	ldr	r3, [r3, #4]
    45a0:	0018      	movs	r0, r3
    45a2:	f7fb fde1 	bl	168 <dut_set_speed>
    45a6:	4b29      	ldr	r3, [pc, #164]	; (464c <fsm_complete+0x1b8>)
    45a8:	681a      	ldr	r2, [r3, #0]
    45aa:	4b29      	ldr	r3, [pc, #164]	; (4650 <fsm_complete+0x1bc>)
    45ac:	601a      	str	r2, [r3, #0]
    45ae:	4b27      	ldr	r3, [pc, #156]	; (464c <fsm_complete+0x1b8>)
    45b0:	685a      	ldr	r2, [r3, #4]
    45b2:	4b24      	ldr	r3, [pc, #144]	; (4644 <fsm_complete+0x1b0>)
    45b4:	601a      	str	r2, [r3, #0]
    45b6:	4b27      	ldr	r3, [pc, #156]	; (4654 <fsm_complete+0x1c0>)
    45b8:	681a      	ldr	r2, [r3, #0]
    45ba:	4b27      	ldr	r3, [pc, #156]	; (4658 <fsm_complete+0x1c4>)
    45bc:	601a      	str	r2, [r3, #0]
    45be:	4b25      	ldr	r3, [pc, #148]	; (4654 <fsm_complete+0x1c0>)
    45c0:	685a      	ldr	r2, [r3, #4]
    45c2:	4b26      	ldr	r3, [pc, #152]	; (465c <fsm_complete+0x1c8>)
    45c4:	601a      	str	r2, [r3, #0]
    45c6:	4b26      	ldr	r3, [pc, #152]	; (4660 <fsm_complete+0x1cc>)
    45c8:	681a      	ldr	r2, [r3, #0]
    45ca:	4b26      	ldr	r3, [pc, #152]	; (4664 <fsm_complete+0x1d0>)
    45cc:	601a      	str	r2, [r3, #0]
    45ce:	e036      	b.n	463e <fsm_complete+0x1aa>
    45d0:	4b21      	ldr	r3, [pc, #132]	; (4658 <fsm_complete+0x1c4>)
    45d2:	681b      	ldr	r3, [r3, #0]
    45d4:	009b      	lsls	r3, r3, #2
    45d6:	0019      	movs	r1, r3
    45d8:	4b1d      	ldr	r3, [pc, #116]	; (4650 <fsm_complete+0x1bc>)
    45da:	681b      	ldr	r3, [r3, #0]
    45dc:	001a      	movs	r2, r3
    45de:	697b      	ldr	r3, [r7, #20]
    45e0:	1a9a      	subs	r2, r3, r2
    45e2:	4b20      	ldr	r3, [pc, #128]	; (4664 <fsm_complete+0x1d0>)
    45e4:	681b      	ldr	r3, [r3, #0]
    45e6:	4353      	muls	r3, r2
    45e8:	18cb      	adds	r3, r1, r3
    45ea:	60fb      	str	r3, [r7, #12]
    45ec:	4b1e      	ldr	r3, [pc, #120]	; (4668 <fsm_complete+0x1d4>)
    45ee:	681b      	ldr	r3, [r3, #0]
    45f0:	2b00      	cmp	r3, #0
    45f2:	d006      	beq.n	4602 <fsm_complete+0x16e>
    45f4:	68fb      	ldr	r3, [r7, #12]
    45f6:	109b      	asrs	r3, r3, #2
    45f8:	425b      	negs	r3, r3
    45fa:	0018      	movs	r0, r3
    45fc:	f7fb fdc2 	bl	184 <dut_set_torque>
    4600:	e004      	b.n	460c <fsm_complete+0x178>
    4602:	68fb      	ldr	r3, [r7, #12]
    4604:	109b      	asrs	r3, r3, #2
    4606:	0018      	movs	r0, r3
    4608:	f7fb fdbc 	bl	184 <dut_set_torque>
    460c:	231f      	movs	r3, #31
    460e:	18fb      	adds	r3, r7, r3
    4610:	781b      	ldrb	r3, [r3, #0]
    4612:	2b03      	cmp	r3, #3
    4614:	d113      	bne.n	463e <fsm_complete+0x1aa>
    4616:	4b16      	ldr	r3, [pc, #88]	; (4670 <fsm_complete+0x1dc>)
    4618:	4a16      	ldr	r2, [pc, #88]	; (4674 <fsm_complete+0x1e0>)
    461a:	601a      	str	r2, [r3, #0]
    461c:	4b16      	ldr	r3, [pc, #88]	; (4678 <fsm_complete+0x1e4>)
    461e:	2204      	movs	r2, #4
    4620:	701a      	strb	r2, [r3, #0]
    4622:	2000      	movs	r0, #0
    4624:	f7fb fda0 	bl	168 <dut_set_speed>
    4628:	2000      	movs	r0, #0
    462a:	f7fb fdab 	bl	184 <dut_set_torque>
    462e:	f7fb fd8f 	bl	150 <dut_reset_on>
    4632:	4b0e      	ldr	r3, [pc, #56]	; (466c <fsm_complete+0x1d8>)
    4634:	2200      	movs	r2, #0
    4636:	601a      	str	r2, [r3, #0]
    4638:	4b03      	ldr	r3, [pc, #12]	; (4648 <fsm_complete+0x1b4>)
    463a:	2200      	movs	r2, #0
    463c:	601a      	str	r2, [r3, #0]
    463e:	46bd      	mov	sp, r7
    4640:	b008      	add	sp, #32
    4642:	bd80      	pop	{r7, pc}
    4644:	20005fc0 	.word	0x20005fc0
    4648:	2000600c 	.word	0x2000600c
    464c:	20005fcc 	.word	0x20005fcc
    4650:	20005fbc 	.word	0x20005fbc
    4654:	20005fe0 	.word	0x20005fe0
    4658:	20005fc4 	.word	0x20005fc4
    465c:	20005fc8 	.word	0x20005fc8
    4660:	20005ff4 	.word	0x20005ff4
    4664:	20005fb8 	.word	0x20005fb8
    4668:	20006010 	.word	0x20006010
    466c:	20006008 	.word	0x20006008
    4670:	20000014 	.word	0x20000014
    4674:	00004455 	.word	0x00004455
    4678:	2000603c 	.word	0x2000603c
    467c:	00004685 	.word	0x00004685
    4680:	20006014 	.word	0x20006014

00004684 <fsm_wait>:
    4684:	b580      	push	{r7, lr}
    4686:	b084      	sub	sp, #16
    4688:	af00      	add	r7, sp, #0
    468a:	6078      	str	r0, [r7, #4]
    468c:	230f      	movs	r3, #15
    468e:	18fb      	adds	r3, r7, r3
    4690:	687a      	ldr	r2, [r7, #4]
    4692:	701a      	strb	r2, [r3, #0]
    4694:	230f      	movs	r3, #15
    4696:	18fb      	adds	r3, r7, r3
    4698:	781b      	ldrb	r3, [r3, #0]
    469a:	2b01      	cmp	r3, #1
    469c:	d12b      	bne.n	46f6 <fsm_wait+0x72>
    469e:	4b23      	ldr	r3, [pc, #140]	; (472c <fsm_wait+0xa8>)
    46a0:	4a23      	ldr	r2, [pc, #140]	; (4730 <fsm_wait+0xac>)
    46a2:	601a      	str	r2, [r3, #0]
    46a4:	4b23      	ldr	r3, [pc, #140]	; (4734 <fsm_wait+0xb0>)
    46a6:	2201      	movs	r2, #1
    46a8:	701a      	strb	r2, [r3, #0]
    46aa:	4b23      	ldr	r3, [pc, #140]	; (4738 <fsm_wait+0xb4>)
    46ac:	2200      	movs	r2, #0
    46ae:	601a      	str	r2, [r3, #0]
    46b0:	4b22      	ldr	r3, [pc, #136]	; (473c <fsm_wait+0xb8>)
    46b2:	2200      	movs	r2, #0
    46b4:	601a      	str	r2, [r3, #0]
    46b6:	4b22      	ldr	r3, [pc, #136]	; (4740 <fsm_wait+0xbc>)
    46b8:	681a      	ldr	r2, [r3, #0]
    46ba:	4b22      	ldr	r3, [pc, #136]	; (4744 <fsm_wait+0xc0>)
    46bc:	601a      	str	r2, [r3, #0]
    46be:	4b20      	ldr	r3, [pc, #128]	; (4740 <fsm_wait+0xbc>)
    46c0:	685a      	ldr	r2, [r3, #4]
    46c2:	4b21      	ldr	r3, [pc, #132]	; (4748 <fsm_wait+0xc4>)
    46c4:	601a      	str	r2, [r3, #0]
    46c6:	4b21      	ldr	r3, [pc, #132]	; (474c <fsm_wait+0xc8>)
    46c8:	681a      	ldr	r2, [r3, #0]
    46ca:	4b21      	ldr	r3, [pc, #132]	; (4750 <fsm_wait+0xcc>)
    46cc:	601a      	str	r2, [r3, #0]
    46ce:	4b1f      	ldr	r3, [pc, #124]	; (474c <fsm_wait+0xc8>)
    46d0:	685a      	ldr	r2, [r3, #4]
    46d2:	4b20      	ldr	r3, [pc, #128]	; (4754 <fsm_wait+0xd0>)
    46d4:	601a      	str	r2, [r3, #0]
    46d6:	4b20      	ldr	r3, [pc, #128]	; (4758 <fsm_wait+0xd4>)
    46d8:	681a      	ldr	r2, [r3, #0]
    46da:	4b20      	ldr	r3, [pc, #128]	; (475c <fsm_wait+0xd8>)
    46dc:	601a      	str	r2, [r3, #0]
    46de:	4b20      	ldr	r3, [pc, #128]	; (4760 <fsm_wait+0xdc>)
    46e0:	685b      	ldr	r3, [r3, #4]
    46e2:	0018      	movs	r0, r3
    46e4:	f7fb fd40 	bl	168 <dut_set_speed>
    46e8:	4b19      	ldr	r3, [pc, #100]	; (4750 <fsm_wait+0xcc>)
    46ea:	681b      	ldr	r3, [r3, #0]
    46ec:	0018      	movs	r0, r3
    46ee:	f7fb fd49 	bl	184 <dut_set_torque>
    46f2:	f7fb fd2d 	bl	150 <dut_reset_on>
    46f6:	230f      	movs	r3, #15
    46f8:	18fb      	adds	r3, r7, r3
    46fa:	781b      	ldrb	r3, [r3, #0]
    46fc:	2b03      	cmp	r3, #3
    46fe:	d110      	bne.n	4722 <fsm_wait+0x9e>
    4700:	4b0a      	ldr	r3, [pc, #40]	; (472c <fsm_wait+0xa8>)
    4702:	4a18      	ldr	r2, [pc, #96]	; (4764 <fsm_wait+0xe0>)
    4704:	601a      	str	r2, [r3, #0]
    4706:	4b0b      	ldr	r3, [pc, #44]	; (4734 <fsm_wait+0xb0>)
    4708:	2204      	movs	r2, #4
    470a:	701a      	strb	r2, [r3, #0]
    470c:	f7fb fd20 	bl	150 <dut_reset_on>
    4710:	4b15      	ldr	r3, [pc, #84]	; (4768 <fsm_wait+0xe4>)
    4712:	2200      	movs	r2, #0
    4714:	601a      	str	r2, [r3, #0]
    4716:	4b08      	ldr	r3, [pc, #32]	; (4738 <fsm_wait+0xb4>)
    4718:	2200      	movs	r2, #0
    471a:	601a      	str	r2, [r3, #0]
    471c:	4b07      	ldr	r3, [pc, #28]	; (473c <fsm_wait+0xb8>)
    471e:	2200      	movs	r2, #0
    4720:	601a      	str	r2, [r3, #0]
    4722:	46c0      	nop			; (mov r8, r8)
    4724:	46bd      	mov	sp, r7
    4726:	b004      	add	sp, #16
    4728:	bd80      	pop	{r7, pc}
    472a:	46c0      	nop			; (mov r8, r8)
    472c:	20000014 	.word	0x20000014
    4730:	00004259 	.word	0x00004259
    4734:	2000603c 	.word	0x2000603c
    4738:	2000600c 	.word	0x2000600c
    473c:	20006010 	.word	0x20006010
    4740:	20005fcc 	.word	0x20005fcc
    4744:	20005fbc 	.word	0x20005fbc
    4748:	20005fc0 	.word	0x20005fc0
    474c:	20005fe0 	.word	0x20005fe0
    4750:	20005fc4 	.word	0x20005fc4
    4754:	20005fc8 	.word	0x20005fc8
    4758:	20005ff4 	.word	0x20005ff4
    475c:	20005fb8 	.word	0x20005fb8
    4760:	20006014 	.word	0x20006014
    4764:	00004455 	.word	0x00004455
    4768:	20006008 	.word	0x20006008

0000476c <__aeabi_uidiv>:
    476c:	2200      	movs	r2, #0
    476e:	0843      	lsrs	r3, r0, #1
    4770:	428b      	cmp	r3, r1
    4772:	d374      	bcc.n	485e <__aeabi_uidiv+0xf2>
    4774:	0903      	lsrs	r3, r0, #4
    4776:	428b      	cmp	r3, r1
    4778:	d35f      	bcc.n	483a <__aeabi_uidiv+0xce>
    477a:	0a03      	lsrs	r3, r0, #8
    477c:	428b      	cmp	r3, r1
    477e:	d344      	bcc.n	480a <__aeabi_uidiv+0x9e>
    4780:	0b03      	lsrs	r3, r0, #12
    4782:	428b      	cmp	r3, r1
    4784:	d328      	bcc.n	47d8 <__aeabi_uidiv+0x6c>
    4786:	0c03      	lsrs	r3, r0, #16
    4788:	428b      	cmp	r3, r1
    478a:	d30d      	bcc.n	47a8 <__aeabi_uidiv+0x3c>
    478c:	22ff      	movs	r2, #255	; 0xff
    478e:	0209      	lsls	r1, r1, #8
    4790:	ba12      	rev	r2, r2
    4792:	0c03      	lsrs	r3, r0, #16
    4794:	428b      	cmp	r3, r1
    4796:	d302      	bcc.n	479e <__aeabi_uidiv+0x32>
    4798:	1212      	asrs	r2, r2, #8
    479a:	0209      	lsls	r1, r1, #8
    479c:	d065      	beq.n	486a <__aeabi_uidiv+0xfe>
    479e:	0b03      	lsrs	r3, r0, #12
    47a0:	428b      	cmp	r3, r1
    47a2:	d319      	bcc.n	47d8 <__aeabi_uidiv+0x6c>
    47a4:	e000      	b.n	47a8 <__aeabi_uidiv+0x3c>
    47a6:	0a09      	lsrs	r1, r1, #8
    47a8:	0bc3      	lsrs	r3, r0, #15
    47aa:	428b      	cmp	r3, r1
    47ac:	d301      	bcc.n	47b2 <__aeabi_uidiv+0x46>
    47ae:	03cb      	lsls	r3, r1, #15
    47b0:	1ac0      	subs	r0, r0, r3
    47b2:	4152      	adcs	r2, r2
    47b4:	0b83      	lsrs	r3, r0, #14
    47b6:	428b      	cmp	r3, r1
    47b8:	d301      	bcc.n	47be <__aeabi_uidiv+0x52>
    47ba:	038b      	lsls	r3, r1, #14
    47bc:	1ac0      	subs	r0, r0, r3
    47be:	4152      	adcs	r2, r2
    47c0:	0b43      	lsrs	r3, r0, #13
    47c2:	428b      	cmp	r3, r1
    47c4:	d301      	bcc.n	47ca <__aeabi_uidiv+0x5e>
    47c6:	034b      	lsls	r3, r1, #13
    47c8:	1ac0      	subs	r0, r0, r3
    47ca:	4152      	adcs	r2, r2
    47cc:	0b03      	lsrs	r3, r0, #12
    47ce:	428b      	cmp	r3, r1
    47d0:	d301      	bcc.n	47d6 <__aeabi_uidiv+0x6a>
    47d2:	030b      	lsls	r3, r1, #12
    47d4:	1ac0      	subs	r0, r0, r3
    47d6:	4152      	adcs	r2, r2
    47d8:	0ac3      	lsrs	r3, r0, #11
    47da:	428b      	cmp	r3, r1
    47dc:	d301      	bcc.n	47e2 <__aeabi_uidiv+0x76>
    47de:	02cb      	lsls	r3, r1, #11
    47e0:	1ac0      	subs	r0, r0, r3
    47e2:	4152      	adcs	r2, r2
    47e4:	0a83      	lsrs	r3, r0, #10
    47e6:	428b      	cmp	r3, r1
    47e8:	d301      	bcc.n	47ee <__aeabi_uidiv+0x82>
    47ea:	028b      	lsls	r3, r1, #10
    47ec:	1ac0      	subs	r0, r0, r3
    47ee:	4152      	adcs	r2, r2
    47f0:	0a43      	lsrs	r3, r0, #9
    47f2:	428b      	cmp	r3, r1
    47f4:	d301      	bcc.n	47fa <__aeabi_uidiv+0x8e>
    47f6:	024b      	lsls	r3, r1, #9
    47f8:	1ac0      	subs	r0, r0, r3
    47fa:	4152      	adcs	r2, r2
    47fc:	0a03      	lsrs	r3, r0, #8
    47fe:	428b      	cmp	r3, r1
    4800:	d301      	bcc.n	4806 <__aeabi_uidiv+0x9a>
    4802:	020b      	lsls	r3, r1, #8
    4804:	1ac0      	subs	r0, r0, r3
    4806:	4152      	adcs	r2, r2
    4808:	d2cd      	bcs.n	47a6 <__aeabi_uidiv+0x3a>
    480a:	09c3      	lsrs	r3, r0, #7
    480c:	428b      	cmp	r3, r1
    480e:	d301      	bcc.n	4814 <__aeabi_uidiv+0xa8>
    4810:	01cb      	lsls	r3, r1, #7
    4812:	1ac0      	subs	r0, r0, r3
    4814:	4152      	adcs	r2, r2
    4816:	0983      	lsrs	r3, r0, #6
    4818:	428b      	cmp	r3, r1
    481a:	d301      	bcc.n	4820 <__aeabi_uidiv+0xb4>
    481c:	018b      	lsls	r3, r1, #6
    481e:	1ac0      	subs	r0, r0, r3
    4820:	4152      	adcs	r2, r2
    4822:	0943      	lsrs	r3, r0, #5
    4824:	428b      	cmp	r3, r1
    4826:	d301      	bcc.n	482c <__aeabi_uidiv+0xc0>
    4828:	014b      	lsls	r3, r1, #5
    482a:	1ac0      	subs	r0, r0, r3
    482c:	4152      	adcs	r2, r2
    482e:	0903      	lsrs	r3, r0, #4
    4830:	428b      	cmp	r3, r1
    4832:	d301      	bcc.n	4838 <__aeabi_uidiv+0xcc>
    4834:	010b      	lsls	r3, r1, #4
    4836:	1ac0      	subs	r0, r0, r3
    4838:	4152      	adcs	r2, r2
    483a:	08c3      	lsrs	r3, r0, #3
    483c:	428b      	cmp	r3, r1
    483e:	d301      	bcc.n	4844 <__aeabi_uidiv+0xd8>
    4840:	00cb      	lsls	r3, r1, #3
    4842:	1ac0      	subs	r0, r0, r3
    4844:	4152      	adcs	r2, r2
    4846:	0883      	lsrs	r3, r0, #2
    4848:	428b      	cmp	r3, r1
    484a:	d301      	bcc.n	4850 <__aeabi_uidiv+0xe4>
    484c:	008b      	lsls	r3, r1, #2
    484e:	1ac0      	subs	r0, r0, r3
    4850:	4152      	adcs	r2, r2
    4852:	0843      	lsrs	r3, r0, #1
    4854:	428b      	cmp	r3, r1
    4856:	d301      	bcc.n	485c <__aeabi_uidiv+0xf0>
    4858:	004b      	lsls	r3, r1, #1
    485a:	1ac0      	subs	r0, r0, r3
    485c:	4152      	adcs	r2, r2
    485e:	1a41      	subs	r1, r0, r1
    4860:	d200      	bcs.n	4864 <__aeabi_uidiv+0xf8>
    4862:	4601      	mov	r1, r0
    4864:	4152      	adcs	r2, r2
    4866:	4610      	mov	r0, r2
    4868:	4770      	bx	lr
    486a:	e7ff      	b.n	486c <__aeabi_uidiv+0x100>
    486c:	b501      	push	{r0, lr}
    486e:	2000      	movs	r0, #0
    4870:	f000 f8f0 	bl	4a54 <__aeabi_idiv0>
    4874:	bd02      	pop	{r1, pc}
    4876:	46c0      	nop			; (mov r8, r8)

00004878 <__aeabi_uidivmod>:
    4878:	2900      	cmp	r1, #0
    487a:	d0f7      	beq.n	486c <__aeabi_uidiv+0x100>
    487c:	e776      	b.n	476c <__aeabi_uidiv>
    487e:	4770      	bx	lr

00004880 <__aeabi_idiv>:
    4880:	4603      	mov	r3, r0
    4882:	430b      	orrs	r3, r1
    4884:	d47f      	bmi.n	4986 <__aeabi_idiv+0x106>
    4886:	2200      	movs	r2, #0
    4888:	0843      	lsrs	r3, r0, #1
    488a:	428b      	cmp	r3, r1
    488c:	d374      	bcc.n	4978 <__aeabi_idiv+0xf8>
    488e:	0903      	lsrs	r3, r0, #4
    4890:	428b      	cmp	r3, r1
    4892:	d35f      	bcc.n	4954 <__aeabi_idiv+0xd4>
    4894:	0a03      	lsrs	r3, r0, #8
    4896:	428b      	cmp	r3, r1
    4898:	d344      	bcc.n	4924 <__aeabi_idiv+0xa4>
    489a:	0b03      	lsrs	r3, r0, #12
    489c:	428b      	cmp	r3, r1
    489e:	d328      	bcc.n	48f2 <__aeabi_idiv+0x72>
    48a0:	0c03      	lsrs	r3, r0, #16
    48a2:	428b      	cmp	r3, r1
    48a4:	d30d      	bcc.n	48c2 <__aeabi_idiv+0x42>
    48a6:	22ff      	movs	r2, #255	; 0xff
    48a8:	0209      	lsls	r1, r1, #8
    48aa:	ba12      	rev	r2, r2
    48ac:	0c03      	lsrs	r3, r0, #16
    48ae:	428b      	cmp	r3, r1
    48b0:	d302      	bcc.n	48b8 <__aeabi_idiv+0x38>
    48b2:	1212      	asrs	r2, r2, #8
    48b4:	0209      	lsls	r1, r1, #8
    48b6:	d065      	beq.n	4984 <__aeabi_idiv+0x104>
    48b8:	0b03      	lsrs	r3, r0, #12
    48ba:	428b      	cmp	r3, r1
    48bc:	d319      	bcc.n	48f2 <__aeabi_idiv+0x72>
    48be:	e000      	b.n	48c2 <__aeabi_idiv+0x42>
    48c0:	0a09      	lsrs	r1, r1, #8
    48c2:	0bc3      	lsrs	r3, r0, #15
    48c4:	428b      	cmp	r3, r1
    48c6:	d301      	bcc.n	48cc <__aeabi_idiv+0x4c>
    48c8:	03cb      	lsls	r3, r1, #15
    48ca:	1ac0      	subs	r0, r0, r3
    48cc:	4152      	adcs	r2, r2
    48ce:	0b83      	lsrs	r3, r0, #14
    48d0:	428b      	cmp	r3, r1
    48d2:	d301      	bcc.n	48d8 <__aeabi_idiv+0x58>
    48d4:	038b      	lsls	r3, r1, #14
    48d6:	1ac0      	subs	r0, r0, r3
    48d8:	4152      	adcs	r2, r2
    48da:	0b43      	lsrs	r3, r0, #13
    48dc:	428b      	cmp	r3, r1
    48de:	d301      	bcc.n	48e4 <__aeabi_idiv+0x64>
    48e0:	034b      	lsls	r3, r1, #13
    48e2:	1ac0      	subs	r0, r0, r3
    48e4:	4152      	adcs	r2, r2
    48e6:	0b03      	lsrs	r3, r0, #12
    48e8:	428b      	cmp	r3, r1
    48ea:	d301      	bcc.n	48f0 <__aeabi_idiv+0x70>
    48ec:	030b      	lsls	r3, r1, #12
    48ee:	1ac0      	subs	r0, r0, r3
    48f0:	4152      	adcs	r2, r2
    48f2:	0ac3      	lsrs	r3, r0, #11
    48f4:	428b      	cmp	r3, r1
    48f6:	d301      	bcc.n	48fc <__aeabi_idiv+0x7c>
    48f8:	02cb      	lsls	r3, r1, #11
    48fa:	1ac0      	subs	r0, r0, r3
    48fc:	4152      	adcs	r2, r2
    48fe:	0a83      	lsrs	r3, r0, #10
    4900:	428b      	cmp	r3, r1
    4902:	d301      	bcc.n	4908 <__aeabi_idiv+0x88>
    4904:	028b      	lsls	r3, r1, #10
    4906:	1ac0      	subs	r0, r0, r3
    4908:	4152      	adcs	r2, r2
    490a:	0a43      	lsrs	r3, r0, #9
    490c:	428b      	cmp	r3, r1
    490e:	d301      	bcc.n	4914 <__aeabi_idiv+0x94>
    4910:	024b      	lsls	r3, r1, #9
    4912:	1ac0      	subs	r0, r0, r3
    4914:	4152      	adcs	r2, r2
    4916:	0a03      	lsrs	r3, r0, #8
    4918:	428b      	cmp	r3, r1
    491a:	d301      	bcc.n	4920 <__aeabi_idiv+0xa0>
    491c:	020b      	lsls	r3, r1, #8
    491e:	1ac0      	subs	r0, r0, r3
    4920:	4152      	adcs	r2, r2
    4922:	d2cd      	bcs.n	48c0 <__aeabi_idiv+0x40>
    4924:	09c3      	lsrs	r3, r0, #7
    4926:	428b      	cmp	r3, r1
    4928:	d301      	bcc.n	492e <__aeabi_idiv+0xae>
    492a:	01cb      	lsls	r3, r1, #7
    492c:	1ac0      	subs	r0, r0, r3
    492e:	4152      	adcs	r2, r2
    4930:	0983      	lsrs	r3, r0, #6
    4932:	428b      	cmp	r3, r1
    4934:	d301      	bcc.n	493a <__aeabi_idiv+0xba>
    4936:	018b      	lsls	r3, r1, #6
    4938:	1ac0      	subs	r0, r0, r3
    493a:	4152      	adcs	r2, r2
    493c:	0943      	lsrs	r3, r0, #5
    493e:	428b      	cmp	r3, r1
    4940:	d301      	bcc.n	4946 <__aeabi_idiv+0xc6>
    4942:	014b      	lsls	r3, r1, #5
    4944:	1ac0      	subs	r0, r0, r3
    4946:	4152      	adcs	r2, r2
    4948:	0903      	lsrs	r3, r0, #4
    494a:	428b      	cmp	r3, r1
    494c:	d301      	bcc.n	4952 <__aeabi_idiv+0xd2>
    494e:	010b      	lsls	r3, r1, #4
    4950:	1ac0      	subs	r0, r0, r3
    4952:	4152      	adcs	r2, r2
    4954:	08c3      	lsrs	r3, r0, #3
    4956:	428b      	cmp	r3, r1
    4958:	d301      	bcc.n	495e <__aeabi_idiv+0xde>
    495a:	00cb      	lsls	r3, r1, #3
    495c:	1ac0      	subs	r0, r0, r3
    495e:	4152      	adcs	r2, r2
    4960:	0883      	lsrs	r3, r0, #2
    4962:	428b      	cmp	r3, r1
    4964:	d301      	bcc.n	496a <__aeabi_idiv+0xea>
    4966:	008b      	lsls	r3, r1, #2
    4968:	1ac0      	subs	r0, r0, r3
    496a:	4152      	adcs	r2, r2
    496c:	0843      	lsrs	r3, r0, #1
    496e:	428b      	cmp	r3, r1
    4970:	d301      	bcc.n	4976 <__aeabi_idiv+0xf6>
    4972:	004b      	lsls	r3, r1, #1
    4974:	1ac0      	subs	r0, r0, r3
    4976:	4152      	adcs	r2, r2
    4978:	1a41      	subs	r1, r0, r1
    497a:	d200      	bcs.n	497e <__aeabi_idiv+0xfe>
    497c:	4601      	mov	r1, r0
    497e:	4152      	adcs	r2, r2
    4980:	4610      	mov	r0, r2
    4982:	4770      	bx	lr
    4984:	e05d      	b.n	4a42 <__aeabi_idiv+0x1c2>
    4986:	0fca      	lsrs	r2, r1, #31
    4988:	d000      	beq.n	498c <__aeabi_idiv+0x10c>
    498a:	4249      	negs	r1, r1
    498c:	1003      	asrs	r3, r0, #32
    498e:	d300      	bcc.n	4992 <__aeabi_idiv+0x112>
    4990:	4240      	negs	r0, r0
    4992:	4053      	eors	r3, r2
    4994:	2200      	movs	r2, #0
    4996:	469c      	mov	ip, r3
    4998:	0903      	lsrs	r3, r0, #4
    499a:	428b      	cmp	r3, r1
    499c:	d32d      	bcc.n	49fa <__aeabi_idiv+0x17a>
    499e:	0a03      	lsrs	r3, r0, #8
    49a0:	428b      	cmp	r3, r1
    49a2:	d312      	bcc.n	49ca <__aeabi_idiv+0x14a>
    49a4:	22fc      	movs	r2, #252	; 0xfc
    49a6:	0189      	lsls	r1, r1, #6
    49a8:	ba12      	rev	r2, r2
    49aa:	0a03      	lsrs	r3, r0, #8
    49ac:	428b      	cmp	r3, r1
    49ae:	d30c      	bcc.n	49ca <__aeabi_idiv+0x14a>
    49b0:	0189      	lsls	r1, r1, #6
    49b2:	1192      	asrs	r2, r2, #6
    49b4:	428b      	cmp	r3, r1
    49b6:	d308      	bcc.n	49ca <__aeabi_idiv+0x14a>
    49b8:	0189      	lsls	r1, r1, #6
    49ba:	1192      	asrs	r2, r2, #6
    49bc:	428b      	cmp	r3, r1
    49be:	d304      	bcc.n	49ca <__aeabi_idiv+0x14a>
    49c0:	0189      	lsls	r1, r1, #6
    49c2:	d03a      	beq.n	4a3a <__aeabi_idiv+0x1ba>
    49c4:	1192      	asrs	r2, r2, #6
    49c6:	e000      	b.n	49ca <__aeabi_idiv+0x14a>
    49c8:	0989      	lsrs	r1, r1, #6
    49ca:	09c3      	lsrs	r3, r0, #7
    49cc:	428b      	cmp	r3, r1
    49ce:	d301      	bcc.n	49d4 <__aeabi_idiv+0x154>
    49d0:	01cb      	lsls	r3, r1, #7
    49d2:	1ac0      	subs	r0, r0, r3
    49d4:	4152      	adcs	r2, r2
    49d6:	0983      	lsrs	r3, r0, #6
    49d8:	428b      	cmp	r3, r1
    49da:	d301      	bcc.n	49e0 <__aeabi_idiv+0x160>
    49dc:	018b      	lsls	r3, r1, #6
    49de:	1ac0      	subs	r0, r0, r3
    49e0:	4152      	adcs	r2, r2
    49e2:	0943      	lsrs	r3, r0, #5
    49e4:	428b      	cmp	r3, r1
    49e6:	d301      	bcc.n	49ec <__aeabi_idiv+0x16c>
    49e8:	014b      	lsls	r3, r1, #5
    49ea:	1ac0      	subs	r0, r0, r3
    49ec:	4152      	adcs	r2, r2
    49ee:	0903      	lsrs	r3, r0, #4
    49f0:	428b      	cmp	r3, r1
    49f2:	d301      	bcc.n	49f8 <__aeabi_idiv+0x178>
    49f4:	010b      	lsls	r3, r1, #4
    49f6:	1ac0      	subs	r0, r0, r3
    49f8:	4152      	adcs	r2, r2
    49fa:	08c3      	lsrs	r3, r0, #3
    49fc:	428b      	cmp	r3, r1
    49fe:	d301      	bcc.n	4a04 <__aeabi_idiv+0x184>
    4a00:	00cb      	lsls	r3, r1, #3
    4a02:	1ac0      	subs	r0, r0, r3
    4a04:	4152      	adcs	r2, r2
    4a06:	0883      	lsrs	r3, r0, #2
    4a08:	428b      	cmp	r3, r1
    4a0a:	d301      	bcc.n	4a10 <__aeabi_idiv+0x190>
    4a0c:	008b      	lsls	r3, r1, #2
    4a0e:	1ac0      	subs	r0, r0, r3
    4a10:	4152      	adcs	r2, r2
    4a12:	d2d9      	bcs.n	49c8 <__aeabi_idiv+0x148>
    4a14:	0843      	lsrs	r3, r0, #1
    4a16:	428b      	cmp	r3, r1
    4a18:	d301      	bcc.n	4a1e <__aeabi_idiv+0x19e>
    4a1a:	004b      	lsls	r3, r1, #1
    4a1c:	1ac0      	subs	r0, r0, r3
    4a1e:	4152      	adcs	r2, r2
    4a20:	1a41      	subs	r1, r0, r1
    4a22:	d200      	bcs.n	4a26 <__aeabi_idiv+0x1a6>
    4a24:	4601      	mov	r1, r0
    4a26:	4663      	mov	r3, ip
    4a28:	4152      	adcs	r2, r2
    4a2a:	105b      	asrs	r3, r3, #1
    4a2c:	4610      	mov	r0, r2
    4a2e:	d301      	bcc.n	4a34 <__aeabi_idiv+0x1b4>
    4a30:	4240      	negs	r0, r0
    4a32:	2b00      	cmp	r3, #0
    4a34:	d500      	bpl.n	4a38 <__aeabi_idiv+0x1b8>
    4a36:	4249      	negs	r1, r1
    4a38:	4770      	bx	lr
    4a3a:	4663      	mov	r3, ip
    4a3c:	105b      	asrs	r3, r3, #1
    4a3e:	d300      	bcc.n	4a42 <__aeabi_idiv+0x1c2>
    4a40:	4240      	negs	r0, r0
    4a42:	b501      	push	{r0, lr}
    4a44:	2000      	movs	r0, #0
    4a46:	f000 f805 	bl	4a54 <__aeabi_idiv0>
    4a4a:	bd02      	pop	{r1, pc}

00004a4c <__aeabi_idivmod>:
    4a4c:	2900      	cmp	r1, #0
    4a4e:	d0f8      	beq.n	4a42 <__aeabi_idiv+0x1c2>
    4a50:	e716      	b.n	4880 <__aeabi_idiv>
    4a52:	4770      	bx	lr

00004a54 <__aeabi_idiv0>:
    4a54:	4770      	bx	lr
    4a56:	46c0      	nop			; (mov r8, r8)

00004a58 <rt_set_PSP>:
    4a58:	f380 8809 	msr	PSP, r0
    4a5c:	4770      	bx	lr

00004a5e <rt_get_PSP>:
    4a5e:	f3ef 8009 	mrs	r0, PSP
    4a62:	4770      	bx	lr

00004a64 <os_set_env>:
    4a64:	4668      	mov	r0, sp
    4a66:	f380 8809 	msr	PSP, r0
    4a6a:	484a      	ldr	r0, [pc, #296]	; (4b94 <OS_Tick_Handler+0xa>)
    4a6c:	7800      	ldrb	r0, [r0, #0]
    4a6e:	07c0      	lsls	r0, r0, #31
    4a70:	d103      	bne.n	4a7a <PrivilegedE>
    4a72:	2003      	movs	r0, #3
    4a74:	f380 8814 	msr	CONTROL, r0
    4a78:	4770      	bx	lr

00004a7a <PrivilegedE>:
    4a7a:	2002      	movs	r0, #2
    4a7c:	f380 8814 	msr	CONTROL, r0
    4a80:	4770      	bx	lr

00004a82 <_alloc_box>:
    4a82:	4b45      	ldr	r3, [pc, #276]	; (4b98 <OS_Tick_Handler+0xe>)
    4a84:	469c      	mov	ip, r3
    4a86:	f3ef 8305 	mrs	r3, IPSR
    4a8a:	061b      	lsls	r3, r3, #24
    4a8c:	d105      	bne.n	4a9a <PrivilegedA>
    4a8e:	f3ef 8314 	mrs	r3, CONTROL
    4a92:	07db      	lsls	r3, r3, #31
    4a94:	d001      	beq.n	4a9a <PrivilegedA>
    4a96:	df00      	svc	0
    4a98:	4770      	bx	lr

00004a9a <PrivilegedA>:
    4a9a:	4760      	bx	ip

00004a9c <_free_box>:
    4a9c:	4b3f      	ldr	r3, [pc, #252]	; (4b9c <OS_Tick_Handler+0x12>)
    4a9e:	469c      	mov	ip, r3
    4aa0:	f3ef 8305 	mrs	r3, IPSR
    4aa4:	061b      	lsls	r3, r3, #24
    4aa6:	d105      	bne.n	4ab4 <PrivilegedF>
    4aa8:	f3ef 8314 	mrs	r3, CONTROL
    4aac:	07db      	lsls	r3, r3, #31
    4aae:	d001      	beq.n	4ab4 <PrivilegedF>
    4ab0:	df00      	svc	0
    4ab2:	4770      	bx	lr

00004ab4 <PrivilegedF>:
    4ab4:	4760      	bx	ip

00004ab6 <SVC_Handler>:
    4ab6:	f3ef 8009 	mrs	r0, PSP
    4aba:	6981      	ldr	r1, [r0, #24]
    4abc:	3902      	subs	r1, #2
    4abe:	7809      	ldrb	r1, [r1, #0]
    4ac0:	2900      	cmp	r1, #0
    4ac2:	d12b      	bne.n	4b1c <SVC_User>
    4ac4:	46a6      	mov	lr, r4
    4ac6:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4ac8:	46a4      	mov	ip, r4
    4aca:	4674      	mov	r4, lr
    4acc:	47e0      	blx	ip
    4ace:	f3ef 8309 	mrs	r3, PSP
    4ad2:	c307      	stmia	r3!, {r0, r1, r2}
    4ad4:	4b32      	ldr	r3, [pc, #200]	; (4ba0 <OS_Tick_Handler+0x16>)
    4ad6:	cb06      	ldmia	r3!, {r1, r2}
    4ad8:	4291      	cmp	r1, r2
    4ada:	d01c      	beq.n	4b16 <SVC_Exit>
    4adc:	3b08      	subs	r3, #8
    4ade:	2900      	cmp	r1, #0
    4ae0:	d00d      	beq.n	4afe <SVC_Next>
    4ae2:	f3ef 8009 	mrs	r0, PSP
    4ae6:	3820      	subs	r0, #32
    4ae8:	6288      	str	r0, [r1, #40]	; 0x28
    4aea:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4aec:	4644      	mov	r4, r8
    4aee:	464d      	mov	r5, r9
    4af0:	4656      	mov	r6, sl
    4af2:	465f      	mov	r7, fp
    4af4:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4af6:	b40c      	push	{r2, r3}
    4af8:	f003 fbec 	bl	82d4 <rt_stk_check>
    4afc:	bc0c      	pop	{r2, r3}

00004afe <SVC_Next>:
    4afe:	601a      	str	r2, [r3, #0]
    4b00:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4b02:	3010      	adds	r0, #16
    4b04:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4b06:	46a0      	mov	r8, r4
    4b08:	46a9      	mov	r9, r5
    4b0a:	46b2      	mov	sl, r6
    4b0c:	46bb      	mov	fp, r7
    4b0e:	f380 8809 	msr	PSP, r0
    4b12:	3820      	subs	r0, #32
    4b14:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004b16 <SVC_Exit>:
    4b16:	2002      	movs	r0, #2
    4b18:	43c0      	mvns	r0, r0
    4b1a:	4700      	bx	r0

00004b1c <SVC_User>:
    4b1c:	b510      	push	{r4, lr}
    4b1e:	4a21      	ldr	r2, [pc, #132]	; (4ba4 <OS_Tick_Handler+0x1a>)
    4b20:	6812      	ldr	r2, [r2, #0]
    4b22:	4291      	cmp	r1, r2
    4b24:	d809      	bhi.n	4b3a <SVC_Done>
    4b26:	4c20      	ldr	r4, [pc, #128]	; (4ba8 <OS_Tick_Handler+0x1e>)
    4b28:	0089      	lsls	r1, r1, #2
    4b2a:	5864      	ldr	r4, [r4, r1]
    4b2c:	46a6      	mov	lr, r4
    4b2e:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4b30:	46a4      	mov	ip, r4
    4b32:	47f0      	blx	lr
    4b34:	f3ef 8409 	mrs	r4, PSP
    4b38:	c40f      	stmia	r4!, {r0, r1, r2, r3}

00004b3a <SVC_Done>:
    4b3a:	bd10      	pop	{r4, pc}

00004b3c <PendSV_Handler>:
    4b3c:	f003 fb3a 	bl	81b4 <rt_pop_req>

00004b40 <Sys_Switch>:
    4b40:	4b17      	ldr	r3, [pc, #92]	; (4ba0 <OS_Tick_Handler+0x16>)
    4b42:	cb06      	ldmia	r3!, {r1, r2}
    4b44:	4291      	cmp	r1, r2
    4b46:	d01a      	beq.n	4b7e <Sys_Exit>
    4b48:	3b08      	subs	r3, #8
    4b4a:	f3ef 8009 	mrs	r0, PSP
    4b4e:	3820      	subs	r0, #32
    4b50:	6288      	str	r0, [r1, #40]	; 0x28
    4b52:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4b54:	4644      	mov	r4, r8
    4b56:	464d      	mov	r5, r9
    4b58:	4656      	mov	r6, sl
    4b5a:	465f      	mov	r7, fp
    4b5c:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4b5e:	b40c      	push	{r2, r3}
    4b60:	f003 fbb8 	bl	82d4 <rt_stk_check>
    4b64:	bc0c      	pop	{r2, r3}
    4b66:	601a      	str	r2, [r3, #0]
    4b68:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4b6a:	3010      	adds	r0, #16
    4b6c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4b6e:	46a0      	mov	r8, r4
    4b70:	46a9      	mov	r9, r5
    4b72:	46b2      	mov	sl, r6
    4b74:	46bb      	mov	fp, r7
    4b76:	f380 8809 	msr	PSP, r0
    4b7a:	3820      	subs	r0, #32
    4b7c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004b7e <Sys_Exit>:
    4b7e:	2002      	movs	r0, #2
    4b80:	43c0      	mvns	r0, r0
    4b82:	4700      	bx	r0

00004b84 <SysTick_Handler>:
    4b84:	f003 fb88 	bl	8298 <rt_systick>
    4b88:	e7da      	b.n	4b40 <Sys_Switch>

00004b8a <OS_Tick_Handler>:
    4b8a:	f003 fb83 	bl	8294 <os_tick_irqack>
    4b8e:	f003 fb83 	bl	8298 <rt_systick>
    4b92:	e7d5      	b.n	4b40 <Sys_Switch>
    4b94:	000089f4 	.word	0x000089f4
    4b98:	000073d1 	.word	0x000073d1
    4b9c:	00007411 	.word	0x00007411
    4ba0:	200060b8 	.word	0x200060b8
    4ba4:	00000000 	.word	0x00000000
    4ba8:	fffffffc 	.word	0xfffffffc

00004bac <__aeabi_uldivmod>:
    4bac:	2b00      	cmp	r3, #0
    4bae:	d111      	bne.n	4bd4 <__aeabi_uldivmod+0x28>
    4bb0:	2a00      	cmp	r2, #0
    4bb2:	d10f      	bne.n	4bd4 <__aeabi_uldivmod+0x28>
    4bb4:	2900      	cmp	r1, #0
    4bb6:	d100      	bne.n	4bba <__aeabi_uldivmod+0xe>
    4bb8:	2800      	cmp	r0, #0
    4bba:	d002      	beq.n	4bc2 <__aeabi_uldivmod+0x16>
    4bbc:	2100      	movs	r1, #0
    4bbe:	43c9      	mvns	r1, r1
    4bc0:	1c08      	adds	r0, r1, #0
    4bc2:	b407      	push	{r0, r1, r2}
    4bc4:	4802      	ldr	r0, [pc, #8]	; (4bd0 <__aeabi_uldivmod+0x24>)
    4bc6:	a102      	add	r1, pc, #8	; (adr r1, 4bd0 <__aeabi_uldivmod+0x24>)
    4bc8:	1840      	adds	r0, r0, r1
    4bca:	9002      	str	r0, [sp, #8]
    4bcc:	bd03      	pop	{r0, r1, pc}
    4bce:	46c0      	nop			; (mov r8, r8)
    4bd0:	fffffe85 	.word	0xfffffe85
    4bd4:	b403      	push	{r0, r1}
    4bd6:	4668      	mov	r0, sp
    4bd8:	b501      	push	{r0, lr}
    4bda:	9802      	ldr	r0, [sp, #8]
    4bdc:	f000 f832 	bl	4c44 <__udivmoddi4>
    4be0:	9b01      	ldr	r3, [sp, #4]
    4be2:	469e      	mov	lr, r3
    4be4:	b002      	add	sp, #8
    4be6:	bc0c      	pop	{r2, r3}
    4be8:	4770      	bx	lr
    4bea:	46c0      	nop			; (mov r8, r8)

00004bec <__aeabi_lmul>:
    4bec:	b5f0      	push	{r4, r5, r6, r7, lr}
    4bee:	464f      	mov	r7, r9
    4bf0:	4646      	mov	r6, r8
    4bf2:	b4c0      	push	{r6, r7}
    4bf4:	0416      	lsls	r6, r2, #16
    4bf6:	0c36      	lsrs	r6, r6, #16
    4bf8:	4699      	mov	r9, r3
    4bfa:	0033      	movs	r3, r6
    4bfc:	0405      	lsls	r5, r0, #16
    4bfe:	0c2c      	lsrs	r4, r5, #16
    4c00:	0c07      	lsrs	r7, r0, #16
    4c02:	0c15      	lsrs	r5, r2, #16
    4c04:	4363      	muls	r3, r4
    4c06:	437e      	muls	r6, r7
    4c08:	436f      	muls	r7, r5
    4c0a:	4365      	muls	r5, r4
    4c0c:	0c1c      	lsrs	r4, r3, #16
    4c0e:	19ad      	adds	r5, r5, r6
    4c10:	1964      	adds	r4, r4, r5
    4c12:	469c      	mov	ip, r3
    4c14:	42a6      	cmp	r6, r4
    4c16:	d903      	bls.n	4c20 <__aeabi_lmul+0x34>
    4c18:	2380      	movs	r3, #128	; 0x80
    4c1a:	025b      	lsls	r3, r3, #9
    4c1c:	4698      	mov	r8, r3
    4c1e:	4447      	add	r7, r8
    4c20:	4663      	mov	r3, ip
    4c22:	0c25      	lsrs	r5, r4, #16
    4c24:	19ef      	adds	r7, r5, r7
    4c26:	041d      	lsls	r5, r3, #16
    4c28:	464b      	mov	r3, r9
    4c2a:	434a      	muls	r2, r1
    4c2c:	4343      	muls	r3, r0
    4c2e:	0c2d      	lsrs	r5, r5, #16
    4c30:	0424      	lsls	r4, r4, #16
    4c32:	1964      	adds	r4, r4, r5
    4c34:	1899      	adds	r1, r3, r2
    4c36:	19c9      	adds	r1, r1, r7
    4c38:	0020      	movs	r0, r4
    4c3a:	bc0c      	pop	{r2, r3}
    4c3c:	4690      	mov	r8, r2
    4c3e:	4699      	mov	r9, r3
    4c40:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4c42:	46c0      	nop			; (mov r8, r8)

00004c44 <__udivmoddi4>:
    4c44:	b5f0      	push	{r4, r5, r6, r7, lr}
    4c46:	464d      	mov	r5, r9
    4c48:	4656      	mov	r6, sl
    4c4a:	4644      	mov	r4, r8
    4c4c:	465f      	mov	r7, fp
    4c4e:	b4f0      	push	{r4, r5, r6, r7}
    4c50:	4692      	mov	sl, r2
    4c52:	b083      	sub	sp, #12
    4c54:	0004      	movs	r4, r0
    4c56:	000d      	movs	r5, r1
    4c58:	4699      	mov	r9, r3
    4c5a:	428b      	cmp	r3, r1
    4c5c:	d82f      	bhi.n	4cbe <__udivmoddi4+0x7a>
    4c5e:	d02c      	beq.n	4cba <__udivmoddi4+0x76>
    4c60:	4649      	mov	r1, r9
    4c62:	4650      	mov	r0, sl
    4c64:	f000 f8ae 	bl	4dc4 <__clzdi2>
    4c68:	0029      	movs	r1, r5
    4c6a:	0006      	movs	r6, r0
    4c6c:	0020      	movs	r0, r4
    4c6e:	f000 f8a9 	bl	4dc4 <__clzdi2>
    4c72:	1a33      	subs	r3, r6, r0
    4c74:	4698      	mov	r8, r3
    4c76:	3b20      	subs	r3, #32
    4c78:	469b      	mov	fp, r3
    4c7a:	d500      	bpl.n	4c7e <__udivmoddi4+0x3a>
    4c7c:	e074      	b.n	4d68 <__udivmoddi4+0x124>
    4c7e:	4653      	mov	r3, sl
    4c80:	465a      	mov	r2, fp
    4c82:	4093      	lsls	r3, r2
    4c84:	001f      	movs	r7, r3
    4c86:	4653      	mov	r3, sl
    4c88:	4642      	mov	r2, r8
    4c8a:	4093      	lsls	r3, r2
    4c8c:	001e      	movs	r6, r3
    4c8e:	42af      	cmp	r7, r5
    4c90:	d829      	bhi.n	4ce6 <__udivmoddi4+0xa2>
    4c92:	d026      	beq.n	4ce2 <__udivmoddi4+0x9e>
    4c94:	465b      	mov	r3, fp
    4c96:	1ba4      	subs	r4, r4, r6
    4c98:	41bd      	sbcs	r5, r7
    4c9a:	2b00      	cmp	r3, #0
    4c9c:	da00      	bge.n	4ca0 <__udivmoddi4+0x5c>
    4c9e:	e079      	b.n	4d94 <__udivmoddi4+0x150>
    4ca0:	2200      	movs	r2, #0
    4ca2:	2300      	movs	r3, #0
    4ca4:	9200      	str	r2, [sp, #0]
    4ca6:	9301      	str	r3, [sp, #4]
    4ca8:	2301      	movs	r3, #1
    4caa:	465a      	mov	r2, fp
    4cac:	4093      	lsls	r3, r2
    4cae:	9301      	str	r3, [sp, #4]
    4cb0:	2301      	movs	r3, #1
    4cb2:	4642      	mov	r2, r8
    4cb4:	4093      	lsls	r3, r2
    4cb6:	9300      	str	r3, [sp, #0]
    4cb8:	e019      	b.n	4cee <__udivmoddi4+0xaa>
    4cba:	4282      	cmp	r2, r0
    4cbc:	d9d0      	bls.n	4c60 <__udivmoddi4+0x1c>
    4cbe:	2200      	movs	r2, #0
    4cc0:	2300      	movs	r3, #0
    4cc2:	9200      	str	r2, [sp, #0]
    4cc4:	9301      	str	r3, [sp, #4]
    4cc6:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4cc8:	2b00      	cmp	r3, #0
    4cca:	d001      	beq.n	4cd0 <__udivmoddi4+0x8c>
    4ccc:	601c      	str	r4, [r3, #0]
    4cce:	605d      	str	r5, [r3, #4]
    4cd0:	9800      	ldr	r0, [sp, #0]
    4cd2:	9901      	ldr	r1, [sp, #4]
    4cd4:	b003      	add	sp, #12
    4cd6:	bc3c      	pop	{r2, r3, r4, r5}
    4cd8:	4690      	mov	r8, r2
    4cda:	4699      	mov	r9, r3
    4cdc:	46a2      	mov	sl, r4
    4cde:	46ab      	mov	fp, r5
    4ce0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4ce2:	42a3      	cmp	r3, r4
    4ce4:	d9d6      	bls.n	4c94 <__udivmoddi4+0x50>
    4ce6:	2200      	movs	r2, #0
    4ce8:	2300      	movs	r3, #0
    4cea:	9200      	str	r2, [sp, #0]
    4cec:	9301      	str	r3, [sp, #4]
    4cee:	4643      	mov	r3, r8
    4cf0:	2b00      	cmp	r3, #0
    4cf2:	d0e8      	beq.n	4cc6 <__udivmoddi4+0x82>
    4cf4:	07fb      	lsls	r3, r7, #31
    4cf6:	0872      	lsrs	r2, r6, #1
    4cf8:	431a      	orrs	r2, r3
    4cfa:	4646      	mov	r6, r8
    4cfc:	087b      	lsrs	r3, r7, #1
    4cfe:	e00e      	b.n	4d1e <__udivmoddi4+0xda>
    4d00:	42ab      	cmp	r3, r5
    4d02:	d101      	bne.n	4d08 <__udivmoddi4+0xc4>
    4d04:	42a2      	cmp	r2, r4
    4d06:	d80c      	bhi.n	4d22 <__udivmoddi4+0xde>
    4d08:	1aa4      	subs	r4, r4, r2
    4d0a:	419d      	sbcs	r5, r3
    4d0c:	2001      	movs	r0, #1
    4d0e:	1924      	adds	r4, r4, r4
    4d10:	416d      	adcs	r5, r5
    4d12:	2100      	movs	r1, #0
    4d14:	3e01      	subs	r6, #1
    4d16:	1824      	adds	r4, r4, r0
    4d18:	414d      	adcs	r5, r1
    4d1a:	2e00      	cmp	r6, #0
    4d1c:	d006      	beq.n	4d2c <__udivmoddi4+0xe8>
    4d1e:	42ab      	cmp	r3, r5
    4d20:	d9ee      	bls.n	4d00 <__udivmoddi4+0xbc>
    4d22:	3e01      	subs	r6, #1
    4d24:	1924      	adds	r4, r4, r4
    4d26:	416d      	adcs	r5, r5
    4d28:	2e00      	cmp	r6, #0
    4d2a:	d1f8      	bne.n	4d1e <__udivmoddi4+0xda>
    4d2c:	465b      	mov	r3, fp
    4d2e:	9800      	ldr	r0, [sp, #0]
    4d30:	9901      	ldr	r1, [sp, #4]
    4d32:	1900      	adds	r0, r0, r4
    4d34:	4169      	adcs	r1, r5
    4d36:	2b00      	cmp	r3, #0
    4d38:	db22      	blt.n	4d80 <__udivmoddi4+0x13c>
    4d3a:	002b      	movs	r3, r5
    4d3c:	465a      	mov	r2, fp
    4d3e:	40d3      	lsrs	r3, r2
    4d40:	002a      	movs	r2, r5
    4d42:	4644      	mov	r4, r8
    4d44:	40e2      	lsrs	r2, r4
    4d46:	001c      	movs	r4, r3
    4d48:	465b      	mov	r3, fp
    4d4a:	0015      	movs	r5, r2
    4d4c:	2b00      	cmp	r3, #0
    4d4e:	db2c      	blt.n	4daa <__udivmoddi4+0x166>
    4d50:	0026      	movs	r6, r4
    4d52:	409e      	lsls	r6, r3
    4d54:	0033      	movs	r3, r6
    4d56:	0026      	movs	r6, r4
    4d58:	4647      	mov	r7, r8
    4d5a:	40be      	lsls	r6, r7
    4d5c:	0032      	movs	r2, r6
    4d5e:	1a80      	subs	r0, r0, r2
    4d60:	4199      	sbcs	r1, r3
    4d62:	9000      	str	r0, [sp, #0]
    4d64:	9101      	str	r1, [sp, #4]
    4d66:	e7ae      	b.n	4cc6 <__udivmoddi4+0x82>
    4d68:	4642      	mov	r2, r8
    4d6a:	2320      	movs	r3, #32
    4d6c:	1a9b      	subs	r3, r3, r2
    4d6e:	4652      	mov	r2, sl
    4d70:	40da      	lsrs	r2, r3
    4d72:	4641      	mov	r1, r8
    4d74:	0013      	movs	r3, r2
    4d76:	464a      	mov	r2, r9
    4d78:	408a      	lsls	r2, r1
    4d7a:	0017      	movs	r7, r2
    4d7c:	431f      	orrs	r7, r3
    4d7e:	e782      	b.n	4c86 <__udivmoddi4+0x42>
    4d80:	4642      	mov	r2, r8
    4d82:	2320      	movs	r3, #32
    4d84:	1a9b      	subs	r3, r3, r2
    4d86:	002a      	movs	r2, r5
    4d88:	4646      	mov	r6, r8
    4d8a:	409a      	lsls	r2, r3
    4d8c:	0023      	movs	r3, r4
    4d8e:	40f3      	lsrs	r3, r6
    4d90:	4313      	orrs	r3, r2
    4d92:	e7d5      	b.n	4d40 <__udivmoddi4+0xfc>
    4d94:	4642      	mov	r2, r8
    4d96:	2320      	movs	r3, #32
    4d98:	2100      	movs	r1, #0
    4d9a:	1a9b      	subs	r3, r3, r2
    4d9c:	2200      	movs	r2, #0
    4d9e:	9100      	str	r1, [sp, #0]
    4da0:	9201      	str	r2, [sp, #4]
    4da2:	2201      	movs	r2, #1
    4da4:	40da      	lsrs	r2, r3
    4da6:	9201      	str	r2, [sp, #4]
    4da8:	e782      	b.n	4cb0 <__udivmoddi4+0x6c>
    4daa:	4642      	mov	r2, r8
    4dac:	2320      	movs	r3, #32
    4dae:	0026      	movs	r6, r4
    4db0:	1a9b      	subs	r3, r3, r2
    4db2:	40de      	lsrs	r6, r3
    4db4:	002f      	movs	r7, r5
    4db6:	46b4      	mov	ip, r6
    4db8:	4097      	lsls	r7, r2
    4dba:	4666      	mov	r6, ip
    4dbc:	003b      	movs	r3, r7
    4dbe:	4333      	orrs	r3, r6
    4dc0:	e7c9      	b.n	4d56 <__udivmoddi4+0x112>
    4dc2:	46c0      	nop			; (mov r8, r8)

00004dc4 <__clzdi2>:
    4dc4:	b510      	push	{r4, lr}
    4dc6:	2900      	cmp	r1, #0
    4dc8:	d103      	bne.n	4dd2 <__clzdi2+0xe>
    4dca:	f000 f807 	bl	4ddc <__clzsi2>
    4dce:	3020      	adds	r0, #32
    4dd0:	e002      	b.n	4dd8 <__clzdi2+0x14>
    4dd2:	1c08      	adds	r0, r1, #0
    4dd4:	f000 f802 	bl	4ddc <__clzsi2>
    4dd8:	bd10      	pop	{r4, pc}
    4dda:	46c0      	nop			; (mov r8, r8)

00004ddc <__clzsi2>:
    4ddc:	211c      	movs	r1, #28
    4dde:	2301      	movs	r3, #1
    4de0:	041b      	lsls	r3, r3, #16
    4de2:	4298      	cmp	r0, r3
    4de4:	d301      	bcc.n	4dea <__clzsi2+0xe>
    4de6:	0c00      	lsrs	r0, r0, #16
    4de8:	3910      	subs	r1, #16
    4dea:	0a1b      	lsrs	r3, r3, #8
    4dec:	4298      	cmp	r0, r3
    4dee:	d301      	bcc.n	4df4 <__clzsi2+0x18>
    4df0:	0a00      	lsrs	r0, r0, #8
    4df2:	3908      	subs	r1, #8
    4df4:	091b      	lsrs	r3, r3, #4
    4df6:	4298      	cmp	r0, r3
    4df8:	d301      	bcc.n	4dfe <__clzsi2+0x22>
    4dfa:	0900      	lsrs	r0, r0, #4
    4dfc:	3904      	subs	r1, #4
    4dfe:	a202      	add	r2, pc, #8	; (adr r2, 4e08 <__clzsi2+0x2c>)
    4e00:	5c10      	ldrb	r0, [r2, r0]
    4e02:	1840      	adds	r0, r0, r1
    4e04:	4770      	bx	lr
    4e06:	46c0      	nop			; (mov r8, r8)
    4e08:	02020304 	.word	0x02020304
    4e0c:	01010101 	.word	0x01010101
	...

00004e18 <abs>:
    4e18:	17c3      	asrs	r3, r0, #31
    4e1a:	18c0      	adds	r0, r0, r3
    4e1c:	4058      	eors	r0, r3
    4e1e:	4770      	bx	lr

00004e20 <atexit>:
    4e20:	b510      	push	{r4, lr}
    4e22:	0001      	movs	r1, r0
    4e24:	2300      	movs	r3, #0
    4e26:	2200      	movs	r2, #0
    4e28:	2000      	movs	r0, #0
    4e2a:	f000 f8ed 	bl	5008 <__register_exitproc>
    4e2e:	bd10      	pop	{r4, pc}

00004e30 <exit>:
    4e30:	b510      	push	{r4, lr}
    4e32:	2100      	movs	r1, #0
    4e34:	0004      	movs	r4, r0
    4e36:	f000 f95d 	bl	50f4 <__call_exitprocs>
    4e3a:	4b04      	ldr	r3, [pc, #16]	; (4e4c <exit+0x1c>)
    4e3c:	6818      	ldr	r0, [r3, #0]
    4e3e:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    4e40:	2b00      	cmp	r3, #0
    4e42:	d000      	beq.n	4e46 <exit+0x16>
    4e44:	4798      	blx	r3
    4e46:	0020      	movs	r0, r4
    4e48:	f7fb fe3a 	bl	ac0 <_exit>
    4e4c:	00009474 	.word	0x00009474

00004e50 <__libc_fini_array>:
    4e50:	b570      	push	{r4, r5, r6, lr}
    4e52:	4b09      	ldr	r3, [pc, #36]	; (4e78 <__libc_fini_array+0x28>)
    4e54:	4c09      	ldr	r4, [pc, #36]	; (4e7c <__libc_fini_array+0x2c>)
    4e56:	1ae4      	subs	r4, r4, r3
    4e58:	10a4      	asrs	r4, r4, #2
    4e5a:	d009      	beq.n	4e70 <__libc_fini_array+0x20>
    4e5c:	4a08      	ldr	r2, [pc, #32]	; (4e80 <__libc_fini_array+0x30>)
    4e5e:	18a5      	adds	r5, r4, r2
    4e60:	00ad      	lsls	r5, r5, #2
    4e62:	18ed      	adds	r5, r5, r3
    4e64:	682b      	ldr	r3, [r5, #0]
    4e66:	3c01      	subs	r4, #1
    4e68:	4798      	blx	r3
    4e6a:	3d04      	subs	r5, #4
    4e6c:	2c00      	cmp	r4, #0
    4e6e:	d1f9      	bne.n	4e64 <__libc_fini_array+0x14>
    4e70:	f7fb ff72 	bl	d58 <_fini>
    4e74:	bd70      	pop	{r4, r5, r6, pc}
    4e76:	46c0      	nop			; (mov r8, r8)
	...
    4e80:	3fffffff 	.word	0x3fffffff

00004e84 <__libc_init_array>:
    4e84:	b570      	push	{r4, r5, r6, lr}
    4e86:	4e0d      	ldr	r6, [pc, #52]	; (4ebc <__libc_init_array+0x38>)
    4e88:	4d0d      	ldr	r5, [pc, #52]	; (4ec0 <__libc_init_array+0x3c>)
    4e8a:	2400      	movs	r4, #0
    4e8c:	1bad      	subs	r5, r5, r6
    4e8e:	10ad      	asrs	r5, r5, #2
    4e90:	d005      	beq.n	4e9e <__libc_init_array+0x1a>
    4e92:	00a3      	lsls	r3, r4, #2
    4e94:	58f3      	ldr	r3, [r6, r3]
    4e96:	3401      	adds	r4, #1
    4e98:	4798      	blx	r3
    4e9a:	42a5      	cmp	r5, r4
    4e9c:	d1f9      	bne.n	4e92 <__libc_init_array+0xe>
    4e9e:	f7fb ff55 	bl	d4c <_init>
    4ea2:	4e08      	ldr	r6, [pc, #32]	; (4ec4 <__libc_init_array+0x40>)
    4ea4:	4d08      	ldr	r5, [pc, #32]	; (4ec8 <__libc_init_array+0x44>)
    4ea6:	2400      	movs	r4, #0
    4ea8:	1bad      	subs	r5, r5, r6
    4eaa:	10ad      	asrs	r5, r5, #2
    4eac:	d005      	beq.n	4eba <__libc_init_array+0x36>
    4eae:	00a3      	lsls	r3, r4, #2
    4eb0:	58f3      	ldr	r3, [r6, r3]
    4eb2:	3401      	adds	r4, #1
    4eb4:	4798      	blx	r3
    4eb6:	42a5      	cmp	r5, r4
    4eb8:	d1f9      	bne.n	4eae <__libc_init_array+0x2a>
    4eba:	bd70      	pop	{r4, r5, r6, pc}
	...

00004ecc <memset>:
    4ecc:	b570      	push	{r4, r5, r6, lr}
    4ece:	0783      	lsls	r3, r0, #30
    4ed0:	d03f      	beq.n	4f52 <memset+0x86>
    4ed2:	1e54      	subs	r4, r2, #1
    4ed4:	2a00      	cmp	r2, #0
    4ed6:	d03b      	beq.n	4f50 <memset+0x84>
    4ed8:	b2ce      	uxtb	r6, r1
    4eda:	0003      	movs	r3, r0
    4edc:	2503      	movs	r5, #3
    4ede:	e003      	b.n	4ee8 <memset+0x1c>
    4ee0:	1e62      	subs	r2, r4, #1
    4ee2:	2c00      	cmp	r4, #0
    4ee4:	d034      	beq.n	4f50 <memset+0x84>
    4ee6:	0014      	movs	r4, r2
    4ee8:	3301      	adds	r3, #1
    4eea:	1e5a      	subs	r2, r3, #1
    4eec:	7016      	strb	r6, [r2, #0]
    4eee:	422b      	tst	r3, r5
    4ef0:	d1f6      	bne.n	4ee0 <memset+0x14>
    4ef2:	2c03      	cmp	r4, #3
    4ef4:	d924      	bls.n	4f40 <memset+0x74>
    4ef6:	25ff      	movs	r5, #255	; 0xff
    4ef8:	400d      	ands	r5, r1
    4efa:	022a      	lsls	r2, r5, #8
    4efc:	4315      	orrs	r5, r2
    4efe:	042a      	lsls	r2, r5, #16
    4f00:	4315      	orrs	r5, r2
    4f02:	2c0f      	cmp	r4, #15
    4f04:	d911      	bls.n	4f2a <memset+0x5e>
    4f06:	0026      	movs	r6, r4
    4f08:	3e10      	subs	r6, #16
    4f0a:	0936      	lsrs	r6, r6, #4
    4f0c:	3601      	adds	r6, #1
    4f0e:	0136      	lsls	r6, r6, #4
    4f10:	001a      	movs	r2, r3
    4f12:	199b      	adds	r3, r3, r6
    4f14:	6015      	str	r5, [r2, #0]
    4f16:	6055      	str	r5, [r2, #4]
    4f18:	6095      	str	r5, [r2, #8]
    4f1a:	60d5      	str	r5, [r2, #12]
    4f1c:	3210      	adds	r2, #16
    4f1e:	4293      	cmp	r3, r2
    4f20:	d1f8      	bne.n	4f14 <memset+0x48>
    4f22:	220f      	movs	r2, #15
    4f24:	4014      	ands	r4, r2
    4f26:	2c03      	cmp	r4, #3
    4f28:	d90a      	bls.n	4f40 <memset+0x74>
    4f2a:	1f26      	subs	r6, r4, #4
    4f2c:	08b6      	lsrs	r6, r6, #2
    4f2e:	3601      	adds	r6, #1
    4f30:	00b6      	lsls	r6, r6, #2
    4f32:	001a      	movs	r2, r3
    4f34:	199b      	adds	r3, r3, r6
    4f36:	c220      	stmia	r2!, {r5}
    4f38:	4293      	cmp	r3, r2
    4f3a:	d1fc      	bne.n	4f36 <memset+0x6a>
    4f3c:	2203      	movs	r2, #3
    4f3e:	4014      	ands	r4, r2
    4f40:	2c00      	cmp	r4, #0
    4f42:	d005      	beq.n	4f50 <memset+0x84>
    4f44:	b2c9      	uxtb	r1, r1
    4f46:	191c      	adds	r4, r3, r4
    4f48:	7019      	strb	r1, [r3, #0]
    4f4a:	3301      	adds	r3, #1
    4f4c:	429c      	cmp	r4, r3
    4f4e:	d1fb      	bne.n	4f48 <memset+0x7c>
    4f50:	bd70      	pop	{r4, r5, r6, pc}
    4f52:	0014      	movs	r4, r2
    4f54:	0003      	movs	r3, r0
    4f56:	e7cc      	b.n	4ef2 <memset+0x26>

00004f58 <cleanup_glue>:
    4f58:	b570      	push	{r4, r5, r6, lr}
    4f5a:	000c      	movs	r4, r1
    4f5c:	6809      	ldr	r1, [r1, #0]
    4f5e:	0005      	movs	r5, r0
    4f60:	2900      	cmp	r1, #0
    4f62:	d001      	beq.n	4f68 <cleanup_glue+0x10>
    4f64:	f7ff fff8 	bl	4f58 <cleanup_glue>
    4f68:	0028      	movs	r0, r5
    4f6a:	0021      	movs	r1, r4
    4f6c:	f000 f990 	bl	5290 <_free_r>
    4f70:	bd70      	pop	{r4, r5, r6, pc}
    4f72:	46c0      	nop			; (mov r8, r8)

00004f74 <_reclaim_reent>:
    4f74:	4b23      	ldr	r3, [pc, #140]	; (5004 <_reclaim_reent+0x90>)
    4f76:	b570      	push	{r4, r5, r6, lr}
    4f78:	681b      	ldr	r3, [r3, #0]
    4f7a:	0005      	movs	r5, r0
    4f7c:	4283      	cmp	r3, r0
    4f7e:	d034      	beq.n	4fea <_reclaim_reent+0x76>
    4f80:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    4f82:	2b00      	cmp	r3, #0
    4f84:	d011      	beq.n	4faa <_reclaim_reent+0x36>
    4f86:	2600      	movs	r6, #0
    4f88:	5999      	ldr	r1, [r3, r6]
    4f8a:	2900      	cmp	r1, #0
    4f8c:	d006      	beq.n	4f9c <_reclaim_reent+0x28>
    4f8e:	680c      	ldr	r4, [r1, #0]
    4f90:	0028      	movs	r0, r5
    4f92:	f000 f97d 	bl	5290 <_free_r>
    4f96:	1e21      	subs	r1, r4, #0
    4f98:	d1f9      	bne.n	4f8e <_reclaim_reent+0x1a>
    4f9a:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    4f9c:	3604      	adds	r6, #4
    4f9e:	2e80      	cmp	r6, #128	; 0x80
    4fa0:	d1f2      	bne.n	4f88 <_reclaim_reent+0x14>
    4fa2:	0019      	movs	r1, r3
    4fa4:	0028      	movs	r0, r5
    4fa6:	f000 f973 	bl	5290 <_free_r>
    4faa:	6c29      	ldr	r1, [r5, #64]	; 0x40
    4fac:	2900      	cmp	r1, #0
    4fae:	d002      	beq.n	4fb6 <_reclaim_reent+0x42>
    4fb0:	0028      	movs	r0, r5
    4fb2:	f000 f96d 	bl	5290 <_free_r>
    4fb6:	23a4      	movs	r3, #164	; 0xa4
    4fb8:	005b      	lsls	r3, r3, #1
    4fba:	58e9      	ldr	r1, [r5, r3]
    4fbc:	2900      	cmp	r1, #0
    4fbe:	d00b      	beq.n	4fd8 <_reclaim_reent+0x64>
    4fc0:	002e      	movs	r6, r5
    4fc2:	364d      	adds	r6, #77	; 0x4d
    4fc4:	36ff      	adds	r6, #255	; 0xff
    4fc6:	42b1      	cmp	r1, r6
    4fc8:	d006      	beq.n	4fd8 <_reclaim_reent+0x64>
    4fca:	680c      	ldr	r4, [r1, #0]
    4fcc:	0028      	movs	r0, r5
    4fce:	f000 f95f 	bl	5290 <_free_r>
    4fd2:	0021      	movs	r1, r4
    4fd4:	42a6      	cmp	r6, r4
    4fd6:	d1f8      	bne.n	4fca <_reclaim_reent+0x56>
    4fd8:	6d69      	ldr	r1, [r5, #84]	; 0x54
    4fda:	2900      	cmp	r1, #0
    4fdc:	d002      	beq.n	4fe4 <_reclaim_reent+0x70>
    4fde:	0028      	movs	r0, r5
    4fe0:	f000 f956 	bl	5290 <_free_r>
    4fe4:	6bab      	ldr	r3, [r5, #56]	; 0x38
    4fe6:	2b00      	cmp	r3, #0
    4fe8:	d100      	bne.n	4fec <_reclaim_reent+0x78>
    4fea:	bd70      	pop	{r4, r5, r6, pc}
    4fec:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    4fee:	0028      	movs	r0, r5
    4ff0:	4798      	blx	r3
    4ff2:	23b8      	movs	r3, #184	; 0xb8
    4ff4:	009b      	lsls	r3, r3, #2
    4ff6:	58e9      	ldr	r1, [r5, r3]
    4ff8:	2900      	cmp	r1, #0
    4ffa:	d0f6      	beq.n	4fea <_reclaim_reent+0x76>
    4ffc:	0028      	movs	r0, r5
    4ffe:	f7ff ffab 	bl	4f58 <cleanup_glue>
    5002:	e7f2      	b.n	4fea <_reclaim_reent+0x76>
    5004:	20000440 	.word	0x20000440

00005008 <__register_exitproc>:
    5008:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    500a:	4644      	mov	r4, r8
    500c:	465f      	mov	r7, fp
    500e:	4656      	mov	r6, sl
    5010:	464d      	mov	r5, r9
    5012:	469b      	mov	fp, r3
    5014:	4b2f      	ldr	r3, [pc, #188]	; (50d4 <__register_exitproc+0xcc>)
    5016:	b4f0      	push	{r4, r5, r6, r7}
    5018:	681c      	ldr	r4, [r3, #0]
    501a:	23a4      	movs	r3, #164	; 0xa4
    501c:	005b      	lsls	r3, r3, #1
    501e:	0005      	movs	r5, r0
    5020:	58e0      	ldr	r0, [r4, r3]
    5022:	000e      	movs	r6, r1
    5024:	4690      	mov	r8, r2
    5026:	2800      	cmp	r0, #0
    5028:	d04b      	beq.n	50c2 <__register_exitproc+0xba>
    502a:	6843      	ldr	r3, [r0, #4]
    502c:	2b1f      	cmp	r3, #31
    502e:	dc0d      	bgt.n	504c <__register_exitproc+0x44>
    5030:	1c5c      	adds	r4, r3, #1
    5032:	2d00      	cmp	r5, #0
    5034:	d121      	bne.n	507a <__register_exitproc+0x72>
    5036:	3302      	adds	r3, #2
    5038:	009b      	lsls	r3, r3, #2
    503a:	6044      	str	r4, [r0, #4]
    503c:	501e      	str	r6, [r3, r0]
    503e:	2000      	movs	r0, #0
    5040:	bc3c      	pop	{r2, r3, r4, r5}
    5042:	4690      	mov	r8, r2
    5044:	4699      	mov	r9, r3
    5046:	46a2      	mov	sl, r4
    5048:	46ab      	mov	fp, r5
    504a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    504c:	4b22      	ldr	r3, [pc, #136]	; (50d8 <__register_exitproc+0xd0>)
    504e:	2b00      	cmp	r3, #0
    5050:	d03c      	beq.n	50cc <__register_exitproc+0xc4>
    5052:	20c8      	movs	r0, #200	; 0xc8
    5054:	0040      	lsls	r0, r0, #1
    5056:	e000      	b.n	505a <__register_exitproc+0x52>
    5058:	bf00      	nop
    505a:	2800      	cmp	r0, #0
    505c:	d036      	beq.n	50cc <__register_exitproc+0xc4>
    505e:	22a4      	movs	r2, #164	; 0xa4
    5060:	2300      	movs	r3, #0
    5062:	0052      	lsls	r2, r2, #1
    5064:	58a1      	ldr	r1, [r4, r2]
    5066:	6043      	str	r3, [r0, #4]
    5068:	6001      	str	r1, [r0, #0]
    506a:	50a0      	str	r0, [r4, r2]
    506c:	3240      	adds	r2, #64	; 0x40
    506e:	5083      	str	r3, [r0, r2]
    5070:	3204      	adds	r2, #4
    5072:	5083      	str	r3, [r0, r2]
    5074:	2401      	movs	r4, #1
    5076:	2d00      	cmp	r5, #0
    5078:	d0dd      	beq.n	5036 <__register_exitproc+0x2e>
    507a:	009a      	lsls	r2, r3, #2
    507c:	4691      	mov	r9, r2
    507e:	4481      	add	r9, r0
    5080:	4642      	mov	r2, r8
    5082:	2188      	movs	r1, #136	; 0x88
    5084:	464f      	mov	r7, r9
    5086:	507a      	str	r2, [r7, r1]
    5088:	22c4      	movs	r2, #196	; 0xc4
    508a:	0052      	lsls	r2, r2, #1
    508c:	4690      	mov	r8, r2
    508e:	4480      	add	r8, r0
    5090:	4642      	mov	r2, r8
    5092:	3987      	subs	r1, #135	; 0x87
    5094:	4099      	lsls	r1, r3
    5096:	6812      	ldr	r2, [r2, #0]
    5098:	468a      	mov	sl, r1
    509a:	430a      	orrs	r2, r1
    509c:	4694      	mov	ip, r2
    509e:	4642      	mov	r2, r8
    50a0:	4661      	mov	r1, ip
    50a2:	6011      	str	r1, [r2, #0]
    50a4:	2284      	movs	r2, #132	; 0x84
    50a6:	4649      	mov	r1, r9
    50a8:	465f      	mov	r7, fp
    50aa:	0052      	lsls	r2, r2, #1
    50ac:	508f      	str	r7, [r1, r2]
    50ae:	2d02      	cmp	r5, #2
    50b0:	d1c1      	bne.n	5036 <__register_exitproc+0x2e>
    50b2:	0002      	movs	r2, r0
    50b4:	4655      	mov	r5, sl
    50b6:	328d      	adds	r2, #141	; 0x8d
    50b8:	32ff      	adds	r2, #255	; 0xff
    50ba:	6811      	ldr	r1, [r2, #0]
    50bc:	430d      	orrs	r5, r1
    50be:	6015      	str	r5, [r2, #0]
    50c0:	e7b9      	b.n	5036 <__register_exitproc+0x2e>
    50c2:	0020      	movs	r0, r4
    50c4:	304d      	adds	r0, #77	; 0x4d
    50c6:	30ff      	adds	r0, #255	; 0xff
    50c8:	50e0      	str	r0, [r4, r3]
    50ca:	e7ae      	b.n	502a <__register_exitproc+0x22>
    50cc:	2001      	movs	r0, #1
    50ce:	4240      	negs	r0, r0
    50d0:	e7b6      	b.n	5040 <__register_exitproc+0x38>
    50d2:	46c0      	nop			; (mov r8, r8)
    50d4:	00009474 	.word	0x00009474
    50d8:	00000000 	.word	0x00000000

000050dc <register_fini>:
    50dc:	4b03      	ldr	r3, [pc, #12]	; (50ec <register_fini+0x10>)
    50de:	b510      	push	{r4, lr}
    50e0:	2b00      	cmp	r3, #0
    50e2:	d002      	beq.n	50ea <register_fini+0xe>
    50e4:	4802      	ldr	r0, [pc, #8]	; (50f0 <register_fini+0x14>)
    50e6:	f7ff fe9b 	bl	4e20 <atexit>
    50ea:	bd10      	pop	{r4, pc}
    50ec:	00000000 	.word	0x00000000
    50f0:	00004e51 	.word	0x00004e51

000050f4 <__call_exitprocs>:
    50f4:	b5f0      	push	{r4, r5, r6, r7, lr}
    50f6:	465f      	mov	r7, fp
    50f8:	4656      	mov	r6, sl
    50fa:	464d      	mov	r5, r9
    50fc:	4644      	mov	r4, r8
    50fe:	b4f0      	push	{r4, r5, r6, r7}
    5100:	000f      	movs	r7, r1
    5102:	4b39      	ldr	r3, [pc, #228]	; (51e8 <__call_exitprocs+0xf4>)
    5104:	b085      	sub	sp, #20
    5106:	681b      	ldr	r3, [r3, #0]
    5108:	9001      	str	r0, [sp, #4]
    510a:	9302      	str	r3, [sp, #8]
    510c:	3349      	adds	r3, #73	; 0x49
    510e:	33ff      	adds	r3, #255	; 0xff
    5110:	9303      	str	r3, [sp, #12]
    5112:	22a4      	movs	r2, #164	; 0xa4
    5114:	9b02      	ldr	r3, [sp, #8]
    5116:	0052      	lsls	r2, r2, #1
    5118:	589e      	ldr	r6, [r3, r2]
    511a:	2e00      	cmp	r6, #0
    511c:	d04e      	beq.n	51bc <__call_exitprocs+0xc8>
    511e:	9b03      	ldr	r3, [sp, #12]
    5120:	4699      	mov	r9, r3
    5122:	23c4      	movs	r3, #196	; 0xc4
    5124:	005b      	lsls	r3, r3, #1
    5126:	4698      	mov	r8, r3
    5128:	3304      	adds	r3, #4
    512a:	469a      	mov	sl, r3
    512c:	6874      	ldr	r4, [r6, #4]
    512e:	44b0      	add	r8, r6
    5130:	00a5      	lsls	r5, r4, #2
    5132:	1975      	adds	r5, r6, r5
    5134:	44b2      	add	sl, r6
    5136:	3c01      	subs	r4, #1
    5138:	d508      	bpl.n	514c <__call_exitprocs+0x58>
    513a:	e02d      	b.n	5198 <__call_exitprocs+0xa4>
    513c:	1d6b      	adds	r3, r5, #5
    513e:	33ff      	adds	r3, #255	; 0xff
    5140:	681b      	ldr	r3, [r3, #0]
    5142:	429f      	cmp	r7, r3
    5144:	d004      	beq.n	5150 <__call_exitprocs+0x5c>
    5146:	3d04      	subs	r5, #4
    5148:	3c01      	subs	r4, #1
    514a:	d325      	bcc.n	5198 <__call_exitprocs+0xa4>
    514c:	2f00      	cmp	r7, #0
    514e:	d1f5      	bne.n	513c <__call_exitprocs+0x48>
    5150:	6873      	ldr	r3, [r6, #4]
    5152:	686a      	ldr	r2, [r5, #4]
    5154:	3b01      	subs	r3, #1
    5156:	42a3      	cmp	r3, r4
    5158:	d039      	beq.n	51ce <__call_exitprocs+0xda>
    515a:	2300      	movs	r3, #0
    515c:	606b      	str	r3, [r5, #4]
    515e:	2a00      	cmp	r2, #0
    5160:	d0f1      	beq.n	5146 <__call_exitprocs+0x52>
    5162:	6873      	ldr	r3, [r6, #4]
    5164:	4641      	mov	r1, r8
    5166:	469b      	mov	fp, r3
    5168:	2301      	movs	r3, #1
    516a:	40a3      	lsls	r3, r4
    516c:	6809      	ldr	r1, [r1, #0]
    516e:	4219      	tst	r1, r3
    5170:	d02b      	beq.n	51ca <__call_exitprocs+0xd6>
    5172:	4651      	mov	r1, sl
    5174:	6809      	ldr	r1, [r1, #0]
    5176:	4219      	tst	r1, r3
    5178:	d12b      	bne.n	51d2 <__call_exitprocs+0xde>
    517a:	002b      	movs	r3, r5
    517c:	3384      	adds	r3, #132	; 0x84
    517e:	6819      	ldr	r1, [r3, #0]
    5180:	9801      	ldr	r0, [sp, #4]
    5182:	4790      	blx	r2
    5184:	6873      	ldr	r3, [r6, #4]
    5186:	455b      	cmp	r3, fp
    5188:	d1c3      	bne.n	5112 <__call_exitprocs+0x1e>
    518a:	464b      	mov	r3, r9
    518c:	681b      	ldr	r3, [r3, #0]
    518e:	42b3      	cmp	r3, r6
    5190:	d1bf      	bne.n	5112 <__call_exitprocs+0x1e>
    5192:	3d04      	subs	r5, #4
    5194:	3c01      	subs	r4, #1
    5196:	d2d9      	bcs.n	514c <__call_exitprocs+0x58>
    5198:	4b14      	ldr	r3, [pc, #80]	; (51ec <__call_exitprocs+0xf8>)
    519a:	2b00      	cmp	r3, #0
    519c:	d00e      	beq.n	51bc <__call_exitprocs+0xc8>
    519e:	6873      	ldr	r3, [r6, #4]
    51a0:	2b00      	cmp	r3, #0
    51a2:	d11b      	bne.n	51dc <__call_exitprocs+0xe8>
    51a4:	6833      	ldr	r3, [r6, #0]
    51a6:	2b00      	cmp	r3, #0
    51a8:	d01c      	beq.n	51e4 <__call_exitprocs+0xf0>
    51aa:	464a      	mov	r2, r9
    51ac:	0030      	movs	r0, r6
    51ae:	6013      	str	r3, [r2, #0]
    51b0:	e000      	b.n	51b4 <__call_exitprocs+0xc0>
    51b2:	bf00      	nop
    51b4:	464b      	mov	r3, r9
    51b6:	681e      	ldr	r6, [r3, #0]
    51b8:	2e00      	cmp	r6, #0
    51ba:	d1b2      	bne.n	5122 <__call_exitprocs+0x2e>
    51bc:	b005      	add	sp, #20
    51be:	bc3c      	pop	{r2, r3, r4, r5}
    51c0:	4690      	mov	r8, r2
    51c2:	4699      	mov	r9, r3
    51c4:	46a2      	mov	sl, r4
    51c6:	46ab      	mov	fp, r5
    51c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    51ca:	4790      	blx	r2
    51cc:	e7da      	b.n	5184 <__call_exitprocs+0x90>
    51ce:	6074      	str	r4, [r6, #4]
    51d0:	e7c5      	b.n	515e <__call_exitprocs+0x6a>
    51d2:	002b      	movs	r3, r5
    51d4:	3384      	adds	r3, #132	; 0x84
    51d6:	6818      	ldr	r0, [r3, #0]
    51d8:	4790      	blx	r2
    51da:	e7d3      	b.n	5184 <__call_exitprocs+0x90>
    51dc:	6833      	ldr	r3, [r6, #0]
    51de:	46b1      	mov	r9, r6
    51e0:	001e      	movs	r6, r3
    51e2:	e7e9      	b.n	51b8 <__call_exitprocs+0xc4>
    51e4:	2300      	movs	r3, #0
    51e6:	e7fa      	b.n	51de <__call_exitprocs+0xea>
    51e8:	00009474 	.word	0x00009474
    51ec:	00000000 	.word	0x00000000

000051f0 <_malloc_trim_r>:
    51f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    51f2:	000c      	movs	r4, r1
    51f4:	0006      	movs	r6, r0
    51f6:	f000 fbd7 	bl	59a8 <__malloc_lock>
    51fa:	4f20      	ldr	r7, [pc, #128]	; (527c <_malloc_trim_r+0x8c>)
    51fc:	68bb      	ldr	r3, [r7, #8]
    51fe:	685d      	ldr	r5, [r3, #4]
    5200:	2303      	movs	r3, #3
    5202:	439d      	bics	r5, r3
    5204:	4b1e      	ldr	r3, [pc, #120]	; (5280 <_malloc_trim_r+0x90>)
    5206:	1b2c      	subs	r4, r5, r4
    5208:	469c      	mov	ip, r3
    520a:	4464      	add	r4, ip
    520c:	0b24      	lsrs	r4, r4, #12
    520e:	4b1d      	ldr	r3, [pc, #116]	; (5284 <_malloc_trim_r+0x94>)
    5210:	3c01      	subs	r4, #1
    5212:	0324      	lsls	r4, r4, #12
    5214:	429c      	cmp	r4, r3
    5216:	dd07      	ble.n	5228 <_malloc_trim_r+0x38>
    5218:	2100      	movs	r1, #0
    521a:	0030      	movs	r0, r6
    521c:	f000 fbc8 	bl	59b0 <_sbrk_r>
    5220:	68bb      	ldr	r3, [r7, #8]
    5222:	195b      	adds	r3, r3, r5
    5224:	4298      	cmp	r0, r3
    5226:	d004      	beq.n	5232 <_malloc_trim_r+0x42>
    5228:	0030      	movs	r0, r6
    522a:	f000 fbbf 	bl	59ac <__malloc_unlock>
    522e:	2000      	movs	r0, #0
    5230:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5232:	4261      	negs	r1, r4
    5234:	0030      	movs	r0, r6
    5236:	f000 fbbb 	bl	59b0 <_sbrk_r>
    523a:	1c43      	adds	r3, r0, #1
    523c:	d00d      	beq.n	525a <_malloc_trim_r+0x6a>
    523e:	2301      	movs	r3, #1
    5240:	1b2d      	subs	r5, r5, r4
    5242:	68ba      	ldr	r2, [r7, #8]
    5244:	431d      	orrs	r5, r3
    5246:	4b10      	ldr	r3, [pc, #64]	; (5288 <_malloc_trim_r+0x98>)
    5248:	6055      	str	r5, [r2, #4]
    524a:	681a      	ldr	r2, [r3, #0]
    524c:	0030      	movs	r0, r6
    524e:	1b14      	subs	r4, r2, r4
    5250:	601c      	str	r4, [r3, #0]
    5252:	f000 fbab 	bl	59ac <__malloc_unlock>
    5256:	2001      	movs	r0, #1
    5258:	e7ea      	b.n	5230 <_malloc_trim_r+0x40>
    525a:	2100      	movs	r1, #0
    525c:	0030      	movs	r0, r6
    525e:	f000 fba7 	bl	59b0 <_sbrk_r>
    5262:	68bb      	ldr	r3, [r7, #8]
    5264:	1ac2      	subs	r2, r0, r3
    5266:	2a0f      	cmp	r2, #15
    5268:	ddde      	ble.n	5228 <_malloc_trim_r+0x38>
    526a:	4908      	ldr	r1, [pc, #32]	; (528c <_malloc_trim_r+0x9c>)
    526c:	6809      	ldr	r1, [r1, #0]
    526e:	1a40      	subs	r0, r0, r1
    5270:	4905      	ldr	r1, [pc, #20]	; (5288 <_malloc_trim_r+0x98>)
    5272:	6008      	str	r0, [r1, #0]
    5274:	2101      	movs	r1, #1
    5276:	430a      	orrs	r2, r1
    5278:	605a      	str	r2, [r3, #4]
    527a:	e7d5      	b.n	5228 <_malloc_trim_r+0x38>
    527c:	20000444 	.word	0x20000444
    5280:	00000fef 	.word	0x00000fef
    5284:	00000fff 	.word	0x00000fff
    5288:	2000604c 	.word	0x2000604c
    528c:	20000850 	.word	0x20000850

00005290 <_free_r>:
    5290:	b5f0      	push	{r4, r5, r6, r7, lr}
    5292:	4647      	mov	r7, r8
    5294:	0005      	movs	r5, r0
    5296:	b480      	push	{r7}
    5298:	1e0c      	subs	r4, r1, #0
    529a:	d03e      	beq.n	531a <_free_r+0x8a>
    529c:	f000 fb84 	bl	59a8 <__malloc_lock>
    52a0:	2301      	movs	r3, #1
    52a2:	0021      	movs	r1, r4
    52a4:	4698      	mov	r8, r3
    52a6:	3908      	subs	r1, #8
    52a8:	684e      	ldr	r6, [r1, #4]
    52aa:	4642      	mov	r2, r8
    52ac:	0033      	movs	r3, r6
    52ae:	2003      	movs	r0, #3
    52b0:	4393      	bics	r3, r2
    52b2:	18cc      	adds	r4, r1, r3
    52b4:	6862      	ldr	r2, [r4, #4]
    52b6:	4382      	bics	r2, r0
    52b8:	4860      	ldr	r0, [pc, #384]	; (543c <_free_r+0x1ac>)
    52ba:	6887      	ldr	r7, [r0, #8]
    52bc:	42bc      	cmp	r4, r7
    52be:	d05a      	beq.n	5376 <_free_r+0xe6>
    52c0:	4647      	mov	r7, r8
    52c2:	6062      	str	r2, [r4, #4]
    52c4:	4237      	tst	r7, r6
    52c6:	d10b      	bne.n	52e0 <_free_r+0x50>
    52c8:	2708      	movs	r7, #8
    52ca:	46bc      	mov	ip, r7
    52cc:	680e      	ldr	r6, [r1, #0]
    52ce:	4484      	add	ip, r0
    52d0:	1b89      	subs	r1, r1, r6
    52d2:	199b      	adds	r3, r3, r6
    52d4:	688e      	ldr	r6, [r1, #8]
    52d6:	4566      	cmp	r6, ip
    52d8:	d066      	beq.n	53a8 <_free_r+0x118>
    52da:	68cf      	ldr	r7, [r1, #12]
    52dc:	60f7      	str	r7, [r6, #12]
    52de:	60be      	str	r6, [r7, #8]
    52e0:	2601      	movs	r6, #1
    52e2:	18a7      	adds	r7, r4, r2
    52e4:	687f      	ldr	r7, [r7, #4]
    52e6:	4237      	tst	r7, r6
    52e8:	d036      	beq.n	5358 <_free_r+0xc8>
    52ea:	4a55      	ldr	r2, [pc, #340]	; (5440 <_free_r+0x1b0>)
    52ec:	431e      	orrs	r6, r3
    52ee:	604e      	str	r6, [r1, #4]
    52f0:	50cb      	str	r3, [r1, r3]
    52f2:	4293      	cmp	r3, r2
    52f4:	d814      	bhi.n	5320 <_free_r+0x90>
    52f6:	08db      	lsrs	r3, r3, #3
    52f8:	3aff      	subs	r2, #255	; 0xff
    52fa:	109c      	asrs	r4, r3, #2
    52fc:	3aff      	subs	r2, #255	; 0xff
    52fe:	40a2      	lsls	r2, r4
    5300:	6844      	ldr	r4, [r0, #4]
    5302:	00db      	lsls	r3, r3, #3
    5304:	4322      	orrs	r2, r4
    5306:	6042      	str	r2, [r0, #4]
    5308:	1818      	adds	r0, r3, r0
    530a:	6883      	ldr	r3, [r0, #8]
    530c:	60c8      	str	r0, [r1, #12]
    530e:	608b      	str	r3, [r1, #8]
    5310:	6081      	str	r1, [r0, #8]
    5312:	60d9      	str	r1, [r3, #12]
    5314:	0028      	movs	r0, r5
    5316:	f000 fb49 	bl	59ac <__malloc_unlock>
    531a:	bc04      	pop	{r2}
    531c:	4690      	mov	r8, r2
    531e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5320:	0a5a      	lsrs	r2, r3, #9
    5322:	2a04      	cmp	r2, #4
    5324:	d84f      	bhi.n	53c6 <_free_r+0x136>
    5326:	099c      	lsrs	r4, r3, #6
    5328:	0026      	movs	r6, r4
    532a:	3439      	adds	r4, #57	; 0x39
    532c:	3638      	adds	r6, #56	; 0x38
    532e:	0064      	lsls	r4, r4, #1
    5330:	00a4      	lsls	r4, r4, #2
    5332:	1904      	adds	r4, r0, r4
    5334:	3c08      	subs	r4, #8
    5336:	68a2      	ldr	r2, [r4, #8]
    5338:	2703      	movs	r7, #3
    533a:	4294      	cmp	r4, r2
    533c:	d04a      	beq.n	53d4 <_free_r+0x144>
    533e:	6850      	ldr	r0, [r2, #4]
    5340:	43b8      	bics	r0, r7
    5342:	4283      	cmp	r3, r0
    5344:	d202      	bcs.n	534c <_free_r+0xbc>
    5346:	6892      	ldr	r2, [r2, #8]
    5348:	4294      	cmp	r4, r2
    534a:	d1f8      	bne.n	533e <_free_r+0xae>
    534c:	68d4      	ldr	r4, [r2, #12]
    534e:	60cc      	str	r4, [r1, #12]
    5350:	608a      	str	r2, [r1, #8]
    5352:	60a1      	str	r1, [r4, #8]
    5354:	60d1      	str	r1, [r2, #12]
    5356:	e7dd      	b.n	5314 <_free_r+0x84>
    5358:	189b      	adds	r3, r3, r2
    535a:	4f3a      	ldr	r7, [pc, #232]	; (5444 <_free_r+0x1b4>)
    535c:	68a2      	ldr	r2, [r4, #8]
    535e:	42ba      	cmp	r2, r7
    5360:	d040      	beq.n	53e4 <_free_r+0x154>
    5362:	68e4      	ldr	r4, [r4, #12]
    5364:	431e      	orrs	r6, r3
    5366:	60d4      	str	r4, [r2, #12]
    5368:	60a2      	str	r2, [r4, #8]
    536a:	4a35      	ldr	r2, [pc, #212]	; (5440 <_free_r+0x1b0>)
    536c:	604e      	str	r6, [r1, #4]
    536e:	50cb      	str	r3, [r1, r3]
    5370:	4293      	cmp	r3, r2
    5372:	d8d5      	bhi.n	5320 <_free_r+0x90>
    5374:	e7bf      	b.n	52f6 <_free_r+0x66>
    5376:	189b      	adds	r3, r3, r2
    5378:	4642      	mov	r2, r8
    537a:	4232      	tst	r2, r6
    537c:	d106      	bne.n	538c <_free_r+0xfc>
    537e:	680a      	ldr	r2, [r1, #0]
    5380:	1a89      	subs	r1, r1, r2
    5382:	688c      	ldr	r4, [r1, #8]
    5384:	189b      	adds	r3, r3, r2
    5386:	68ca      	ldr	r2, [r1, #12]
    5388:	60e2      	str	r2, [r4, #12]
    538a:	6094      	str	r4, [r2, #8]
    538c:	2401      	movs	r4, #1
    538e:	4a2e      	ldr	r2, [pc, #184]	; (5448 <_free_r+0x1b8>)
    5390:	431c      	orrs	r4, r3
    5392:	6812      	ldr	r2, [r2, #0]
    5394:	604c      	str	r4, [r1, #4]
    5396:	6081      	str	r1, [r0, #8]
    5398:	4293      	cmp	r3, r2
    539a:	d3bb      	bcc.n	5314 <_free_r+0x84>
    539c:	4b2b      	ldr	r3, [pc, #172]	; (544c <_free_r+0x1bc>)
    539e:	0028      	movs	r0, r5
    53a0:	6819      	ldr	r1, [r3, #0]
    53a2:	f7ff ff25 	bl	51f0 <_malloc_trim_r>
    53a6:	e7b5      	b.n	5314 <_free_r+0x84>
    53a8:	4646      	mov	r6, r8
    53aa:	18a0      	adds	r0, r4, r2
    53ac:	6840      	ldr	r0, [r0, #4]
    53ae:	4230      	tst	r0, r6
    53b0:	d13e      	bne.n	5430 <_free_r+0x1a0>
    53b2:	68a0      	ldr	r0, [r4, #8]
    53b4:	18d3      	adds	r3, r2, r3
    53b6:	68e2      	ldr	r2, [r4, #12]
    53b8:	60c2      	str	r2, [r0, #12]
    53ba:	6090      	str	r0, [r2, #8]
    53bc:	4642      	mov	r2, r8
    53be:	431a      	orrs	r2, r3
    53c0:	604a      	str	r2, [r1, #4]
    53c2:	50cb      	str	r3, [r1, r3]
    53c4:	e7a6      	b.n	5314 <_free_r+0x84>
    53c6:	2a14      	cmp	r2, #20
    53c8:	d814      	bhi.n	53f4 <_free_r+0x164>
    53ca:	0016      	movs	r6, r2
    53cc:	325c      	adds	r2, #92	; 0x5c
    53ce:	365b      	adds	r6, #91	; 0x5b
    53d0:	0054      	lsls	r4, r2, #1
    53d2:	e7ad      	b.n	5330 <_free_r+0xa0>
    53d4:	2301      	movs	r3, #1
    53d6:	10b6      	asrs	r6, r6, #2
    53d8:	40b3      	lsls	r3, r6
    53da:	6842      	ldr	r2, [r0, #4]
    53dc:	4313      	orrs	r3, r2
    53de:	6043      	str	r3, [r0, #4]
    53e0:	0022      	movs	r2, r4
    53e2:	e7b4      	b.n	534e <_free_r+0xbe>
    53e4:	431e      	orrs	r6, r3
    53e6:	60d1      	str	r1, [r2, #12]
    53e8:	6091      	str	r1, [r2, #8]
    53ea:	60ca      	str	r2, [r1, #12]
    53ec:	608a      	str	r2, [r1, #8]
    53ee:	604e      	str	r6, [r1, #4]
    53f0:	50cb      	str	r3, [r1, r3]
    53f2:	e78f      	b.n	5314 <_free_r+0x84>
    53f4:	2a54      	cmp	r2, #84	; 0x54
    53f6:	d805      	bhi.n	5404 <_free_r+0x174>
    53f8:	0b1c      	lsrs	r4, r3, #12
    53fa:	0026      	movs	r6, r4
    53fc:	346f      	adds	r4, #111	; 0x6f
    53fe:	366e      	adds	r6, #110	; 0x6e
    5400:	0064      	lsls	r4, r4, #1
    5402:	e795      	b.n	5330 <_free_r+0xa0>
    5404:	24aa      	movs	r4, #170	; 0xaa
    5406:	0064      	lsls	r4, r4, #1
    5408:	42a2      	cmp	r2, r4
    540a:	d805      	bhi.n	5418 <_free_r+0x188>
    540c:	0bdc      	lsrs	r4, r3, #15
    540e:	0026      	movs	r6, r4
    5410:	3478      	adds	r4, #120	; 0x78
    5412:	3677      	adds	r6, #119	; 0x77
    5414:	0064      	lsls	r4, r4, #1
    5416:	e78b      	b.n	5330 <_free_r+0xa0>
    5418:	4c0d      	ldr	r4, [pc, #52]	; (5450 <_free_r+0x1c0>)
    541a:	42a2      	cmp	r2, r4
    541c:	d805      	bhi.n	542a <_free_r+0x19a>
    541e:	0c9c      	lsrs	r4, r3, #18
    5420:	0026      	movs	r6, r4
    5422:	347d      	adds	r4, #125	; 0x7d
    5424:	367c      	adds	r6, #124	; 0x7c
    5426:	0064      	lsls	r4, r4, #1
    5428:	e782      	b.n	5330 <_free_r+0xa0>
    542a:	24fe      	movs	r4, #254	; 0xfe
    542c:	267e      	movs	r6, #126	; 0x7e
    542e:	e77f      	b.n	5330 <_free_r+0xa0>
    5430:	4642      	mov	r2, r8
    5432:	431a      	orrs	r2, r3
    5434:	604a      	str	r2, [r1, #4]
    5436:	50cb      	str	r3, [r1, r3]
    5438:	e76c      	b.n	5314 <_free_r+0x84>
    543a:	46c0      	nop			; (mov r8, r8)
    543c:	20000444 	.word	0x20000444
    5440:	000001ff 	.word	0x000001ff
    5444:	2000044c 	.word	0x2000044c
    5448:	2000084c 	.word	0x2000084c
    544c:	20006048 	.word	0x20006048
    5450:	00000554 	.word	0x00000554

00005454 <_malloc_r>:
    5454:	b5f0      	push	{r4, r5, r6, r7, lr}
    5456:	465f      	mov	r7, fp
    5458:	464d      	mov	r5, r9
    545a:	4656      	mov	r6, sl
    545c:	4644      	mov	r4, r8
    545e:	b4f0      	push	{r4, r5, r6, r7}
    5460:	000d      	movs	r5, r1
    5462:	350b      	adds	r5, #11
    5464:	b083      	sub	sp, #12
    5466:	0007      	movs	r7, r0
    5468:	2d16      	cmp	r5, #22
    546a:	d800      	bhi.n	546e <_malloc_r+0x1a>
    546c:	e0a8      	b.n	55c0 <_malloc_r+0x16c>
    546e:	2307      	movs	r3, #7
    5470:	439d      	bics	r5, r3
    5472:	d500      	bpl.n	5476 <_malloc_r+0x22>
    5474:	e0ce      	b.n	5614 <_malloc_r+0x1c0>
    5476:	42a9      	cmp	r1, r5
    5478:	d900      	bls.n	547c <_malloc_r+0x28>
    547a:	e0cb      	b.n	5614 <_malloc_r+0x1c0>
    547c:	f000 fa94 	bl	59a8 <__malloc_lock>
    5480:	23f8      	movs	r3, #248	; 0xf8
    5482:	33ff      	adds	r3, #255	; 0xff
    5484:	429d      	cmp	r5, r3
    5486:	d800      	bhi.n	548a <_malloc_r+0x36>
    5488:	e284      	b.n	5994 <_malloc_r+0x540>
    548a:	0a6b      	lsrs	r3, r5, #9
    548c:	d100      	bne.n	5490 <_malloc_r+0x3c>
    548e:	e0c5      	b.n	561c <_malloc_r+0x1c8>
    5490:	2b04      	cmp	r3, #4
    5492:	d900      	bls.n	5496 <_malloc_r+0x42>
    5494:	e16c      	b.n	5770 <_malloc_r+0x31c>
    5496:	2338      	movs	r3, #56	; 0x38
    5498:	09a9      	lsrs	r1, r5, #6
    549a:	469c      	mov	ip, r3
    549c:	3301      	adds	r3, #1
    549e:	4698      	mov	r8, r3
    54a0:	4488      	add	r8, r1
    54a2:	4643      	mov	r3, r8
    54a4:	448c      	add	ip, r1
    54a6:	0059      	lsls	r1, r3, #1
    54a8:	4ec9      	ldr	r6, [pc, #804]	; (57d0 <_malloc_r+0x37c>)
    54aa:	0089      	lsls	r1, r1, #2
    54ac:	1871      	adds	r1, r6, r1
    54ae:	3908      	subs	r1, #8
    54b0:	68cc      	ldr	r4, [r1, #12]
    54b2:	42a1      	cmp	r1, r4
    54b4:	d017      	beq.n	54e6 <_malloc_r+0x92>
    54b6:	2303      	movs	r3, #3
    54b8:	6862      	ldr	r2, [r4, #4]
    54ba:	439a      	bics	r2, r3
    54bc:	0013      	movs	r3, r2
    54be:	1b52      	subs	r2, r2, r5
    54c0:	2a0f      	cmp	r2, #15
    54c2:	dd00      	ble.n	54c6 <_malloc_r+0x72>
    54c4:	e0b0      	b.n	5628 <_malloc_r+0x1d4>
    54c6:	2003      	movs	r0, #3
    54c8:	2a00      	cmp	r2, #0
    54ca:	db09      	blt.n	54e0 <_malloc_r+0x8c>
    54cc:	e08d      	b.n	55ea <_malloc_r+0x196>
    54ce:	6863      	ldr	r3, [r4, #4]
    54d0:	4383      	bics	r3, r0
    54d2:	1b5a      	subs	r2, r3, r5
    54d4:	2a0f      	cmp	r2, #15
    54d6:	dd00      	ble.n	54da <_malloc_r+0x86>
    54d8:	e0a6      	b.n	5628 <_malloc_r+0x1d4>
    54da:	2a00      	cmp	r2, #0
    54dc:	db00      	blt.n	54e0 <_malloc_r+0x8c>
    54de:	e084      	b.n	55ea <_malloc_r+0x196>
    54e0:	68e4      	ldr	r4, [r4, #12]
    54e2:	42a1      	cmp	r1, r4
    54e4:	d1f3      	bne.n	54ce <_malloc_r+0x7a>
    54e6:	4643      	mov	r3, r8
    54e8:	9300      	str	r3, [sp, #0]
    54ea:	0032      	movs	r2, r6
    54ec:	6934      	ldr	r4, [r6, #16]
    54ee:	3208      	adds	r2, #8
    54f0:	4294      	cmp	r4, r2
    54f2:	d100      	bne.n	54f6 <_malloc_r+0xa2>
    54f4:	e18f      	b.n	5816 <_malloc_r+0x3c2>
    54f6:	2303      	movs	r3, #3
    54f8:	6861      	ldr	r1, [r4, #4]
    54fa:	4399      	bics	r1, r3
    54fc:	000b      	movs	r3, r1
    54fe:	1b48      	subs	r0, r1, r5
    5500:	280f      	cmp	r0, #15
    5502:	dd00      	ble.n	5506 <_malloc_r+0xb2>
    5504:	e176      	b.n	57f4 <_malloc_r+0x3a0>
    5506:	6172      	str	r2, [r6, #20]
    5508:	6132      	str	r2, [r6, #16]
    550a:	2800      	cmp	r0, #0
    550c:	da71      	bge.n	55f2 <_malloc_r+0x19e>
    550e:	4ab1      	ldr	r2, [pc, #708]	; (57d4 <_malloc_r+0x380>)
    5510:	4291      	cmp	r1, r2
    5512:	d900      	bls.n	5516 <_malloc_r+0xc2>
    5514:	e134      	b.n	5780 <_malloc_r+0x32c>
    5516:	2301      	movs	r3, #1
    5518:	08c8      	lsrs	r0, r1, #3
    551a:	1082      	asrs	r2, r0, #2
    551c:	4093      	lsls	r3, r2
    551e:	6872      	ldr	r2, [r6, #4]
    5520:	431a      	orrs	r2, r3
    5522:	00c3      	lsls	r3, r0, #3
    5524:	199b      	adds	r3, r3, r6
    5526:	6898      	ldr	r0, [r3, #8]
    5528:	6072      	str	r2, [r6, #4]
    552a:	60e3      	str	r3, [r4, #12]
    552c:	60a0      	str	r0, [r4, #8]
    552e:	609c      	str	r4, [r3, #8]
    5530:	0013      	movs	r3, r2
    5532:	60c4      	str	r4, [r0, #12]
    5534:	2001      	movs	r0, #1
    5536:	9900      	ldr	r1, [sp, #0]
    5538:	108a      	asrs	r2, r1, #2
    553a:	4090      	lsls	r0, r2
    553c:	4298      	cmp	r0, r3
    553e:	d900      	bls.n	5542 <_malloc_r+0xee>
    5540:	e075      	b.n	562e <_malloc_r+0x1da>
    5542:	4203      	tst	r3, r0
    5544:	d10c      	bne.n	5560 <_malloc_r+0x10c>
    5546:	2203      	movs	r2, #3
    5548:	4391      	bics	r1, r2
    554a:	1d0a      	adds	r2, r1, #4
    554c:	0040      	lsls	r0, r0, #1
    554e:	9200      	str	r2, [sp, #0]
    5550:	4203      	tst	r3, r0
    5552:	d105      	bne.n	5560 <_malloc_r+0x10c>
    5554:	9a00      	ldr	r2, [sp, #0]
    5556:	0040      	lsls	r0, r0, #1
    5558:	3204      	adds	r2, #4
    555a:	9200      	str	r2, [sp, #0]
    555c:	4203      	tst	r3, r0
    555e:	d0f9      	beq.n	5554 <_malloc_r+0x100>
    5560:	2303      	movs	r3, #3
    5562:	4698      	mov	r8, r3
    5564:	9a00      	ldr	r2, [sp, #0]
    5566:	00d3      	lsls	r3, r2, #3
    5568:	4699      	mov	r9, r3
    556a:	44b1      	add	r9, r6
    556c:	46cc      	mov	ip, r9
    556e:	4692      	mov	sl, r2
    5570:	4663      	mov	r3, ip
    5572:	68dc      	ldr	r4, [r3, #12]
    5574:	45a4      	cmp	ip, r4
    5576:	d107      	bne.n	5588 <_malloc_r+0x134>
    5578:	e14f      	b.n	581a <_malloc_r+0x3c6>
    557a:	2a00      	cmp	r2, #0
    557c:	db00      	blt.n	5580 <_malloc_r+0x12c>
    557e:	e15f      	b.n	5840 <_malloc_r+0x3ec>
    5580:	68e4      	ldr	r4, [r4, #12]
    5582:	45a4      	cmp	ip, r4
    5584:	d100      	bne.n	5588 <_malloc_r+0x134>
    5586:	e148      	b.n	581a <_malloc_r+0x3c6>
    5588:	4642      	mov	r2, r8
    558a:	6863      	ldr	r3, [r4, #4]
    558c:	4393      	bics	r3, r2
    558e:	1b5a      	subs	r2, r3, r5
    5590:	2a0f      	cmp	r2, #15
    5592:	ddf2      	ble.n	557a <_malloc_r+0x126>
    5594:	2101      	movs	r1, #1
    5596:	1963      	adds	r3, r4, r5
    5598:	430d      	orrs	r5, r1
    559a:	6065      	str	r5, [r4, #4]
    559c:	68e0      	ldr	r0, [r4, #12]
    559e:	68a5      	ldr	r5, [r4, #8]
    55a0:	3608      	adds	r6, #8
    55a2:	60e8      	str	r0, [r5, #12]
    55a4:	4311      	orrs	r1, r2
    55a6:	6085      	str	r5, [r0, #8]
    55a8:	60f3      	str	r3, [r6, #12]
    55aa:	60b3      	str	r3, [r6, #8]
    55ac:	0038      	movs	r0, r7
    55ae:	60de      	str	r6, [r3, #12]
    55b0:	609e      	str	r6, [r3, #8]
    55b2:	6059      	str	r1, [r3, #4]
    55b4:	509a      	str	r2, [r3, r2]
    55b6:	f000 f9f9 	bl	59ac <__malloc_unlock>
    55ba:	0020      	movs	r0, r4
    55bc:	3008      	adds	r0, #8
    55be:	e022      	b.n	5606 <_malloc_r+0x1b2>
    55c0:	2910      	cmp	r1, #16
    55c2:	d827      	bhi.n	5614 <_malloc_r+0x1c0>
    55c4:	0038      	movs	r0, r7
    55c6:	f000 f9ef 	bl	59a8 <__malloc_lock>
    55ca:	2510      	movs	r5, #16
    55cc:	2306      	movs	r3, #6
    55ce:	2102      	movs	r1, #2
    55d0:	4e7f      	ldr	r6, [pc, #508]	; (57d0 <_malloc_r+0x37c>)
    55d2:	009b      	lsls	r3, r3, #2
    55d4:	18f3      	adds	r3, r6, r3
    55d6:	001a      	movs	r2, r3
    55d8:	685c      	ldr	r4, [r3, #4]
    55da:	3a08      	subs	r2, #8
    55dc:	4294      	cmp	r4, r2
    55de:	d100      	bne.n	55e2 <_malloc_r+0x18e>
    55e0:	e127      	b.n	5832 <_malloc_r+0x3de>
    55e2:	2303      	movs	r3, #3
    55e4:	6862      	ldr	r2, [r4, #4]
    55e6:	439a      	bics	r2, r3
    55e8:	0013      	movs	r3, r2
    55ea:	68e2      	ldr	r2, [r4, #12]
    55ec:	68a1      	ldr	r1, [r4, #8]
    55ee:	60ca      	str	r2, [r1, #12]
    55f0:	6091      	str	r1, [r2, #8]
    55f2:	2201      	movs	r2, #1
    55f4:	18e3      	adds	r3, r4, r3
    55f6:	6859      	ldr	r1, [r3, #4]
    55f8:	0038      	movs	r0, r7
    55fa:	430a      	orrs	r2, r1
    55fc:	605a      	str	r2, [r3, #4]
    55fe:	f000 f9d5 	bl	59ac <__malloc_unlock>
    5602:	0020      	movs	r0, r4
    5604:	3008      	adds	r0, #8
    5606:	b003      	add	sp, #12
    5608:	bc3c      	pop	{r2, r3, r4, r5}
    560a:	4690      	mov	r8, r2
    560c:	4699      	mov	r9, r3
    560e:	46a2      	mov	sl, r4
    5610:	46ab      	mov	fp, r5
    5612:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5614:	230c      	movs	r3, #12
    5616:	2000      	movs	r0, #0
    5618:	603b      	str	r3, [r7, #0]
    561a:	e7f4      	b.n	5606 <_malloc_r+0x1b2>
    561c:	2340      	movs	r3, #64	; 0x40
    561e:	4698      	mov	r8, r3
    5620:	3b01      	subs	r3, #1
    5622:	2180      	movs	r1, #128	; 0x80
    5624:	469c      	mov	ip, r3
    5626:	e73f      	b.n	54a8 <_malloc_r+0x54>
    5628:	4663      	mov	r3, ip
    562a:	9300      	str	r3, [sp, #0]
    562c:	e75d      	b.n	54ea <_malloc_r+0x96>
    562e:	2303      	movs	r3, #3
    5630:	68b4      	ldr	r4, [r6, #8]
    5632:	6862      	ldr	r2, [r4, #4]
    5634:	439a      	bics	r2, r3
    5636:	4690      	mov	r8, r2
    5638:	42aa      	cmp	r2, r5
    563a:	d303      	bcc.n	5644 <_malloc_r+0x1f0>
    563c:	1b52      	subs	r2, r2, r5
    563e:	2a0f      	cmp	r2, #15
    5640:	dd00      	ble.n	5644 <_malloc_r+0x1f0>
    5642:	e087      	b.n	5754 <_malloc_r+0x300>
    5644:	0023      	movs	r3, r4
    5646:	4443      	add	r3, r8
    5648:	4a63      	ldr	r2, [pc, #396]	; (57d8 <_malloc_r+0x384>)
    564a:	9301      	str	r3, [sp, #4]
    564c:	4b63      	ldr	r3, [pc, #396]	; (57dc <_malloc_r+0x388>)
    564e:	4693      	mov	fp, r2
    5650:	681b      	ldr	r3, [r3, #0]
    5652:	6812      	ldr	r2, [r2, #0]
    5654:	18eb      	adds	r3, r5, r3
    5656:	3201      	adds	r2, #1
    5658:	d100      	bne.n	565c <_malloc_r+0x208>
    565a:	e157      	b.n	590c <_malloc_r+0x4b8>
    565c:	4a60      	ldr	r2, [pc, #384]	; (57e0 <_malloc_r+0x38c>)
    565e:	4694      	mov	ip, r2
    5660:	4463      	add	r3, ip
    5662:	0b1b      	lsrs	r3, r3, #12
    5664:	031b      	lsls	r3, r3, #12
    5666:	9300      	str	r3, [sp, #0]
    5668:	9900      	ldr	r1, [sp, #0]
    566a:	0038      	movs	r0, r7
    566c:	f000 f9a0 	bl	59b0 <_sbrk_r>
    5670:	0003      	movs	r3, r0
    5672:	4681      	mov	r9, r0
    5674:	3301      	adds	r3, #1
    5676:	d061      	beq.n	573c <_malloc_r+0x2e8>
    5678:	9b01      	ldr	r3, [sp, #4]
    567a:	4283      	cmp	r3, r0
    567c:	d900      	bls.n	5680 <_malloc_r+0x22c>
    567e:	e0fd      	b.n	587c <_malloc_r+0x428>
    5680:	4b58      	ldr	r3, [pc, #352]	; (57e4 <_malloc_r+0x390>)
    5682:	9a00      	ldr	r2, [sp, #0]
    5684:	469a      	mov	sl, r3
    5686:	681b      	ldr	r3, [r3, #0]
    5688:	469c      	mov	ip, r3
    568a:	4653      	mov	r3, sl
    568c:	4462      	add	r2, ip
    568e:	601a      	str	r2, [r3, #0]
    5690:	9b01      	ldr	r3, [sp, #4]
    5692:	0011      	movs	r1, r2
    5694:	454b      	cmp	r3, r9
    5696:	d100      	bne.n	569a <_malloc_r+0x246>
    5698:	e143      	b.n	5922 <_malloc_r+0x4ce>
    569a:	465b      	mov	r3, fp
    569c:	681b      	ldr	r3, [r3, #0]
    569e:	3301      	adds	r3, #1
    56a0:	d100      	bne.n	56a4 <_malloc_r+0x250>
    56a2:	e14f      	b.n	5944 <_malloc_r+0x4f0>
    56a4:	464b      	mov	r3, r9
    56a6:	9a01      	ldr	r2, [sp, #4]
    56a8:	1a9b      	subs	r3, r3, r2
    56aa:	1859      	adds	r1, r3, r1
    56ac:	4653      	mov	r3, sl
    56ae:	6019      	str	r1, [r3, #0]
    56b0:	2307      	movs	r3, #7
    56b2:	464a      	mov	r2, r9
    56b4:	4013      	ands	r3, r2
    56b6:	d100      	bne.n	56ba <_malloc_r+0x266>
    56b8:	e117      	b.n	58ea <_malloc_r+0x496>
    56ba:	2108      	movs	r1, #8
    56bc:	4689      	mov	r9, r1
    56be:	494a      	ldr	r1, [pc, #296]	; (57e8 <_malloc_r+0x394>)
    56c0:	1ad2      	subs	r2, r2, r3
    56c2:	4491      	add	r9, r2
    56c4:	1ac9      	subs	r1, r1, r3
    56c6:	9b00      	ldr	r3, [sp, #0]
    56c8:	0038      	movs	r0, r7
    56ca:	444b      	add	r3, r9
    56cc:	051b      	lsls	r3, r3, #20
    56ce:	0d1b      	lsrs	r3, r3, #20
    56d0:	1acb      	subs	r3, r1, r3
    56d2:	0019      	movs	r1, r3
    56d4:	469b      	mov	fp, r3
    56d6:	f000 f96b 	bl	59b0 <_sbrk_r>
    56da:	1c43      	adds	r3, r0, #1
    56dc:	d100      	bne.n	56e0 <_malloc_r+0x28c>
    56de:	e135      	b.n	594c <_malloc_r+0x4f8>
    56e0:	464b      	mov	r3, r9
    56e2:	1ac0      	subs	r0, r0, r3
    56e4:	2301      	movs	r3, #1
    56e6:	4458      	add	r0, fp
    56e8:	4318      	orrs	r0, r3
    56ea:	4653      	mov	r3, sl
    56ec:	681b      	ldr	r3, [r3, #0]
    56ee:	445b      	add	r3, fp
    56f0:	0019      	movs	r1, r3
    56f2:	4653      	mov	r3, sl
    56f4:	6019      	str	r1, [r3, #0]
    56f6:	464b      	mov	r3, r9
    56f8:	60b3      	str	r3, [r6, #8]
    56fa:	6058      	str	r0, [r3, #4]
    56fc:	42b4      	cmp	r4, r6
    56fe:	d013      	beq.n	5728 <_malloc_r+0x2d4>
    5700:	4643      	mov	r3, r8
    5702:	2b0f      	cmp	r3, #15
    5704:	d800      	bhi.n	5708 <_malloc_r+0x2b4>
    5706:	e0e1      	b.n	58cc <_malloc_r+0x478>
    5708:	4643      	mov	r3, r8
    570a:	2207      	movs	r2, #7
    570c:	6860      	ldr	r0, [r4, #4]
    570e:	3b0c      	subs	r3, #12
    5710:	4393      	bics	r3, r2
    5712:	3a06      	subs	r2, #6
    5714:	4002      	ands	r2, r0
    5716:	2005      	movs	r0, #5
    5718:	431a      	orrs	r2, r3
    571a:	6062      	str	r2, [r4, #4]
    571c:	18e2      	adds	r2, r4, r3
    571e:	6050      	str	r0, [r2, #4]
    5720:	6090      	str	r0, [r2, #8]
    5722:	2b0f      	cmp	r3, #15
    5724:	d900      	bls.n	5728 <_malloc_r+0x2d4>
    5726:	e115      	b.n	5954 <_malloc_r+0x500>
    5728:	4b30      	ldr	r3, [pc, #192]	; (57ec <_malloc_r+0x398>)
    572a:	681a      	ldr	r2, [r3, #0]
    572c:	4291      	cmp	r1, r2
    572e:	d900      	bls.n	5732 <_malloc_r+0x2de>
    5730:	6019      	str	r1, [r3, #0]
    5732:	4b2f      	ldr	r3, [pc, #188]	; (57f0 <_malloc_r+0x39c>)
    5734:	681a      	ldr	r2, [r3, #0]
    5736:	4291      	cmp	r1, r2
    5738:	d900      	bls.n	573c <_malloc_r+0x2e8>
    573a:	6019      	str	r1, [r3, #0]
    573c:	2303      	movs	r3, #3
    573e:	68b4      	ldr	r4, [r6, #8]
    5740:	6862      	ldr	r2, [r4, #4]
    5742:	439a      	bics	r2, r3
    5744:	0013      	movs	r3, r2
    5746:	1b52      	subs	r2, r2, r5
    5748:	429d      	cmp	r5, r3
    574a:	d900      	bls.n	574e <_malloc_r+0x2fa>
    574c:	e0c1      	b.n	58d2 <_malloc_r+0x47e>
    574e:	2a0f      	cmp	r2, #15
    5750:	dc00      	bgt.n	5754 <_malloc_r+0x300>
    5752:	e0be      	b.n	58d2 <_malloc_r+0x47e>
    5754:	2301      	movs	r3, #1
    5756:	0029      	movs	r1, r5
    5758:	1965      	adds	r5, r4, r5
    575a:	4319      	orrs	r1, r3
    575c:	4313      	orrs	r3, r2
    575e:	6061      	str	r1, [r4, #4]
    5760:	0038      	movs	r0, r7
    5762:	60b5      	str	r5, [r6, #8]
    5764:	606b      	str	r3, [r5, #4]
    5766:	f000 f921 	bl	59ac <__malloc_unlock>
    576a:	0020      	movs	r0, r4
    576c:	3008      	adds	r0, #8
    576e:	e74a      	b.n	5606 <_malloc_r+0x1b2>
    5770:	2b14      	cmp	r3, #20
    5772:	d974      	bls.n	585e <_malloc_r+0x40a>
    5774:	2b54      	cmp	r3, #84	; 0x54
    5776:	d900      	bls.n	577a <_malloc_r+0x326>
    5778:	e0b0      	b.n	58dc <_malloc_r+0x488>
    577a:	0b29      	lsrs	r1, r5, #12
    577c:	236e      	movs	r3, #110	; 0x6e
    577e:	e68c      	b.n	549a <_malloc_r+0x46>
    5780:	0a4a      	lsrs	r2, r1, #9
    5782:	2a04      	cmp	r2, #4
    5784:	d974      	bls.n	5870 <_malloc_r+0x41c>
    5786:	2a14      	cmp	r2, #20
    5788:	d900      	bls.n	578c <_malloc_r+0x338>
    578a:	e0c2      	b.n	5912 <_malloc_r+0x4be>
    578c:	0010      	movs	r0, r2
    578e:	325c      	adds	r2, #92	; 0x5c
    5790:	305b      	adds	r0, #91	; 0x5b
    5792:	0052      	lsls	r2, r2, #1
    5794:	2108      	movs	r1, #8
    5796:	4249      	negs	r1, r1
    5798:	468c      	mov	ip, r1
    579a:	0092      	lsls	r2, r2, #2
    579c:	18b2      	adds	r2, r6, r2
    579e:	4494      	add	ip, r2
    57a0:	4662      	mov	r2, ip
    57a2:	6892      	ldr	r2, [r2, #8]
    57a4:	310b      	adds	r1, #11
    57a6:	4688      	mov	r8, r1
    57a8:	4594      	cmp	ip, r2
    57aa:	d100      	bne.n	57ae <_malloc_r+0x35a>
    57ac:	e0a0      	b.n	58f0 <_malloc_r+0x49c>
    57ae:	4641      	mov	r1, r8
    57b0:	6850      	ldr	r0, [r2, #4]
    57b2:	4388      	bics	r0, r1
    57b4:	4283      	cmp	r3, r0
    57b6:	d202      	bcs.n	57be <_malloc_r+0x36a>
    57b8:	6892      	ldr	r2, [r2, #8]
    57ba:	4594      	cmp	ip, r2
    57bc:	d1f7      	bne.n	57ae <_malloc_r+0x35a>
    57be:	68d3      	ldr	r3, [r2, #12]
    57c0:	469c      	mov	ip, r3
    57c2:	6873      	ldr	r3, [r6, #4]
    57c4:	4661      	mov	r1, ip
    57c6:	60a2      	str	r2, [r4, #8]
    57c8:	60e1      	str	r1, [r4, #12]
    57ca:	608c      	str	r4, [r1, #8]
    57cc:	60d4      	str	r4, [r2, #12]
    57ce:	e6b1      	b.n	5534 <_malloc_r+0xe0>
    57d0:	20000444 	.word	0x20000444
    57d4:	000001ff 	.word	0x000001ff
    57d8:	20000850 	.word	0x20000850
    57dc:	20006048 	.word	0x20006048
    57e0:	0000100f 	.word	0x0000100f
    57e4:	2000604c 	.word	0x2000604c
    57e8:	00001008 	.word	0x00001008
    57ec:	20006044 	.word	0x20006044
    57f0:	20006040 	.word	0x20006040
    57f4:	2101      	movs	r1, #1
    57f6:	1963      	adds	r3, r4, r5
    57f8:	430d      	orrs	r5, r1
    57fa:	4301      	orrs	r1, r0
    57fc:	6065      	str	r5, [r4, #4]
    57fe:	6173      	str	r3, [r6, #20]
    5800:	6133      	str	r3, [r6, #16]
    5802:	60da      	str	r2, [r3, #12]
    5804:	609a      	str	r2, [r3, #8]
    5806:	6059      	str	r1, [r3, #4]
    5808:	5018      	str	r0, [r3, r0]
    580a:	0038      	movs	r0, r7
    580c:	f000 f8ce 	bl	59ac <__malloc_unlock>
    5810:	0020      	movs	r0, r4
    5812:	3008      	adds	r0, #8
    5814:	e6f7      	b.n	5606 <_malloc_r+0x1b2>
    5816:	6873      	ldr	r3, [r6, #4]
    5818:	e68c      	b.n	5534 <_malloc_r+0xe0>
    581a:	2308      	movs	r3, #8
    581c:	469b      	mov	fp, r3
    581e:	3b07      	subs	r3, #7
    5820:	44dc      	add	ip, fp
    5822:	469b      	mov	fp, r3
    5824:	44da      	add	sl, fp
    5826:	4643      	mov	r3, r8
    5828:	4652      	mov	r2, sl
    582a:	4213      	tst	r3, r2
    582c:	d000      	beq.n	5830 <_malloc_r+0x3dc>
    582e:	e69f      	b.n	5570 <_malloc_r+0x11c>
    5830:	e033      	b.n	589a <_malloc_r+0x446>
    5832:	68dc      	ldr	r4, [r3, #12]
    5834:	1c8a      	adds	r2, r1, #2
    5836:	9200      	str	r2, [sp, #0]
    5838:	42a3      	cmp	r3, r4
    583a:	d100      	bne.n	583e <_malloc_r+0x3ea>
    583c:	e655      	b.n	54ea <_malloc_r+0x96>
    583e:	e6d0      	b.n	55e2 <_malloc_r+0x18e>
    5840:	2201      	movs	r2, #1
    5842:	18e3      	adds	r3, r4, r3
    5844:	6859      	ldr	r1, [r3, #4]
    5846:	0038      	movs	r0, r7
    5848:	430a      	orrs	r2, r1
    584a:	605a      	str	r2, [r3, #4]
    584c:	68e3      	ldr	r3, [r4, #12]
    584e:	68a2      	ldr	r2, [r4, #8]
    5850:	60d3      	str	r3, [r2, #12]
    5852:	609a      	str	r2, [r3, #8]
    5854:	f000 f8aa 	bl	59ac <__malloc_unlock>
    5858:	0020      	movs	r0, r4
    585a:	3008      	adds	r0, #8
    585c:	e6d3      	b.n	5606 <_malloc_r+0x1b2>
    585e:	225b      	movs	r2, #91	; 0x5b
    5860:	4694      	mov	ip, r2
    5862:	3201      	adds	r2, #1
    5864:	4690      	mov	r8, r2
    5866:	4498      	add	r8, r3
    5868:	449c      	add	ip, r3
    586a:	4643      	mov	r3, r8
    586c:	0059      	lsls	r1, r3, #1
    586e:	e61b      	b.n	54a8 <_malloc_r+0x54>
    5870:	098a      	lsrs	r2, r1, #6
    5872:	0010      	movs	r0, r2
    5874:	3239      	adds	r2, #57	; 0x39
    5876:	3038      	adds	r0, #56	; 0x38
    5878:	0052      	lsls	r2, r2, #1
    587a:	e78b      	b.n	5794 <_malloc_r+0x340>
    587c:	42b4      	cmp	r4, r6
    587e:	d000      	beq.n	5882 <_malloc_r+0x42e>
    5880:	e75c      	b.n	573c <_malloc_r+0x2e8>
    5882:	e6fd      	b.n	5680 <_malloc_r+0x22c>
    5884:	9b00      	ldr	r3, [sp, #0]
    5886:	3b01      	subs	r3, #1
    5888:	9300      	str	r3, [sp, #0]
    588a:	2308      	movs	r3, #8
    588c:	425b      	negs	r3, r3
    588e:	469c      	mov	ip, r3
    5890:	44e1      	add	r9, ip
    5892:	464b      	mov	r3, r9
    5894:	689b      	ldr	r3, [r3, #8]
    5896:	4599      	cmp	r9, r3
    5898:	d17a      	bne.n	5990 <_malloc_r+0x53c>
    589a:	4643      	mov	r3, r8
    589c:	9a00      	ldr	r2, [sp, #0]
    589e:	4213      	tst	r3, r2
    58a0:	d1f0      	bne.n	5884 <_malloc_r+0x430>
    58a2:	6873      	ldr	r3, [r6, #4]
    58a4:	4383      	bics	r3, r0
    58a6:	6073      	str	r3, [r6, #4]
    58a8:	0040      	lsls	r0, r0, #1
    58aa:	4298      	cmp	r0, r3
    58ac:	d900      	bls.n	58b0 <_malloc_r+0x45c>
    58ae:	e6be      	b.n	562e <_malloc_r+0x1da>
    58b0:	2800      	cmp	r0, #0
    58b2:	d100      	bne.n	58b6 <_malloc_r+0x462>
    58b4:	e6bb      	b.n	562e <_malloc_r+0x1da>
    58b6:	4203      	tst	r3, r0
    58b8:	d170      	bne.n	599c <_malloc_r+0x548>
    58ba:	4652      	mov	r2, sl
    58bc:	9200      	str	r2, [sp, #0]
    58be:	9a00      	ldr	r2, [sp, #0]
    58c0:	0040      	lsls	r0, r0, #1
    58c2:	3204      	adds	r2, #4
    58c4:	9200      	str	r2, [sp, #0]
    58c6:	4203      	tst	r3, r0
    58c8:	d0f9      	beq.n	58be <_malloc_r+0x46a>
    58ca:	e64b      	b.n	5564 <_malloc_r+0x110>
    58cc:	2301      	movs	r3, #1
    58ce:	464a      	mov	r2, r9
    58d0:	6053      	str	r3, [r2, #4]
    58d2:	0038      	movs	r0, r7
    58d4:	f000 f86a 	bl	59ac <__malloc_unlock>
    58d8:	2000      	movs	r0, #0
    58da:	e694      	b.n	5606 <_malloc_r+0x1b2>
    58dc:	22aa      	movs	r2, #170	; 0xaa
    58de:	0052      	lsls	r2, r2, #1
    58e0:	4293      	cmp	r3, r2
    58e2:	d80d      	bhi.n	5900 <_malloc_r+0x4ac>
    58e4:	0be9      	lsrs	r1, r5, #15
    58e6:	2377      	movs	r3, #119	; 0x77
    58e8:	e5d7      	b.n	549a <_malloc_r+0x46>
    58ea:	2180      	movs	r1, #128	; 0x80
    58ec:	0149      	lsls	r1, r1, #5
    58ee:	e6ea      	b.n	56c6 <_malloc_r+0x272>
    58f0:	2301      	movs	r3, #1
    58f2:	1080      	asrs	r0, r0, #2
    58f4:	4083      	lsls	r3, r0
    58f6:	6872      	ldr	r2, [r6, #4]
    58f8:	4313      	orrs	r3, r2
    58fa:	6073      	str	r3, [r6, #4]
    58fc:	4662      	mov	r2, ip
    58fe:	e761      	b.n	57c4 <_malloc_r+0x370>
    5900:	4a28      	ldr	r2, [pc, #160]	; (59a4 <_malloc_r+0x550>)
    5902:	4293      	cmp	r3, r2
    5904:	d818      	bhi.n	5938 <_malloc_r+0x4e4>
    5906:	0ca9      	lsrs	r1, r5, #18
    5908:	237c      	movs	r3, #124	; 0x7c
    590a:	e5c6      	b.n	549a <_malloc_r+0x46>
    590c:	3310      	adds	r3, #16
    590e:	9300      	str	r3, [sp, #0]
    5910:	e6aa      	b.n	5668 <_malloc_r+0x214>
    5912:	2a54      	cmp	r2, #84	; 0x54
    5914:	d826      	bhi.n	5964 <_malloc_r+0x510>
    5916:	0b0a      	lsrs	r2, r1, #12
    5918:	0010      	movs	r0, r2
    591a:	326f      	adds	r2, #111	; 0x6f
    591c:	306e      	adds	r0, #110	; 0x6e
    591e:	0052      	lsls	r2, r2, #1
    5920:	e738      	b.n	5794 <_malloc_r+0x340>
    5922:	051b      	lsls	r3, r3, #20
    5924:	d000      	beq.n	5928 <_malloc_r+0x4d4>
    5926:	e6b8      	b.n	569a <_malloc_r+0x246>
    5928:	9b00      	ldr	r3, [sp, #0]
    592a:	68b2      	ldr	r2, [r6, #8]
    592c:	4443      	add	r3, r8
    592e:	0018      	movs	r0, r3
    5930:	2301      	movs	r3, #1
    5932:	4303      	orrs	r3, r0
    5934:	6053      	str	r3, [r2, #4]
    5936:	e6f7      	b.n	5728 <_malloc_r+0x2d4>
    5938:	237f      	movs	r3, #127	; 0x7f
    593a:	4698      	mov	r8, r3
    593c:	3b01      	subs	r3, #1
    593e:	21fe      	movs	r1, #254	; 0xfe
    5940:	469c      	mov	ip, r3
    5942:	e5b1      	b.n	54a8 <_malloc_r+0x54>
    5944:	465b      	mov	r3, fp
    5946:	464a      	mov	r2, r9
    5948:	601a      	str	r2, [r3, #0]
    594a:	e6b1      	b.n	56b0 <_malloc_r+0x25c>
    594c:	2300      	movs	r3, #0
    594e:	2001      	movs	r0, #1
    5950:	469b      	mov	fp, r3
    5952:	e6ca      	b.n	56ea <_malloc_r+0x296>
    5954:	0021      	movs	r1, r4
    5956:	0038      	movs	r0, r7
    5958:	3108      	adds	r1, #8
    595a:	f7ff fc99 	bl	5290 <_free_r>
    595e:	4653      	mov	r3, sl
    5960:	6819      	ldr	r1, [r3, #0]
    5962:	e6e1      	b.n	5728 <_malloc_r+0x2d4>
    5964:	20aa      	movs	r0, #170	; 0xaa
    5966:	0040      	lsls	r0, r0, #1
    5968:	4282      	cmp	r2, r0
    596a:	d805      	bhi.n	5978 <_malloc_r+0x524>
    596c:	0bca      	lsrs	r2, r1, #15
    596e:	0010      	movs	r0, r2
    5970:	3278      	adds	r2, #120	; 0x78
    5972:	3077      	adds	r0, #119	; 0x77
    5974:	0052      	lsls	r2, r2, #1
    5976:	e70d      	b.n	5794 <_malloc_r+0x340>
    5978:	480a      	ldr	r0, [pc, #40]	; (59a4 <_malloc_r+0x550>)
    597a:	4282      	cmp	r2, r0
    597c:	d805      	bhi.n	598a <_malloc_r+0x536>
    597e:	0c8a      	lsrs	r2, r1, #18
    5980:	0010      	movs	r0, r2
    5982:	327d      	adds	r2, #125	; 0x7d
    5984:	307c      	adds	r0, #124	; 0x7c
    5986:	0052      	lsls	r2, r2, #1
    5988:	e704      	b.n	5794 <_malloc_r+0x340>
    598a:	22fe      	movs	r2, #254	; 0xfe
    598c:	207e      	movs	r0, #126	; 0x7e
    598e:	e701      	b.n	5794 <_malloc_r+0x340>
    5990:	6873      	ldr	r3, [r6, #4]
    5992:	e789      	b.n	58a8 <_malloc_r+0x454>
    5994:	08e9      	lsrs	r1, r5, #3
    5996:	1c4b      	adds	r3, r1, #1
    5998:	005b      	lsls	r3, r3, #1
    599a:	e619      	b.n	55d0 <_malloc_r+0x17c>
    599c:	4653      	mov	r3, sl
    599e:	9300      	str	r3, [sp, #0]
    59a0:	e5e0      	b.n	5564 <_malloc_r+0x110>
    59a2:	46c0      	nop			; (mov r8, r8)
    59a4:	00000554 	.word	0x00000554

000059a8 <__malloc_lock>:
    59a8:	4770      	bx	lr
    59aa:	46c0      	nop			; (mov r8, r8)

000059ac <__malloc_unlock>:
    59ac:	4770      	bx	lr
    59ae:	46c0      	nop			; (mov r8, r8)

000059b0 <_sbrk_r>:
    59b0:	2300      	movs	r3, #0
    59b2:	b570      	push	{r4, r5, r6, lr}
    59b4:	4c06      	ldr	r4, [pc, #24]	; (59d0 <_sbrk_r+0x20>)
    59b6:	0005      	movs	r5, r0
    59b8:	0008      	movs	r0, r1
    59ba:	6023      	str	r3, [r4, #0]
    59bc:	f7fb f90a 	bl	bd4 <_sbrk>
    59c0:	1c43      	adds	r3, r0, #1
    59c2:	d000      	beq.n	59c6 <_sbrk_r+0x16>
    59c4:	bd70      	pop	{r4, r5, r6, pc}
    59c6:	6823      	ldr	r3, [r4, #0]
    59c8:	2b00      	cmp	r3, #0
    59ca:	d0fb      	beq.n	59c4 <_sbrk_r+0x14>
    59cc:	602b      	str	r3, [r5, #0]
    59ce:	e7f9      	b.n	59c4 <_sbrk_r+0x14>
    59d0:	20006074 	.word	0x20006074

000059d4 <osThreadExit>:
    59d4:	b580      	push	{r7, lr}
    59d6:	4f03      	ldr	r7, [pc, #12]	; (59e4 <osThreadExit+0x10>)
    59d8:	46bc      	mov	ip, r7
    59da:	df00      	svc	0
    59dc:	4f02      	ldr	r7, [pc, #8]	; (59e8 <osThreadExit+0x14>)
    59de:	46bc      	mov	ip, r7
    59e0:	df00      	svc	0
    59e2:	e7fe      	b.n	59e2 <osThreadExit+0xe>
    59e4:	00005e15 	.word	0x00005e15
    59e8:	00005e31 	.word	0x00005e31

000059ec <svcKernelInitialize>:
    59ec:	b570      	push	{r4, r5, r6, lr}
    59ee:	4c39      	ldr	r4, [pc, #228]	; (5ad4 <svcKernelInitialize+0xe8>)
    59f0:	b084      	sub	sp, #16
    59f2:	7823      	ldrb	r3, [r4, #0]
    59f4:	2b00      	cmp	r3, #0
    59f6:	d00b      	beq.n	5a10 <svcKernelInitialize+0x24>
    59f8:	22ff      	movs	r2, #255	; 0xff
    59fa:	4b37      	ldr	r3, [pc, #220]	; (5ad8 <svcKernelInitialize+0xec>)
    59fc:	681b      	ldr	r3, [r3, #0]
    59fe:	709a      	strb	r2, [r3, #2]
    5a00:	2301      	movs	r3, #1
    5a02:	2200      	movs	r2, #0
    5a04:	2000      	movs	r0, #0
    5a06:	7023      	strb	r3, [r4, #0]
    5a08:	4b34      	ldr	r3, [pc, #208]	; (5adc <svcKernelInitialize+0xf0>)
    5a0a:	701a      	strb	r2, [r3, #0]
    5a0c:	b004      	add	sp, #16
    5a0e:	bd70      	pop	{r4, r5, r6, pc}
    5a10:	4b33      	ldr	r3, [pc, #204]	; (5ae0 <svcKernelInitialize+0xf4>)
    5a12:	4e34      	ldr	r6, [pc, #208]	; (5ae4 <svcKernelInitialize+0xf8>)
    5a14:	6819      	ldr	r1, [r3, #0]
    5a16:	0030      	movs	r0, r6
    5a18:	f001 fc60 	bl	72dc <rt_init_mem>
    5a1c:	0003      	movs	r3, r0
    5a1e:	2085      	movs	r0, #133	; 0x85
    5a20:	2b00      	cmp	r3, #0
    5a22:	d1f3      	bne.n	5a0c <svcKernelInitialize+0x20>
    5a24:	f002 fe70 	bl	8708 <rt_sys_init>
    5a28:	21ff      	movs	r1, #255	; 0xff
    5a2a:	4a2b      	ldr	r2, [pc, #172]	; (5ad8 <svcKernelInitialize+0xec>)
    5a2c:	7823      	ldrb	r3, [r4, #0]
    5a2e:	6812      	ldr	r2, [r2, #0]
    5a30:	7091      	strb	r1, [r2, #2]
    5a32:	2b00      	cmp	r3, #0
    5a34:	d1e4      	bne.n	5a00 <svcKernelInitialize+0x14>
    5a36:	4b2c      	ldr	r3, [pc, #176]	; (5ae8 <svcKernelInitialize+0xfc>)
    5a38:	681a      	ldr	r2, [r3, #0]
    5a3a:	9201      	str	r2, [sp, #4]
    5a3c:	2a00      	cmp	r2, #0
    5a3e:	d047      	beq.n	5ad0 <svcKernelInitialize+0xe4>
    5a40:	685d      	ldr	r5, [r3, #4]
    5a42:	2d00      	cmp	r5, #0
    5a44:	d044      	beq.n	5ad0 <svcKernelInitialize+0xe4>
    5a46:	782b      	ldrb	r3, [r5, #0]
    5a48:	2b00      	cmp	r3, #0
    5a4a:	d141      	bne.n	5ad0 <svcKernelInitialize+0xe4>
    5a4c:	0011      	movs	r1, r2
    5a4e:	3104      	adds	r1, #4
    5a50:	0089      	lsls	r1, r1, #2
    5a52:	b289      	uxth	r1, r1
    5a54:	0028      	movs	r0, r5
    5a56:	f001 feeb 	bl	7830 <rt_mbx_init>
    5a5a:	4b24      	ldr	r3, [pc, #144]	; (5aec <svcKernelInitialize+0x100>)
    5a5c:	601d      	str	r5, [r3, #0]
    5a5e:	4b24      	ldr	r3, [pc, #144]	; (5af0 <svcKernelInitialize+0x104>)
    5a60:	681a      	ldr	r2, [r3, #0]
    5a62:	9201      	str	r2, [sp, #4]
    5a64:	2a00      	cmp	r2, #0
    5a66:	d01e      	beq.n	5aa6 <svcKernelInitialize+0xba>
    5a68:	685a      	ldr	r2, [r3, #4]
    5a6a:	9202      	str	r2, [sp, #8]
    5a6c:	3203      	adds	r2, #3
    5a6e:	2a06      	cmp	r2, #6
    5a70:	d819      	bhi.n	5aa6 <svcKernelInitialize+0xba>
    5a72:	68db      	ldr	r3, [r3, #12]
    5a74:	9303      	str	r3, [sp, #12]
    5a76:	2b00      	cmp	r3, #0
    5a78:	d019      	beq.n	5aae <svcKernelInitialize+0xc2>
    5a7a:	0019      	movs	r1, r3
    5a7c:	0030      	movs	r0, r6
    5a7e:	f001 fc3b 	bl	72f8 <rt_alloc_mem>
    5a82:	1e05      	subs	r5, r0, #0
    5a84:	d00f      	beq.n	5aa6 <svcKernelInitialize+0xba>
    5a86:	9b03      	ldr	r3, [sp, #12]
    5a88:	9902      	ldr	r1, [sp, #8]
    5a8a:	021b      	lsls	r3, r3, #8
    5a8c:	3104      	adds	r1, #4
    5a8e:	4319      	orrs	r1, r3
    5a90:	0002      	movs	r2, r0
    5a92:	2300      	movs	r3, #0
    5a94:	9801      	ldr	r0, [sp, #4]
    5a96:	f002 fcf7 	bl	8488 <rt_tsk_create>
    5a9a:	2800      	cmp	r0, #0
    5a9c:	d110      	bne.n	5ac0 <svcKernelInitialize+0xd4>
    5a9e:	0029      	movs	r1, r5
    5aa0:	0030      	movs	r0, r6
    5aa2:	f001 fc4b 	bl	733c <rt_free_mem>
    5aa6:	2300      	movs	r3, #0
    5aa8:	4a12      	ldr	r2, [pc, #72]	; (5af4 <svcKernelInitialize+0x108>)
    5aaa:	6013      	str	r3, [r2, #0]
    5aac:	e7a8      	b.n	5a00 <svcKernelInitialize+0x14>
    5aae:	9902      	ldr	r1, [sp, #8]
    5ab0:	2300      	movs	r3, #0
    5ab2:	3104      	adds	r1, #4
    5ab4:	2200      	movs	r2, #0
    5ab6:	9801      	ldr	r0, [sp, #4]
    5ab8:	f002 fce6 	bl	8488 <rt_tsk_create>
    5abc:	2800      	cmp	r0, #0
    5abe:	d0f2      	beq.n	5aa6 <svcKernelInitialize+0xba>
    5ac0:	3801      	subs	r0, #1
    5ac2:	4b0d      	ldr	r3, [pc, #52]	; (5af8 <svcKernelInitialize+0x10c>)
    5ac4:	0080      	lsls	r0, r0, #2
    5ac6:	58c3      	ldr	r3, [r0, r3]
    5ac8:	490c      	ldr	r1, [pc, #48]	; (5afc <svcKernelInitialize+0x110>)
    5aca:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5acc:	6351      	str	r1, [r2, #52]	; 0x34
    5ace:	e7eb      	b.n	5aa8 <svcKernelInitialize+0xbc>
    5ad0:	2500      	movs	r5, #0
    5ad2:	e7c2      	b.n	5a5a <svcKernelInitialize+0x6e>
    5ad4:	20006078 	.word	0x20006078
    5ad8:	200060b8 	.word	0x200060b8
    5adc:	20006079 	.word	0x20006079
    5ae0:	00008a10 	.word	0x00008a10
    5ae4:	200039f8 	.word	0x200039f8
    5ae8:	00008a28 	.word	0x00008a28
    5aec:	20004d10 	.word	0x20004d10
    5af0:	00008a18 	.word	0x00008a18
    5af4:	20004cec 	.word	0x20004cec
    5af8:	20004cdc 	.word	0x20004cdc
    5afc:	000059d5 	.word	0x000059d5

00005b00 <svcKernelStart>:
    5b00:	b570      	push	{r4, r5, r6, lr}
    5b02:	4c10      	ldr	r4, [pc, #64]	; (5b44 <svcKernelStart+0x44>)
    5b04:	7823      	ldrb	r3, [r4, #0]
    5b06:	2b00      	cmp	r3, #0
    5b08:	d001      	beq.n	5b0e <svcKernelStart+0xe>
    5b0a:	2000      	movs	r0, #0
    5b0c:	bd70      	pop	{r4, r5, r6, pc}
    5b0e:	4d0e      	ldr	r5, [pc, #56]	; (5b48 <svcKernelStart+0x48>)
    5b10:	3324      	adds	r3, #36	; 0x24
    5b12:	682a      	ldr	r2, [r5, #0]
    5b14:	2000      	movs	r0, #0
    5b16:	5cd1      	ldrb	r1, [r2, r3]
    5b18:	f002 fc5a 	bl	83d0 <rt_tsk_prio>
    5b1c:	682b      	ldr	r3, [r5, #0]
    5b1e:	78da      	ldrb	r2, [r3, #3]
    5b20:	2aff      	cmp	r2, #255	; 0xff
    5b22:	d007      	beq.n	5b34 <svcKernelStart+0x34>
    5b24:	686a      	ldr	r2, [r5, #4]
    5b26:	2a00      	cmp	r2, #0
    5b28:	d009      	beq.n	5b3e <svcKernelStart+0x3e>
    5b2a:	f002 fe65 	bl	87f8 <rt_sys_start>
    5b2e:	2301      	movs	r3, #1
    5b30:	7023      	strb	r3, [r4, #0]
    5b32:	e7ea      	b.n	5b0a <svcKernelStart+0xa>
    5b34:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5b36:	3220      	adds	r2, #32
    5b38:	f382 8809 	msr	PSP, r2
    5b3c:	e7f2      	b.n	5b24 <svcKernelStart+0x24>
    5b3e:	c50c      	stmia	r5!, {r2, r3}
    5b40:	e7f3      	b.n	5b2a <svcKernelStart+0x2a>
    5b42:	46c0      	nop			; (mov r8, r8)
    5b44:	20006079 	.word	0x20006079
    5b48:	200060b8 	.word	0x200060b8

00005b4c <svcKernelRunning>:
    5b4c:	4b01      	ldr	r3, [pc, #4]	; (5b54 <svcKernelRunning+0x8>)
    5b4e:	7818      	ldrb	r0, [r3, #0]
    5b50:	4770      	bx	lr
    5b52:	46c0      	nop			; (mov r8, r8)
    5b54:	20006079 	.word	0x20006079

00005b58 <svcKernelSysTick>:
    5b58:	b510      	push	{r4, lr}
    5b5a:	b082      	sub	sp, #8
    5b5c:	f002 fb88 	bl	8270 <os_tick_val>
    5b60:	0004      	movs	r4, r0
    5b62:	f002 fb8f 	bl	8284 <os_tick_ovf>
    5b66:	2800      	cmp	r0, #0
    5b68:	d109      	bne.n	5b7e <svcKernelSysTick+0x26>
    5b6a:	4b0d      	ldr	r3, [pc, #52]	; (5ba0 <svcKernelSysTick+0x48>)
    5b6c:	681b      	ldr	r3, [r3, #0]
    5b6e:	1c58      	adds	r0, r3, #1
    5b70:	9301      	str	r3, [sp, #4]
    5b72:	4b0c      	ldr	r3, [pc, #48]	; (5ba4 <svcKernelSysTick+0x4c>)
    5b74:	681b      	ldr	r3, [r3, #0]
    5b76:	4358      	muls	r0, r3
    5b78:	1900      	adds	r0, r0, r4
    5b7a:	b002      	add	sp, #8
    5b7c:	bd10      	pop	{r4, pc}
    5b7e:	f002 fb77 	bl	8270 <os_tick_val>
    5b82:	4284      	cmp	r4, r0
    5b84:	d809      	bhi.n	5b9a <svcKernelSysTick+0x42>
    5b86:	4b06      	ldr	r3, [pc, #24]	; (5ba0 <svcKernelSysTick+0x48>)
    5b88:	4a06      	ldr	r2, [pc, #24]	; (5ba4 <svcKernelSysTick+0x4c>)
    5b8a:	681b      	ldr	r3, [r3, #0]
    5b8c:	6810      	ldr	r0, [r2, #0]
    5b8e:	9301      	str	r3, [sp, #4]
    5b90:	3001      	adds	r0, #1
    5b92:	3301      	adds	r3, #1
    5b94:	4358      	muls	r0, r3
    5b96:	1900      	adds	r0, r0, r4
    5b98:	e7ef      	b.n	5b7a <svcKernelSysTick+0x22>
    5b9a:	0004      	movs	r4, r0
    5b9c:	e7f3      	b.n	5b86 <svcKernelSysTick+0x2e>
    5b9e:	46c0      	nop			; (mov r8, r8)
    5ba0:	000089f0 	.word	0x000089f0
    5ba4:	20006080 	.word	0x20006080

00005ba8 <osKernelInitialize>:
    5ba8:	b5f0      	push	{r4, r5, r6, r7, lr}
    5baa:	b085      	sub	sp, #20
    5bac:	f3ef 8405 	mrs	r4, IPSR
    5bb0:	2582      	movs	r5, #130	; 0x82
    5bb2:	2c00      	cmp	r4, #0
    5bb4:	d002      	beq.n	5bbc <osKernelInitialize+0x14>
    5bb6:	0028      	movs	r0, r5
    5bb8:	b005      	add	sp, #20
    5bba:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5bbc:	f3ef 8414 	mrs	r4, CONTROL
    5bc0:	07e4      	lsls	r4, r4, #31
    5bc2:	d504      	bpl.n	5bce <osKernelInitialize+0x26>
    5bc4:	4f45      	ldr	r7, [pc, #276]	; (5cdc <osKernelInitialize+0x134>)
    5bc6:	46bc      	mov	ip, r7
    5bc8:	df00      	svc	0
    5bca:	0005      	movs	r5, r0
    5bcc:	e7f3      	b.n	5bb6 <osKernelInitialize+0xe>
    5bce:	4c38      	ldr	r4, [pc, #224]	; (5cb0 <osKernelInitialize+0x108>)
    5bd0:	7823      	ldrb	r3, [r4, #0]
    5bd2:	2b00      	cmp	r3, #0
    5bd4:	d00a      	beq.n	5bec <osKernelInitialize+0x44>
    5bd6:	22ff      	movs	r2, #255	; 0xff
    5bd8:	4b36      	ldr	r3, [pc, #216]	; (5cb4 <osKernelInitialize+0x10c>)
    5bda:	681b      	ldr	r3, [r3, #0]
    5bdc:	709a      	strb	r2, [r3, #2]
    5bde:	2301      	movs	r3, #1
    5be0:	2200      	movs	r2, #0
    5be2:	7023      	strb	r3, [r4, #0]
    5be4:	4b34      	ldr	r3, [pc, #208]	; (5cb8 <osKernelInitialize+0x110>)
    5be6:	2500      	movs	r5, #0
    5be8:	701a      	strb	r2, [r3, #0]
    5bea:	e7e4      	b.n	5bb6 <osKernelInitialize+0xe>
    5bec:	4e33      	ldr	r6, [pc, #204]	; (5cbc <osKernelInitialize+0x114>)
    5bee:	4b34      	ldr	r3, [pc, #208]	; (5cc0 <osKernelInitialize+0x118>)
    5bf0:	0030      	movs	r0, r6
    5bf2:	6819      	ldr	r1, [r3, #0]
    5bf4:	f001 fb72 	bl	72dc <rt_init_mem>
    5bf8:	3503      	adds	r5, #3
    5bfa:	2800      	cmp	r0, #0
    5bfc:	d1db      	bne.n	5bb6 <osKernelInitialize+0xe>
    5bfe:	f002 fd83 	bl	8708 <rt_sys_init>
    5c02:	21ff      	movs	r1, #255	; 0xff
    5c04:	4a2b      	ldr	r2, [pc, #172]	; (5cb4 <osKernelInitialize+0x10c>)
    5c06:	7823      	ldrb	r3, [r4, #0]
    5c08:	6812      	ldr	r2, [r2, #0]
    5c0a:	7091      	strb	r1, [r2, #2]
    5c0c:	2b00      	cmp	r3, #0
    5c0e:	d1e6      	bne.n	5bde <osKernelInitialize+0x36>
    5c10:	4b2c      	ldr	r3, [pc, #176]	; (5cc4 <osKernelInitialize+0x11c>)
    5c12:	681a      	ldr	r2, [r3, #0]
    5c14:	9201      	str	r2, [sp, #4]
    5c16:	2a00      	cmp	r2, #0
    5c18:	d047      	beq.n	5caa <osKernelInitialize+0x102>
    5c1a:	685d      	ldr	r5, [r3, #4]
    5c1c:	2d00      	cmp	r5, #0
    5c1e:	d044      	beq.n	5caa <osKernelInitialize+0x102>
    5c20:	782b      	ldrb	r3, [r5, #0]
    5c22:	2b00      	cmp	r3, #0
    5c24:	d141      	bne.n	5caa <osKernelInitialize+0x102>
    5c26:	0011      	movs	r1, r2
    5c28:	3104      	adds	r1, #4
    5c2a:	0089      	lsls	r1, r1, #2
    5c2c:	b289      	uxth	r1, r1
    5c2e:	0028      	movs	r0, r5
    5c30:	f001 fdfe 	bl	7830 <rt_mbx_init>
    5c34:	4b24      	ldr	r3, [pc, #144]	; (5cc8 <osKernelInitialize+0x120>)
    5c36:	601d      	str	r5, [r3, #0]
    5c38:	4b24      	ldr	r3, [pc, #144]	; (5ccc <osKernelInitialize+0x124>)
    5c3a:	681a      	ldr	r2, [r3, #0]
    5c3c:	9201      	str	r2, [sp, #4]
    5c3e:	2a00      	cmp	r2, #0
    5c40:	d01e      	beq.n	5c80 <osKernelInitialize+0xd8>
    5c42:	685a      	ldr	r2, [r3, #4]
    5c44:	9202      	str	r2, [sp, #8]
    5c46:	3203      	adds	r2, #3
    5c48:	2a06      	cmp	r2, #6
    5c4a:	d819      	bhi.n	5c80 <osKernelInitialize+0xd8>
    5c4c:	68db      	ldr	r3, [r3, #12]
    5c4e:	9303      	str	r3, [sp, #12]
    5c50:	2b00      	cmp	r3, #0
    5c52:	d019      	beq.n	5c88 <osKernelInitialize+0xe0>
    5c54:	0019      	movs	r1, r3
    5c56:	0030      	movs	r0, r6
    5c58:	f001 fb4e 	bl	72f8 <rt_alloc_mem>
    5c5c:	1e05      	subs	r5, r0, #0
    5c5e:	d00f      	beq.n	5c80 <osKernelInitialize+0xd8>
    5c60:	9902      	ldr	r1, [sp, #8]
    5c62:	9b03      	ldr	r3, [sp, #12]
    5c64:	3104      	adds	r1, #4
    5c66:	021b      	lsls	r3, r3, #8
    5c68:	4319      	orrs	r1, r3
    5c6a:	0002      	movs	r2, r0
    5c6c:	2300      	movs	r3, #0
    5c6e:	9801      	ldr	r0, [sp, #4]
    5c70:	f002 fc0a 	bl	8488 <rt_tsk_create>
    5c74:	2800      	cmp	r0, #0
    5c76:	d110      	bne.n	5c9a <osKernelInitialize+0xf2>
    5c78:	0029      	movs	r1, r5
    5c7a:	0030      	movs	r0, r6
    5c7c:	f001 fb5e 	bl	733c <rt_free_mem>
    5c80:	2300      	movs	r3, #0
    5c82:	4a13      	ldr	r2, [pc, #76]	; (5cd0 <osKernelInitialize+0x128>)
    5c84:	6013      	str	r3, [r2, #0]
    5c86:	e7aa      	b.n	5bde <osKernelInitialize+0x36>
    5c88:	9902      	ldr	r1, [sp, #8]
    5c8a:	2300      	movs	r3, #0
    5c8c:	3104      	adds	r1, #4
    5c8e:	2200      	movs	r2, #0
    5c90:	9801      	ldr	r0, [sp, #4]
    5c92:	f002 fbf9 	bl	8488 <rt_tsk_create>
    5c96:	2800      	cmp	r0, #0
    5c98:	d0f2      	beq.n	5c80 <osKernelInitialize+0xd8>
    5c9a:	3801      	subs	r0, #1
    5c9c:	4b0d      	ldr	r3, [pc, #52]	; (5cd4 <osKernelInitialize+0x12c>)
    5c9e:	0080      	lsls	r0, r0, #2
    5ca0:	58c3      	ldr	r3, [r0, r3]
    5ca2:	490d      	ldr	r1, [pc, #52]	; (5cd8 <osKernelInitialize+0x130>)
    5ca4:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5ca6:	6351      	str	r1, [r2, #52]	; 0x34
    5ca8:	e7eb      	b.n	5c82 <osKernelInitialize+0xda>
    5caa:	2500      	movs	r5, #0
    5cac:	e7c2      	b.n	5c34 <osKernelInitialize+0x8c>
    5cae:	46c0      	nop			; (mov r8, r8)
    5cb0:	20006078 	.word	0x20006078
    5cb4:	200060b8 	.word	0x200060b8
    5cb8:	20006079 	.word	0x20006079
    5cbc:	200039f8 	.word	0x200039f8
    5cc0:	00008a10 	.word	0x00008a10
    5cc4:	00008a28 	.word	0x00008a28
    5cc8:	20004d10 	.word	0x20004d10
    5ccc:	00008a18 	.word	0x00008a18
    5cd0:	20004cec 	.word	0x20004cec
    5cd4:	20004cdc 	.word	0x20004cdc
    5cd8:	000059d5 	.word	0x000059d5
    5cdc:	000059ed 	.word	0x000059ed

00005ce0 <osKernelStart>:
    5ce0:	b5b0      	push	{r4, r5, r7, lr}
    5ce2:	b088      	sub	sp, #32
    5ce4:	f3ef 8405 	mrs	r4, IPSR
    5ce8:	2582      	movs	r5, #130	; 0x82
    5cea:	2c00      	cmp	r4, #0
    5cec:	d002      	beq.n	5cf4 <osKernelStart+0x14>
    5cee:	0028      	movs	r0, r5
    5cf0:	b008      	add	sp, #32
    5cf2:	bdb0      	pop	{r4, r5, r7, pc}
    5cf4:	f3ef 8414 	mrs	r4, CONTROL
    5cf8:	3d7f      	subs	r5, #127	; 0x7f
    5cfa:	402c      	ands	r4, r5
    5cfc:	2c02      	cmp	r4, #2
    5cfe:	d01c      	beq.n	5d3a <osKernelStart+0x5a>
    5d00:	2c03      	cmp	r4, #3
    5d02:	d014      	beq.n	5d2e <osKernelStart+0x4e>
    5d04:	2c01      	cmp	r4, #1
    5d06:	d020      	beq.n	5d4a <osKernelStart+0x6a>
    5d08:	ac08      	add	r4, sp, #32
    5d0a:	f384 8809 	msr	PSP, r4
    5d0e:	4c10      	ldr	r4, [pc, #64]	; (5d50 <osKernelStart+0x70>)
    5d10:	7824      	ldrb	r4, [r4, #0]
    5d12:	07e4      	lsls	r4, r4, #31
    5d14:	d515      	bpl.n	5d42 <osKernelStart+0x62>
    5d16:	2402      	movs	r4, #2
    5d18:	f384 8814 	msr	CONTROL, r4
    5d1c:	f3bf 8f4f 	dsb	sy
    5d20:	f3bf 8f6f 	isb	sy
    5d24:	4f0b      	ldr	r7, [pc, #44]	; (5d54 <osKernelStart+0x74>)
    5d26:	46bc      	mov	ip, r7
    5d28:	df00      	svc	0
    5d2a:	0005      	movs	r5, r0
    5d2c:	e7df      	b.n	5cee <osKernelStart+0xe>
    5d2e:	4c08      	ldr	r4, [pc, #32]	; (5d50 <osKernelStart+0x70>)
    5d30:	25ff      	movs	r5, #255	; 0xff
    5d32:	7824      	ldrb	r4, [r4, #0]
    5d34:	07e4      	lsls	r4, r4, #31
    5d36:	d4da      	bmi.n	5cee <osKernelStart+0xe>
    5d38:	e7f4      	b.n	5d24 <osKernelStart+0x44>
    5d3a:	4c05      	ldr	r4, [pc, #20]	; (5d50 <osKernelStart+0x70>)
    5d3c:	7824      	ldrb	r4, [r4, #0]
    5d3e:	07e4      	lsls	r4, r4, #31
    5d40:	d4f0      	bmi.n	5d24 <osKernelStart+0x44>
    5d42:	2403      	movs	r4, #3
    5d44:	f384 8814 	msr	CONTROL, r4
    5d48:	e7e8      	b.n	5d1c <osKernelStart+0x3c>
    5d4a:	25ff      	movs	r5, #255	; 0xff
    5d4c:	e7cf      	b.n	5cee <osKernelStart+0xe>
    5d4e:	46c0      	nop			; (mov r8, r8)
    5d50:	000089f4 	.word	0x000089f4
    5d54:	00005b01 	.word	0x00005b01

00005d58 <osKernelRunning>:
    5d58:	b590      	push	{r4, r7, lr}
    5d5a:	f3ef 8405 	mrs	r4, IPSR
    5d5e:	2c00      	cmp	r4, #0
    5d60:	d107      	bne.n	5d72 <osKernelRunning+0x1a>
    5d62:	f3ef 8414 	mrs	r4, CONTROL
    5d66:	07e4      	lsls	r4, r4, #31
    5d68:	d503      	bpl.n	5d72 <osKernelRunning+0x1a>
    5d6a:	4f04      	ldr	r7, [pc, #16]	; (5d7c <osKernelRunning+0x24>)
    5d6c:	46bc      	mov	ip, r7
    5d6e:	df00      	svc	0
    5d70:	e001      	b.n	5d76 <osKernelRunning+0x1e>
    5d72:	4b01      	ldr	r3, [pc, #4]	; (5d78 <osKernelRunning+0x20>)
    5d74:	7818      	ldrb	r0, [r3, #0]
    5d76:	bd90      	pop	{r4, r7, pc}
    5d78:	20006079 	.word	0x20006079
    5d7c:	00005b4d 	.word	0x00005b4d

00005d80 <osKernelSysTick>:
    5d80:	b5b0      	push	{r4, r5, r7, lr}
    5d82:	f3ef 8405 	mrs	r4, IPSR
    5d86:	2500      	movs	r5, #0
    5d88:	2c00      	cmp	r4, #0
    5d8a:	d103      	bne.n	5d94 <osKernelSysTick+0x14>
    5d8c:	4f02      	ldr	r7, [pc, #8]	; (5d98 <osKernelSysTick+0x18>)
    5d8e:	46bc      	mov	ip, r7
    5d90:	df00      	svc	0
    5d92:	0005      	movs	r5, r0
    5d94:	0028      	movs	r0, r5
    5d96:	bdb0      	pop	{r4, r5, r7, pc}
    5d98:	00005b59 	.word	0x00005b59

00005d9c <svcThreadCreate>:
    5d9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5d9e:	0004      	movs	r4, r0
    5da0:	000d      	movs	r5, r1
    5da2:	2800      	cmp	r0, #0
    5da4:	d01f      	beq.n	5de6 <svcThreadCreate+0x4a>
    5da6:	6800      	ldr	r0, [r0, #0]
    5da8:	2800      	cmp	r0, #0
    5daa:	d01c      	beq.n	5de6 <svcThreadCreate+0x4a>
    5dac:	6863      	ldr	r3, [r4, #4]
    5dae:	1cda      	adds	r2, r3, #3
    5db0:	2a06      	cmp	r2, #6
    5db2:	d818      	bhi.n	5de6 <svcThreadCreate+0x4a>
    5db4:	68e1      	ldr	r1, [r4, #12]
    5db6:	2900      	cmp	r1, #0
    5db8:	d017      	beq.n	5dea <svcThreadCreate+0x4e>
    5dba:	4e13      	ldr	r6, [pc, #76]	; (5e08 <svcThreadCreate+0x6c>)
    5dbc:	0030      	movs	r0, r6
    5dbe:	f001 fa9b 	bl	72f8 <rt_alloc_mem>
    5dc2:	1e07      	subs	r7, r0, #0
    5dc4:	d00f      	beq.n	5de6 <svcThreadCreate+0x4a>
    5dc6:	6863      	ldr	r3, [r4, #4]
    5dc8:	6820      	ldr	r0, [r4, #0]
    5dca:	1d19      	adds	r1, r3, #4
    5dcc:	68e3      	ldr	r3, [r4, #12]
    5dce:	003a      	movs	r2, r7
    5dd0:	021b      	lsls	r3, r3, #8
    5dd2:	4319      	orrs	r1, r3
    5dd4:	002b      	movs	r3, r5
    5dd6:	f002 fb57 	bl	8488 <rt_tsk_create>
    5dda:	2800      	cmp	r0, #0
    5ddc:	d10c      	bne.n	5df8 <svcThreadCreate+0x5c>
    5dde:	0039      	movs	r1, r7
    5de0:	0030      	movs	r0, r6
    5de2:	f001 faab 	bl	733c <rt_free_mem>
    5de6:	2000      	movs	r0, #0
    5de8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5dea:	1d19      	adds	r1, r3, #4
    5dec:	2200      	movs	r2, #0
    5dee:	002b      	movs	r3, r5
    5df0:	f002 fb4a 	bl	8488 <rt_tsk_create>
    5df4:	2800      	cmp	r0, #0
    5df6:	d0f6      	beq.n	5de6 <svcThreadCreate+0x4a>
    5df8:	4b04      	ldr	r3, [pc, #16]	; (5e0c <svcThreadCreate+0x70>)
    5dfa:	3801      	subs	r0, #1
    5dfc:	0080      	lsls	r0, r0, #2
    5dfe:	58c0      	ldr	r0, [r0, r3]
    5e00:	4a03      	ldr	r2, [pc, #12]	; (5e10 <svcThreadCreate+0x74>)
    5e02:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5e04:	635a      	str	r2, [r3, #52]	; 0x34
    5e06:	e7ef      	b.n	5de8 <svcThreadCreate+0x4c>
    5e08:	200039f8 	.word	0x200039f8
    5e0c:	20004cdc 	.word	0x20004cdc
    5e10:	000059d5 	.word	0x000059d5

00005e14 <svcThreadGetId>:
    5e14:	b510      	push	{r4, lr}
    5e16:	f002 fad1 	bl	83bc <rt_tsk_self>
    5e1a:	2800      	cmp	r0, #0
    5e1c:	d004      	beq.n	5e28 <svcThreadGetId+0x14>
    5e1e:	3801      	subs	r0, #1
    5e20:	4b02      	ldr	r3, [pc, #8]	; (5e2c <svcThreadGetId+0x18>)
    5e22:	0080      	lsls	r0, r0, #2
    5e24:	58c0      	ldr	r0, [r0, r3]
    5e26:	bd10      	pop	{r4, pc}
    5e28:	2000      	movs	r0, #0
    5e2a:	e7fc      	b.n	5e26 <svcThreadGetId+0x12>
    5e2c:	20004cdc 	.word	0x20004cdc

00005e30 <svcThreadTerminate>:
    5e30:	0003      	movs	r3, r0
    5e32:	b510      	push	{r4, lr}
    5e34:	2080      	movs	r0, #128	; 0x80
    5e36:	2b00      	cmp	r3, #0
    5e38:	d017      	beq.n	5e6a <svcThreadTerminate+0x3a>
    5e3a:	079a      	lsls	r2, r3, #30
    5e3c:	d115      	bne.n	5e6a <svcThreadTerminate+0x3a>
    5e3e:	781a      	ldrb	r2, [r3, #0]
    5e40:	2a00      	cmp	r2, #0
    5e42:	d112      	bne.n	5e6a <svcThreadTerminate+0x3a>
    5e44:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    5e46:	2400      	movs	r4, #0
    5e48:	2a00      	cmp	r2, #0
    5e4a:	d000      	beq.n	5e4e <svcThreadTerminate+0x1e>
    5e4c:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    5e4e:	78d8      	ldrb	r0, [r3, #3]
    5e50:	f002 fb94 	bl	857c <rt_tsk_delete>
    5e54:	0003      	movs	r3, r0
    5e56:	2081      	movs	r0, #129	; 0x81
    5e58:	2bff      	cmp	r3, #255	; 0xff
    5e5a:	d006      	beq.n	5e6a <svcThreadTerminate+0x3a>
    5e5c:	2c00      	cmp	r4, #0
    5e5e:	d005      	beq.n	5e6c <svcThreadTerminate+0x3c>
    5e60:	0021      	movs	r1, r4
    5e62:	4803      	ldr	r0, [pc, #12]	; (5e70 <svcThreadTerminate+0x40>)
    5e64:	f001 fa6a 	bl	733c <rt_free_mem>
    5e68:	2000      	movs	r0, #0
    5e6a:	bd10      	pop	{r4, pc}
    5e6c:	2000      	movs	r0, #0
    5e6e:	e7fc      	b.n	5e6a <svcThreadTerminate+0x3a>
    5e70:	200039f8 	.word	0x200039f8

00005e74 <svcThreadYield>:
    5e74:	b510      	push	{r4, lr}
    5e76:	f002 fa8b 	bl	8390 <rt_tsk_pass>
    5e7a:	2000      	movs	r0, #0
    5e7c:	bd10      	pop	{r4, pc}
    5e7e:	46c0      	nop			; (mov r8, r8)

00005e80 <svcThreadSetPriority>:
    5e80:	0003      	movs	r3, r0
    5e82:	b510      	push	{r4, lr}
    5e84:	2080      	movs	r0, #128	; 0x80
    5e86:	2b00      	cmp	r3, #0
    5e88:	d008      	beq.n	5e9c <svcThreadSetPriority+0x1c>
    5e8a:	079a      	lsls	r2, r3, #30
    5e8c:	d106      	bne.n	5e9c <svcThreadSetPriority+0x1c>
    5e8e:	781a      	ldrb	r2, [r3, #0]
    5e90:	2a00      	cmp	r2, #0
    5e92:	d103      	bne.n	5e9c <svcThreadSetPriority+0x1c>
    5e94:	1cca      	adds	r2, r1, #3
    5e96:	2086      	movs	r0, #134	; 0x86
    5e98:	2a06      	cmp	r2, #6
    5e9a:	d900      	bls.n	5e9e <svcThreadSetPriority+0x1e>
    5e9c:	bd10      	pop	{r4, pc}
    5e9e:	3104      	adds	r1, #4
    5ea0:	78d8      	ldrb	r0, [r3, #3]
    5ea2:	b2c9      	uxtb	r1, r1
    5ea4:	f002 fa94 	bl	83d0 <rt_tsk_prio>
    5ea8:	0003      	movs	r3, r0
    5eaa:	2081      	movs	r0, #129	; 0x81
    5eac:	2bff      	cmp	r3, #255	; 0xff
    5eae:	d0f5      	beq.n	5e9c <svcThreadSetPriority+0x1c>
    5eb0:	2000      	movs	r0, #0
    5eb2:	e7f3      	b.n	5e9c <svcThreadSetPriority+0x1c>

00005eb4 <svcThreadGetPriority>:
    5eb4:	0003      	movs	r3, r0
    5eb6:	2084      	movs	r0, #132	; 0x84
    5eb8:	2b00      	cmp	r3, #0
    5eba:	d006      	beq.n	5eca <svcThreadGetPriority+0x16>
    5ebc:	079a      	lsls	r2, r3, #30
    5ebe:	d104      	bne.n	5eca <svcThreadGetPriority+0x16>
    5ec0:	781a      	ldrb	r2, [r3, #0]
    5ec2:	2a00      	cmp	r2, #0
    5ec4:	d101      	bne.n	5eca <svcThreadGetPriority+0x16>
    5ec6:	7898      	ldrb	r0, [r3, #2]
    5ec8:	3804      	subs	r0, #4
    5eca:	4770      	bx	lr

00005ecc <osThreadCreate>:
    5ecc:	b5f0      	push	{r4, r5, r6, r7, lr}
    5ece:	4647      	mov	r7, r8
    5ed0:	0004      	movs	r4, r0
    5ed2:	b480      	push	{r7}
    5ed4:	000d      	movs	r5, r1
    5ed6:	f3ef 8105 	mrs	r1, IPSR
    5eda:	2900      	cmp	r1, #0
    5edc:	d132      	bne.n	5f44 <osThreadCreate+0x78>
    5ede:	f3ef 8114 	mrs	r1, CONTROL
    5ee2:	07c9      	lsls	r1, r1, #31
    5ee4:	d507      	bpl.n	5ef6 <osThreadCreate+0x2a>
    5ee6:	0020      	movs	r0, r4
    5ee8:	0029      	movs	r1, r5
    5eea:	4f23      	ldr	r7, [pc, #140]	; (5f78 <osThreadCreate+0xac>)
    5eec:	46bc      	mov	ip, r7
    5eee:	df00      	svc	0
    5ef0:	bc04      	pop	{r2}
    5ef2:	4690      	mov	r8, r2
    5ef4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5ef6:	491c      	ldr	r1, [pc, #112]	; (5f68 <osThreadCreate+0x9c>)
    5ef8:	7809      	ldrb	r1, [r1, #0]
    5efa:	2900      	cmp	r1, #0
    5efc:	d1f3      	bne.n	5ee6 <osThreadCreate+0x1a>
    5efe:	2800      	cmp	r0, #0
    5f00:	d020      	beq.n	5f44 <osThreadCreate+0x78>
    5f02:	6800      	ldr	r0, [r0, #0]
    5f04:	2800      	cmp	r0, #0
    5f06:	d01d      	beq.n	5f44 <osThreadCreate+0x78>
    5f08:	6863      	ldr	r3, [r4, #4]
    5f0a:	1cda      	adds	r2, r3, #3
    5f0c:	2a06      	cmp	r2, #6
    5f0e:	d819      	bhi.n	5f44 <osThreadCreate+0x78>
    5f10:	68e1      	ldr	r1, [r4, #12]
    5f12:	2900      	cmp	r1, #0
    5f14:	d018      	beq.n	5f48 <osThreadCreate+0x7c>
    5f16:	4e15      	ldr	r6, [pc, #84]	; (5f6c <osThreadCreate+0xa0>)
    5f18:	0030      	movs	r0, r6
    5f1a:	f001 f9ed 	bl	72f8 <rt_alloc_mem>
    5f1e:	4680      	mov	r8, r0
    5f20:	2800      	cmp	r0, #0
    5f22:	d00f      	beq.n	5f44 <osThreadCreate+0x78>
    5f24:	6863      	ldr	r3, [r4, #4]
    5f26:	6820      	ldr	r0, [r4, #0]
    5f28:	1d19      	adds	r1, r3, #4
    5f2a:	68e3      	ldr	r3, [r4, #12]
    5f2c:	4642      	mov	r2, r8
    5f2e:	021b      	lsls	r3, r3, #8
    5f30:	4319      	orrs	r1, r3
    5f32:	002b      	movs	r3, r5
    5f34:	f002 faa8 	bl	8488 <rt_tsk_create>
    5f38:	2800      	cmp	r0, #0
    5f3a:	d10c      	bne.n	5f56 <osThreadCreate+0x8a>
    5f3c:	4641      	mov	r1, r8
    5f3e:	0030      	movs	r0, r6
    5f40:	f001 f9fc 	bl	733c <rt_free_mem>
    5f44:	2000      	movs	r0, #0
    5f46:	e7d3      	b.n	5ef0 <osThreadCreate+0x24>
    5f48:	1d19      	adds	r1, r3, #4
    5f4a:	2200      	movs	r2, #0
    5f4c:	002b      	movs	r3, r5
    5f4e:	f002 fa9b 	bl	8488 <rt_tsk_create>
    5f52:	2800      	cmp	r0, #0
    5f54:	d0f6      	beq.n	5f44 <osThreadCreate+0x78>
    5f56:	4b06      	ldr	r3, [pc, #24]	; (5f70 <osThreadCreate+0xa4>)
    5f58:	3801      	subs	r0, #1
    5f5a:	0080      	lsls	r0, r0, #2
    5f5c:	58c0      	ldr	r0, [r0, r3]
    5f5e:	4a05      	ldr	r2, [pc, #20]	; (5f74 <osThreadCreate+0xa8>)
    5f60:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5f62:	635a      	str	r2, [r3, #52]	; 0x34
    5f64:	e7c4      	b.n	5ef0 <osThreadCreate+0x24>
    5f66:	46c0      	nop			; (mov r8, r8)
    5f68:	20006079 	.word	0x20006079
    5f6c:	200039f8 	.word	0x200039f8
    5f70:	20004cdc 	.word	0x20004cdc
    5f74:	000059d5 	.word	0x000059d5
    5f78:	00005d9d 	.word	0x00005d9d

00005f7c <osThreadGetId>:
    5f7c:	b590      	push	{r4, r7, lr}
    5f7e:	f3ef 8405 	mrs	r4, IPSR
    5f82:	2c00      	cmp	r4, #0
    5f84:	d103      	bne.n	5f8e <osThreadGetId+0x12>
    5f86:	4f03      	ldr	r7, [pc, #12]	; (5f94 <osThreadGetId+0x18>)
    5f88:	46bc      	mov	ip, r7
    5f8a:	df00      	svc	0
    5f8c:	bd90      	pop	{r4, r7, pc}
    5f8e:	2000      	movs	r0, #0
    5f90:	e7fc      	b.n	5f8c <osThreadGetId+0x10>
    5f92:	0000      	.short	0x0000
    5f94:	00005e15 	.word	0x00005e15

00005f98 <osThreadTerminate>:
    5f98:	b5b0      	push	{r4, r5, r7, lr}
    5f9a:	0005      	movs	r5, r0
    5f9c:	f3ef 8405 	mrs	r4, IPSR
    5fa0:	2082      	movs	r0, #130	; 0x82
    5fa2:	2c00      	cmp	r4, #0
    5fa4:	d000      	beq.n	5fa8 <osThreadTerminate+0x10>
    5fa6:	bdb0      	pop	{r4, r5, r7, pc}
    5fa8:	0028      	movs	r0, r5
    5faa:	4f02      	ldr	r7, [pc, #8]	; (5fb4 <osThreadTerminate+0x1c>)
    5fac:	46bc      	mov	ip, r7
    5fae:	df00      	svc	0
    5fb0:	e7f9      	b.n	5fa6 <osThreadTerminate+0xe>
    5fb2:	0000      	.short	0x0000
    5fb4:	00005e31 	.word	0x00005e31

00005fb8 <osThreadYield>:
    5fb8:	b5b0      	push	{r4, r5, r7, lr}
    5fba:	f3ef 8405 	mrs	r4, IPSR
    5fbe:	2582      	movs	r5, #130	; 0x82
    5fc0:	2c00      	cmp	r4, #0
    5fc2:	d001      	beq.n	5fc8 <osThreadYield+0x10>
    5fc4:	0028      	movs	r0, r5
    5fc6:	bdb0      	pop	{r4, r5, r7, pc}
    5fc8:	4f02      	ldr	r7, [pc, #8]	; (5fd4 <osThreadYield+0x1c>)
    5fca:	46bc      	mov	ip, r7
    5fcc:	df00      	svc	0
    5fce:	0005      	movs	r5, r0
    5fd0:	e7f8      	b.n	5fc4 <osThreadYield+0xc>
    5fd2:	0000      	.short	0x0000
    5fd4:	00005e75 	.word	0x00005e75

00005fd8 <osThreadSetPriority>:
    5fd8:	b5b0      	push	{r4, r5, r7, lr}
    5fda:	0005      	movs	r5, r0
    5fdc:	f3ef 8405 	mrs	r4, IPSR
    5fe0:	2082      	movs	r0, #130	; 0x82
    5fe2:	2c00      	cmp	r4, #0
    5fe4:	d000      	beq.n	5fe8 <osThreadSetPriority+0x10>
    5fe6:	bdb0      	pop	{r4, r5, r7, pc}
    5fe8:	0028      	movs	r0, r5
    5fea:	4f02      	ldr	r7, [pc, #8]	; (5ff4 <osThreadSetPriority+0x1c>)
    5fec:	46bc      	mov	ip, r7
    5fee:	df00      	svc	0
    5ff0:	e7f9      	b.n	5fe6 <osThreadSetPriority+0xe>
    5ff2:	0000      	.short	0x0000
    5ff4:	00005e81 	.word	0x00005e81

00005ff8 <osThreadGetPriority>:
    5ff8:	b5b0      	push	{r4, r5, r7, lr}
    5ffa:	0005      	movs	r5, r0
    5ffc:	f3ef 8405 	mrs	r4, IPSR
    6000:	2084      	movs	r0, #132	; 0x84
    6002:	2c00      	cmp	r4, #0
    6004:	d000      	beq.n	6008 <osThreadGetPriority+0x10>
    6006:	bdb0      	pop	{r4, r5, r7, pc}
    6008:	0028      	movs	r0, r5
    600a:	4f02      	ldr	r7, [pc, #8]	; (6014 <osThreadGetPriority+0x1c>)
    600c:	46bc      	mov	ip, r7
    600e:	df00      	svc	0
    6010:	e7f9      	b.n	6006 <osThreadGetPriority+0xe>
    6012:	0000      	.short	0x0000
    6014:	00005eb5 	.word	0x00005eb5

00006018 <svcDelay>:
    6018:	b500      	push	{lr}
    601a:	b083      	sub	sp, #12
    601c:	2800      	cmp	r0, #0
    601e:	d019      	beq.n	6054 <svcDelay+0x3c>
    6020:	1c43      	adds	r3, r0, #1
    6022:	d01c      	beq.n	605e <svcDelay+0x46>
    6024:	4b10      	ldr	r3, [pc, #64]	; (6068 <svcDelay+0x50>)
    6026:	4298      	cmp	r0, r3
    6028:	d817      	bhi.n	605a <svcDelay+0x42>
    602a:	4b10      	ldr	r3, [pc, #64]	; (606c <svcDelay+0x54>)
    602c:	681b      	ldr	r3, [r3, #0]
    602e:	9301      	str	r3, [sp, #4]
    6030:	23fa      	movs	r3, #250	; 0xfa
    6032:	009b      	lsls	r3, r3, #2
    6034:	4358      	muls	r0, r3
    6036:	9b01      	ldr	r3, [sp, #4]
    6038:	9901      	ldr	r1, [sp, #4]
    603a:	3b01      	subs	r3, #1
    603c:	18c0      	adds	r0, r0, r3
    603e:	f7fe fb95 	bl	476c <__aeabi_uidiv>
    6042:	4b0b      	ldr	r3, [pc, #44]	; (6070 <svcDelay+0x58>)
    6044:	0002      	movs	r2, r0
    6046:	0018      	movs	r0, r3
    6048:	429a      	cmp	r2, r3
    604a:	d90a      	bls.n	6062 <svcDelay+0x4a>
    604c:	f001 fb34 	bl	76b8 <rt_dly_wait>
    6050:	2040      	movs	r0, #64	; 0x40
    6052:	e000      	b.n	6056 <svcDelay+0x3e>
    6054:	2000      	movs	r0, #0
    6056:	b003      	add	sp, #12
    6058:	bd00      	pop	{pc}
    605a:	4805      	ldr	r0, [pc, #20]	; (6070 <svcDelay+0x58>)
    605c:	e7f6      	b.n	604c <svcDelay+0x34>
    605e:	4805      	ldr	r0, [pc, #20]	; (6074 <svcDelay+0x5c>)
    6060:	e7f4      	b.n	604c <svcDelay+0x34>
    6062:	b290      	uxth	r0, r2
    6064:	e7f2      	b.n	604c <svcDelay+0x34>
    6066:	46c0      	nop			; (mov r8, r8)
    6068:	003d0900 	.word	0x003d0900
    606c:	00008a00 	.word	0x00008a00
    6070:	0000fffe 	.word	0x0000fffe
    6074:	0000ffff 	.word	0x0000ffff

00006078 <osDelay>:
    6078:	b5b0      	push	{r4, r5, r7, lr}
    607a:	0005      	movs	r5, r0
    607c:	f3ef 8405 	mrs	r4, IPSR
    6080:	2082      	movs	r0, #130	; 0x82
    6082:	2c00      	cmp	r4, #0
    6084:	d000      	beq.n	6088 <osDelay+0x10>
    6086:	bdb0      	pop	{r4, r5, r7, pc}
    6088:	0028      	movs	r0, r5
    608a:	4f02      	ldr	r7, [pc, #8]	; (6094 <osDelay+0x1c>)
    608c:	46bc      	mov	ip, r7
    608e:	df00      	svc	0
    6090:	e7f9      	b.n	6086 <osDelay+0xe>
    6092:	0000      	.short	0x0000
    6094:	00006019 	.word	0x00006019

00006098 <osWait>:
    6098:	23ff      	movs	r3, #255	; 0xff
    609a:	6003      	str	r3, [r0, #0]
    609c:	4770      	bx	lr
    609e:	46c0      	nop			; (mov r8, r8)

000060a0 <svcTimerCreate>:
    60a0:	b510      	push	{r4, lr}
    60a2:	2800      	cmp	r0, #0
    60a4:	d016      	beq.n	60d4 <svcTimerCreate+0x34>
    60a6:	6803      	ldr	r3, [r0, #0]
    60a8:	2b00      	cmp	r3, #0
    60aa:	d013      	beq.n	60d4 <svcTimerCreate+0x34>
    60ac:	6843      	ldr	r3, [r0, #4]
    60ae:	2b00      	cmp	r3, #0
    60b0:	d010      	beq.n	60d4 <svcTimerCreate+0x34>
    60b2:	2901      	cmp	r1, #1
    60b4:	d80e      	bhi.n	60d4 <svcTimerCreate+0x34>
    60b6:	4c08      	ldr	r4, [pc, #32]	; (60d8 <svcTimerCreate+0x38>)
    60b8:	6824      	ldr	r4, [r4, #0]
    60ba:	2c00      	cmp	r4, #0
    60bc:	d00a      	beq.n	60d4 <svcTimerCreate+0x34>
    60be:	791c      	ldrb	r4, [r3, #4]
    60c0:	2c00      	cmp	r4, #0
    60c2:	d107      	bne.n	60d4 <svcTimerCreate+0x34>
    60c4:	6158      	str	r0, [r3, #20]
    60c6:	0018      	movs	r0, r3
    60c8:	601c      	str	r4, [r3, #0]
    60ca:	3401      	adds	r4, #1
    60cc:	711c      	strb	r4, [r3, #4]
    60ce:	7159      	strb	r1, [r3, #5]
    60d0:	611a      	str	r2, [r3, #16]
    60d2:	bd10      	pop	{r4, pc}
    60d4:	2000      	movs	r0, #0
    60d6:	e7fc      	b.n	60d2 <svcTimerCreate+0x32>
    60d8:	20004cec 	.word	0x20004cec

000060dc <svcTimerStart>:
    60dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    60de:	0004      	movs	r4, r0
    60e0:	2080      	movs	r0, #128	; 0x80
    60e2:	07a3      	lsls	r3, r4, #30
    60e4:	d104      	bne.n	60f0 <svcTimerStart+0x14>
    60e6:	2c00      	cmp	r4, #0
    60e8:	d002      	beq.n	60f0 <svcTimerStart+0x14>
    60ea:	3006      	adds	r0, #6
    60ec:	2900      	cmp	r1, #0
    60ee:	d100      	bne.n	60f2 <svcTimerStart+0x16>
    60f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    60f2:	22fa      	movs	r2, #250	; 0xfa
    60f4:	4b2f      	ldr	r3, [pc, #188]	; (61b4 <svcTimerStart+0xd8>)
    60f6:	0092      	lsls	r2, r2, #2
    60f8:	681e      	ldr	r6, [r3, #0]
    60fa:	0008      	movs	r0, r1
    60fc:	2300      	movs	r3, #0
    60fe:	2100      	movs	r1, #0
    6100:	f7fe fd74 	bl	4bec <__aeabi_lmul>
    6104:	2700      	movs	r7, #0
    6106:	0002      	movs	r2, r0
    6108:	000b      	movs	r3, r1
    610a:	2001      	movs	r0, #1
    610c:	4240      	negs	r0, r0
    610e:	17c1      	asrs	r1, r0, #31
    6110:	1980      	adds	r0, r0, r6
    6112:	4179      	adcs	r1, r7
    6114:	1880      	adds	r0, r0, r2
    6116:	4159      	adcs	r1, r3
    6118:	003b      	movs	r3, r7
    611a:	0032      	movs	r2, r6
    611c:	f7fe fd46 	bl	4bac <__aeabi_uldivmod>
    6120:	7923      	ldrb	r3, [r4, #4]
    6122:	2b01      	cmp	r3, #1
    6124:	d011      	beq.n	614a <svcTimerStart+0x6e>
    6126:	2b02      	cmp	r3, #2
    6128:	d10d      	bne.n	6146 <svcTimerStart+0x6a>
    612a:	4d23      	ldr	r5, [pc, #140]	; (61b8 <svcTimerStart+0xdc>)
    612c:	6829      	ldr	r1, [r5, #0]
    612e:	2900      	cmp	r1, #0
    6130:	d009      	beq.n	6146 <svcTimerStart+0x6a>
    6132:	428c      	cmp	r4, r1
    6134:	d03a      	beq.n	61ac <svcTimerStart+0xd0>
    6136:	000a      	movs	r2, r1
    6138:	e002      	b.n	6140 <svcTimerStart+0x64>
    613a:	429c      	cmp	r4, r3
    613c:	d028      	beq.n	6190 <svcTimerStart+0xb4>
    613e:	001a      	movs	r2, r3
    6140:	6813      	ldr	r3, [r2, #0]
    6142:	2b00      	cmp	r3, #0
    6144:	d1f9      	bne.n	613a <svcTimerStart+0x5e>
    6146:	2081      	movs	r0, #129	; 0x81
    6148:	e7d2      	b.n	60f0 <svcTimerStart+0x14>
    614a:	2302      	movs	r3, #2
    614c:	4d1a      	ldr	r5, [pc, #104]	; (61b8 <svcTimerStart+0xdc>)
    614e:	7123      	strb	r3, [r4, #4]
    6150:	6829      	ldr	r1, [r5, #0]
    6152:	60e0      	str	r0, [r4, #12]
    6154:	2900      	cmp	r1, #0
    6156:	d00b      	beq.n	6170 <svcTimerStart+0x94>
    6158:	688a      	ldr	r2, [r1, #8]
    615a:	4290      	cmp	r0, r2
    615c:	d204      	bcs.n	6168 <svcTimerStart+0x8c>
    615e:	e00f      	b.n	6180 <svcTimerStart+0xa4>
    6160:	689a      	ldr	r2, [r3, #8]
    6162:	4282      	cmp	r2, r0
    6164:	d80e      	bhi.n	6184 <svcTimerStart+0xa8>
    6166:	0019      	movs	r1, r3
    6168:	680b      	ldr	r3, [r1, #0]
    616a:	1a80      	subs	r0, r0, r2
    616c:	2b00      	cmp	r3, #0
    616e:	d1f7      	bne.n	6160 <svcTimerStart+0x84>
    6170:	2300      	movs	r3, #0
    6172:	60a0      	str	r0, [r4, #8]
    6174:	6023      	str	r3, [r4, #0]
    6176:	2900      	cmp	r1, #0
    6178:	d015      	beq.n	61a6 <svcTimerStart+0xca>
    617a:	600c      	str	r4, [r1, #0]
    617c:	2000      	movs	r0, #0
    617e:	e7b7      	b.n	60f0 <svcTimerStart+0x14>
    6180:	000b      	movs	r3, r1
    6182:	2100      	movs	r1, #0
    6184:	60a0      	str	r0, [r4, #8]
    6186:	689a      	ldr	r2, [r3, #8]
    6188:	6023      	str	r3, [r4, #0]
    618a:	1a10      	subs	r0, r2, r0
    618c:	6098      	str	r0, [r3, #8]
    618e:	e7f2      	b.n	6176 <svcTimerStart+0x9a>
    6190:	6823      	ldr	r3, [r4, #0]
    6192:	6013      	str	r3, [r2, #0]
    6194:	6823      	ldr	r3, [r4, #0]
    6196:	2b00      	cmp	r3, #0
    6198:	d0dc      	beq.n	6154 <svcTimerStart+0x78>
    619a:	68a6      	ldr	r6, [r4, #8]
    619c:	689a      	ldr	r2, [r3, #8]
    619e:	46b4      	mov	ip, r6
    61a0:	4462      	add	r2, ip
    61a2:	609a      	str	r2, [r3, #8]
    61a4:	e7d6      	b.n	6154 <svcTimerStart+0x78>
    61a6:	602c      	str	r4, [r5, #0]
    61a8:	2000      	movs	r0, #0
    61aa:	e7a1      	b.n	60f0 <svcTimerStart+0x14>
    61ac:	6823      	ldr	r3, [r4, #0]
    61ae:	602b      	str	r3, [r5, #0]
    61b0:	0019      	movs	r1, r3
    61b2:	e7f0      	b.n	6196 <svcTimerStart+0xba>
    61b4:	00008a00 	.word	0x00008a00
    61b8:	2000607c 	.word	0x2000607c

000061bc <svcTimerStop>:
    61bc:	0003      	movs	r3, r0
    61be:	2080      	movs	r0, #128	; 0x80
    61c0:	079a      	lsls	r2, r3, #30
    61c2:	d105      	bne.n	61d0 <svcTimerStop+0x14>
    61c4:	2b00      	cmp	r3, #0
    61c6:	d003      	beq.n	61d0 <svcTimerStop+0x14>
    61c8:	791a      	ldrb	r2, [r3, #4]
    61ca:	2a02      	cmp	r2, #2
    61cc:	d001      	beq.n	61d2 <svcTimerStop+0x16>
    61ce:	2081      	movs	r0, #129	; 0x81
    61d0:	4770      	bx	lr
    61d2:	2201      	movs	r2, #1
    61d4:	480e      	ldr	r0, [pc, #56]	; (6210 <svcTimerStop+0x54>)
    61d6:	711a      	strb	r2, [r3, #4]
    61d8:	6801      	ldr	r1, [r0, #0]
    61da:	2900      	cmp	r1, #0
    61dc:	d0f7      	beq.n	61ce <svcTimerStop+0x12>
    61de:	428b      	cmp	r3, r1
    61e0:	d105      	bne.n	61ee <svcTimerStop+0x32>
    61e2:	681a      	ldr	r2, [r3, #0]
    61e4:	6002      	str	r2, [r0, #0]
    61e6:	e009      	b.n	61fc <svcTimerStop+0x40>
    61e8:	4293      	cmp	r3, r2
    61ea:	d004      	beq.n	61f6 <svcTimerStop+0x3a>
    61ec:	0011      	movs	r1, r2
    61ee:	680a      	ldr	r2, [r1, #0]
    61f0:	2a00      	cmp	r2, #0
    61f2:	d1f9      	bne.n	61e8 <svcTimerStop+0x2c>
    61f4:	e7eb      	b.n	61ce <svcTimerStop+0x12>
    61f6:	681a      	ldr	r2, [r3, #0]
    61f8:	600a      	str	r2, [r1, #0]
    61fa:	681a      	ldr	r2, [r3, #0]
    61fc:	2a00      	cmp	r2, #0
    61fe:	d004      	beq.n	620a <svcTimerStop+0x4e>
    6200:	6891      	ldr	r1, [r2, #8]
    6202:	689b      	ldr	r3, [r3, #8]
    6204:	468c      	mov	ip, r1
    6206:	4463      	add	r3, ip
    6208:	6093      	str	r3, [r2, #8]
    620a:	2000      	movs	r0, #0
    620c:	e7e0      	b.n	61d0 <svcTimerStop+0x14>
    620e:	46c0      	nop			; (mov r8, r8)
    6210:	2000607c 	.word	0x2000607c

00006214 <svcTimerDelete>:
    6214:	0002      	movs	r2, r0
    6216:	2080      	movs	r0, #128	; 0x80
    6218:	0793      	lsls	r3, r2, #30
    621a:	d117      	bne.n	624c <svcTimerDelete+0x38>
    621c:	2a00      	cmp	r2, #0
    621e:	d015      	beq.n	624c <svcTimerDelete+0x38>
    6220:	7913      	ldrb	r3, [r2, #4]
    6222:	2b01      	cmp	r3, #1
    6224:	d00f      	beq.n	6246 <svcTimerDelete+0x32>
    6226:	2081      	movs	r0, #129	; 0x81
    6228:	2b02      	cmp	r3, #2
    622a:	d10f      	bne.n	624c <svcTimerDelete+0x38>
    622c:	4810      	ldr	r0, [pc, #64]	; (6270 <svcTimerDelete+0x5c>)
    622e:	6801      	ldr	r1, [r0, #0]
    6230:	2900      	cmp	r1, #0
    6232:	d008      	beq.n	6246 <svcTimerDelete+0x32>
    6234:	428a      	cmp	r2, r1
    6236:	d103      	bne.n	6240 <svcTimerDelete+0x2c>
    6238:	e017      	b.n	626a <svcTimerDelete+0x56>
    623a:	429a      	cmp	r2, r3
    623c:	d007      	beq.n	624e <svcTimerDelete+0x3a>
    623e:	0019      	movs	r1, r3
    6240:	680b      	ldr	r3, [r1, #0]
    6242:	2b00      	cmp	r3, #0
    6244:	d1f9      	bne.n	623a <svcTimerDelete+0x26>
    6246:	2300      	movs	r3, #0
    6248:	2000      	movs	r0, #0
    624a:	7113      	strb	r3, [r2, #4]
    624c:	4770      	bx	lr
    624e:	6813      	ldr	r3, [r2, #0]
    6250:	600b      	str	r3, [r1, #0]
    6252:	6813      	ldr	r3, [r2, #0]
    6254:	2b00      	cmp	r3, #0
    6256:	d0f6      	beq.n	6246 <svcTimerDelete+0x32>
    6258:	6890      	ldr	r0, [r2, #8]
    625a:	6899      	ldr	r1, [r3, #8]
    625c:	4684      	mov	ip, r0
    625e:	4461      	add	r1, ip
    6260:	6099      	str	r1, [r3, #8]
    6262:	2300      	movs	r3, #0
    6264:	2000      	movs	r0, #0
    6266:	7113      	strb	r3, [r2, #4]
    6268:	e7f0      	b.n	624c <svcTimerDelete+0x38>
    626a:	6813      	ldr	r3, [r2, #0]
    626c:	6003      	str	r3, [r0, #0]
    626e:	e7f1      	b.n	6254 <svcTimerDelete+0x40>
    6270:	2000607c 	.word	0x2000607c

00006274 <svcTimerCall>:
    6274:	0003      	movs	r3, r0
    6276:	0782      	lsls	r2, r0, #30
    6278:	d105      	bne.n	6286 <svcTimerCall+0x12>
    627a:	2800      	cmp	r0, #0
    627c:	d006      	beq.n	628c <svcTimerCall+0x18>
    627e:	6942      	ldr	r2, [r0, #20]
    6280:	6919      	ldr	r1, [r3, #16]
    6282:	6810      	ldr	r0, [r2, #0]
    6284:	4770      	bx	lr
    6286:	2000      	movs	r0, #0
    6288:	2100      	movs	r1, #0
    628a:	e7fb      	b.n	6284 <svcTimerCall+0x10>
    628c:	2000      	movs	r0, #0
    628e:	0001      	movs	r1, r0
    6290:	e7f8      	b.n	6284 <svcTimerCall+0x10>
    6292:	46c0      	nop			; (mov r8, r8)

00006294 <sysTimerTick>:
    6294:	b5f0      	push	{r4, r5, r6, r7, lr}
    6296:	464e      	mov	r6, r9
    6298:	4657      	mov	r7, sl
    629a:	4645      	mov	r5, r8
    629c:	b4e0      	push	{r5, r6, r7}
    629e:	4e2a      	ldr	r6, [pc, #168]	; (6348 <sysTimerTick+0xb4>)
    62a0:	6834      	ldr	r4, [r6, #0]
    62a2:	2c00      	cmp	r4, #0
    62a4:	d028      	beq.n	62f8 <sysTimerTick+0x64>
    62a6:	2200      	movs	r2, #0
    62a8:	68a3      	ldr	r3, [r4, #8]
    62aa:	4f28      	ldr	r7, [pc, #160]	; (634c <sysTimerTick+0xb8>)
    62ac:	3b01      	subs	r3, #1
    62ae:	60a3      	str	r3, [r4, #8]
    62b0:	4690      	mov	r8, r2
    62b2:	2b00      	cmp	r3, #0
    62b4:	d120      	bne.n	62f8 <sysTimerTick+0x64>
    62b6:	6825      	ldr	r5, [r4, #0]
    62b8:	683b      	ldr	r3, [r7, #0]
    62ba:	6035      	str	r5, [r6, #0]
    62bc:	4699      	mov	r9, r3
    62be:	2b00      	cmp	r3, #0
    62c0:	d003      	beq.n	62ca <sysTimerTick+0x36>
    62c2:	781b      	ldrb	r3, [r3, #0]
    62c4:	469a      	mov	sl, r3
    62c6:	2b01      	cmp	r3, #1
    62c8:	d002      	beq.n	62d0 <sysTimerTick+0x3c>
    62ca:	2004      	movs	r0, #4
    62cc:	f7fb fb56 	bl	197c <os_error>
    62d0:	4648      	mov	r0, r9
    62d2:	f001 fb63 	bl	799c <rt_mbx_check>
    62d6:	2800      	cmp	r0, #0
    62d8:	d0f7      	beq.n	62ca <sysTimerTick+0x36>
    62da:	0021      	movs	r1, r4
    62dc:	4648      	mov	r0, r9
    62de:	f001 fb61 	bl	79a4 <isr_mbx_send>
    62e2:	7963      	ldrb	r3, [r4, #5]
    62e4:	2b01      	cmp	r3, #1
    62e6:	d00c      	beq.n	6302 <sysTimerTick+0x6e>
    62e8:	4653      	mov	r3, sl
    62ea:	7123      	strb	r3, [r4, #4]
    62ec:	2d00      	cmp	r5, #0
    62ee:	d003      	beq.n	62f8 <sysTimerTick+0x64>
    62f0:	68ab      	ldr	r3, [r5, #8]
    62f2:	002c      	movs	r4, r5
    62f4:	2b00      	cmp	r3, #0
    62f6:	d0de      	beq.n	62b6 <sysTimerTick+0x22>
    62f8:	bc1c      	pop	{r2, r3, r4}
    62fa:	4690      	mov	r8, r2
    62fc:	4699      	mov	r9, r3
    62fe:	46a2      	mov	sl, r4
    6300:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6302:	6830      	ldr	r0, [r6, #0]
    6304:	68e2      	ldr	r2, [r4, #12]
    6306:	2800      	cmp	r0, #0
    6308:	d00b      	beq.n	6322 <sysTimerTick+0x8e>
    630a:	6881      	ldr	r1, [r0, #8]
    630c:	4291      	cmp	r1, r2
    630e:	d904      	bls.n	631a <sysTimerTick+0x86>
    6310:	e00e      	b.n	6330 <sysTimerTick+0x9c>
    6312:	6899      	ldr	r1, [r3, #8]
    6314:	4291      	cmp	r1, r2
    6316:	d80d      	bhi.n	6334 <sysTimerTick+0xa0>
    6318:	0018      	movs	r0, r3
    631a:	6803      	ldr	r3, [r0, #0]
    631c:	1a52      	subs	r2, r2, r1
    631e:	2b00      	cmp	r3, #0
    6320:	d1f7      	bne.n	6312 <sysTimerTick+0x7e>
    6322:	4643      	mov	r3, r8
    6324:	60a2      	str	r2, [r4, #8]
    6326:	6023      	str	r3, [r4, #0]
    6328:	2800      	cmp	r0, #0
    632a:	d00a      	beq.n	6342 <sysTimerTick+0xae>
    632c:	6004      	str	r4, [r0, #0]
    632e:	e7dd      	b.n	62ec <sysTimerTick+0x58>
    6330:	0003      	movs	r3, r0
    6332:	2000      	movs	r0, #0
    6334:	60a2      	str	r2, [r4, #8]
    6336:	6899      	ldr	r1, [r3, #8]
    6338:	6023      	str	r3, [r4, #0]
    633a:	1a8a      	subs	r2, r1, r2
    633c:	609a      	str	r2, [r3, #8]
    633e:	2800      	cmp	r0, #0
    6340:	d1f4      	bne.n	632c <sysTimerTick+0x98>
    6342:	6034      	str	r4, [r6, #0]
    6344:	e7d2      	b.n	62ec <sysTimerTick+0x58>
    6346:	46c0      	nop			; (mov r8, r8)
    6348:	2000607c 	.word	0x2000607c
    634c:	20004d10 	.word	0x20004d10

00006350 <sysUserTimerWakeupTime>:
    6350:	4b04      	ldr	r3, [pc, #16]	; (6364 <sysUserTimerWakeupTime+0x14>)
    6352:	681b      	ldr	r3, [r3, #0]
    6354:	2b00      	cmp	r3, #0
    6356:	d001      	beq.n	635c <sysUserTimerWakeupTime+0xc>
    6358:	6898      	ldr	r0, [r3, #8]
    635a:	4770      	bx	lr
    635c:	2001      	movs	r0, #1
    635e:	4240      	negs	r0, r0
    6360:	e7fb      	b.n	635a <sysUserTimerWakeupTime+0xa>
    6362:	46c0      	nop			; (mov r8, r8)
    6364:	2000607c 	.word	0x2000607c

00006368 <sysUserTimerUpdate>:
    6368:	b570      	push	{r4, r5, r6, lr}
    636a:	4d0e      	ldr	r5, [pc, #56]	; (63a4 <sysUserTimerUpdate+0x3c>)
    636c:	0004      	movs	r4, r0
    636e:	682b      	ldr	r3, [r5, #0]
    6370:	2b00      	cmp	r3, #0
    6372:	d012      	beq.n	639a <sysUserTimerUpdate+0x32>
    6374:	2800      	cmp	r0, #0
    6376:	d010      	beq.n	639a <sysUserTimerUpdate+0x32>
    6378:	689a      	ldr	r2, [r3, #8]
    637a:	2601      	movs	r6, #1
    637c:	4290      	cmp	r0, r2
    637e:	d205      	bcs.n	638c <sysUserTimerUpdate+0x24>
    6380:	e00c      	b.n	639c <sysUserTimerUpdate+0x34>
    6382:	2c00      	cmp	r4, #0
    6384:	d009      	beq.n	639a <sysUserTimerUpdate+0x32>
    6386:	689a      	ldr	r2, [r3, #8]
    6388:	42a2      	cmp	r2, r4
    638a:	d807      	bhi.n	639c <sysUserTimerUpdate+0x34>
    638c:	609e      	str	r6, [r3, #8]
    638e:	1aa4      	subs	r4, r4, r2
    6390:	f7ff ff80 	bl	6294 <sysTimerTick>
    6394:	682b      	ldr	r3, [r5, #0]
    6396:	2b00      	cmp	r3, #0
    6398:	d1f3      	bne.n	6382 <sysUserTimerUpdate+0x1a>
    639a:	bd70      	pop	{r4, r5, r6, pc}
    639c:	1b14      	subs	r4, r2, r4
    639e:	609c      	str	r4, [r3, #8]
    63a0:	e7fb      	b.n	639a <sysUserTimerUpdate+0x32>
    63a2:	46c0      	nop			; (mov r8, r8)
    63a4:	2000607c 	.word	0x2000607c

000063a8 <osTimerCreate>:
    63a8:	b5b0      	push	{r4, r5, r7, lr}
    63aa:	f3ef 8405 	mrs	r4, IPSR
    63ae:	2c00      	cmp	r4, #0
    63b0:	d124      	bne.n	63fc <osTimerCreate+0x54>
    63b2:	f3ef 8414 	mrs	r4, CONTROL
    63b6:	2501      	movs	r5, #1
    63b8:	4225      	tst	r5, r4
    63ba:	d003      	beq.n	63c4 <osTimerCreate+0x1c>
    63bc:	4f12      	ldr	r7, [pc, #72]	; (6408 <osTimerCreate+0x60>)
    63be:	46bc      	mov	ip, r7
    63c0:	df00      	svc	0
    63c2:	bdb0      	pop	{r4, r5, r7, pc}
    63c4:	4c0e      	ldr	r4, [pc, #56]	; (6400 <osTimerCreate+0x58>)
    63c6:	7824      	ldrb	r4, [r4, #0]
    63c8:	2c00      	cmp	r4, #0
    63ca:	d1f7      	bne.n	63bc <osTimerCreate+0x14>
    63cc:	2800      	cmp	r0, #0
    63ce:	d015      	beq.n	63fc <osTimerCreate+0x54>
    63d0:	6803      	ldr	r3, [r0, #0]
    63d2:	2b00      	cmp	r3, #0
    63d4:	d012      	beq.n	63fc <osTimerCreate+0x54>
    63d6:	6843      	ldr	r3, [r0, #4]
    63d8:	2b00      	cmp	r3, #0
    63da:	d00f      	beq.n	63fc <osTimerCreate+0x54>
    63dc:	2901      	cmp	r1, #1
    63de:	d80d      	bhi.n	63fc <osTimerCreate+0x54>
    63e0:	4c08      	ldr	r4, [pc, #32]	; (6404 <osTimerCreate+0x5c>)
    63e2:	6824      	ldr	r4, [r4, #0]
    63e4:	2c00      	cmp	r4, #0
    63e6:	d009      	beq.n	63fc <osTimerCreate+0x54>
    63e8:	791c      	ldrb	r4, [r3, #4]
    63ea:	2c00      	cmp	r4, #0
    63ec:	d106      	bne.n	63fc <osTimerCreate+0x54>
    63ee:	6158      	str	r0, [r3, #20]
    63f0:	601c      	str	r4, [r3, #0]
    63f2:	711d      	strb	r5, [r3, #4]
    63f4:	7159      	strb	r1, [r3, #5]
    63f6:	611a      	str	r2, [r3, #16]
    63f8:	0018      	movs	r0, r3
    63fa:	e7e2      	b.n	63c2 <osTimerCreate+0x1a>
    63fc:	2000      	movs	r0, #0
    63fe:	e7e0      	b.n	63c2 <osTimerCreate+0x1a>
    6400:	20006079 	.word	0x20006079
    6404:	20004cec 	.word	0x20004cec
    6408:	000060a1 	.word	0x000060a1

0000640c <osTimerStart>:
    640c:	b5b0      	push	{r4, r5, r7, lr}
    640e:	0005      	movs	r5, r0
    6410:	f3ef 8405 	mrs	r4, IPSR
    6414:	2082      	movs	r0, #130	; 0x82
    6416:	2c00      	cmp	r4, #0
    6418:	d000      	beq.n	641c <osTimerStart+0x10>
    641a:	bdb0      	pop	{r4, r5, r7, pc}
    641c:	0028      	movs	r0, r5
    641e:	4f02      	ldr	r7, [pc, #8]	; (6428 <osTimerStart+0x1c>)
    6420:	46bc      	mov	ip, r7
    6422:	df00      	svc	0
    6424:	e7f9      	b.n	641a <osTimerStart+0xe>
    6426:	0000      	.short	0x0000
    6428:	000060dd 	.word	0x000060dd

0000642c <osTimerStop>:
    642c:	b5b0      	push	{r4, r5, r7, lr}
    642e:	0005      	movs	r5, r0
    6430:	f3ef 8405 	mrs	r4, IPSR
    6434:	2082      	movs	r0, #130	; 0x82
    6436:	2c00      	cmp	r4, #0
    6438:	d000      	beq.n	643c <osTimerStop+0x10>
    643a:	bdb0      	pop	{r4, r5, r7, pc}
    643c:	0028      	movs	r0, r5
    643e:	4f02      	ldr	r7, [pc, #8]	; (6448 <osTimerStop+0x1c>)
    6440:	46bc      	mov	ip, r7
    6442:	df00      	svc	0
    6444:	e7f9      	b.n	643a <osTimerStop+0xe>
    6446:	0000      	.short	0x0000
    6448:	000061bd 	.word	0x000061bd

0000644c <osTimerDelete>:
    644c:	b5b0      	push	{r4, r5, r7, lr}
    644e:	0005      	movs	r5, r0
    6450:	f3ef 8405 	mrs	r4, IPSR
    6454:	2082      	movs	r0, #130	; 0x82
    6456:	2c00      	cmp	r4, #0
    6458:	d000      	beq.n	645c <osTimerDelete+0x10>
    645a:	bdb0      	pop	{r4, r5, r7, pc}
    645c:	0028      	movs	r0, r5
    645e:	4f02      	ldr	r7, [pc, #8]	; (6468 <osTimerDelete+0x1c>)
    6460:	46bc      	mov	ip, r7
    6462:	df00      	svc	0
    6464:	e7f9      	b.n	645a <osTimerDelete+0xe>
    6466:	0000      	.short	0x0000
    6468:	00006215 	.word	0x00006215

0000646c <osTimerCall>:
    646c:	b590      	push	{r4, r7, lr}
    646e:	0004      	movs	r4, r0
    6470:	0008      	movs	r0, r1
    6472:	4f03      	ldr	r7, [pc, #12]	; (6480 <osTimerCall+0x14>)
    6474:	46bc      	mov	ip, r7
    6476:	df00      	svc	0
    6478:	6020      	str	r0, [r4, #0]
    647a:	6061      	str	r1, [r4, #4]
    647c:	0020      	movs	r0, r4
    647e:	bd90      	pop	{r4, r7, pc}
    6480:	00006275 	.word	0x00006275

00006484 <osTimerThread>:
    6484:	b5b0      	push	{r4, r5, r7, lr}
    6486:	4d0a      	ldr	r5, [pc, #40]	; (64b0 <osTimerThread+0x2c>)
    6488:	6828      	ldr	r0, [r5, #0]
    648a:	f3ef 8105 	mrs	r1, IPSR
    648e:	2900      	cmp	r1, #0
    6490:	d1fb      	bne.n	648a <osTimerThread+0x6>
    6492:	3901      	subs	r1, #1
    6494:	4f07      	ldr	r7, [pc, #28]	; (64b4 <osTimerThread+0x30>)
    6496:	46bc      	mov	ip, r7
    6498:	df00      	svc	0
    649a:	2810      	cmp	r0, #16
    649c:	d1f4      	bne.n	6488 <osTimerThread+0x4>
    649e:	0008      	movs	r0, r1
    64a0:	4f05      	ldr	r7, [pc, #20]	; (64b8 <osTimerThread+0x34>)
    64a2:	46bc      	mov	ip, r7
    64a4:	df00      	svc	0
    64a6:	1e04      	subs	r4, r0, #0
    64a8:	d0ee      	beq.n	6488 <osTimerThread+0x4>
    64aa:	0008      	movs	r0, r1
    64ac:	47a0      	blx	r4
    64ae:	e7eb      	b.n	6488 <osTimerThread+0x4>
    64b0:	20004d10 	.word	0x20004d10
    64b4:	00006c65 	.word	0x00006c65
    64b8:	00006275 	.word	0x00006275

000064bc <svcSignalSet>:
    64bc:	b510      	push	{r4, lr}
    64be:	2800      	cmp	r0, #0
    64c0:	d00e      	beq.n	64e0 <svcSignalSet+0x24>
    64c2:	0783      	lsls	r3, r0, #30
    64c4:	d10c      	bne.n	64e0 <svcSignalSet+0x24>
    64c6:	7803      	ldrb	r3, [r0, #0]
    64c8:	2b00      	cmp	r3, #0
    64ca:	d109      	bne.n	64e0 <svcSignalSet+0x24>
    64cc:	0c0b      	lsrs	r3, r1, #16
    64ce:	d107      	bne.n	64e0 <svcSignalSet+0x24>
    64d0:	78c3      	ldrb	r3, [r0, #3]
    64d2:	8b04      	ldrh	r4, [r0, #24]
    64d4:	b288      	uxth	r0, r1
    64d6:	0019      	movs	r1, r3
    64d8:	f001 fcbe 	bl	7e58 <rt_evt_set>
    64dc:	0020      	movs	r0, r4
    64de:	e001      	b.n	64e4 <svcSignalSet+0x28>
    64e0:	2080      	movs	r0, #128	; 0x80
    64e2:	0600      	lsls	r0, r0, #24
    64e4:	bd10      	pop	{r4, pc}
    64e6:	46c0      	nop			; (mov r8, r8)

000064e8 <svcSignalClear>:
    64e8:	b510      	push	{r4, lr}
    64ea:	2800      	cmp	r0, #0
    64ec:	d00e      	beq.n	650c <svcSignalClear+0x24>
    64ee:	0783      	lsls	r3, r0, #30
    64f0:	d10c      	bne.n	650c <svcSignalClear+0x24>
    64f2:	7803      	ldrb	r3, [r0, #0]
    64f4:	2b00      	cmp	r3, #0
    64f6:	d109      	bne.n	650c <svcSignalClear+0x24>
    64f8:	0c0b      	lsrs	r3, r1, #16
    64fa:	d107      	bne.n	650c <svcSignalClear+0x24>
    64fc:	78c3      	ldrb	r3, [r0, #3]
    64fe:	8b04      	ldrh	r4, [r0, #24]
    6500:	b288      	uxth	r0, r1
    6502:	0019      	movs	r1, r3
    6504:	f001 fcd4 	bl	7eb0 <rt_evt_clr>
    6508:	0020      	movs	r0, r4
    650a:	e001      	b.n	6510 <svcSignalClear+0x28>
    650c:	2080      	movs	r0, #128	; 0x80
    650e:	0600      	lsls	r0, r0, #24
    6510:	bd10      	pop	{r4, pc}
    6512:	46c0      	nop			; (mov r8, r8)

00006514 <svcSignalWait>:
    6514:	b5f0      	push	{r4, r5, r6, r7, lr}
    6516:	0c04      	lsrs	r4, r0, #16
    6518:	b083      	sub	sp, #12
    651a:	0006      	movs	r6, r0
    651c:	000d      	movs	r5, r1
    651e:	0424      	lsls	r4, r4, #16
    6520:	d149      	bne.n	65b6 <svcSignalWait+0xa2>
    6522:	2800      	cmp	r0, #0
    6524:	d026      	beq.n	6574 <svcSignalWait+0x60>
    6526:	b287      	uxth	r7, r0
    6528:	2100      	movs	r1, #0
    652a:	2d00      	cmp	r5, #0
    652c:	d013      	beq.n	6556 <svcSignalWait+0x42>
    652e:	1c6b      	adds	r3, r5, #1
    6530:	d05c      	beq.n	65ec <svcSignalWait+0xd8>
    6532:	4b2f      	ldr	r3, [pc, #188]	; (65f0 <svcSignalWait+0xdc>)
    6534:	429d      	cmp	r5, r3
    6536:	d84f      	bhi.n	65d8 <svcSignalWait+0xc4>
    6538:	20fa      	movs	r0, #250	; 0xfa
    653a:	4b2e      	ldr	r3, [pc, #184]	; (65f4 <svcSignalWait+0xe0>)
    653c:	0080      	lsls	r0, r0, #2
    653e:	4368      	muls	r0, r5
    6540:	681b      	ldr	r3, [r3, #0]
    6542:	9301      	str	r3, [sp, #4]
    6544:	3b01      	subs	r3, #1
    6546:	18c0      	adds	r0, r0, r3
    6548:	9901      	ldr	r1, [sp, #4]
    654a:	f7fe f90f 	bl	476c <__aeabi_uidiv>
    654e:	4b2a      	ldr	r3, [pc, #168]	; (65f8 <svcSignalWait+0xe4>)
    6550:	0019      	movs	r1, r3
    6552:	4298      	cmp	r0, r3
    6554:	d946      	bls.n	65e4 <svcSignalWait+0xd0>
    6556:	2201      	movs	r2, #1
    6558:	0038      	movs	r0, r7
    655a:	f001 fc59 	bl	7e10 <rt_evt_wait>
    655e:	2802      	cmp	r0, #2
    6560:	d035      	beq.n	65ce <svcSignalWait+0xba>
    6562:	0028      	movs	r0, r5
    6564:	1e45      	subs	r5, r0, #1
    6566:	41a8      	sbcs	r0, r5
    6568:	0180      	lsls	r0, r0, #6
    656a:	0021      	movs	r1, r4
    656c:	2200      	movs	r2, #0
    656e:	2300      	movs	r3, #0
    6570:	b003      	add	sp, #12
    6572:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6574:	2900      	cmp	r1, #0
    6576:	d021      	beq.n	65bc <svcSignalWait+0xa8>
    6578:	1c4b      	adds	r3, r1, #1
    657a:	d035      	beq.n	65e8 <svcSignalWait+0xd4>
    657c:	4b1c      	ldr	r3, [pc, #112]	; (65f0 <svcSignalWait+0xdc>)
    657e:	4299      	cmp	r1, r3
    6580:	d82c      	bhi.n	65dc <svcSignalWait+0xc8>
    6582:	20fa      	movs	r0, #250	; 0xfa
    6584:	4b1b      	ldr	r3, [pc, #108]	; (65f4 <svcSignalWait+0xe0>)
    6586:	0080      	lsls	r0, r0, #2
    6588:	4348      	muls	r0, r1
    658a:	681b      	ldr	r3, [r3, #0]
    658c:	9301      	str	r3, [sp, #4]
    658e:	3b01      	subs	r3, #1
    6590:	18c0      	adds	r0, r0, r3
    6592:	9901      	ldr	r1, [sp, #4]
    6594:	f7fe f8ea 	bl	476c <__aeabi_uidiv>
    6598:	4b17      	ldr	r3, [pc, #92]	; (65f8 <svcSignalWait+0xe4>)
    659a:	0019      	movs	r1, r3
    659c:	4298      	cmp	r0, r3
    659e:	d91f      	bls.n	65e0 <svcSignalWait+0xcc>
    65a0:	2200      	movs	r2, #0
    65a2:	4816      	ldr	r0, [pc, #88]	; (65fc <svcSignalWait+0xe8>)
    65a4:	f001 fc34 	bl	7e10 <rt_evt_wait>
    65a8:	2802      	cmp	r0, #2
    65aa:	d113      	bne.n	65d4 <svcSignalWait+0xc0>
    65ac:	4b14      	ldr	r3, [pc, #80]	; (6600 <svcSignalWait+0xec>)
    65ae:	2008      	movs	r0, #8
    65b0:	681b      	ldr	r3, [r3, #0]
    65b2:	8b5c      	ldrh	r4, [r3, #26]
    65b4:	e7d9      	b.n	656a <svcSignalWait+0x56>
    65b6:	2086      	movs	r0, #134	; 0x86
    65b8:	2100      	movs	r1, #0
    65ba:	e7d7      	b.n	656c <svcSignalWait+0x58>
    65bc:	2200      	movs	r2, #0
    65be:	2100      	movs	r1, #0
    65c0:	480e      	ldr	r0, [pc, #56]	; (65fc <svcSignalWait+0xe8>)
    65c2:	f001 fc25 	bl	7e10 <rt_evt_wait>
    65c6:	2802      	cmp	r0, #2
    65c8:	d0f0      	beq.n	65ac <svcSignalWait+0x98>
    65ca:	2000      	movs	r0, #0
    65cc:	e7cd      	b.n	656a <svcSignalWait+0x56>
    65ce:	0034      	movs	r4, r6
    65d0:	2008      	movs	r0, #8
    65d2:	e7ca      	b.n	656a <svcSignalWait+0x56>
    65d4:	2040      	movs	r0, #64	; 0x40
    65d6:	e7c8      	b.n	656a <svcSignalWait+0x56>
    65d8:	4907      	ldr	r1, [pc, #28]	; (65f8 <svcSignalWait+0xe4>)
    65da:	e7bc      	b.n	6556 <svcSignalWait+0x42>
    65dc:	4906      	ldr	r1, [pc, #24]	; (65f8 <svcSignalWait+0xe4>)
    65de:	e7df      	b.n	65a0 <svcSignalWait+0x8c>
    65e0:	b281      	uxth	r1, r0
    65e2:	e7dd      	b.n	65a0 <svcSignalWait+0x8c>
    65e4:	b281      	uxth	r1, r0
    65e6:	e7b6      	b.n	6556 <svcSignalWait+0x42>
    65e8:	4904      	ldr	r1, [pc, #16]	; (65fc <svcSignalWait+0xe8>)
    65ea:	e7d9      	b.n	65a0 <svcSignalWait+0x8c>
    65ec:	4903      	ldr	r1, [pc, #12]	; (65fc <svcSignalWait+0xe8>)
    65ee:	e7b2      	b.n	6556 <svcSignalWait+0x42>
    65f0:	003d0900 	.word	0x003d0900
    65f4:	00008a00 	.word	0x00008a00
    65f8:	0000fffe 	.word	0x0000fffe
    65fc:	0000ffff 	.word	0x0000ffff
    6600:	200060b8 	.word	0x200060b8

00006604 <isrSignalSet>:
    6604:	b510      	push	{r4, lr}
    6606:	2800      	cmp	r0, #0
    6608:	d00e      	beq.n	6628 <isrSignalSet+0x24>
    660a:	0783      	lsls	r3, r0, #30
    660c:	d10c      	bne.n	6628 <isrSignalSet+0x24>
    660e:	7803      	ldrb	r3, [r0, #0]
    6610:	2b00      	cmp	r3, #0
    6612:	d109      	bne.n	6628 <isrSignalSet+0x24>
    6614:	0c0b      	lsrs	r3, r1, #16
    6616:	d107      	bne.n	6628 <isrSignalSet+0x24>
    6618:	78c3      	ldrb	r3, [r0, #3]
    661a:	8b04      	ldrh	r4, [r0, #24]
    661c:	b288      	uxth	r0, r1
    661e:	0019      	movs	r1, r3
    6620:	f001 fc52 	bl	7ec8 <isr_evt_set>
    6624:	0020      	movs	r0, r4
    6626:	e001      	b.n	662c <isrSignalSet+0x28>
    6628:	2080      	movs	r0, #128	; 0x80
    662a:	0600      	lsls	r0, r0, #24
    662c:	bd10      	pop	{r4, pc}
    662e:	46c0      	nop			; (mov r8, r8)

00006630 <osSignalSet>:
    6630:	b5b0      	push	{r4, r5, r7, lr}
    6632:	f3ef 8405 	mrs	r4, IPSR
    6636:	2c00      	cmp	r4, #0
    6638:	d103      	bne.n	6642 <osSignalSet+0x12>
    663a:	4f0c      	ldr	r7, [pc, #48]	; (666c <osSignalSet+0x3c>)
    663c:	46bc      	mov	ip, r7
    663e:	df00      	svc	0
    6640:	bdb0      	pop	{r4, r5, r7, pc}
    6642:	2800      	cmp	r0, #0
    6644:	d00e      	beq.n	6664 <osSignalSet+0x34>
    6646:	0783      	lsls	r3, r0, #30
    6648:	d10c      	bne.n	6664 <osSignalSet+0x34>
    664a:	7803      	ldrb	r3, [r0, #0]
    664c:	2b00      	cmp	r3, #0
    664e:	d109      	bne.n	6664 <osSignalSet+0x34>
    6650:	0c0b      	lsrs	r3, r1, #16
    6652:	d107      	bne.n	6664 <osSignalSet+0x34>
    6654:	78c3      	ldrb	r3, [r0, #3]
    6656:	8b04      	ldrh	r4, [r0, #24]
    6658:	b288      	uxth	r0, r1
    665a:	0019      	movs	r1, r3
    665c:	f001 fc34 	bl	7ec8 <isr_evt_set>
    6660:	0020      	movs	r0, r4
    6662:	e7ed      	b.n	6640 <osSignalSet+0x10>
    6664:	2080      	movs	r0, #128	; 0x80
    6666:	0600      	lsls	r0, r0, #24
    6668:	e7ea      	b.n	6640 <osSignalSet+0x10>
    666a:	0000      	.short	0x0000
    666c:	000064bd 	.word	0x000064bd

00006670 <osSignalClear>:
    6670:	b590      	push	{r4, r7, lr}
    6672:	f3ef 8405 	mrs	r4, IPSR
    6676:	2c00      	cmp	r4, #0
    6678:	d103      	bne.n	6682 <osSignalClear+0x12>
    667a:	4f03      	ldr	r7, [pc, #12]	; (6688 <osSignalClear+0x18>)
    667c:	46bc      	mov	ip, r7
    667e:	df00      	svc	0
    6680:	bd90      	pop	{r4, r7, pc}
    6682:	2080      	movs	r0, #128	; 0x80
    6684:	0600      	lsls	r0, r0, #24
    6686:	e7fb      	b.n	6680 <osSignalClear+0x10>
    6688:	000064e9 	.word	0x000064e9

0000668c <osSignalWait>:
    668c:	b5f0      	push	{r4, r5, r6, r7, lr}
    668e:	0004      	movs	r4, r0
    6690:	f3ef 8505 	mrs	r5, IPSR
    6694:	2d00      	cmp	r5, #0
    6696:	d109      	bne.n	66ac <osSignalWait+0x20>
    6698:	0008      	movs	r0, r1
    669a:	0011      	movs	r1, r2
    669c:	4f05      	ldr	r7, [pc, #20]	; (66b4 <osSignalWait+0x28>)
    669e:	46bc      	mov	ip, r7
    66a0:	df00      	svc	0
    66a2:	6020      	str	r0, [r4, #0]
    66a4:	6061      	str	r1, [r4, #4]
    66a6:	60a2      	str	r2, [r4, #8]
    66a8:	0020      	movs	r0, r4
    66aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
    66ac:	2382      	movs	r3, #130	; 0x82
    66ae:	6003      	str	r3, [r0, #0]
    66b0:	e7fa      	b.n	66a8 <osSignalWait+0x1c>
    66b2:	0000      	.short	0x0000
    66b4:	00006515 	.word	0x00006515

000066b8 <svcMutexCreate>:
    66b8:	b510      	push	{r4, lr}
    66ba:	2800      	cmp	r0, #0
    66bc:	d00a      	beq.n	66d4 <svcMutexCreate+0x1c>
    66be:	6804      	ldr	r4, [r0, #0]
    66c0:	2c00      	cmp	r4, #0
    66c2:	d007      	beq.n	66d4 <svcMutexCreate+0x1c>
    66c4:	7823      	ldrb	r3, [r4, #0]
    66c6:	2b00      	cmp	r3, #0
    66c8:	d104      	bne.n	66d4 <svcMutexCreate+0x1c>
    66ca:	0020      	movs	r0, r4
    66cc:	f000 feb4 	bl	7438 <rt_mut_init>
    66d0:	0020      	movs	r0, r4
    66d2:	bd10      	pop	{r4, pc}
    66d4:	2000      	movs	r0, #0
    66d6:	e7fc      	b.n	66d2 <svcMutexCreate+0x1a>

000066d8 <svcMutexWait>:
    66d8:	b510      	push	{r4, lr}
    66da:	0004      	movs	r4, r0
    66dc:	b082      	sub	sp, #8
    66de:	2080      	movs	r0, #128	; 0x80
    66e0:	07a3      	lsls	r3, r4, #30
    66e2:	d104      	bne.n	66ee <svcMutexWait+0x16>
    66e4:	2c00      	cmp	r4, #0
    66e6:	d002      	beq.n	66ee <svcMutexWait+0x16>
    66e8:	7823      	ldrb	r3, [r4, #0]
    66ea:	2b03      	cmp	r3, #3
    66ec:	d001      	beq.n	66f2 <svcMutexWait+0x1a>
    66ee:	b002      	add	sp, #8
    66f0:	bd10      	pop	{r4, pc}
    66f2:	2900      	cmp	r1, #0
    66f4:	d01b      	beq.n	672e <svcMutexWait+0x56>
    66f6:	1c4b      	adds	r3, r1, #1
    66f8:	d025      	beq.n	6746 <svcMutexWait+0x6e>
    66fa:	4b16      	ldr	r3, [pc, #88]	; (6754 <svcMutexWait+0x7c>)
    66fc:	4299      	cmp	r1, r3
    66fe:	d824      	bhi.n	674a <svcMutexWait+0x72>
    6700:	20fa      	movs	r0, #250	; 0xfa
    6702:	4b15      	ldr	r3, [pc, #84]	; (6758 <svcMutexWait+0x80>)
    6704:	0080      	lsls	r0, r0, #2
    6706:	4341      	muls	r1, r0
    6708:	681b      	ldr	r3, [r3, #0]
    670a:	9301      	str	r3, [sp, #4]
    670c:	3b01      	subs	r3, #1
    670e:	1858      	adds	r0, r3, r1
    6710:	9901      	ldr	r1, [sp, #4]
    6712:	f7fe f82b 	bl	476c <__aeabi_uidiv>
    6716:	4b11      	ldr	r3, [pc, #68]	; (675c <svcMutexWait+0x84>)
    6718:	0019      	movs	r1, r3
    671a:	4298      	cmp	r0, r3
    671c:	d917      	bls.n	674e <svcMutexWait+0x76>
    671e:	0020      	movs	r0, r4
    6720:	f000 ff86 	bl	7630 <rt_mut_wait>
    6724:	0003      	movs	r3, r0
    6726:	2801      	cmp	r0, #1
    6728:	d108      	bne.n	673c <svcMutexWait+0x64>
    672a:	20c1      	movs	r0, #193	; 0xc1
    672c:	e7df      	b.n	66ee <svcMutexWait+0x16>
    672e:	2100      	movs	r1, #0
    6730:	0020      	movs	r0, r4
    6732:	f000 ff7d 	bl	7630 <rt_mut_wait>
    6736:	0003      	movs	r3, r0
    6738:	2801      	cmp	r0, #1
    673a:	d002      	beq.n	6742 <svcMutexWait+0x6a>
    673c:	2000      	movs	r0, #0
    673e:	2bff      	cmp	r3, #255	; 0xff
    6740:	d1d5      	bne.n	66ee <svcMutexWait+0x16>
    6742:	2081      	movs	r0, #129	; 0x81
    6744:	e7d3      	b.n	66ee <svcMutexWait+0x16>
    6746:	4906      	ldr	r1, [pc, #24]	; (6760 <svcMutexWait+0x88>)
    6748:	e7e9      	b.n	671e <svcMutexWait+0x46>
    674a:	4904      	ldr	r1, [pc, #16]	; (675c <svcMutexWait+0x84>)
    674c:	e7e7      	b.n	671e <svcMutexWait+0x46>
    674e:	b281      	uxth	r1, r0
    6750:	e7e5      	b.n	671e <svcMutexWait+0x46>
    6752:	46c0      	nop			; (mov r8, r8)
    6754:	003d0900 	.word	0x003d0900
    6758:	00008a00 	.word	0x00008a00
    675c:	0000fffe 	.word	0x0000fffe
    6760:	0000ffff 	.word	0x0000ffff

00006764 <svcMutexRelease>:
    6764:	b510      	push	{r4, lr}
    6766:	2380      	movs	r3, #128	; 0x80
    6768:	0782      	lsls	r2, r0, #30
    676a:	d104      	bne.n	6776 <svcMutexRelease+0x12>
    676c:	2800      	cmp	r0, #0
    676e:	d002      	beq.n	6776 <svcMutexRelease+0x12>
    6770:	7802      	ldrb	r2, [r0, #0]
    6772:	2a03      	cmp	r2, #3
    6774:	d001      	beq.n	677a <svcMutexRelease+0x16>
    6776:	0018      	movs	r0, r3
    6778:	bd10      	pop	{r4, pc}
    677a:	f000 fed5 	bl	7528 <rt_mut_release>
    677e:	2381      	movs	r3, #129	; 0x81
    6780:	28ff      	cmp	r0, #255	; 0xff
    6782:	d0f8      	beq.n	6776 <svcMutexRelease+0x12>
    6784:	2300      	movs	r3, #0
    6786:	e7f6      	b.n	6776 <svcMutexRelease+0x12>

00006788 <svcMutexDelete>:
    6788:	b510      	push	{r4, lr}
    678a:	2380      	movs	r3, #128	; 0x80
    678c:	0782      	lsls	r2, r0, #30
    678e:	d104      	bne.n	679a <svcMutexDelete+0x12>
    6790:	2800      	cmp	r0, #0
    6792:	d002      	beq.n	679a <svcMutexDelete+0x12>
    6794:	7802      	ldrb	r2, [r0, #0]
    6796:	2a03      	cmp	r2, #3
    6798:	d001      	beq.n	679e <svcMutexDelete+0x16>
    679a:	0018      	movs	r0, r3
    679c:	bd10      	pop	{r4, pc}
    679e:	f000 fe53 	bl	7448 <rt_mut_delete>
    67a2:	2300      	movs	r3, #0
    67a4:	e7f9      	b.n	679a <svcMutexDelete+0x12>
    67a6:	46c0      	nop			; (mov r8, r8)

000067a8 <osMutexCreate>:
    67a8:	b5b0      	push	{r4, r5, r7, lr}
    67aa:	f3ef 8405 	mrs	r4, IPSR
    67ae:	2c00      	cmp	r4, #0
    67b0:	d119      	bne.n	67e6 <osMutexCreate+0x3e>
    67b2:	f3ef 8414 	mrs	r4, CONTROL
    67b6:	07e4      	lsls	r4, r4, #31
    67b8:	d411      	bmi.n	67de <osMutexCreate+0x36>
    67ba:	4c0c      	ldr	r4, [pc, #48]	; (67ec <osMutexCreate+0x44>)
    67bc:	7824      	ldrb	r4, [r4, #0]
    67be:	2c00      	cmp	r4, #0
    67c0:	d10d      	bne.n	67de <osMutexCreate+0x36>
    67c2:	2800      	cmp	r0, #0
    67c4:	d00f      	beq.n	67e6 <osMutexCreate+0x3e>
    67c6:	6804      	ldr	r4, [r0, #0]
    67c8:	2c00      	cmp	r4, #0
    67ca:	d00c      	beq.n	67e6 <osMutexCreate+0x3e>
    67cc:	7823      	ldrb	r3, [r4, #0]
    67ce:	2000      	movs	r0, #0
    67d0:	2b00      	cmp	r3, #0
    67d2:	d107      	bne.n	67e4 <osMutexCreate+0x3c>
    67d4:	0020      	movs	r0, r4
    67d6:	f000 fe2f 	bl	7438 <rt_mut_init>
    67da:	0020      	movs	r0, r4
    67dc:	e002      	b.n	67e4 <osMutexCreate+0x3c>
    67de:	4f04      	ldr	r7, [pc, #16]	; (67f0 <osMutexCreate+0x48>)
    67e0:	46bc      	mov	ip, r7
    67e2:	df00      	svc	0
    67e4:	bdb0      	pop	{r4, r5, r7, pc}
    67e6:	2000      	movs	r0, #0
    67e8:	e7fc      	b.n	67e4 <osMutexCreate+0x3c>
    67ea:	46c0      	nop			; (mov r8, r8)
    67ec:	20006079 	.word	0x20006079
    67f0:	000066b9 	.word	0x000066b9

000067f4 <osMutexWait>:
    67f4:	b5b0      	push	{r4, r5, r7, lr}
    67f6:	0005      	movs	r5, r0
    67f8:	f3ef 8405 	mrs	r4, IPSR
    67fc:	2082      	movs	r0, #130	; 0x82
    67fe:	2c00      	cmp	r4, #0
    6800:	d000      	beq.n	6804 <osMutexWait+0x10>
    6802:	bdb0      	pop	{r4, r5, r7, pc}
    6804:	0028      	movs	r0, r5
    6806:	4f02      	ldr	r7, [pc, #8]	; (6810 <osMutexWait+0x1c>)
    6808:	46bc      	mov	ip, r7
    680a:	df00      	svc	0
    680c:	e7f9      	b.n	6802 <osMutexWait+0xe>
    680e:	0000      	.short	0x0000
    6810:	000066d9 	.word	0x000066d9

00006814 <osMutexRelease>:
    6814:	b5b0      	push	{r4, r5, r7, lr}
    6816:	0005      	movs	r5, r0
    6818:	f3ef 8405 	mrs	r4, IPSR
    681c:	2082      	movs	r0, #130	; 0x82
    681e:	2c00      	cmp	r4, #0
    6820:	d000      	beq.n	6824 <osMutexRelease+0x10>
    6822:	bdb0      	pop	{r4, r5, r7, pc}
    6824:	0028      	movs	r0, r5
    6826:	4f02      	ldr	r7, [pc, #8]	; (6830 <osMutexRelease+0x1c>)
    6828:	46bc      	mov	ip, r7
    682a:	df00      	svc	0
    682c:	e7f9      	b.n	6822 <osMutexRelease+0xe>
    682e:	0000      	.short	0x0000
    6830:	00006765 	.word	0x00006765

00006834 <osMutexDelete>:
    6834:	b5b0      	push	{r4, r5, r7, lr}
    6836:	0005      	movs	r5, r0
    6838:	f3ef 8405 	mrs	r4, IPSR
    683c:	2082      	movs	r0, #130	; 0x82
    683e:	2c00      	cmp	r4, #0
    6840:	d000      	beq.n	6844 <osMutexDelete+0x10>
    6842:	bdb0      	pop	{r4, r5, r7, pc}
    6844:	0028      	movs	r0, r5
    6846:	4f02      	ldr	r7, [pc, #8]	; (6850 <osMutexDelete+0x1c>)
    6848:	46bc      	mov	ip, r7
    684a:	df00      	svc	0
    684c:	e7f9      	b.n	6842 <osMutexDelete+0xe>
    684e:	0000      	.short	0x0000
    6850:	00006789 	.word	0x00006789

00006854 <svcSemaphoreCreate>:
    6854:	b510      	push	{r4, lr}
    6856:	2800      	cmp	r0, #0
    6858:	d00e      	beq.n	6878 <svcSemaphoreCreate+0x24>
    685a:	6804      	ldr	r4, [r0, #0]
    685c:	2c00      	cmp	r4, #0
    685e:	d00b      	beq.n	6878 <svcSemaphoreCreate+0x24>
    6860:	7823      	ldrb	r3, [r4, #0]
    6862:	2b00      	cmp	r3, #0
    6864:	d108      	bne.n	6878 <svcSemaphoreCreate+0x24>
    6866:	4b05      	ldr	r3, [pc, #20]	; (687c <svcSemaphoreCreate+0x28>)
    6868:	4299      	cmp	r1, r3
    686a:	dc05      	bgt.n	6878 <svcSemaphoreCreate+0x24>
    686c:	0020      	movs	r0, r4
    686e:	b289      	uxth	r1, r1
    6870:	f000 ff4a 	bl	7708 <rt_sem_init>
    6874:	0020      	movs	r0, r4
    6876:	bd10      	pop	{r4, pc}
    6878:	2000      	movs	r0, #0
    687a:	e7fc      	b.n	6876 <svcSemaphoreCreate+0x22>
    687c:	0000ffff 	.word	0x0000ffff

00006880 <svcSemaphoreWait>:
    6880:	b510      	push	{r4, lr}
    6882:	0004      	movs	r4, r0
    6884:	b082      	sub	sp, #8
    6886:	0783      	lsls	r3, r0, #30
    6888:	d111      	bne.n	68ae <svcSemaphoreWait+0x2e>
    688a:	2800      	cmp	r0, #0
    688c:	d00f      	beq.n	68ae <svcSemaphoreWait+0x2e>
    688e:	7803      	ldrb	r3, [r0, #0]
    6890:	2b02      	cmp	r3, #2
    6892:	d10c      	bne.n	68ae <svcSemaphoreWait+0x2e>
    6894:	2300      	movs	r3, #0
    6896:	2900      	cmp	r1, #0
    6898:	d10c      	bne.n	68b4 <svcSemaphoreWait+0x34>
    689a:	0019      	movs	r1, r3
    689c:	0020      	movs	r0, r4
    689e:	f000 ff83 	bl	77a8 <rt_sem_wait>
    68a2:	2801      	cmp	r0, #1
    68a4:	d023      	beq.n	68ee <svcSemaphoreWait+0x6e>
    68a6:	8860      	ldrh	r0, [r4, #2]
    68a8:	3001      	adds	r0, #1
    68aa:	b002      	add	sp, #8
    68ac:	bd10      	pop	{r4, pc}
    68ae:	2001      	movs	r0, #1
    68b0:	4240      	negs	r0, r0
    68b2:	e7fa      	b.n	68aa <svcSemaphoreWait+0x2a>
    68b4:	1c4b      	adds	r3, r1, #1
    68b6:	d01c      	beq.n	68f2 <svcSemaphoreWait+0x72>
    68b8:	4b0f      	ldr	r3, [pc, #60]	; (68f8 <svcSemaphoreWait+0x78>)
    68ba:	4299      	cmp	r1, r3
    68bc:	d810      	bhi.n	68e0 <svcSemaphoreWait+0x60>
    68be:	20fa      	movs	r0, #250	; 0xfa
    68c0:	4b0e      	ldr	r3, [pc, #56]	; (68fc <svcSemaphoreWait+0x7c>)
    68c2:	0080      	lsls	r0, r0, #2
    68c4:	4341      	muls	r1, r0
    68c6:	681b      	ldr	r3, [r3, #0]
    68c8:	9301      	str	r3, [sp, #4]
    68ca:	3b01      	subs	r3, #1
    68cc:	1858      	adds	r0, r3, r1
    68ce:	9901      	ldr	r1, [sp, #4]
    68d0:	f7fd ff4c 	bl	476c <__aeabi_uidiv>
    68d4:	4a0a      	ldr	r2, [pc, #40]	; (6900 <svcSemaphoreWait+0x80>)
    68d6:	0013      	movs	r3, r2
    68d8:	4290      	cmp	r0, r2
    68da:	d8de      	bhi.n	689a <svcSemaphoreWait+0x1a>
    68dc:	b283      	uxth	r3, r0
    68de:	e7dc      	b.n	689a <svcSemaphoreWait+0x1a>
    68e0:	4b07      	ldr	r3, [pc, #28]	; (6900 <svcSemaphoreWait+0x80>)
    68e2:	0020      	movs	r0, r4
    68e4:	0019      	movs	r1, r3
    68e6:	f000 ff5f 	bl	77a8 <rt_sem_wait>
    68ea:	2801      	cmp	r0, #1
    68ec:	d1db      	bne.n	68a6 <svcSemaphoreWait+0x26>
    68ee:	2000      	movs	r0, #0
    68f0:	e7db      	b.n	68aa <svcSemaphoreWait+0x2a>
    68f2:	4b04      	ldr	r3, [pc, #16]	; (6904 <svcSemaphoreWait+0x84>)
    68f4:	e7d1      	b.n	689a <svcSemaphoreWait+0x1a>
    68f6:	46c0      	nop			; (mov r8, r8)
    68f8:	003d0900 	.word	0x003d0900
    68fc:	00008a00 	.word	0x00008a00
    6900:	0000fffe 	.word	0x0000fffe
    6904:	0000ffff 	.word	0x0000ffff

00006908 <svcSemaphoreRelease>:
    6908:	b510      	push	{r4, lr}
    690a:	2380      	movs	r3, #128	; 0x80
    690c:	0782      	lsls	r2, r0, #30
    690e:	d104      	bne.n	691a <svcSemaphoreRelease+0x12>
    6910:	2800      	cmp	r0, #0
    6912:	d002      	beq.n	691a <svcSemaphoreRelease+0x12>
    6914:	7802      	ldrb	r2, [r0, #0]
    6916:	2a02      	cmp	r2, #2
    6918:	d001      	beq.n	691e <svcSemaphoreRelease+0x16>
    691a:	0018      	movs	r0, r3
    691c:	bd10      	pop	{r4, pc}
    691e:	8841      	ldrh	r1, [r0, #2]
    6920:	4a03      	ldr	r2, [pc, #12]	; (6930 <svcSemaphoreRelease+0x28>)
    6922:	3301      	adds	r3, #1
    6924:	4291      	cmp	r1, r2
    6926:	d0f8      	beq.n	691a <svcSemaphoreRelease+0x12>
    6928:	f000 ff28 	bl	777c <rt_sem_send>
    692c:	2300      	movs	r3, #0
    692e:	e7f4      	b.n	691a <svcSemaphoreRelease+0x12>
    6930:	0000ffff 	.word	0x0000ffff

00006934 <svcSemaphoreDelete>:
    6934:	b510      	push	{r4, lr}
    6936:	2380      	movs	r3, #128	; 0x80
    6938:	0782      	lsls	r2, r0, #30
    693a:	d104      	bne.n	6946 <svcSemaphoreDelete+0x12>
    693c:	2800      	cmp	r0, #0
    693e:	d002      	beq.n	6946 <svcSemaphoreDelete+0x12>
    6940:	7802      	ldrb	r2, [r0, #0]
    6942:	2a02      	cmp	r2, #2
    6944:	d001      	beq.n	694a <svcSemaphoreDelete+0x16>
    6946:	0018      	movs	r0, r3
    6948:	bd10      	pop	{r4, pc}
    694a:	f000 fee3 	bl	7714 <rt_sem_delete>
    694e:	2300      	movs	r3, #0
    6950:	e7f9      	b.n	6946 <svcSemaphoreDelete+0x12>
    6952:	46c0      	nop			; (mov r8, r8)

00006954 <isrSemaphoreRelease>:
    6954:	b510      	push	{r4, lr}
    6956:	2380      	movs	r3, #128	; 0x80
    6958:	0782      	lsls	r2, r0, #30
    695a:	d104      	bne.n	6966 <isrSemaphoreRelease+0x12>
    695c:	2800      	cmp	r0, #0
    695e:	d002      	beq.n	6966 <isrSemaphoreRelease+0x12>
    6960:	7802      	ldrb	r2, [r0, #0]
    6962:	2a02      	cmp	r2, #2
    6964:	d001      	beq.n	696a <isrSemaphoreRelease+0x16>
    6966:	0018      	movs	r0, r3
    6968:	bd10      	pop	{r4, pc}
    696a:	8841      	ldrh	r1, [r0, #2]
    696c:	4a03      	ldr	r2, [pc, #12]	; (697c <isrSemaphoreRelease+0x28>)
    696e:	3301      	adds	r3, #1
    6970:	4291      	cmp	r1, r2
    6972:	d0f8      	beq.n	6966 <isrSemaphoreRelease+0x12>
    6974:	f000 ff3a 	bl	77ec <isr_sem_send>
    6978:	2300      	movs	r3, #0
    697a:	e7f4      	b.n	6966 <isrSemaphoreRelease+0x12>
    697c:	0000ffff 	.word	0x0000ffff

00006980 <osSemaphoreCreate>:
    6980:	b5b0      	push	{r4, r5, r7, lr}
    6982:	f3ef 8405 	mrs	r4, IPSR
    6986:	2c00      	cmp	r4, #0
    6988:	d11c      	bne.n	69c4 <osSemaphoreCreate+0x44>
    698a:	f3ef 8414 	mrs	r4, CONTROL
    698e:	07e4      	lsls	r4, r4, #31
    6990:	d503      	bpl.n	699a <osSemaphoreCreate+0x1a>
    6992:	4f0f      	ldr	r7, [pc, #60]	; (69d0 <osSemaphoreCreate+0x50>)
    6994:	46bc      	mov	ip, r7
    6996:	df00      	svc	0
    6998:	bdb0      	pop	{r4, r5, r7, pc}
    699a:	4c0b      	ldr	r4, [pc, #44]	; (69c8 <osSemaphoreCreate+0x48>)
    699c:	7824      	ldrb	r4, [r4, #0]
    699e:	2c00      	cmp	r4, #0
    69a0:	d1f7      	bne.n	6992 <osSemaphoreCreate+0x12>
    69a2:	2800      	cmp	r0, #0
    69a4:	d00e      	beq.n	69c4 <osSemaphoreCreate+0x44>
    69a6:	6804      	ldr	r4, [r0, #0]
    69a8:	2c00      	cmp	r4, #0
    69aa:	d00b      	beq.n	69c4 <osSemaphoreCreate+0x44>
    69ac:	7823      	ldrb	r3, [r4, #0]
    69ae:	2b00      	cmp	r3, #0
    69b0:	d108      	bne.n	69c4 <osSemaphoreCreate+0x44>
    69b2:	4b06      	ldr	r3, [pc, #24]	; (69cc <osSemaphoreCreate+0x4c>)
    69b4:	4299      	cmp	r1, r3
    69b6:	dc05      	bgt.n	69c4 <osSemaphoreCreate+0x44>
    69b8:	0020      	movs	r0, r4
    69ba:	b289      	uxth	r1, r1
    69bc:	f000 fea4 	bl	7708 <rt_sem_init>
    69c0:	0020      	movs	r0, r4
    69c2:	e7e9      	b.n	6998 <osSemaphoreCreate+0x18>
    69c4:	2000      	movs	r0, #0
    69c6:	e7e7      	b.n	6998 <osSemaphoreCreate+0x18>
    69c8:	20006079 	.word	0x20006079
    69cc:	0000ffff 	.word	0x0000ffff
    69d0:	00006855 	.word	0x00006855

000069d4 <osSemaphoreWait>:
    69d4:	b590      	push	{r4, r7, lr}
    69d6:	f3ef 8405 	mrs	r4, IPSR
    69da:	2c00      	cmp	r4, #0
    69dc:	d103      	bne.n	69e6 <osSemaphoreWait+0x12>
    69de:	4f03      	ldr	r7, [pc, #12]	; (69ec <osSemaphoreWait+0x18>)
    69e0:	46bc      	mov	ip, r7
    69e2:	df00      	svc	0
    69e4:	bd90      	pop	{r4, r7, pc}
    69e6:	2001      	movs	r0, #1
    69e8:	4240      	negs	r0, r0
    69ea:	e7fb      	b.n	69e4 <osSemaphoreWait+0x10>
    69ec:	00006881 	.word	0x00006881

000069f0 <osSemaphoreRelease>:
    69f0:	b5b0      	push	{r4, r5, r7, lr}
    69f2:	f3ef 8405 	mrs	r4, IPSR
    69f6:	2c00      	cmp	r4, #0
    69f8:	d105      	bne.n	6a06 <osSemaphoreRelease+0x16>
    69fa:	4f0c      	ldr	r7, [pc, #48]	; (6a2c <osSemaphoreRelease+0x3c>)
    69fc:	46bc      	mov	ip, r7
    69fe:	df00      	svc	0
    6a00:	0003      	movs	r3, r0
    6a02:	0018      	movs	r0, r3
    6a04:	bdb0      	pop	{r4, r5, r7, pc}
    6a06:	2380      	movs	r3, #128	; 0x80
    6a08:	0782      	lsls	r2, r0, #30
    6a0a:	d1fa      	bne.n	6a02 <osSemaphoreRelease+0x12>
    6a0c:	2800      	cmp	r0, #0
    6a0e:	d0f8      	beq.n	6a02 <osSemaphoreRelease+0x12>
    6a10:	7802      	ldrb	r2, [r0, #0]
    6a12:	2a02      	cmp	r2, #2
    6a14:	d1f5      	bne.n	6a02 <osSemaphoreRelease+0x12>
    6a16:	8841      	ldrh	r1, [r0, #2]
    6a18:	4a03      	ldr	r2, [pc, #12]	; (6a28 <osSemaphoreRelease+0x38>)
    6a1a:	3301      	adds	r3, #1
    6a1c:	4291      	cmp	r1, r2
    6a1e:	d0f0      	beq.n	6a02 <osSemaphoreRelease+0x12>
    6a20:	f000 fee4 	bl	77ec <isr_sem_send>
    6a24:	2300      	movs	r3, #0
    6a26:	e7ec      	b.n	6a02 <osSemaphoreRelease+0x12>
    6a28:	0000ffff 	.word	0x0000ffff
    6a2c:	00006909 	.word	0x00006909

00006a30 <osSemaphoreDelete>:
    6a30:	b5b0      	push	{r4, r5, r7, lr}
    6a32:	0005      	movs	r5, r0
    6a34:	f3ef 8405 	mrs	r4, IPSR
    6a38:	2082      	movs	r0, #130	; 0x82
    6a3a:	2c00      	cmp	r4, #0
    6a3c:	d000      	beq.n	6a40 <osSemaphoreDelete+0x10>
    6a3e:	bdb0      	pop	{r4, r5, r7, pc}
    6a40:	0028      	movs	r0, r5
    6a42:	4f02      	ldr	r7, [pc, #8]	; (6a4c <osSemaphoreDelete+0x1c>)
    6a44:	46bc      	mov	ip, r7
    6a46:	df00      	svc	0
    6a48:	e7f9      	b.n	6a3e <osSemaphoreDelete+0xe>
    6a4a:	0000      	.short	0x0000
    6a4c:	00006935 	.word	0x00006935

00006a50 <svcPoolCreate>:
    6a50:	b510      	push	{r4, lr}
    6a52:	1e04      	subs	r4, r0, #0
    6a54:	d011      	beq.n	6a7a <svcPoolCreate+0x2a>
    6a56:	6801      	ldr	r1, [r0, #0]
    6a58:	2900      	cmp	r1, #0
    6a5a:	d00e      	beq.n	6a7a <svcPoolCreate+0x2a>
    6a5c:	6842      	ldr	r2, [r0, #4]
    6a5e:	2a00      	cmp	r2, #0
    6a60:	d00b      	beq.n	6a7a <svcPoolCreate+0x2a>
    6a62:	6880      	ldr	r0, [r0, #8]
    6a64:	2800      	cmp	r0, #0
    6a66:	d008      	beq.n	6a7a <svcPoolCreate+0x2a>
    6a68:	2303      	movs	r3, #3
    6a6a:	3203      	adds	r2, #3
    6a6c:	439a      	bics	r2, r3
    6a6e:	4351      	muls	r1, r2
    6a70:	310c      	adds	r1, #12
    6a72:	f000 fc81 	bl	7378 <_init_box>
    6a76:	68a0      	ldr	r0, [r4, #8]
    6a78:	bd10      	pop	{r4, pc}
    6a7a:	2000      	movs	r0, #0
    6a7c:	e7fc      	b.n	6a78 <svcPoolCreate+0x28>
    6a7e:	46c0      	nop			; (mov r8, r8)

00006a80 <sysPoolAlloc>:
    6a80:	b510      	push	{r4, lr}
    6a82:	2800      	cmp	r0, #0
    6a84:	d002      	beq.n	6a8c <sysPoolAlloc+0xc>
    6a86:	f000 fca3 	bl	73d0 <rt_alloc_box>
    6a8a:	bd10      	pop	{r4, pc}
    6a8c:	2000      	movs	r0, #0
    6a8e:	e7fc      	b.n	6a8a <sysPoolAlloc+0xa>

00006a90 <sysPoolFree>:
    6a90:	b510      	push	{r4, lr}
    6a92:	2380      	movs	r3, #128	; 0x80
    6a94:	2800      	cmp	r0, #0
    6a96:	d006      	beq.n	6aa6 <sysPoolFree+0x16>
    6a98:	f000 fcba 	bl	7410 <rt_free_box>
    6a9c:	1e42      	subs	r2, r0, #1
    6a9e:	4190      	sbcs	r0, r2
    6aa0:	2386      	movs	r3, #134	; 0x86
    6aa2:	4240      	negs	r0, r0
    6aa4:	4003      	ands	r3, r0
    6aa6:	0018      	movs	r0, r3
    6aa8:	bd10      	pop	{r4, pc}
    6aaa:	46c0      	nop			; (mov r8, r8)

00006aac <osPoolCreate>:
    6aac:	b5b0      	push	{r4, r5, r7, lr}
    6aae:	0004      	movs	r4, r0
    6ab0:	f3ef 8005 	mrs	r0, IPSR
    6ab4:	2800      	cmp	r0, #0
    6ab6:	d120      	bne.n	6afa <osPoolCreate+0x4e>
    6ab8:	f3ef 8014 	mrs	r0, CONTROL
    6abc:	07c0      	lsls	r0, r0, #31
    6abe:	d504      	bpl.n	6aca <osPoolCreate+0x1e>
    6ac0:	0020      	movs	r0, r4
    6ac2:	4f10      	ldr	r7, [pc, #64]	; (6b04 <osPoolCreate+0x58>)
    6ac4:	46bc      	mov	ip, r7
    6ac6:	df00      	svc	0
    6ac8:	bdb0      	pop	{r4, r5, r7, pc}
    6aca:	480d      	ldr	r0, [pc, #52]	; (6b00 <osPoolCreate+0x54>)
    6acc:	7800      	ldrb	r0, [r0, #0]
    6ace:	2800      	cmp	r0, #0
    6ad0:	d1f6      	bne.n	6ac0 <osPoolCreate+0x14>
    6ad2:	2c00      	cmp	r4, #0
    6ad4:	d011      	beq.n	6afa <osPoolCreate+0x4e>
    6ad6:	6821      	ldr	r1, [r4, #0]
    6ad8:	2900      	cmp	r1, #0
    6ada:	d00e      	beq.n	6afa <osPoolCreate+0x4e>
    6adc:	6862      	ldr	r2, [r4, #4]
    6ade:	2a00      	cmp	r2, #0
    6ae0:	d00b      	beq.n	6afa <osPoolCreate+0x4e>
    6ae2:	68a0      	ldr	r0, [r4, #8]
    6ae4:	2800      	cmp	r0, #0
    6ae6:	d008      	beq.n	6afa <osPoolCreate+0x4e>
    6ae8:	2303      	movs	r3, #3
    6aea:	3203      	adds	r2, #3
    6aec:	439a      	bics	r2, r3
    6aee:	4351      	muls	r1, r2
    6af0:	310c      	adds	r1, #12
    6af2:	f000 fc41 	bl	7378 <_init_box>
    6af6:	68a0      	ldr	r0, [r4, #8]
    6af8:	e7e6      	b.n	6ac8 <osPoolCreate+0x1c>
    6afa:	2000      	movs	r0, #0
    6afc:	e7e4      	b.n	6ac8 <osPoolCreate+0x1c>
    6afe:	46c0      	nop			; (mov r8, r8)
    6b00:	20006079 	.word	0x20006079
    6b04:	00006a51 	.word	0x00006a51

00006b08 <osPoolAlloc>:
    6b08:	b5b0      	push	{r4, r5, r7, lr}
    6b0a:	f3ef 8405 	mrs	r4, IPSR
    6b0e:	2c00      	cmp	r4, #0
    6b10:	d103      	bne.n	6b1a <osPoolAlloc+0x12>
    6b12:	f3ef 8414 	mrs	r4, CONTROL
    6b16:	07e4      	lsls	r4, r4, #31
    6b18:	d404      	bmi.n	6b24 <osPoolAlloc+0x1c>
    6b1a:	2800      	cmp	r0, #0
    6b1c:	d006      	beq.n	6b2c <osPoolAlloc+0x24>
    6b1e:	f000 fc57 	bl	73d0 <rt_alloc_box>
    6b22:	bdb0      	pop	{r4, r5, r7, pc}
    6b24:	4f02      	ldr	r7, [pc, #8]	; (6b30 <osPoolAlloc+0x28>)
    6b26:	46bc      	mov	ip, r7
    6b28:	df00      	svc	0
    6b2a:	e7fa      	b.n	6b22 <osPoolAlloc+0x1a>
    6b2c:	2000      	movs	r0, #0
    6b2e:	e7f8      	b.n	6b22 <osPoolAlloc+0x1a>
    6b30:	00006a81 	.word	0x00006a81

00006b34 <osPoolCAlloc>:
    6b34:	b5b0      	push	{r4, r5, r7, lr}
    6b36:	0004      	movs	r4, r0
    6b38:	f3ef 8005 	mrs	r0, IPSR
    6b3c:	2800      	cmp	r0, #0
    6b3e:	d103      	bne.n	6b48 <osPoolCAlloc+0x14>
    6b40:	f3ef 8014 	mrs	r0, CONTROL
    6b44:	07c0      	lsls	r0, r0, #31
    6b46:	d410      	bmi.n	6b6a <osPoolCAlloc+0x36>
    6b48:	2c00      	cmp	r4, #0
    6b4a:	d015      	beq.n	6b78 <osPoolCAlloc+0x44>
    6b4c:	0020      	movs	r0, r4
    6b4e:	f000 fc3f 	bl	73d0 <rt_alloc_box>
    6b52:	2800      	cmp	r0, #0
    6b54:	d010      	beq.n	6b78 <osPoolCAlloc+0x44>
    6b56:	68a3      	ldr	r3, [r4, #8]
    6b58:	2b00      	cmp	r3, #0
    6b5a:	d005      	beq.n	6b68 <osPoolCAlloc+0x34>
    6b5c:	0002      	movs	r2, r0
    6b5e:	2100      	movs	r1, #0
    6b60:	3b04      	subs	r3, #4
    6b62:	c202      	stmia	r2!, {r1}
    6b64:	2b00      	cmp	r3, #0
    6b66:	d1fb      	bne.n	6b60 <osPoolCAlloc+0x2c>
    6b68:	bdb0      	pop	{r4, r5, r7, pc}
    6b6a:	0020      	movs	r0, r4
    6b6c:	4f03      	ldr	r7, [pc, #12]	; (6b7c <osPoolCAlloc+0x48>)
    6b6e:	46bc      	mov	ip, r7
    6b70:	df00      	svc	0
    6b72:	2c00      	cmp	r4, #0
    6b74:	d1ed      	bne.n	6b52 <osPoolCAlloc+0x1e>
    6b76:	e7f7      	b.n	6b68 <osPoolCAlloc+0x34>
    6b78:	2000      	movs	r0, #0
    6b7a:	e7f5      	b.n	6b68 <osPoolCAlloc+0x34>
    6b7c:	00006a81 	.word	0x00006a81

00006b80 <osPoolFree>:
    6b80:	b5b0      	push	{r4, r5, r7, lr}
    6b82:	f3ef 8405 	mrs	r4, IPSR
    6b86:	2c00      	cmp	r4, #0
    6b88:	d103      	bne.n	6b92 <osPoolFree+0x12>
    6b8a:	f3ef 8414 	mrs	r4, CONTROL
    6b8e:	07e4      	lsls	r4, r4, #31
    6b90:	d40a      	bmi.n	6ba8 <osPoolFree+0x28>
    6b92:	2800      	cmp	r0, #0
    6b94:	d00c      	beq.n	6bb0 <osPoolFree+0x30>
    6b96:	f000 fc3b 	bl	7410 <rt_free_box>
    6b9a:	0003      	movs	r3, r0
    6b9c:	1e5a      	subs	r2, r3, #1
    6b9e:	4193      	sbcs	r3, r2
    6ba0:	2086      	movs	r0, #134	; 0x86
    6ba2:	425b      	negs	r3, r3
    6ba4:	4018      	ands	r0, r3
    6ba6:	bdb0      	pop	{r4, r5, r7, pc}
    6ba8:	4f02      	ldr	r7, [pc, #8]	; (6bb4 <osPoolFree+0x34>)
    6baa:	46bc      	mov	ip, r7
    6bac:	df00      	svc	0
    6bae:	e7fa      	b.n	6ba6 <osPoolFree+0x26>
    6bb0:	2080      	movs	r0, #128	; 0x80
    6bb2:	e7f8      	b.n	6ba6 <osPoolFree+0x26>
    6bb4:	00006a91 	.word	0x00006a91

00006bb8 <svcMessageCreate>:
    6bb8:	b510      	push	{r4, lr}
    6bba:	1e04      	subs	r4, r0, #0
    6bbc:	d00f      	beq.n	6bde <svcMessageCreate+0x26>
    6bbe:	6801      	ldr	r1, [r0, #0]
    6bc0:	2900      	cmp	r1, #0
    6bc2:	d00c      	beq.n	6bde <svcMessageCreate+0x26>
    6bc4:	6840      	ldr	r0, [r0, #4]
    6bc6:	2800      	cmp	r0, #0
    6bc8:	d009      	beq.n	6bde <svcMessageCreate+0x26>
    6bca:	7803      	ldrb	r3, [r0, #0]
    6bcc:	2b00      	cmp	r3, #0
    6bce:	d106      	bne.n	6bde <svcMessageCreate+0x26>
    6bd0:	3104      	adds	r1, #4
    6bd2:	0089      	lsls	r1, r1, #2
    6bd4:	b289      	uxth	r1, r1
    6bd6:	f000 fe2b 	bl	7830 <rt_mbx_init>
    6bda:	6860      	ldr	r0, [r4, #4]
    6bdc:	bd10      	pop	{r4, pc}
    6bde:	2000      	movs	r0, #0
    6be0:	e7fc      	b.n	6bdc <svcMessageCreate+0x24>
    6be2:	46c0      	nop			; (mov r8, r8)

00006be4 <svcMessagePut>:
    6be4:	b570      	push	{r4, r5, r6, lr}
    6be6:	0004      	movs	r4, r0
    6be8:	b082      	sub	sp, #8
    6bea:	000e      	movs	r6, r1
    6bec:	0015      	movs	r5, r2
    6bee:	2800      	cmp	r0, #0
    6bf0:	d005      	beq.n	6bfe <svcMessagePut+0x1a>
    6bf2:	7803      	ldrb	r3, [r0, #0]
    6bf4:	2080      	movs	r0, #128	; 0x80
    6bf6:	2b01      	cmp	r3, #1
    6bf8:	d003      	beq.n	6c02 <svcMessagePut+0x1e>
    6bfa:	b002      	add	sp, #8
    6bfc:	bd70      	pop	{r4, r5, r6, pc}
    6bfe:	2080      	movs	r0, #128	; 0x80
    6c00:	e7fb      	b.n	6bfa <svcMessagePut+0x16>
    6c02:	2200      	movs	r2, #0
    6c04:	2d00      	cmp	r5, #0
    6c06:	d014      	beq.n	6c32 <svcMessagePut+0x4e>
    6c08:	1c6b      	adds	r3, r5, #1
    6c0a:	d01f      	beq.n	6c4c <svcMessagePut+0x68>
    6c0c:	4b11      	ldr	r3, [pc, #68]	; (6c54 <svcMessagePut+0x70>)
    6c0e:	429d      	cmp	r5, r3
    6c10:	d81e      	bhi.n	6c50 <svcMessagePut+0x6c>
    6c12:	20fa      	movs	r0, #250	; 0xfa
    6c14:	4b10      	ldr	r3, [pc, #64]	; (6c58 <svcMessagePut+0x74>)
    6c16:	0080      	lsls	r0, r0, #2
    6c18:	4368      	muls	r0, r5
    6c1a:	681b      	ldr	r3, [r3, #0]
    6c1c:	9301      	str	r3, [sp, #4]
    6c1e:	3b01      	subs	r3, #1
    6c20:	18c0      	adds	r0, r0, r3
    6c22:	9901      	ldr	r1, [sp, #4]
    6c24:	f7fd fda2 	bl	476c <__aeabi_uidiv>
    6c28:	4b0c      	ldr	r3, [pc, #48]	; (6c5c <svcMessagePut+0x78>)
    6c2a:	001a      	movs	r2, r3
    6c2c:	4298      	cmp	r0, r3
    6c2e:	d800      	bhi.n	6c32 <svcMessagePut+0x4e>
    6c30:	b282      	uxth	r2, r0
    6c32:	0031      	movs	r1, r6
    6c34:	0020      	movs	r0, r4
    6c36:	f000 fe09 	bl	784c <rt_mbx_send>
    6c3a:	0003      	movs	r3, r0
    6c3c:	2000      	movs	r0, #0
    6c3e:	2b01      	cmp	r3, #1
    6c40:	d1db      	bne.n	6bfa <svcMessagePut+0x16>
    6c42:	30c1      	adds	r0, #193	; 0xc1
    6c44:	2d00      	cmp	r5, #0
    6c46:	d1d8      	bne.n	6bfa <svcMessagePut+0x16>
    6c48:	3840      	subs	r0, #64	; 0x40
    6c4a:	e7d6      	b.n	6bfa <svcMessagePut+0x16>
    6c4c:	4a04      	ldr	r2, [pc, #16]	; (6c60 <svcMessagePut+0x7c>)
    6c4e:	e7f0      	b.n	6c32 <svcMessagePut+0x4e>
    6c50:	4a02      	ldr	r2, [pc, #8]	; (6c5c <svcMessagePut+0x78>)
    6c52:	e7ee      	b.n	6c32 <svcMessagePut+0x4e>
    6c54:	003d0900 	.word	0x003d0900
    6c58:	00008a00 	.word	0x00008a00
    6c5c:	0000fffe 	.word	0x0000fffe
    6c60:	0000ffff 	.word	0x0000ffff

00006c64 <svcMessageGet>:
    6c64:	b510      	push	{r4, lr}
    6c66:	0004      	movs	r4, r0
    6c68:	b086      	sub	sp, #24
    6c6a:	2800      	cmp	r0, #0
    6c6c:	d002      	beq.n	6c74 <svcMessageGet+0x10>
    6c6e:	7803      	ldrb	r3, [r0, #0]
    6c70:	2b01      	cmp	r3, #1
    6c72:	d005      	beq.n	6c80 <svcMessageGet+0x1c>
    6c74:	2080      	movs	r0, #128	; 0x80
    6c76:	2100      	movs	r1, #0
    6c78:	2200      	movs	r2, #0
    6c7a:	2300      	movs	r3, #0
    6c7c:	b006      	add	sp, #24
    6c7e:	bd10      	pop	{r4, pc}
    6c80:	2900      	cmp	r1, #0
    6c82:	d01c      	beq.n	6cbe <svcMessageGet+0x5a>
    6c84:	1c4b      	adds	r3, r1, #1
    6c86:	d02a      	beq.n	6cde <svcMessageGet+0x7a>
    6c88:	4b16      	ldr	r3, [pc, #88]	; (6ce4 <svcMessageGet+0x80>)
    6c8a:	4299      	cmp	r1, r3
    6c8c:	d820      	bhi.n	6cd0 <svcMessageGet+0x6c>
    6c8e:	20fa      	movs	r0, #250	; 0xfa
    6c90:	4b15      	ldr	r3, [pc, #84]	; (6ce8 <svcMessageGet+0x84>)
    6c92:	0080      	lsls	r0, r0, #2
    6c94:	4341      	muls	r1, r0
    6c96:	681b      	ldr	r3, [r3, #0]
    6c98:	9301      	str	r3, [sp, #4]
    6c9a:	3b01      	subs	r3, #1
    6c9c:	1858      	adds	r0, r3, r1
    6c9e:	9901      	ldr	r1, [sp, #4]
    6ca0:	f7fd fd64 	bl	476c <__aeabi_uidiv>
    6ca4:	4b11      	ldr	r3, [pc, #68]	; (6cec <svcMessageGet+0x88>)
    6ca6:	001a      	movs	r2, r3
    6ca8:	4298      	cmp	r0, r3
    6caa:	d916      	bls.n	6cda <svcMessageGet+0x76>
    6cac:	a904      	add	r1, sp, #16
    6cae:	0020      	movs	r0, r4
    6cb0:	f000 fe18 	bl	78e4 <rt_mbx_wait>
    6cb4:	2801      	cmp	r0, #1
    6cb6:	d00d      	beq.n	6cd4 <svcMessageGet+0x70>
    6cb8:	2010      	movs	r0, #16
    6cba:	9904      	ldr	r1, [sp, #16]
    6cbc:	e7dc      	b.n	6c78 <svcMessageGet+0x14>
    6cbe:	2200      	movs	r2, #0
    6cc0:	a904      	add	r1, sp, #16
    6cc2:	f000 fe0f 	bl	78e4 <rt_mbx_wait>
    6cc6:	2801      	cmp	r0, #1
    6cc8:	d1f6      	bne.n	6cb8 <svcMessageGet+0x54>
    6cca:	2000      	movs	r0, #0
    6ccc:	9904      	ldr	r1, [sp, #16]
    6cce:	e7d3      	b.n	6c78 <svcMessageGet+0x14>
    6cd0:	4a06      	ldr	r2, [pc, #24]	; (6cec <svcMessageGet+0x88>)
    6cd2:	e7eb      	b.n	6cac <svcMessageGet+0x48>
    6cd4:	2040      	movs	r0, #64	; 0x40
    6cd6:	9904      	ldr	r1, [sp, #16]
    6cd8:	e7ce      	b.n	6c78 <svcMessageGet+0x14>
    6cda:	b282      	uxth	r2, r0
    6cdc:	e7e6      	b.n	6cac <svcMessageGet+0x48>
    6cde:	4a04      	ldr	r2, [pc, #16]	; (6cf0 <svcMessageGet+0x8c>)
    6ce0:	e7e4      	b.n	6cac <svcMessageGet+0x48>
    6ce2:	46c0      	nop			; (mov r8, r8)
    6ce4:	003d0900 	.word	0x003d0900
    6ce8:	00008a00 	.word	0x00008a00
    6cec:	0000fffe 	.word	0x0000fffe
    6cf0:	0000ffff 	.word	0x0000ffff

00006cf4 <isrMessagePut>:
    6cf4:	b570      	push	{r4, r5, r6, lr}
    6cf6:	0004      	movs	r4, r0
    6cf8:	000d      	movs	r5, r1
    6cfa:	2080      	movs	r0, #128	; 0x80
    6cfc:	2c00      	cmp	r4, #0
    6cfe:	d001      	beq.n	6d04 <isrMessagePut+0x10>
    6d00:	2a00      	cmp	r2, #0
    6d02:	d000      	beq.n	6d06 <isrMessagePut+0x12>
    6d04:	bd70      	pop	{r4, r5, r6, pc}
    6d06:	7823      	ldrb	r3, [r4, #0]
    6d08:	2b01      	cmp	r3, #1
    6d0a:	d1fb      	bne.n	6d04 <isrMessagePut+0x10>
    6d0c:	0020      	movs	r0, r4
    6d0e:	f000 fe45 	bl	799c <rt_mbx_check>
    6d12:	0003      	movs	r3, r0
    6d14:	2081      	movs	r0, #129	; 0x81
    6d16:	2b00      	cmp	r3, #0
    6d18:	d0f4      	beq.n	6d04 <isrMessagePut+0x10>
    6d1a:	0020      	movs	r0, r4
    6d1c:	0029      	movs	r1, r5
    6d1e:	f000 fe41 	bl	79a4 <isr_mbx_send>
    6d22:	2000      	movs	r0, #0
    6d24:	e7ee      	b.n	6d04 <isrMessagePut+0x10>
    6d26:	46c0      	nop			; (mov r8, r8)

00006d28 <isrMessageGet>:
    6d28:	b570      	push	{r4, r5, r6, lr}
    6d2a:	0004      	movs	r4, r0
    6d2c:	b084      	sub	sp, #16
    6d2e:	0008      	movs	r0, r1
    6d30:	0015      	movs	r5, r2
    6d32:	2900      	cmp	r1, #0
    6d34:	d004      	beq.n	6d40 <isrMessageGet+0x18>
    6d36:	2a00      	cmp	r2, #0
    6d38:	d102      	bne.n	6d40 <isrMessageGet+0x18>
    6d3a:	780b      	ldrb	r3, [r1, #0]
    6d3c:	2b01      	cmp	r3, #1
    6d3e:	d004      	beq.n	6d4a <isrMessageGet+0x22>
    6d40:	2380      	movs	r3, #128	; 0x80
    6d42:	6023      	str	r3, [r4, #0]
    6d44:	0020      	movs	r0, r4
    6d46:	b004      	add	sp, #16
    6d48:	bd70      	pop	{r4, r5, r6, pc}
    6d4a:	a902      	add	r1, sp, #8
    6d4c:	ae01      	add	r6, sp, #4
    6d4e:	f000 fe2f 	bl	79b0 <isr_mbx_receive>
    6d52:	2804      	cmp	r0, #4
    6d54:	d004      	beq.n	6d60 <isrMessageGet+0x38>
    6d56:	0023      	movs	r3, r4
    6d58:	9501      	str	r5, [sp, #4]
    6d5a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6d5c:	c307      	stmia	r3!, {r0, r1, r2}
    6d5e:	e7f1      	b.n	6d44 <isrMessageGet+0x1c>
    6d60:	2310      	movs	r3, #16
    6d62:	9301      	str	r3, [sp, #4]
    6d64:	0023      	movs	r3, r4
    6d66:	ce07      	ldmia	r6!, {r0, r1, r2}
    6d68:	c307      	stmia	r3!, {r0, r1, r2}
    6d6a:	e7eb      	b.n	6d44 <isrMessageGet+0x1c>

00006d6c <osMessageCreate>:
    6d6c:	b5b0      	push	{r4, r5, r7, lr}
    6d6e:	0004      	movs	r4, r0
    6d70:	f3ef 8005 	mrs	r0, IPSR
    6d74:	2800      	cmp	r0, #0
    6d76:	d11e      	bne.n	6db6 <osMessageCreate+0x4a>
    6d78:	f3ef 8014 	mrs	r0, CONTROL
    6d7c:	07c0      	lsls	r0, r0, #31
    6d7e:	d504      	bpl.n	6d8a <osMessageCreate+0x1e>
    6d80:	0020      	movs	r0, r4
    6d82:	4f0f      	ldr	r7, [pc, #60]	; (6dc0 <osMessageCreate+0x54>)
    6d84:	46bc      	mov	ip, r7
    6d86:	df00      	svc	0
    6d88:	bdb0      	pop	{r4, r5, r7, pc}
    6d8a:	480c      	ldr	r0, [pc, #48]	; (6dbc <osMessageCreate+0x50>)
    6d8c:	7800      	ldrb	r0, [r0, #0]
    6d8e:	2800      	cmp	r0, #0
    6d90:	d1f6      	bne.n	6d80 <osMessageCreate+0x14>
    6d92:	2c00      	cmp	r4, #0
    6d94:	d00f      	beq.n	6db6 <osMessageCreate+0x4a>
    6d96:	6823      	ldr	r3, [r4, #0]
    6d98:	2b00      	cmp	r3, #0
    6d9a:	d00c      	beq.n	6db6 <osMessageCreate+0x4a>
    6d9c:	6860      	ldr	r0, [r4, #4]
    6d9e:	2800      	cmp	r0, #0
    6da0:	d009      	beq.n	6db6 <osMessageCreate+0x4a>
    6da2:	7802      	ldrb	r2, [r0, #0]
    6da4:	2a00      	cmp	r2, #0
    6da6:	d106      	bne.n	6db6 <osMessageCreate+0x4a>
    6da8:	1d19      	adds	r1, r3, #4
    6daa:	008b      	lsls	r3, r1, #2
    6dac:	b299      	uxth	r1, r3
    6dae:	f000 fd3f 	bl	7830 <rt_mbx_init>
    6db2:	6860      	ldr	r0, [r4, #4]
    6db4:	e7e8      	b.n	6d88 <osMessageCreate+0x1c>
    6db6:	2000      	movs	r0, #0
    6db8:	e7e6      	b.n	6d88 <osMessageCreate+0x1c>
    6dba:	46c0      	nop			; (mov r8, r8)
    6dbc:	20006079 	.word	0x20006079
    6dc0:	00006bb9 	.word	0x00006bb9

00006dc4 <osMessagePut>:
    6dc4:	b5b0      	push	{r4, r5, r7, lr}
    6dc6:	0004      	movs	r4, r0
    6dc8:	000d      	movs	r5, r1
    6dca:	f3ef 8105 	mrs	r1, IPSR
    6dce:	2900      	cmp	r1, #0
    6dd0:	d008      	beq.n	6de4 <osMessagePut+0x20>
    6dd2:	2080      	movs	r0, #128	; 0x80
    6dd4:	2c00      	cmp	r4, #0
    6dd6:	d004      	beq.n	6de2 <osMessagePut+0x1e>
    6dd8:	2a00      	cmp	r2, #0
    6dda:	d102      	bne.n	6de2 <osMessagePut+0x1e>
    6ddc:	7823      	ldrb	r3, [r4, #0]
    6dde:	2b01      	cmp	r3, #1
    6de0:	d005      	beq.n	6dee <osMessagePut+0x2a>
    6de2:	bdb0      	pop	{r4, r5, r7, pc}
    6de4:	0029      	movs	r1, r5
    6de6:	4f08      	ldr	r7, [pc, #32]	; (6e08 <osMessagePut+0x44>)
    6de8:	46bc      	mov	ip, r7
    6dea:	df00      	svc	0
    6dec:	e7f9      	b.n	6de2 <osMessagePut+0x1e>
    6dee:	0020      	movs	r0, r4
    6df0:	f000 fdd4 	bl	799c <rt_mbx_check>
    6df4:	0003      	movs	r3, r0
    6df6:	2081      	movs	r0, #129	; 0x81
    6df8:	2b00      	cmp	r3, #0
    6dfa:	d0f2      	beq.n	6de2 <osMessagePut+0x1e>
    6dfc:	0020      	movs	r0, r4
    6dfe:	0029      	movs	r1, r5
    6e00:	f000 fdd0 	bl	79a4 <isr_mbx_send>
    6e04:	2000      	movs	r0, #0
    6e06:	e7ec      	b.n	6de2 <osMessagePut+0x1e>
    6e08:	00006be5 	.word	0x00006be5

00006e0c <osMessageGet>:
    6e0c:	b5f0      	push	{r4, r5, r6, r7, lr}
    6e0e:	0004      	movs	r4, r0
    6e10:	b085      	sub	sp, #20
    6e12:	0008      	movs	r0, r1
    6e14:	0015      	movs	r5, r2
    6e16:	f3ef 8105 	mrs	r1, IPSR
    6e1a:	2900      	cmp	r1, #0
    6e1c:	d109      	bne.n	6e32 <osMessageGet+0x26>
    6e1e:	0011      	movs	r1, r2
    6e20:	4f11      	ldr	r7, [pc, #68]	; (6e68 <osMessageGet+0x5c>)
    6e22:	46bc      	mov	ip, r7
    6e24:	df00      	svc	0
    6e26:	6020      	str	r0, [r4, #0]
    6e28:	6061      	str	r1, [r4, #4]
    6e2a:	60a2      	str	r2, [r4, #8]
    6e2c:	0020      	movs	r0, r4
    6e2e:	b005      	add	sp, #20
    6e30:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6e32:	2800      	cmp	r0, #0
    6e34:	d004      	beq.n	6e40 <osMessageGet+0x34>
    6e36:	2a00      	cmp	r2, #0
    6e38:	d102      	bne.n	6e40 <osMessageGet+0x34>
    6e3a:	7803      	ldrb	r3, [r0, #0]
    6e3c:	2b01      	cmp	r3, #1
    6e3e:	d002      	beq.n	6e46 <osMessageGet+0x3a>
    6e40:	2380      	movs	r3, #128	; 0x80
    6e42:	6023      	str	r3, [r4, #0]
    6e44:	e7f2      	b.n	6e2c <osMessageGet+0x20>
    6e46:	a902      	add	r1, sp, #8
    6e48:	ae01      	add	r6, sp, #4
    6e4a:	f000 fdb1 	bl	79b0 <isr_mbx_receive>
    6e4e:	2804      	cmp	r0, #4
    6e50:	d004      	beq.n	6e5c <osMessageGet+0x50>
    6e52:	0023      	movs	r3, r4
    6e54:	9501      	str	r5, [sp, #4]
    6e56:	ce07      	ldmia	r6!, {r0, r1, r2}
    6e58:	c307      	stmia	r3!, {r0, r1, r2}
    6e5a:	e7e7      	b.n	6e2c <osMessageGet+0x20>
    6e5c:	2310      	movs	r3, #16
    6e5e:	9301      	str	r3, [sp, #4]
    6e60:	0023      	movs	r3, r4
    6e62:	ce07      	ldmia	r6!, {r0, r1, r2}
    6e64:	c307      	stmia	r3!, {r0, r1, r2}
    6e66:	e7e1      	b.n	6e2c <osMessageGet+0x20>
    6e68:	00006c65 	.word	0x00006c65

00006e6c <svcMailCreate>:
    6e6c:	b570      	push	{r4, r5, r6, lr}
    6e6e:	1e04      	subs	r4, r0, #0
    6e70:	d021      	beq.n	6eb6 <svcMailCreate+0x4a>
    6e72:	6801      	ldr	r1, [r0, #0]
    6e74:	2900      	cmp	r1, #0
    6e76:	d01e      	beq.n	6eb6 <svcMailCreate+0x4a>
    6e78:	6842      	ldr	r2, [r0, #4]
    6e7a:	2a00      	cmp	r2, #0
    6e7c:	d01b      	beq.n	6eb6 <svcMailCreate+0x4a>
    6e7e:	6883      	ldr	r3, [r0, #8]
    6e80:	2b00      	cmp	r3, #0
    6e82:	d018      	beq.n	6eb6 <svcMailCreate+0x4a>
    6e84:	6858      	ldr	r0, [r3, #4]
    6e86:	681d      	ldr	r5, [r3, #0]
    6e88:	2800      	cmp	r0, #0
    6e8a:	d014      	beq.n	6eb6 <svcMailCreate+0x4a>
    6e8c:	2d00      	cmp	r5, #0
    6e8e:	d012      	beq.n	6eb6 <svcMailCreate+0x4a>
    6e90:	782b      	ldrb	r3, [r5, #0]
    6e92:	2b00      	cmp	r3, #0
    6e94:	d10f      	bne.n	6eb6 <svcMailCreate+0x4a>
    6e96:	3303      	adds	r3, #3
    6e98:	3203      	adds	r2, #3
    6e9a:	439a      	bics	r2, r3
    6e9c:	4351      	muls	r1, r2
    6e9e:	310c      	adds	r1, #12
    6ea0:	f000 fa6a 	bl	7378 <_init_box>
    6ea4:	6823      	ldr	r3, [r4, #0]
    6ea6:	0028      	movs	r0, r5
    6ea8:	1d19      	adds	r1, r3, #4
    6eaa:	0089      	lsls	r1, r1, #2
    6eac:	b289      	uxth	r1, r1
    6eae:	f000 fcbf 	bl	7830 <rt_mbx_init>
    6eb2:	68a0      	ldr	r0, [r4, #8]
    6eb4:	bd70      	pop	{r4, r5, r6, pc}
    6eb6:	2000      	movs	r0, #0
    6eb8:	e7fc      	b.n	6eb4 <svcMailCreate+0x48>
    6eba:	46c0      	nop			; (mov r8, r8)

00006ebc <sysMailAlloc>:
    6ebc:	b530      	push	{r4, r5, lr}
    6ebe:	000d      	movs	r5, r1
    6ec0:	b083      	sub	sp, #12
    6ec2:	2800      	cmp	r0, #0
    6ec4:	d035      	beq.n	6f32 <sysMailAlloc+0x76>
    6ec6:	6804      	ldr	r4, [r0, #0]
    6ec8:	6840      	ldr	r0, [r0, #4]
    6eca:	2800      	cmp	r0, #0
    6ecc:	d031      	beq.n	6f32 <sysMailAlloc+0x76>
    6ece:	2c00      	cmp	r4, #0
    6ed0:	d02f      	beq.n	6f32 <sysMailAlloc+0x76>
    6ed2:	2a00      	cmp	r2, #0
    6ed4:	d007      	beq.n	6ee6 <sysMailAlloc+0x2a>
    6ed6:	2900      	cmp	r1, #0
    6ed8:	d12b      	bne.n	6f32 <sysMailAlloc+0x76>
    6eda:	f000 fa79 	bl	73d0 <rt_alloc_box>
    6ede:	2800      	cmp	r0, #0
    6ee0:	d027      	beq.n	6f32 <sysMailAlloc+0x76>
    6ee2:	b003      	add	sp, #12
    6ee4:	bd30      	pop	{r4, r5, pc}
    6ee6:	f000 fa73 	bl	73d0 <rt_alloc_box>
    6eea:	2800      	cmp	r0, #0
    6eec:	d1f9      	bne.n	6ee2 <sysMailAlloc+0x26>
    6eee:	2d00      	cmp	r5, #0
    6ef0:	d01f      	beq.n	6f32 <sysMailAlloc+0x76>
    6ef2:	6863      	ldr	r3, [r4, #4]
    6ef4:	2b00      	cmp	r3, #0
    6ef6:	d020      	beq.n	6f3a <sysMailAlloc+0x7e>
    6ef8:	4b16      	ldr	r3, [pc, #88]	; (6f54 <sysMailAlloc+0x98>)
    6efa:	0020      	movs	r0, r4
    6efc:	6819      	ldr	r1, [r3, #0]
    6efe:	f000 fdf1 	bl	7ae4 <rt_put_prio>
    6f02:	1c6b      	adds	r3, r5, #1
    6f04:	d021      	beq.n	6f4a <sysMailAlloc+0x8e>
    6f06:	4b14      	ldr	r3, [pc, #80]	; (6f58 <sysMailAlloc+0x9c>)
    6f08:	429d      	cmp	r5, r3
    6f0a:	d814      	bhi.n	6f36 <sysMailAlloc+0x7a>
    6f0c:	20fa      	movs	r0, #250	; 0xfa
    6f0e:	4b13      	ldr	r3, [pc, #76]	; (6f5c <sysMailAlloc+0xa0>)
    6f10:	0080      	lsls	r0, r0, #2
    6f12:	4368      	muls	r0, r5
    6f14:	681b      	ldr	r3, [r3, #0]
    6f16:	9301      	str	r3, [sp, #4]
    6f18:	3b01      	subs	r3, #1
    6f1a:	18c0      	adds	r0, r0, r3
    6f1c:	9901      	ldr	r1, [sp, #4]
    6f1e:	f7fd fc25 	bl	476c <__aeabi_uidiv>
    6f22:	4b0f      	ldr	r3, [pc, #60]	; (6f60 <sysMailAlloc+0xa4>)
    6f24:	0002      	movs	r2, r0
    6f26:	0018      	movs	r0, r3
    6f28:	429a      	cmp	r2, r3
    6f2a:	d910      	bls.n	6f4e <sysMailAlloc+0x92>
    6f2c:	2108      	movs	r1, #8
    6f2e:	f001 fa13 	bl	8358 <rt_block>
    6f32:	2000      	movs	r0, #0
    6f34:	e7d5      	b.n	6ee2 <sysMailAlloc+0x26>
    6f36:	480a      	ldr	r0, [pc, #40]	; (6f60 <sysMailAlloc+0xa4>)
    6f38:	e7f8      	b.n	6f2c <sysMailAlloc+0x70>
    6f3a:	4a06      	ldr	r2, [pc, #24]	; (6f54 <sysMailAlloc+0x98>)
    6f3c:	6812      	ldr	r2, [r2, #0]
    6f3e:	6062      	str	r2, [r4, #4]
    6f40:	6053      	str	r3, [r2, #4]
    6f42:	2303      	movs	r3, #3
    6f44:	6094      	str	r4, [r2, #8]
    6f46:	7063      	strb	r3, [r4, #1]
    6f48:	e7db      	b.n	6f02 <sysMailAlloc+0x46>
    6f4a:	4806      	ldr	r0, [pc, #24]	; (6f64 <sysMailAlloc+0xa8>)
    6f4c:	e7ee      	b.n	6f2c <sysMailAlloc+0x70>
    6f4e:	b290      	uxth	r0, r2
    6f50:	e7ec      	b.n	6f2c <sysMailAlloc+0x70>
    6f52:	46c0      	nop			; (mov r8, r8)
    6f54:	200060b8 	.word	0x200060b8
    6f58:	003d0900 	.word	0x003d0900
    6f5c:	00008a00 	.word	0x00008a00
    6f60:	0000fffe 	.word	0x0000fffe
    6f64:	0000ffff 	.word	0x0000ffff

00006f68 <sysMailFree>:
    6f68:	b570      	push	{r4, r5, r6, lr}
    6f6a:	0016      	movs	r6, r2
    6f6c:	2800      	cmp	r0, #0
    6f6e:	d00e      	beq.n	6f8e <sysMailFree+0x26>
    6f70:	6804      	ldr	r4, [r0, #0]
    6f72:	2c00      	cmp	r4, #0
    6f74:	d00b      	beq.n	6f8e <sysMailFree+0x26>
    6f76:	6845      	ldr	r5, [r0, #4]
    6f78:	2080      	movs	r0, #128	; 0x80
    6f7a:	2d00      	cmp	r5, #0
    6f7c:	d006      	beq.n	6f8c <sysMailFree+0x24>
    6f7e:	0028      	movs	r0, r5
    6f80:	f000 fa46 	bl	7410 <rt_free_box>
    6f84:	0003      	movs	r3, r0
    6f86:	2086      	movs	r0, #134	; 0x86
    6f88:	2b00      	cmp	r3, #0
    6f8a:	d002      	beq.n	6f92 <sysMailFree+0x2a>
    6f8c:	bd70      	pop	{r4, r5, r6, pc}
    6f8e:	2080      	movs	r0, #128	; 0x80
    6f90:	e7fc      	b.n	6f8c <sysMailFree+0x24>
    6f92:	6863      	ldr	r3, [r4, #4]
    6f94:	2b00      	cmp	r3, #0
    6f96:	d002      	beq.n	6f9e <sysMailFree+0x36>
    6f98:	7863      	ldrb	r3, [r4, #1]
    6f9a:	2b03      	cmp	r3, #3
    6f9c:	d001      	beq.n	6fa2 <sysMailFree+0x3a>
    6f9e:	2000      	movs	r0, #0
    6fa0:	e7f4      	b.n	6f8c <sysMailFree+0x24>
    6fa2:	2e00      	cmp	r6, #0
    6fa4:	d113      	bne.n	6fce <sysMailFree+0x66>
    6fa6:	0028      	movs	r0, r5
    6fa8:	f000 fa12 	bl	73d0 <rt_alloc_box>
    6fac:	1e05      	subs	r5, r0, #0
    6fae:	d0f6      	beq.n	6f9e <sysMailFree+0x36>
    6fb0:	0020      	movs	r0, r4
    6fb2:	f000 fdbd 	bl	7b30 <rt_get_first>
    6fb6:	0004      	movs	r4, r0
    6fb8:	0029      	movs	r1, r5
    6fba:	f000 f987 	bl	72cc <rt_ret_val>
    6fbe:	0020      	movs	r0, r4
    6fc0:	f000 feee 	bl	7da0 <rt_rmv_dly>
    6fc4:	0020      	movs	r0, r4
    6fc6:	f001 f9a1 	bl	830c <rt_dispatch>
    6fca:	2000      	movs	r0, #0
    6fcc:	e7de      	b.n	6f8c <sysMailFree+0x24>
    6fce:	0020      	movs	r0, r4
    6fd0:	0029      	movs	r1, r5
    6fd2:	f000 fefb 	bl	7dcc <rt_psq_enq>
    6fd6:	f001 f8dd 	bl	8194 <rt_psh_req>
    6fda:	2000      	movs	r0, #0
    6fdc:	e7d6      	b.n	6f8c <sysMailFree+0x24>
    6fde:	46c0      	nop			; (mov r8, r8)

00006fe0 <osMailCreate>:
    6fe0:	b5b0      	push	{r4, r5, r7, lr}
    6fe2:	0004      	movs	r4, r0
    6fe4:	f3ef 8005 	mrs	r0, IPSR
    6fe8:	2800      	cmp	r0, #0
    6fea:	d130      	bne.n	704e <osMailCreate+0x6e>
    6fec:	f3ef 8014 	mrs	r0, CONTROL
    6ff0:	07c0      	lsls	r0, r0, #31
    6ff2:	d504      	bpl.n	6ffe <osMailCreate+0x1e>
    6ff4:	0020      	movs	r0, r4
    6ff6:	4f18      	ldr	r7, [pc, #96]	; (7058 <osMailCreate+0x78>)
    6ff8:	46bc      	mov	ip, r7
    6ffa:	df00      	svc	0
    6ffc:	bdb0      	pop	{r4, r5, r7, pc}
    6ffe:	4815      	ldr	r0, [pc, #84]	; (7054 <osMailCreate+0x74>)
    7000:	7800      	ldrb	r0, [r0, #0]
    7002:	2800      	cmp	r0, #0
    7004:	d1f6      	bne.n	6ff4 <osMailCreate+0x14>
    7006:	2c00      	cmp	r4, #0
    7008:	d021      	beq.n	704e <osMailCreate+0x6e>
    700a:	6821      	ldr	r1, [r4, #0]
    700c:	2900      	cmp	r1, #0
    700e:	d01e      	beq.n	704e <osMailCreate+0x6e>
    7010:	6862      	ldr	r2, [r4, #4]
    7012:	2a00      	cmp	r2, #0
    7014:	d01b      	beq.n	704e <osMailCreate+0x6e>
    7016:	68a3      	ldr	r3, [r4, #8]
    7018:	2b00      	cmp	r3, #0
    701a:	d018      	beq.n	704e <osMailCreate+0x6e>
    701c:	6858      	ldr	r0, [r3, #4]
    701e:	681d      	ldr	r5, [r3, #0]
    7020:	2800      	cmp	r0, #0
    7022:	d014      	beq.n	704e <osMailCreate+0x6e>
    7024:	2d00      	cmp	r5, #0
    7026:	d012      	beq.n	704e <osMailCreate+0x6e>
    7028:	782b      	ldrb	r3, [r5, #0]
    702a:	2b00      	cmp	r3, #0
    702c:	d10f      	bne.n	704e <osMailCreate+0x6e>
    702e:	3303      	adds	r3, #3
    7030:	3203      	adds	r2, #3
    7032:	439a      	bics	r2, r3
    7034:	4351      	muls	r1, r2
    7036:	310c      	adds	r1, #12
    7038:	f000 f99e 	bl	7378 <_init_box>
    703c:	6823      	ldr	r3, [r4, #0]
    703e:	0028      	movs	r0, r5
    7040:	1d19      	adds	r1, r3, #4
    7042:	0089      	lsls	r1, r1, #2
    7044:	b289      	uxth	r1, r1
    7046:	f000 fbf3 	bl	7830 <rt_mbx_init>
    704a:	68a0      	ldr	r0, [r4, #8]
    704c:	e7d6      	b.n	6ffc <osMailCreate+0x1c>
    704e:	2000      	movs	r0, #0
    7050:	e7d4      	b.n	6ffc <osMailCreate+0x1c>
    7052:	46c0      	nop			; (mov r8, r8)
    7054:	20006079 	.word	0x20006079
    7058:	00006e6d 	.word	0x00006e6d

0000705c <osMailAlloc>:
    705c:	b580      	push	{r7, lr}
    705e:	f3ef 8205 	mrs	r2, IPSR
    7062:	2a00      	cmp	r2, #0
    7064:	d104      	bne.n	7070 <osMailAlloc+0x14>
    7066:	2200      	movs	r2, #0
    7068:	4f09      	ldr	r7, [pc, #36]	; (7090 <osMailAlloc+0x34>)
    706a:	46bc      	mov	ip, r7
    706c:	df00      	svc	0
    706e:	bd80      	pop	{r7, pc}
    7070:	2800      	cmp	r0, #0
    7072:	d00a      	beq.n	708a <osMailAlloc+0x2e>
    7074:	6803      	ldr	r3, [r0, #0]
    7076:	6840      	ldr	r0, [r0, #4]
    7078:	2800      	cmp	r0, #0
    707a:	d006      	beq.n	708a <osMailAlloc+0x2e>
    707c:	2b00      	cmp	r3, #0
    707e:	d004      	beq.n	708a <osMailAlloc+0x2e>
    7080:	2900      	cmp	r1, #0
    7082:	d102      	bne.n	708a <osMailAlloc+0x2e>
    7084:	f000 f9a4 	bl	73d0 <rt_alloc_box>
    7088:	e7f1      	b.n	706e <osMailAlloc+0x12>
    708a:	2000      	movs	r0, #0
    708c:	e7ef      	b.n	706e <osMailAlloc+0x12>
    708e:	0000      	.short	0x0000
    7090:	00006ebd 	.word	0x00006ebd

00007094 <osMailCAlloc>:
    7094:	b5b0      	push	{r4, r5, r7, lr}
    7096:	0004      	movs	r4, r0
    7098:	f3ef 8205 	mrs	r2, IPSR
    709c:	2a00      	cmp	r2, #0
    709e:	d112      	bne.n	70c6 <osMailCAlloc+0x32>
    70a0:	2200      	movs	r2, #0
    70a2:	4f13      	ldr	r7, [pc, #76]	; (70f0 <osMailCAlloc+0x5c>)
    70a4:	46bc      	mov	ip, r7
    70a6:	df00      	svc	0
    70a8:	6863      	ldr	r3, [r4, #4]
    70aa:	2b00      	cmp	r3, #0
    70ac:	d00a      	beq.n	70c4 <osMailCAlloc+0x30>
    70ae:	2800      	cmp	r0, #0
    70b0:	d01b      	beq.n	70ea <osMailCAlloc+0x56>
    70b2:	689b      	ldr	r3, [r3, #8]
    70b4:	2b00      	cmp	r3, #0
    70b6:	d005      	beq.n	70c4 <osMailCAlloc+0x30>
    70b8:	0002      	movs	r2, r0
    70ba:	2100      	movs	r1, #0
    70bc:	3b04      	subs	r3, #4
    70be:	c202      	stmia	r2!, {r1}
    70c0:	2b00      	cmp	r3, #0
    70c2:	d1fb      	bne.n	70bc <osMailCAlloc+0x28>
    70c4:	bdb0      	pop	{r4, r5, r7, pc}
    70c6:	2800      	cmp	r0, #0
    70c8:	d00f      	beq.n	70ea <osMailCAlloc+0x56>
    70ca:	6803      	ldr	r3, [r0, #0]
    70cc:	6840      	ldr	r0, [r0, #4]
    70ce:	2800      	cmp	r0, #0
    70d0:	d00b      	beq.n	70ea <osMailCAlloc+0x56>
    70d2:	2b00      	cmp	r3, #0
    70d4:	d009      	beq.n	70ea <osMailCAlloc+0x56>
    70d6:	2900      	cmp	r1, #0
    70d8:	d107      	bne.n	70ea <osMailCAlloc+0x56>
    70da:	f000 f979 	bl	73d0 <rt_alloc_box>
    70de:	2800      	cmp	r0, #0
    70e0:	d003      	beq.n	70ea <osMailCAlloc+0x56>
    70e2:	6863      	ldr	r3, [r4, #4]
    70e4:	2b00      	cmp	r3, #0
    70e6:	d1e4      	bne.n	70b2 <osMailCAlloc+0x1e>
    70e8:	e7ec      	b.n	70c4 <osMailCAlloc+0x30>
    70ea:	2000      	movs	r0, #0
    70ec:	e7ea      	b.n	70c4 <osMailCAlloc+0x30>
    70ee:	0000      	.short	0x0000
    70f0:	00006ebd 	.word	0x00006ebd

000070f4 <osMailFree>:
    70f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    70f6:	f3ef 8205 	mrs	r2, IPSR
    70fa:	2a00      	cmp	r2, #0
    70fc:	d106      	bne.n	710c <osMailFree+0x18>
    70fe:	2200      	movs	r2, #0
    7100:	4f13      	ldr	r7, [pc, #76]	; (7150 <osMailFree+0x5c>)
    7102:	46bc      	mov	ip, r7
    7104:	df00      	svc	0
    7106:	0004      	movs	r4, r0
    7108:	0020      	movs	r0, r4
    710a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    710c:	2800      	cmp	r0, #0
    710e:	d01a      	beq.n	7146 <osMailFree+0x52>
    7110:	6805      	ldr	r5, [r0, #0]
    7112:	2d00      	cmp	r5, #0
    7114:	d017      	beq.n	7146 <osMailFree+0x52>
    7116:	6846      	ldr	r6, [r0, #4]
    7118:	2480      	movs	r4, #128	; 0x80
    711a:	2e00      	cmp	r6, #0
    711c:	d0f4      	beq.n	7108 <osMailFree+0x14>
    711e:	0030      	movs	r0, r6
    7120:	f000 f976 	bl	7410 <rt_free_box>
    7124:	3406      	adds	r4, #6
    7126:	2800      	cmp	r0, #0
    7128:	d1ee      	bne.n	7108 <osMailFree+0x14>
    712a:	686b      	ldr	r3, [r5, #4]
    712c:	2b00      	cmp	r3, #0
    712e:	d00c      	beq.n	714a <osMailFree+0x56>
    7130:	786b      	ldrb	r3, [r5, #1]
    7132:	2400      	movs	r4, #0
    7134:	2b03      	cmp	r3, #3
    7136:	d1e7      	bne.n	7108 <osMailFree+0x14>
    7138:	0031      	movs	r1, r6
    713a:	0028      	movs	r0, r5
    713c:	f000 fe46 	bl	7dcc <rt_psq_enq>
    7140:	f001 f828 	bl	8194 <rt_psh_req>
    7144:	e7e0      	b.n	7108 <osMailFree+0x14>
    7146:	2480      	movs	r4, #128	; 0x80
    7148:	e7de      	b.n	7108 <osMailFree+0x14>
    714a:	2400      	movs	r4, #0
    714c:	e7dc      	b.n	7108 <osMailFree+0x14>
    714e:	0000      	.short	0x0000
    7150:	00006f69 	.word	0x00006f69

00007154 <osMailPut>:
    7154:	b5b0      	push	{r4, r5, r7, lr}
    7156:	0002      	movs	r2, r0
    7158:	000c      	movs	r4, r1
    715a:	2800      	cmp	r0, #0
    715c:	d00e      	beq.n	717c <osMailPut+0x28>
    715e:	2086      	movs	r0, #134	; 0x86
    7160:	2900      	cmp	r1, #0
    7162:	d00a      	beq.n	717a <osMailPut+0x26>
    7164:	6815      	ldr	r5, [r2, #0]
    7166:	f3ef 8205 	mrs	r2, IPSR
    716a:	2a00      	cmp	r2, #0
    716c:	d008      	beq.n	7180 <osMailPut+0x2c>
    716e:	2d00      	cmp	r5, #0
    7170:	d004      	beq.n	717c <osMailPut+0x28>
    7172:	782b      	ldrb	r3, [r5, #0]
    7174:	3806      	subs	r0, #6
    7176:	2b01      	cmp	r3, #1
    7178:	d008      	beq.n	718c <osMailPut+0x38>
    717a:	bdb0      	pop	{r4, r5, r7, pc}
    717c:	2080      	movs	r0, #128	; 0x80
    717e:	e7fc      	b.n	717a <osMailPut+0x26>
    7180:	0028      	movs	r0, r5
    7182:	2200      	movs	r2, #0
    7184:	4f08      	ldr	r7, [pc, #32]	; (71a8 <osMailPut+0x54>)
    7186:	46bc      	mov	ip, r7
    7188:	df00      	svc	0
    718a:	e7f6      	b.n	717a <osMailPut+0x26>
    718c:	0028      	movs	r0, r5
    718e:	f000 fc05 	bl	799c <rt_mbx_check>
    7192:	0003      	movs	r3, r0
    7194:	2081      	movs	r0, #129	; 0x81
    7196:	2b00      	cmp	r3, #0
    7198:	d0ef      	beq.n	717a <osMailPut+0x26>
    719a:	0028      	movs	r0, r5
    719c:	0021      	movs	r1, r4
    719e:	f000 fc01 	bl	79a4 <isr_mbx_send>
    71a2:	2000      	movs	r0, #0
    71a4:	e7e9      	b.n	717a <osMailPut+0x26>
    71a6:	0000      	.short	0x0000
    71a8:	00006be5 	.word	0x00006be5

000071ac <osMailGet>:
    71ac:	b5b0      	push	{r4, r5, r7, lr}
    71ae:	0004      	movs	r4, r0
    71b0:	b084      	sub	sp, #16
    71b2:	2900      	cmp	r1, #0
    71b4:	d012      	beq.n	71dc <osMailGet+0x30>
    71b6:	6808      	ldr	r0, [r1, #0]
    71b8:	f3ef 8105 	mrs	r1, IPSR
    71bc:	2900      	cmp	r1, #0
    71be:	d113      	bne.n	71e8 <osMailGet+0x3c>
    71c0:	0011      	movs	r1, r2
    71c2:	4f0d      	ldr	r7, [pc, #52]	; (71f8 <osMailGet+0x4c>)
    71c4:	46bc      	mov	ip, r7
    71c6:	df00      	svc	0
    71c8:	2810      	cmp	r0, #16
    71ca:	d005      	beq.n	71d8 <osMailGet+0x2c>
    71cc:	6020      	str	r0, [r4, #0]
    71ce:	6061      	str	r1, [r4, #4]
    71d0:	60a2      	str	r2, [r4, #8]
    71d2:	0020      	movs	r0, r4
    71d4:	b004      	add	sp, #16
    71d6:	bdb0      	pop	{r4, r5, r7, pc}
    71d8:	3010      	adds	r0, #16
    71da:	e7f7      	b.n	71cc <osMailGet+0x20>
    71dc:	2380      	movs	r3, #128	; 0x80
    71de:	6003      	str	r3, [r0, #0]
    71e0:	2300      	movs	r3, #0
    71e2:	6043      	str	r3, [r0, #4]
    71e4:	6083      	str	r3, [r0, #8]
    71e6:	e7f4      	b.n	71d2 <osMailGet+0x26>
    71e8:	0001      	movs	r1, r0
    71ea:	a801      	add	r0, sp, #4
    71ec:	f7ff fd9c 	bl	6d28 <isrMessageGet>
    71f0:	9801      	ldr	r0, [sp, #4]
    71f2:	9902      	ldr	r1, [sp, #8]
    71f4:	9a03      	ldr	r2, [sp, #12]
    71f6:	e7e7      	b.n	71c8 <osMailGet+0x1c>
    71f8:	00006c65 	.word	0x00006c65

000071fc <os_suspend>:
    71fc:	b580      	push	{r7, lr}
    71fe:	4f02      	ldr	r7, [pc, #8]	; (7208 <os_suspend+0xc>)
    7200:	46bc      	mov	ip, r7
    7202:	df00      	svc	0
    7204:	bd80      	pop	{r7, pc}
    7206:	0000      	.short	0x0000
    7208:	00007f45 	.word	0x00007f45

0000720c <os_resume>:
    720c:	b580      	push	{r7, lr}
    720e:	4f02      	ldr	r7, [pc, #8]	; (7218 <os_resume+0xc>)
    7210:	46bc      	mov	ip, r7
    7212:	df00      	svc	0
    7214:	bd80      	pop	{r7, pc}
    7216:	0000      	.short	0x0000
    7218:	00007fd5 	.word	0x00007fd5

0000721c <rt_init_stack>:
    721c:	b5f0      	push	{r4, r5, r6, r7, lr}
    721e:	464e      	mov	r6, r9
    7220:	4645      	mov	r5, r8
    7222:	4657      	mov	r7, sl
    7224:	b4e0      	push	{r5, r6, r7}
    7226:	4b26      	ldr	r3, [pc, #152]	; (72c0 <rt_init_stack+0xa4>)
    7228:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    722a:	b082      	sub	sp, #8
    722c:	4680      	mov	r8, r0
    722e:	4689      	mov	r9, r1
    7230:	08a4      	lsrs	r4, r4, #2
    7232:	681b      	ldr	r3, [r3, #0]
    7234:	d104      	bne.n	7240 <rt_init_stack+0x24>
    7236:	9301      	str	r3, [sp, #4]
    7238:	466b      	mov	r3, sp
    723a:	889c      	ldrh	r4, [r3, #4]
    723c:	9b01      	ldr	r3, [sp, #4]
    723e:	08a4      	lsrs	r4, r4, #2
    7240:	469a      	mov	sl, r3
    7242:	4643      	mov	r3, r8
    7244:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    7246:	00a5      	lsls	r5, r4, #2
    7248:	197d      	adds	r5, r7, r5
    724a:	076b      	lsls	r3, r5, #29
    724c:	d500      	bpl.n	7250 <rt_init_stack+0x34>
    724e:	3d04      	subs	r5, #4
    7250:	2280      	movs	r2, #128	; 0x80
    7252:	1f2b      	subs	r3, r5, #4
    7254:	002e      	movs	r6, r5
    7256:	0452      	lsls	r2, r2, #17
    7258:	601a      	str	r2, [r3, #0]
    725a:	464a      	mov	r2, r9
    725c:	3b04      	subs	r3, #4
    725e:	3e40      	subs	r6, #64	; 0x40
    7260:	601a      	str	r2, [r3, #0]
    7262:	2100      	movs	r1, #0
    7264:	2238      	movs	r2, #56	; 0x38
    7266:	0030      	movs	r0, r6
    7268:	f7fd fe30 	bl	4ecc <memset>
    726c:	4643      	mov	r3, r8
    726e:	69db      	ldr	r3, [r3, #28]
    7270:	3d20      	subs	r5, #32
    7272:	602b      	str	r3, [r5, #0]
    7274:	464a      	mov	r2, r9
    7276:	4643      	mov	r3, r8
    7278:	629e      	str	r6, [r3, #40]	; 0x28
    727a:	631a      	str	r2, [r3, #48]	; 0x30
    727c:	4653      	mov	r3, sl
    727e:	00db      	lsls	r3, r3, #3
    7280:	d516      	bpl.n	72b0 <rt_init_stack+0x94>
    7282:	2c11      	cmp	r4, #17
    7284:	d914      	bls.n	72b0 <rt_init_stack+0x94>
    7286:	3c10      	subs	r4, #16
    7288:	0864      	lsrs	r4, r4, #1
    728a:	1e62      	subs	r2, r4, #1
    728c:	2a00      	cmp	r2, #0
    728e:	d00a      	beq.n	72a6 <rt_init_stack+0x8a>
    7290:	0033      	movs	r3, r6
    7292:	490c      	ldr	r1, [pc, #48]	; (72c4 <rt_init_stack+0xa8>)
    7294:	3b08      	subs	r3, #8
    7296:	3a01      	subs	r2, #1
    7298:	6059      	str	r1, [r3, #4]
    729a:	6019      	str	r1, [r3, #0]
    729c:	2a00      	cmp	r2, #0
    729e:	d1f9      	bne.n	7294 <rt_init_stack+0x78>
    72a0:	00e4      	lsls	r4, r4, #3
    72a2:	1b36      	subs	r6, r6, r4
    72a4:	3608      	adds	r6, #8
    72a6:	3e04      	subs	r6, #4
    72a8:	42b7      	cmp	r7, r6
    72aa:	d201      	bcs.n	72b0 <rt_init_stack+0x94>
    72ac:	4b05      	ldr	r3, [pc, #20]	; (72c4 <rt_init_stack+0xa8>)
    72ae:	6033      	str	r3, [r6, #0]
    72b0:	4b05      	ldr	r3, [pc, #20]	; (72c8 <rt_init_stack+0xac>)
    72b2:	603b      	str	r3, [r7, #0]
    72b4:	b002      	add	sp, #8
    72b6:	bc1c      	pop	{r2, r3, r4}
    72b8:	4690      	mov	r8, r2
    72ba:	4699      	mov	r9, r3
    72bc:	46a2      	mov	sl, r4
    72be:	bdf0      	pop	{r4, r5, r6, r7, pc}
    72c0:	000089e0 	.word	0x000089e0
    72c4:	cccccccc 	.word	0xcccccccc
    72c8:	e25a2ea5 	.word	0xe25a2ea5

000072cc <rt_ret_val>:
    72cc:	6a83      	ldr	r3, [r0, #40]	; 0x28
    72ce:	6219      	str	r1, [r3, #32]
    72d0:	4770      	bx	lr
    72d2:	46c0      	nop			; (mov r8, r8)

000072d4 <rt_ret_val2>:
    72d4:	6a83      	ldr	r3, [r0, #40]	; 0x28
    72d6:	6219      	str	r1, [r3, #32]
    72d8:	625a      	str	r2, [r3, #36]	; 0x24
    72da:	4770      	bx	lr

000072dc <rt_init_mem>:
    72dc:	0003      	movs	r3, r0
    72de:	2001      	movs	r0, #1
    72e0:	2b00      	cmp	r3, #0
    72e2:	d008      	beq.n	72f6 <rt_init_mem+0x1a>
    72e4:	2907      	cmp	r1, #7
    72e6:	d906      	bls.n	72f6 <rt_init_mem+0x1a>
    72e8:	2200      	movs	r2, #0
    72ea:	2000      	movs	r0, #0
    72ec:	3904      	subs	r1, #4
    72ee:	1859      	adds	r1, r3, r1
    72f0:	6019      	str	r1, [r3, #0]
    72f2:	600a      	str	r2, [r1, #0]
    72f4:	605a      	str	r2, [r3, #4]
    72f6:	4770      	bx	lr

000072f8 <rt_alloc_mem>:
    72f8:	b510      	push	{r4, lr}
    72fa:	2800      	cmp	r0, #0
    72fc:	d018      	beq.n	7330 <rt_alloc_mem+0x38>
    72fe:	2900      	cmp	r1, #0
    7300:	d016      	beq.n	7330 <rt_alloc_mem+0x38>
    7302:	2303      	movs	r3, #3
    7304:	310b      	adds	r1, #11
    7306:	4399      	bics	r1, r3
    7308:	6802      	ldr	r2, [r0, #0]
    730a:	e003      	b.n	7314 <rt_alloc_mem+0x1c>
    730c:	0010      	movs	r0, r2
    730e:	6812      	ldr	r2, [r2, #0]
    7310:	2a00      	cmp	r2, #0
    7312:	d00d      	beq.n	7330 <rt_alloc_mem+0x38>
    7314:	6844      	ldr	r4, [r0, #4]
    7316:	1a13      	subs	r3, r2, r0
    7318:	1b1b      	subs	r3, r3, r4
    731a:	4299      	cmp	r1, r3
    731c:	d8f6      	bhi.n	730c <rt_alloc_mem+0x14>
    731e:	2c00      	cmp	r4, #0
    7320:	d008      	beq.n	7334 <rt_alloc_mem+0x3c>
    7322:	1904      	adds	r4, r0, r4
    7324:	6022      	str	r2, [r4, #0]
    7326:	6061      	str	r1, [r4, #4]
    7328:	6004      	str	r4, [r0, #0]
    732a:	0020      	movs	r0, r4
    732c:	3008      	adds	r0, #8
    732e:	e000      	b.n	7332 <rt_alloc_mem+0x3a>
    7330:	2000      	movs	r0, #0
    7332:	bd10      	pop	{r4, pc}
    7334:	6041      	str	r1, [r0, #4]
    7336:	3008      	adds	r0, #8
    7338:	e7fb      	b.n	7332 <rt_alloc_mem+0x3a>
    733a:	46c0      	nop			; (mov r8, r8)

0000733c <rt_free_mem>:
    733c:	2800      	cmp	r0, #0
    733e:	d015      	beq.n	736c <rt_free_mem+0x30>
    7340:	2900      	cmp	r1, #0
    7342:	d013      	beq.n	736c <rt_free_mem+0x30>
    7344:	3908      	subs	r1, #8
    7346:	4288      	cmp	r0, r1
    7348:	d012      	beq.n	7370 <rt_free_mem+0x34>
    734a:	6803      	ldr	r3, [r0, #0]
    734c:	2b00      	cmp	r3, #0
    734e:	d105      	bne.n	735c <rt_free_mem+0x20>
    7350:	e00c      	b.n	736c <rt_free_mem+0x30>
    7352:	681a      	ldr	r2, [r3, #0]
    7354:	0018      	movs	r0, r3
    7356:	2a00      	cmp	r2, #0
    7358:	d008      	beq.n	736c <rt_free_mem+0x30>
    735a:	0013      	movs	r3, r2
    735c:	4299      	cmp	r1, r3
    735e:	d1f8      	bne.n	7352 <rt_free_mem+0x16>
    7360:	2800      	cmp	r0, #0
    7362:	d005      	beq.n	7370 <rt_free_mem+0x34>
    7364:	680b      	ldr	r3, [r1, #0]
    7366:	6003      	str	r3, [r0, #0]
    7368:	2000      	movs	r0, #0
    736a:	e000      	b.n	736e <rt_free_mem+0x32>
    736c:	2001      	movs	r0, #1
    736e:	4770      	bx	lr
    7370:	2300      	movs	r3, #0
    7372:	2000      	movs	r0, #0
    7374:	604b      	str	r3, [r1, #4]
    7376:	e7fa      	b.n	736e <rt_free_mem+0x32>

00007378 <_init_box>:
    7378:	b530      	push	{r4, r5, lr}
    737a:	2a00      	cmp	r2, #0
    737c:	db1e      	blt.n	73bc <_init_box+0x44>
    737e:	2303      	movs	r3, #3
    7380:	3203      	adds	r2, #3
    7382:	439a      	bics	r2, r3
    7384:	3309      	adds	r3, #9
    7386:	2401      	movs	r4, #1
    7388:	2a00      	cmp	r2, #0
    738a:	d015      	beq.n	73b8 <_init_box+0x40>
    738c:	18d5      	adds	r5, r2, r3
    738e:	428d      	cmp	r5, r1
    7390:	d812      	bhi.n	73b8 <_init_box+0x40>
    7392:	1841      	adds	r1, r0, r1
    7394:	18c3      	adds	r3, r0, r3
    7396:	6041      	str	r1, [r0, #4]
    7398:	6003      	str	r3, [r0, #0]
    739a:	6082      	str	r2, [r0, #8]
    739c:	1898      	adds	r0, r3, r2
    739e:	1a89      	subs	r1, r1, r2
    73a0:	4281      	cmp	r1, r0
    73a2:	d201      	bcs.n	73a8 <_init_box+0x30>
    73a4:	e011      	b.n	73ca <_init_box+0x52>
    73a6:	0020      	movs	r0, r4
    73a8:	1884      	adds	r4, r0, r2
    73aa:	6018      	str	r0, [r3, #0]
    73ac:	189b      	adds	r3, r3, r2
    73ae:	42a1      	cmp	r1, r4
    73b0:	d2f9      	bcs.n	73a6 <_init_box+0x2e>
    73b2:	2300      	movs	r3, #0
    73b4:	2400      	movs	r4, #0
    73b6:	6003      	str	r3, [r0, #0]
    73b8:	0020      	movs	r0, r4
    73ba:	bd30      	pop	{r4, r5, pc}
    73bc:	2307      	movs	r3, #7
    73be:	0052      	lsls	r2, r2, #1
    73c0:	0852      	lsrs	r2, r2, #1
    73c2:	3207      	adds	r2, #7
    73c4:	439a      	bics	r2, r3
    73c6:	3309      	adds	r3, #9
    73c8:	e7dd      	b.n	7386 <_init_box+0xe>
    73ca:	0018      	movs	r0, r3
    73cc:	e7f1      	b.n	73b2 <_init_box+0x3a>
    73ce:	46c0      	nop			; (mov r8, r8)

000073d0 <rt_alloc_box>:
    73d0:	f3ef 8310 	mrs	r3, PRIMASK
    73d4:	b672      	cpsid	i
    73d6:	2201      	movs	r2, #1
    73d8:	4013      	ands	r3, r2
    73da:	6802      	ldr	r2, [r0, #0]
    73dc:	2a00      	cmp	r2, #0
    73de:	d001      	beq.n	73e4 <rt_alloc_box+0x14>
    73e0:	6811      	ldr	r1, [r2, #0]
    73e2:	6001      	str	r1, [r0, #0]
    73e4:	2b00      	cmp	r3, #0
    73e6:	d100      	bne.n	73ea <rt_alloc_box+0x1a>
    73e8:	b662      	cpsie	i
    73ea:	0010      	movs	r0, r2
    73ec:	4770      	bx	lr
    73ee:	46c0      	nop			; (mov r8, r8)

000073f0 <_calloc_box>:
    73f0:	b510      	push	{r4, lr}
    73f2:	0004      	movs	r4, r0
    73f4:	f7fd fb45 	bl	4a82 <_alloc_box>
    73f8:	2800      	cmp	r0, #0
    73fa:	d008      	beq.n	740e <_calloc_box+0x1e>
    73fc:	68a3      	ldr	r3, [r4, #8]
    73fe:	2b00      	cmp	r3, #0
    7400:	d005      	beq.n	740e <_calloc_box+0x1e>
    7402:	0002      	movs	r2, r0
    7404:	2100      	movs	r1, #0
    7406:	3b04      	subs	r3, #4
    7408:	c202      	stmia	r2!, {r1}
    740a:	2b00      	cmp	r3, #0
    740c:	d1fb      	bne.n	7406 <_calloc_box+0x16>
    740e:	bd10      	pop	{r4, pc}

00007410 <rt_free_box>:
    7410:	0003      	movs	r3, r0
    7412:	2001      	movs	r0, #1
    7414:	4299      	cmp	r1, r3
    7416:	d30b      	bcc.n	7430 <rt_free_box+0x20>
    7418:	685a      	ldr	r2, [r3, #4]
    741a:	4291      	cmp	r1, r2
    741c:	d208      	bcs.n	7430 <rt_free_box+0x20>
    741e:	f3ef 8210 	mrs	r2, PRIMASK
    7422:	b672      	cpsid	i
    7424:	4010      	ands	r0, r2
    7426:	681a      	ldr	r2, [r3, #0]
    7428:	600a      	str	r2, [r1, #0]
    742a:	6019      	str	r1, [r3, #0]
    742c:	d101      	bne.n	7432 <rt_free_box+0x22>
    742e:	b662      	cpsie	i
    7430:	4770      	bx	lr
    7432:	2000      	movs	r0, #0
    7434:	e7fc      	b.n	7430 <rt_free_box+0x20>
    7436:	46c0      	nop			; (mov r8, r8)

00007438 <rt_mut_init>:
    7438:	2303      	movs	r3, #3
    743a:	7003      	strb	r3, [r0, #0]
    743c:	2300      	movs	r3, #0
    743e:	8043      	strh	r3, [r0, #2]
    7440:	6043      	str	r3, [r0, #4]
    7442:	6083      	str	r3, [r0, #8]
    7444:	60c3      	str	r3, [r0, #12]
    7446:	4770      	bx	lr

00007448 <rt_mut_delete>:
    7448:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    744a:	8843      	ldrh	r3, [r0, #2]
    744c:	0005      	movs	r5, r0
    744e:	2b00      	cmp	r3, #0
    7450:	d02c      	beq.n	74ac <rt_mut_delete+0x64>
    7452:	6880      	ldr	r0, [r0, #8]
    7454:	6a04      	ldr	r4, [r0, #32]
    7456:	42a5      	cmp	r5, r4
    7458:	d05a      	beq.n	7510 <rt_mut_delete+0xc8>
    745a:	2c00      	cmp	r4, #0
    745c:	d01a      	beq.n	7494 <rt_mut_delete+0x4c>
    745e:	68e3      	ldr	r3, [r4, #12]
    7460:	429d      	cmp	r5, r3
    7462:	d050      	beq.n	7506 <rt_mut_delete+0xbe>
    7464:	001a      	movs	r2, r3
    7466:	e003      	b.n	7470 <rt_mut_delete+0x28>
    7468:	68d1      	ldr	r1, [r2, #12]
    746a:	428d      	cmp	r5, r1
    746c:	d04c      	beq.n	7508 <rt_mut_delete+0xc0>
    746e:	000a      	movs	r2, r1
    7470:	2a00      	cmp	r2, #0
    7472:	d1f9      	bne.n	7468 <rt_mut_delete+0x20>
    7474:	2224      	movs	r2, #36	; 0x24
    7476:	5c81      	ldrb	r1, [r0, r2]
    7478:	6862      	ldr	r2, [r4, #4]
    747a:	2a00      	cmp	r2, #0
    747c:	d005      	beq.n	748a <rt_mut_delete+0x42>
    747e:	7892      	ldrb	r2, [r2, #2]
    7480:	1c14      	adds	r4, r2, #0
    7482:	428a      	cmp	r2, r1
    7484:	d200      	bcs.n	7488 <rt_mut_delete+0x40>
    7486:	1c0c      	adds	r4, r1, #0
    7488:	b2e1      	uxtb	r1, r4
    748a:	2b00      	cmp	r3, #0
    748c:	d004      	beq.n	7498 <rt_mut_delete+0x50>
    748e:	001c      	movs	r4, r3
    7490:	68db      	ldr	r3, [r3, #12]
    7492:	e7f1      	b.n	7478 <rt_mut_delete+0x30>
    7494:	2324      	movs	r3, #36	; 0x24
    7496:	5cc1      	ldrb	r1, [r0, r3]
    7498:	7883      	ldrb	r3, [r0, #2]
    749a:	428b      	cmp	r3, r1
    749c:	d006      	beq.n	74ac <rt_mut_delete+0x64>
    749e:	4b20      	ldr	r3, [pc, #128]	; (7520 <rt_mut_delete+0xd8>)
    74a0:	7081      	strb	r1, [r0, #2]
    74a2:	681b      	ldr	r3, [r3, #0]
    74a4:	4298      	cmp	r0, r3
    74a6:	d001      	beq.n	74ac <rt_mut_delete+0x64>
    74a8:	f000 fb72 	bl	7b90 <rt_resort_prio>
    74ac:	686b      	ldr	r3, [r5, #4]
    74ae:	4e1d      	ldr	r6, [pc, #116]	; (7524 <rt_mut_delete+0xdc>)
    74b0:	2b00      	cmp	r3, #0
    74b2:	d012      	beq.n	74da <rt_mut_delete+0x92>
    74b4:	2701      	movs	r7, #1
    74b6:	0028      	movs	r0, r5
    74b8:	f000 fb3a 	bl	7b30 <rt_get_first>
    74bc:	0004      	movs	r4, r0
    74be:	2100      	movs	r1, #0
    74c0:	f7ff ff04 	bl	72cc <rt_ret_val>
    74c4:	0020      	movs	r0, r4
    74c6:	f000 fc6b 	bl	7da0 <rt_rmv_dly>
    74ca:	7067      	strb	r7, [r4, #1]
    74cc:	0021      	movs	r1, r4
    74ce:	0030      	movs	r0, r6
    74d0:	f000 fb08 	bl	7ae4 <rt_put_prio>
    74d4:	686b      	ldr	r3, [r5, #4]
    74d6:	2b00      	cmp	r3, #0
    74d8:	d1ed      	bne.n	74b6 <rt_mut_delete+0x6e>
    74da:	6873      	ldr	r3, [r6, #4]
    74dc:	2b00      	cmp	r3, #0
    74de:	d00e      	beq.n	74fe <rt_mut_delete+0xb6>
    74e0:	4c0f      	ldr	r4, [pc, #60]	; (7520 <rt_mut_delete+0xd8>)
    74e2:	789a      	ldrb	r2, [r3, #2]
    74e4:	6821      	ldr	r1, [r4, #0]
    74e6:	788b      	ldrb	r3, [r1, #2]
    74e8:	429a      	cmp	r2, r3
    74ea:	d908      	bls.n	74fe <rt_mut_delete+0xb6>
    74ec:	0030      	movs	r0, r6
    74ee:	f000 faf9 	bl	7ae4 <rt_put_prio>
    74f2:	2201      	movs	r2, #1
    74f4:	6823      	ldr	r3, [r4, #0]
    74f6:	2000      	movs	r0, #0
    74f8:	705a      	strb	r2, [r3, #1]
    74fa:	f000 ff07 	bl	830c <rt_dispatch>
    74fe:	2300      	movs	r3, #0
    7500:	2000      	movs	r0, #0
    7502:	702b      	strb	r3, [r5, #0]
    7504:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7506:	0022      	movs	r2, r4
    7508:	68eb      	ldr	r3, [r5, #12]
    750a:	60d3      	str	r3, [r2, #12]
    750c:	68e3      	ldr	r3, [r4, #12]
    750e:	e7b1      	b.n	7474 <rt_mut_delete+0x2c>
    7510:	2324      	movs	r3, #36	; 0x24
    7512:	68ec      	ldr	r4, [r5, #12]
    7514:	6204      	str	r4, [r0, #32]
    7516:	5cc1      	ldrb	r1, [r0, r3]
    7518:	2c00      	cmp	r4, #0
    751a:	d0bd      	beq.n	7498 <rt_mut_delete+0x50>
    751c:	68e3      	ldr	r3, [r4, #12]
    751e:	e7ab      	b.n	7478 <rt_mut_delete+0x30>
    7520:	200060b8 	.word	0x200060b8
    7524:	20006084 	.word	0x20006084

00007528 <rt_mut_release>:
    7528:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    752a:	8843      	ldrh	r3, [r0, #2]
    752c:	0004      	movs	r4, r0
    752e:	20ff      	movs	r0, #255	; 0xff
    7530:	2b00      	cmp	r3, #0
    7532:	d100      	bne.n	7536 <rt_mut_release+0xe>
    7534:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7536:	4d3c      	ldr	r5, [pc, #240]	; (7628 <rt_mut_release+0x100>)
    7538:	68a1      	ldr	r1, [r4, #8]
    753a:	682a      	ldr	r2, [r5, #0]
    753c:	4291      	cmp	r1, r2
    753e:	d1f9      	bne.n	7534 <rt_mut_release+0xc>
    7540:	3b01      	subs	r3, #1
    7542:	b29b      	uxth	r3, r3
    7544:	8063      	strh	r3, [r4, #2]
    7546:	2b00      	cmp	r3, #0
    7548:	d140      	bne.n	75cc <rt_mut_release+0xa4>
    754a:	6a0e      	ldr	r6, [r1, #32]
    754c:	42b4      	cmp	r4, r6
    754e:	d062      	beq.n	7616 <rt_mut_release+0xee>
    7550:	2e00      	cmp	r6, #0
    7552:	d01a      	beq.n	758a <rt_mut_release+0x62>
    7554:	68f3      	ldr	r3, [r6, #12]
    7556:	429c      	cmp	r4, r3
    7558:	d03a      	beq.n	75d0 <rt_mut_release+0xa8>
    755a:	001a      	movs	r2, r3
    755c:	e003      	b.n	7566 <rt_mut_release+0x3e>
    755e:	68d0      	ldr	r0, [r2, #12]
    7560:	4284      	cmp	r4, r0
    7562:	d036      	beq.n	75d2 <rt_mut_release+0xaa>
    7564:	0002      	movs	r2, r0
    7566:	2a00      	cmp	r2, #0
    7568:	d1f9      	bne.n	755e <rt_mut_release+0x36>
    756a:	2224      	movs	r2, #36	; 0x24
    756c:	5c8f      	ldrb	r7, [r1, r2]
    756e:	6872      	ldr	r2, [r6, #4]
    7570:	2a00      	cmp	r2, #0
    7572:	d005      	beq.n	7580 <rt_mut_release+0x58>
    7574:	7892      	ldrb	r2, [r2, #2]
    7576:	1c10      	adds	r0, r2, #0
    7578:	42ba      	cmp	r2, r7
    757a:	d200      	bcs.n	757e <rt_mut_release+0x56>
    757c:	1c38      	adds	r0, r7, #0
    757e:	b2c7      	uxtb	r7, r0
    7580:	2b00      	cmp	r3, #0
    7582:	d004      	beq.n	758e <rt_mut_release+0x66>
    7584:	001e      	movs	r6, r3
    7586:	68db      	ldr	r3, [r3, #12]
    7588:	e7f1      	b.n	756e <rt_mut_release+0x46>
    758a:	2324      	movs	r3, #36	; 0x24
    758c:	5ccf      	ldrb	r7, [r1, r3]
    758e:	708f      	strb	r7, [r1, #2]
    7590:	6863      	ldr	r3, [r4, #4]
    7592:	2b00      	cmp	r3, #0
    7594:	d030      	beq.n	75f8 <rt_mut_release+0xd0>
    7596:	0020      	movs	r0, r4
    7598:	f000 faca 	bl	7b30 <rt_get_first>
    759c:	0006      	movs	r6, r0
    759e:	2100      	movs	r1, #0
    75a0:	f7ff fe94 	bl	72cc <rt_ret_val>
    75a4:	0030      	movs	r0, r6
    75a6:	f000 fbfb 	bl	7da0 <rt_rmv_dly>
    75aa:	2301      	movs	r3, #1
    75ac:	8063      	strh	r3, [r4, #2]
    75ae:	6a33      	ldr	r3, [r6, #32]
    75b0:	60a6      	str	r6, [r4, #8]
    75b2:	60e3      	str	r3, [r4, #12]
    75b4:	6234      	str	r4, [r6, #32]
    75b6:	4c1d      	ldr	r4, [pc, #116]	; (762c <rt_mut_release+0x104>)
    75b8:	6829      	ldr	r1, [r5, #0]
    75ba:	6863      	ldr	r3, [r4, #4]
    75bc:	788a      	ldrb	r2, [r1, #2]
    75be:	789b      	ldrb	r3, [r3, #2]
    75c0:	2701      	movs	r7, #1
    75c2:	429a      	cmp	r2, r3
    75c4:	d309      	bcc.n	75da <rt_mut_release+0xb2>
    75c6:	0030      	movs	r0, r6
    75c8:	f000 fea0 	bl	830c <rt_dispatch>
    75cc:	2000      	movs	r0, #0
    75ce:	e7b1      	b.n	7534 <rt_mut_release+0xc>
    75d0:	0032      	movs	r2, r6
    75d2:	68e3      	ldr	r3, [r4, #12]
    75d4:	60d3      	str	r3, [r2, #12]
    75d6:	68f3      	ldr	r3, [r6, #12]
    75d8:	e7c7      	b.n	756a <rt_mut_release+0x42>
    75da:	0020      	movs	r0, r4
    75dc:	f000 fa82 	bl	7ae4 <rt_put_prio>
    75e0:	0031      	movs	r1, r6
    75e2:	0020      	movs	r0, r4
    75e4:	f000 fa7e 	bl	7ae4 <rt_put_prio>
    75e8:	682b      	ldr	r3, [r5, #0]
    75ea:	2000      	movs	r0, #0
    75ec:	705f      	strb	r7, [r3, #1]
    75ee:	7077      	strb	r7, [r6, #1]
    75f0:	f000 fe8c 	bl	830c <rt_dispatch>
    75f4:	2000      	movs	r0, #0
    75f6:	e79d      	b.n	7534 <rt_mut_release+0xc>
    75f8:	480c      	ldr	r0, [pc, #48]	; (762c <rt_mut_release+0x104>)
    75fa:	6843      	ldr	r3, [r0, #4]
    75fc:	789b      	ldrb	r3, [r3, #2]
    75fe:	42bb      	cmp	r3, r7
    7600:	d9e4      	bls.n	75cc <rt_mut_release+0xa4>
    7602:	f000 fa6f 	bl	7ae4 <rt_put_prio>
    7606:	2201      	movs	r2, #1
    7608:	682b      	ldr	r3, [r5, #0]
    760a:	2000      	movs	r0, #0
    760c:	705a      	strb	r2, [r3, #1]
    760e:	f000 fe7d 	bl	830c <rt_dispatch>
    7612:	2000      	movs	r0, #0
    7614:	e78e      	b.n	7534 <rt_mut_release+0xc>
    7616:	2324      	movs	r3, #36	; 0x24
    7618:	68e6      	ldr	r6, [r4, #12]
    761a:	620e      	str	r6, [r1, #32]
    761c:	5ccf      	ldrb	r7, [r1, r3]
    761e:	2e00      	cmp	r6, #0
    7620:	d0b5      	beq.n	758e <rt_mut_release+0x66>
    7622:	68f3      	ldr	r3, [r6, #12]
    7624:	e7a3      	b.n	756e <rt_mut_release+0x46>
    7626:	46c0      	nop			; (mov r8, r8)
    7628:	200060b8 	.word	0x200060b8
    762c:	20006084 	.word	0x20006084

00007630 <rt_mut_wait>:
    7630:	b570      	push	{r4, r5, r6, lr}
    7632:	8843      	ldrh	r3, [r0, #2]
    7634:	0004      	movs	r4, r0
    7636:	000d      	movs	r5, r1
    7638:	2b00      	cmp	r3, #0
    763a:	d017      	beq.n	766c <rt_mut_wait+0x3c>
    763c:	4e19      	ldr	r6, [pc, #100]	; (76a4 <rt_mut_wait+0x74>)
    763e:	6882      	ldr	r2, [r0, #8]
    7640:	6831      	ldr	r1, [r6, #0]
    7642:	428a      	cmp	r2, r1
    7644:	d026      	beq.n	7694 <rt_mut_wait+0x64>
    7646:	2001      	movs	r0, #1
    7648:	2d00      	cmp	r5, #0
    764a:	d00e      	beq.n	766a <rt_mut_wait+0x3a>
    764c:	788b      	ldrb	r3, [r1, #2]
    764e:	7890      	ldrb	r0, [r2, #2]
    7650:	4298      	cmp	r0, r3
    7652:	d319      	bcc.n	7688 <rt_mut_wait+0x58>
    7654:	6863      	ldr	r3, [r4, #4]
    7656:	2b00      	cmp	r3, #0
    7658:	d012      	beq.n	7680 <rt_mut_wait+0x50>
    765a:	0020      	movs	r0, r4
    765c:	f000 fa42 	bl	7ae4 <rt_put_prio>
    7660:	0028      	movs	r0, r5
    7662:	2109      	movs	r1, #9
    7664:	f000 fe78 	bl	8358 <rt_block>
    7668:	2001      	movs	r0, #1
    766a:	bd70      	pop	{r4, r5, r6, pc}
    766c:	4b0d      	ldr	r3, [pc, #52]	; (76a4 <rt_mut_wait+0x74>)
    766e:	681b      	ldr	r3, [r3, #0]
    7670:	6a1a      	ldr	r2, [r3, #32]
    7672:	6083      	str	r3, [r0, #8]
    7674:	60c2      	str	r2, [r0, #12]
    7676:	6218      	str	r0, [r3, #32]
    7678:	2301      	movs	r3, #1
    767a:	8043      	strh	r3, [r0, #2]
    767c:	2000      	movs	r0, #0
    767e:	e7f4      	b.n	766a <rt_mut_wait+0x3a>
    7680:	6061      	str	r1, [r4, #4]
    7682:	604b      	str	r3, [r1, #4]
    7684:	608c      	str	r4, [r1, #8]
    7686:	e7eb      	b.n	7660 <rt_mut_wait+0x30>
    7688:	7093      	strb	r3, [r2, #2]
    768a:	68a0      	ldr	r0, [r4, #8]
    768c:	f000 fa80 	bl	7b90 <rt_resort_prio>
    7690:	6831      	ldr	r1, [r6, #0]
    7692:	e7df      	b.n	7654 <rt_mut_wait+0x24>
    7694:	4a04      	ldr	r2, [pc, #16]	; (76a8 <rt_mut_wait+0x78>)
    7696:	20ff      	movs	r0, #255	; 0xff
    7698:	4293      	cmp	r3, r2
    769a:	d0e6      	beq.n	766a <rt_mut_wait+0x3a>
    769c:	3301      	adds	r3, #1
    769e:	8063      	strh	r3, [r4, #2]
    76a0:	2000      	movs	r0, #0
    76a2:	e7e2      	b.n	766a <rt_mut_wait+0x3a>
    76a4:	200060b8 	.word	0x200060b8
    76a8:	0000ffff 	.word	0x0000ffff

000076ac <rt_time_get>:
    76ac:	4b01      	ldr	r3, [pc, #4]	; (76b4 <rt_time_get+0x8>)
    76ae:	6818      	ldr	r0, [r3, #0]
    76b0:	4770      	bx	lr
    76b2:	46c0      	nop			; (mov r8, r8)
    76b4:	20006080 	.word	0x20006080

000076b8 <rt_dly_wait>:
    76b8:	b510      	push	{r4, lr}
    76ba:	2103      	movs	r1, #3
    76bc:	f000 fe4c 	bl	8358 <rt_block>
    76c0:	bd10      	pop	{r4, pc}
    76c2:	46c0      	nop			; (mov r8, r8)

000076c4 <rt_itv_set>:
    76c4:	4b03      	ldr	r3, [pc, #12]	; (76d4 <rt_itv_set+0x10>)
    76c6:	681a      	ldr	r2, [r3, #0]
    76c8:	4b03      	ldr	r3, [pc, #12]	; (76d8 <rt_itv_set+0x14>)
    76ca:	82d0      	strh	r0, [r2, #22]
    76cc:	681b      	ldr	r3, [r3, #0]
    76ce:	18c0      	adds	r0, r0, r3
    76d0:	8290      	strh	r0, [r2, #20]
    76d2:	4770      	bx	lr
    76d4:	200060b8 	.word	0x200060b8
    76d8:	20006080 	.word	0x20006080

000076dc <rt_itv_wait>:
    76dc:	b510      	push	{r4, lr}
    76de:	4b08      	ldr	r3, [pc, #32]	; (7700 <rt_itv_wait+0x24>)
    76e0:	681a      	ldr	r2, [r3, #0]
    76e2:	4b08      	ldr	r3, [pc, #32]	; (7704 <rt_itv_wait+0x28>)
    76e4:	8a90      	ldrh	r0, [r2, #20]
    76e6:	681b      	ldr	r3, [r3, #0]
    76e8:	8ad1      	ldrh	r1, [r2, #22]
    76ea:	1ac3      	subs	r3, r0, r3
    76ec:	1841      	adds	r1, r0, r1
    76ee:	8291      	strh	r1, [r2, #20]
    76f0:	b298      	uxth	r0, r3
    76f2:	041b      	lsls	r3, r3, #16
    76f4:	d402      	bmi.n	76fc <rt_itv_wait+0x20>
    76f6:	2104      	movs	r1, #4
    76f8:	f000 fe2e 	bl	8358 <rt_block>
    76fc:	bd10      	pop	{r4, pc}
    76fe:	46c0      	nop			; (mov r8, r8)
    7700:	200060b8 	.word	0x200060b8
    7704:	20006080 	.word	0x20006080

00007708 <rt_sem_init>:
    7708:	2302      	movs	r3, #2
    770a:	7003      	strb	r3, [r0, #0]
    770c:	2300      	movs	r3, #0
    770e:	8041      	strh	r1, [r0, #2]
    7710:	6043      	str	r3, [r0, #4]
    7712:	4770      	bx	lr

00007714 <rt_sem_delete>:
    7714:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7716:	6843      	ldr	r3, [r0, #4]
    7718:	0005      	movs	r5, r0
    771a:	4e16      	ldr	r6, [pc, #88]	; (7774 <rt_sem_delete+0x60>)
    771c:	2b00      	cmp	r3, #0
    771e:	d012      	beq.n	7746 <rt_sem_delete+0x32>
    7720:	2701      	movs	r7, #1
    7722:	0028      	movs	r0, r5
    7724:	f000 fa04 	bl	7b30 <rt_get_first>
    7728:	0004      	movs	r4, r0
    772a:	2100      	movs	r1, #0
    772c:	f7ff fdce 	bl	72cc <rt_ret_val>
    7730:	0020      	movs	r0, r4
    7732:	f000 fb35 	bl	7da0 <rt_rmv_dly>
    7736:	7067      	strb	r7, [r4, #1]
    7738:	0021      	movs	r1, r4
    773a:	0030      	movs	r0, r6
    773c:	f000 f9d2 	bl	7ae4 <rt_put_prio>
    7740:	686b      	ldr	r3, [r5, #4]
    7742:	2b00      	cmp	r3, #0
    7744:	d1ed      	bne.n	7722 <rt_sem_delete+0xe>
    7746:	6873      	ldr	r3, [r6, #4]
    7748:	2b00      	cmp	r3, #0
    774a:	d00e      	beq.n	776a <rt_sem_delete+0x56>
    774c:	4c0a      	ldr	r4, [pc, #40]	; (7778 <rt_sem_delete+0x64>)
    774e:	789a      	ldrb	r2, [r3, #2]
    7750:	6821      	ldr	r1, [r4, #0]
    7752:	788b      	ldrb	r3, [r1, #2]
    7754:	429a      	cmp	r2, r3
    7756:	d908      	bls.n	776a <rt_sem_delete+0x56>
    7758:	0030      	movs	r0, r6
    775a:	f000 f9c3 	bl	7ae4 <rt_put_prio>
    775e:	2201      	movs	r2, #1
    7760:	6823      	ldr	r3, [r4, #0]
    7762:	2000      	movs	r0, #0
    7764:	705a      	strb	r2, [r3, #1]
    7766:	f000 fdd1 	bl	830c <rt_dispatch>
    776a:	2300      	movs	r3, #0
    776c:	2000      	movs	r0, #0
    776e:	702b      	strb	r3, [r5, #0]
    7770:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7772:	46c0      	nop			; (mov r8, r8)
    7774:	20006084 	.word	0x20006084
    7778:	200060b8 	.word	0x200060b8

0000777c <rt_sem_send>:
    777c:	6843      	ldr	r3, [r0, #4]
    777e:	b510      	push	{r4, lr}
    7780:	2b00      	cmp	r3, #0
    7782:	d00d      	beq.n	77a0 <rt_sem_send+0x24>
    7784:	f000 f9d4 	bl	7b30 <rt_get_first>
    7788:	0004      	movs	r4, r0
    778a:	2101      	movs	r1, #1
    778c:	f7ff fd9e 	bl	72cc <rt_ret_val>
    7790:	0020      	movs	r0, r4
    7792:	f000 fb05 	bl	7da0 <rt_rmv_dly>
    7796:	0020      	movs	r0, r4
    7798:	f000 fdb8 	bl	830c <rt_dispatch>
    779c:	2000      	movs	r0, #0
    779e:	bd10      	pop	{r4, pc}
    77a0:	8843      	ldrh	r3, [r0, #2]
    77a2:	3301      	adds	r3, #1
    77a4:	8043      	strh	r3, [r0, #2]
    77a6:	e7f9      	b.n	779c <rt_sem_send+0x20>

000077a8 <rt_sem_wait>:
    77a8:	b510      	push	{r4, lr}
    77aa:	8843      	ldrh	r3, [r0, #2]
    77ac:	000c      	movs	r4, r1
    77ae:	2b00      	cmp	r3, #0
    77b0:	d110      	bne.n	77d4 <rt_sem_wait+0x2c>
    77b2:	2301      	movs	r3, #1
    77b4:	2900      	cmp	r1, #0
    77b6:	d00b      	beq.n	77d0 <rt_sem_wait+0x28>
    77b8:	6843      	ldr	r3, [r0, #4]
    77ba:	2b00      	cmp	r3, #0
    77bc:	d00e      	beq.n	77dc <rt_sem_wait+0x34>
    77be:	4b0a      	ldr	r3, [pc, #40]	; (77e8 <rt_sem_wait+0x40>)
    77c0:	6819      	ldr	r1, [r3, #0]
    77c2:	f000 f98f 	bl	7ae4 <rt_put_prio>
    77c6:	2107      	movs	r1, #7
    77c8:	0020      	movs	r0, r4
    77ca:	f000 fdc5 	bl	8358 <rt_block>
    77ce:	2301      	movs	r3, #1
    77d0:	0018      	movs	r0, r3
    77d2:	bd10      	pop	{r4, pc}
    77d4:	3b01      	subs	r3, #1
    77d6:	8043      	strh	r3, [r0, #2]
    77d8:	2300      	movs	r3, #0
    77da:	e7f9      	b.n	77d0 <rt_sem_wait+0x28>
    77dc:	4a02      	ldr	r2, [pc, #8]	; (77e8 <rt_sem_wait+0x40>)
    77de:	6812      	ldr	r2, [r2, #0]
    77e0:	6042      	str	r2, [r0, #4]
    77e2:	6053      	str	r3, [r2, #4]
    77e4:	6090      	str	r0, [r2, #8]
    77e6:	e7ee      	b.n	77c6 <rt_sem_wait+0x1e>
    77e8:	200060b8 	.word	0x200060b8

000077ec <isr_sem_send>:
    77ec:	b510      	push	{r4, lr}
    77ee:	2100      	movs	r1, #0
    77f0:	f000 faec 	bl	7dcc <rt_psq_enq>
    77f4:	f000 fcce 	bl	8194 <rt_psh_req>
    77f8:	bd10      	pop	{r4, pc}
    77fa:	46c0      	nop			; (mov r8, r8)

000077fc <rt_sem_psh>:
    77fc:	6843      	ldr	r3, [r0, #4]
    77fe:	b510      	push	{r4, lr}
    7800:	2b00      	cmp	r3, #0
    7802:	d00f      	beq.n	7824 <rt_sem_psh+0x28>
    7804:	f000 f994 	bl	7b30 <rt_get_first>
    7808:	0004      	movs	r4, r0
    780a:	f000 fac9 	bl	7da0 <rt_rmv_dly>
    780e:	2301      	movs	r3, #1
    7810:	2101      	movs	r1, #1
    7812:	0020      	movs	r0, r4
    7814:	7063      	strb	r3, [r4, #1]
    7816:	f7ff fd59 	bl	72cc <rt_ret_val>
    781a:	0021      	movs	r1, r4
    781c:	4803      	ldr	r0, [pc, #12]	; (782c <rt_sem_psh+0x30>)
    781e:	f000 f961 	bl	7ae4 <rt_put_prio>
    7822:	bd10      	pop	{r4, pc}
    7824:	8843      	ldrh	r3, [r0, #2]
    7826:	3301      	adds	r3, #1
    7828:	8043      	strh	r3, [r0, #2]
    782a:	e7fa      	b.n	7822 <rt_sem_psh+0x26>
    782c:	20006084 	.word	0x20006084

00007830 <rt_mbx_init>:
    7830:	2301      	movs	r3, #1
    7832:	7003      	strb	r3, [r0, #0]
    7834:	2300      	movs	r3, #0
    7836:	3910      	subs	r1, #16
    7838:	0889      	lsrs	r1, r1, #2
    783a:	7043      	strb	r3, [r0, #1]
    783c:	7083      	strb	r3, [r0, #2]
    783e:	6043      	str	r3, [r0, #4]
    7840:	8103      	strh	r3, [r0, #8]
    7842:	8143      	strh	r3, [r0, #10]
    7844:	8183      	strh	r3, [r0, #12]
    7846:	81c1      	strh	r1, [r0, #14]
    7848:	4770      	bx	lr
    784a:	46c0      	nop			; (mov r8, r8)

0000784c <rt_mbx_send>:
    784c:	6843      	ldr	r3, [r0, #4]
    784e:	b570      	push	{r4, r5, r6, lr}
    7850:	000d      	movs	r5, r1
    7852:	0016      	movs	r6, r2
    7854:	2b00      	cmp	r3, #0
    7856:	d002      	beq.n	785e <rt_mbx_send+0x12>
    7858:	7842      	ldrb	r2, [r0, #1]
    785a:	2a01      	cmp	r2, #1
    785c:	d028      	beq.n	78b0 <rt_mbx_send+0x64>
    785e:	8982      	ldrh	r2, [r0, #12]
    7860:	89c4      	ldrh	r4, [r0, #14]
    7862:	42a2      	cmp	r2, r4
    7864:	d013      	beq.n	788e <rt_mbx_send+0x42>
    7866:	8903      	ldrh	r3, [r0, #8]
    7868:	1d19      	adds	r1, r3, #4
    786a:	0089      	lsls	r1, r1, #2
    786c:	500d      	str	r5, [r1, r0]
    786e:	f3ef 8110 	mrs	r1, PRIMASK
    7872:	b672      	cpsid	i
    7874:	3201      	adds	r2, #1
    7876:	8182      	strh	r2, [r0, #12]
    7878:	b662      	cpsie	i
    787a:	3301      	adds	r3, #1
    787c:	b29b      	uxth	r3, r3
    787e:	429c      	cmp	r4, r3
    7880:	d003      	beq.n	788a <rt_mbx_send+0x3e>
    7882:	2200      	movs	r2, #0
    7884:	8103      	strh	r3, [r0, #8]
    7886:	0010      	movs	r0, r2
    7888:	bd70      	pop	{r4, r5, r6, pc}
    788a:	2300      	movs	r3, #0
    788c:	e7f9      	b.n	7882 <rt_mbx_send+0x36>
    788e:	2201      	movs	r2, #1
    7890:	2e00      	cmp	r6, #0
    7892:	d0f8      	beq.n	7886 <rt_mbx_send+0x3a>
    7894:	2b00      	cmp	r3, #0
    7896:	d01a      	beq.n	78ce <rt_mbx_send+0x82>
    7898:	4c11      	ldr	r4, [pc, #68]	; (78e0 <rt_mbx_send+0x94>)
    789a:	6821      	ldr	r1, [r4, #0]
    789c:	f000 f922 	bl	7ae4 <rt_put_prio>
    78a0:	6822      	ldr	r2, [r4, #0]
    78a2:	61d5      	str	r5, [r2, #28]
    78a4:	2108      	movs	r1, #8
    78a6:	0030      	movs	r0, r6
    78a8:	f000 fd56 	bl	8358 <rt_block>
    78ac:	2201      	movs	r2, #1
    78ae:	e7ea      	b.n	7886 <rt_mbx_send+0x3a>
    78b0:	f000 f93e 	bl	7b30 <rt_get_first>
    78b4:	0004      	movs	r4, r0
    78b6:	002a      	movs	r2, r5
    78b8:	2110      	movs	r1, #16
    78ba:	f7ff fd0b 	bl	72d4 <rt_ret_val2>
    78be:	0020      	movs	r0, r4
    78c0:	f000 fa6e 	bl	7da0 <rt_rmv_dly>
    78c4:	0020      	movs	r0, r4
    78c6:	f000 fd21 	bl	830c <rt_dispatch>
    78ca:	2200      	movs	r2, #0
    78cc:	e7db      	b.n	7886 <rt_mbx_send+0x3a>
    78ce:	4a04      	ldr	r2, [pc, #16]	; (78e0 <rt_mbx_send+0x94>)
    78d0:	6812      	ldr	r2, [r2, #0]
    78d2:	6042      	str	r2, [r0, #4]
    78d4:	6053      	str	r3, [r2, #4]
    78d6:	2302      	movs	r3, #2
    78d8:	6090      	str	r0, [r2, #8]
    78da:	7043      	strb	r3, [r0, #1]
    78dc:	e7e1      	b.n	78a2 <rt_mbx_send+0x56>
    78de:	46c0      	nop			; (mov r8, r8)
    78e0:	200060b8 	.word	0x200060b8

000078e4 <rt_mbx_wait>:
    78e4:	b570      	push	{r4, r5, r6, lr}
    78e6:	0015      	movs	r5, r2
    78e8:	8982      	ldrh	r2, [r0, #12]
    78ea:	0004      	movs	r4, r0
    78ec:	2a00      	cmp	r2, #0
    78ee:	d018      	beq.n	7922 <rt_mbx_wait+0x3e>
    78f0:	8943      	ldrh	r3, [r0, #10]
    78f2:	1d18      	adds	r0, r3, #4
    78f4:	0080      	lsls	r0, r0, #2
    78f6:	5900      	ldr	r0, [r0, r4]
    78f8:	3301      	adds	r3, #1
    78fa:	6008      	str	r0, [r1, #0]
    78fc:	89e1      	ldrh	r1, [r4, #14]
    78fe:	b29b      	uxth	r3, r3
    7900:	8163      	strh	r3, [r4, #10]
    7902:	4299      	cmp	r1, r3
    7904:	d01e      	beq.n	7944 <rt_mbx_wait+0x60>
    7906:	6863      	ldr	r3, [r4, #4]
    7908:	2b00      	cmp	r3, #0
    790a:	d002      	beq.n	7912 <rt_mbx_wait+0x2e>
    790c:	7863      	ldrb	r3, [r4, #1]
    790e:	2b02      	cmp	r3, #2
    7910:	d025      	beq.n	795e <rt_mbx_wait+0x7a>
    7912:	f3ef 8310 	mrs	r3, PRIMASK
    7916:	b672      	cpsid	i
    7918:	3a01      	subs	r2, #1
    791a:	81a2      	strh	r2, [r4, #12]
    791c:	b662      	cpsie	i
    791e:	2000      	movs	r0, #0
    7920:	bd70      	pop	{r4, r5, r6, pc}
    7922:	2001      	movs	r0, #1
    7924:	2d00      	cmp	r5, #0
    7926:	d0fb      	beq.n	7920 <rt_mbx_wait+0x3c>
    7928:	6863      	ldr	r3, [r4, #4]
    792a:	2b00      	cmp	r3, #0
    792c:	d010      	beq.n	7950 <rt_mbx_wait+0x6c>
    792e:	4b1a      	ldr	r3, [pc, #104]	; (7998 <rt_mbx_wait+0xb4>)
    7930:	0020      	movs	r0, r4
    7932:	6819      	ldr	r1, [r3, #0]
    7934:	f000 f8d6 	bl	7ae4 <rt_put_prio>
    7938:	0028      	movs	r0, r5
    793a:	2108      	movs	r1, #8
    793c:	f000 fd0c 	bl	8358 <rt_block>
    7940:	2001      	movs	r0, #1
    7942:	e7ed      	b.n	7920 <rt_mbx_wait+0x3c>
    7944:	2300      	movs	r3, #0
    7946:	8163      	strh	r3, [r4, #10]
    7948:	6863      	ldr	r3, [r4, #4]
    794a:	2b00      	cmp	r3, #0
    794c:	d1de      	bne.n	790c <rt_mbx_wait+0x28>
    794e:	e7e0      	b.n	7912 <rt_mbx_wait+0x2e>
    7950:	4a11      	ldr	r2, [pc, #68]	; (7998 <rt_mbx_wait+0xb4>)
    7952:	6812      	ldr	r2, [r2, #0]
    7954:	6062      	str	r2, [r4, #4]
    7956:	6053      	str	r3, [r2, #4]
    7958:	6094      	str	r4, [r2, #8]
    795a:	7060      	strb	r0, [r4, #1]
    795c:	e7ec      	b.n	7938 <rt_mbx_wait+0x54>
    795e:	0020      	movs	r0, r4
    7960:	f000 f8e6 	bl	7b30 <rt_get_first>
    7964:	0005      	movs	r5, r0
    7966:	2100      	movs	r1, #0
    7968:	f7ff fcb0 	bl	72cc <rt_ret_val>
    796c:	8923      	ldrh	r3, [r4, #8]
    796e:	69e9      	ldr	r1, [r5, #28]
    7970:	1d1a      	adds	r2, r3, #4
    7972:	0092      	lsls	r2, r2, #2
    7974:	5111      	str	r1, [r2, r4]
    7976:	3301      	adds	r3, #1
    7978:	89e2      	ldrh	r2, [r4, #14]
    797a:	b29b      	uxth	r3, r3
    797c:	8123      	strh	r3, [r4, #8]
    797e:	429a      	cmp	r2, r3
    7980:	d101      	bne.n	7986 <rt_mbx_wait+0xa2>
    7982:	2300      	movs	r3, #0
    7984:	8123      	strh	r3, [r4, #8]
    7986:	0028      	movs	r0, r5
    7988:	f000 fa0a 	bl	7da0 <rt_rmv_dly>
    798c:	0028      	movs	r0, r5
    798e:	f000 fcbd 	bl	830c <rt_dispatch>
    7992:	2000      	movs	r0, #0
    7994:	e7c4      	b.n	7920 <rt_mbx_wait+0x3c>
    7996:	46c0      	nop			; (mov r8, r8)
    7998:	200060b8 	.word	0x200060b8

0000799c <rt_mbx_check>:
    799c:	89c3      	ldrh	r3, [r0, #14]
    799e:	8980      	ldrh	r0, [r0, #12]
    79a0:	1a18      	subs	r0, r3, r0
    79a2:	4770      	bx	lr

000079a4 <isr_mbx_send>:
    79a4:	b510      	push	{r4, lr}
    79a6:	f000 fa11 	bl	7dcc <rt_psq_enq>
    79aa:	f000 fbf3 	bl	8194 <rt_psh_req>
    79ae:	bd10      	pop	{r4, pc}

000079b0 <isr_mbx_receive>:
    79b0:	b510      	push	{r4, lr}
    79b2:	8982      	ldrh	r2, [r0, #12]
    79b4:	0004      	movs	r4, r0
    79b6:	2000      	movs	r0, #0
    79b8:	2a00      	cmp	r2, #0
    79ba:	d017      	beq.n	79ec <isr_mbx_receive+0x3c>
    79bc:	8963      	ldrh	r3, [r4, #10]
    79be:	1d18      	adds	r0, r3, #4
    79c0:	0080      	lsls	r0, r0, #2
    79c2:	5900      	ldr	r0, [r0, r4]
    79c4:	6008      	str	r0, [r1, #0]
    79c6:	6861      	ldr	r1, [r4, #4]
    79c8:	2900      	cmp	r1, #0
    79ca:	d002      	beq.n	79d2 <isr_mbx_receive+0x22>
    79cc:	7861      	ldrb	r1, [r4, #1]
    79ce:	2902      	cmp	r1, #2
    79d0:	d010      	beq.n	79f4 <isr_mbx_receive+0x44>
    79d2:	f3ef 8110 	mrs	r1, PRIMASK
    79d6:	b672      	cpsid	i
    79d8:	3a01      	subs	r2, #1
    79da:	81a2      	strh	r2, [r4, #12]
    79dc:	b662      	cpsie	i
    79de:	3301      	adds	r3, #1
    79e0:	89e2      	ldrh	r2, [r4, #14]
    79e2:	b29b      	uxth	r3, r3
    79e4:	8163      	strh	r3, [r4, #10]
    79e6:	2004      	movs	r0, #4
    79e8:	429a      	cmp	r2, r3
    79ea:	d000      	beq.n	79ee <isr_mbx_receive+0x3e>
    79ec:	bd10      	pop	{r4, pc}
    79ee:	2300      	movs	r3, #0
    79f0:	8163      	strh	r3, [r4, #10]
    79f2:	e7fb      	b.n	79ec <isr_mbx_receive+0x3c>
    79f4:	2100      	movs	r1, #0
    79f6:	0020      	movs	r0, r4
    79f8:	f000 f9e8 	bl	7dcc <rt_psq_enq>
    79fc:	f000 fbca 	bl	8194 <rt_psh_req>
    7a00:	89a2      	ldrh	r2, [r4, #12]
    7a02:	8963      	ldrh	r3, [r4, #10]
    7a04:	e7e5      	b.n	79d2 <isr_mbx_receive+0x22>
    7a06:	46c0      	nop			; (mov r8, r8)

00007a08 <rt_mbx_psh>:
    7a08:	6843      	ldr	r3, [r0, #4]
    7a0a:	b570      	push	{r4, r5, r6, lr}
    7a0c:	0004      	movs	r4, r0
    7a0e:	000e      	movs	r6, r1
    7a10:	2b00      	cmp	r3, #0
    7a12:	d04b      	beq.n	7aac <rt_mbx_psh+0xa4>
    7a14:	7845      	ldrb	r5, [r0, #1]
    7a16:	2d02      	cmp	r5, #2
    7a18:	d023      	beq.n	7a62 <rt_mbx_psh+0x5a>
    7a1a:	2d03      	cmp	r5, #3
    7a1c:	d002      	beq.n	7a24 <rt_mbx_psh+0x1c>
    7a1e:	2d01      	cmp	r5, #1
    7a20:	d00f      	beq.n	7a42 <rt_mbx_psh+0x3a>
    7a22:	bd70      	pop	{r4, r5, r6, pc}
    7a24:	0008      	movs	r0, r1
    7a26:	f7ff fcd3 	bl	73d0 <rt_alloc_box>
    7a2a:	1e05      	subs	r5, r0, #0
    7a2c:	d0f9      	beq.n	7a22 <rt_mbx_psh+0x1a>
    7a2e:	0020      	movs	r0, r4
    7a30:	f000 f87e 	bl	7b30 <rt_get_first>
    7a34:	0029      	movs	r1, r5
    7a36:	0004      	movs	r4, r0
    7a38:	f7ff fc48 	bl	72cc <rt_ret_val>
    7a3c:	2301      	movs	r3, #1
    7a3e:	7063      	strb	r3, [r4, #1]
    7a40:	e007      	b.n	7a52 <rt_mbx_psh+0x4a>
    7a42:	f000 f875 	bl	7b30 <rt_get_first>
    7a46:	0004      	movs	r4, r0
    7a48:	0032      	movs	r2, r6
    7a4a:	2110      	movs	r1, #16
    7a4c:	f7ff fc42 	bl	72d4 <rt_ret_val2>
    7a50:	7065      	strb	r5, [r4, #1]
    7a52:	0020      	movs	r0, r4
    7a54:	f000 f9a4 	bl	7da0 <rt_rmv_dly>
    7a58:	0021      	movs	r1, r4
    7a5a:	4821      	ldr	r0, [pc, #132]	; (7ae0 <rt_mbx_psh+0xd8>)
    7a5c:	f000 f842 	bl	7ae4 <rt_put_prio>
    7a60:	e7df      	b.n	7a22 <rt_mbx_psh+0x1a>
    7a62:	f000 f865 	bl	7b30 <rt_get_first>
    7a66:	0005      	movs	r5, r0
    7a68:	2100      	movs	r1, #0
    7a6a:	f7ff fc2f 	bl	72cc <rt_ret_val>
    7a6e:	8923      	ldrh	r3, [r4, #8]
    7a70:	69e9      	ldr	r1, [r5, #28]
    7a72:	1d1a      	adds	r2, r3, #4
    7a74:	0092      	lsls	r2, r2, #2
    7a76:	5111      	str	r1, [r2, r4]
    7a78:	f3ef 8210 	mrs	r2, PRIMASK
    7a7c:	b672      	cpsid	i
    7a7e:	89a2      	ldrh	r2, [r4, #12]
    7a80:	3201      	adds	r2, #1
    7a82:	81a2      	strh	r2, [r4, #12]
    7a84:	b662      	cpsie	i
    7a86:	3301      	adds	r3, #1
    7a88:	89e2      	ldrh	r2, [r4, #14]
    7a8a:	b29b      	uxth	r3, r3
    7a8c:	8123      	strh	r3, [r4, #8]
    7a8e:	429a      	cmp	r2, r3
    7a90:	d009      	beq.n	7aa6 <rt_mbx_psh+0x9e>
    7a92:	2301      	movs	r3, #1
    7a94:	0028      	movs	r0, r5
    7a96:	706b      	strb	r3, [r5, #1]
    7a98:	f000 f982 	bl	7da0 <rt_rmv_dly>
    7a9c:	0029      	movs	r1, r5
    7a9e:	4810      	ldr	r0, [pc, #64]	; (7ae0 <rt_mbx_psh+0xd8>)
    7aa0:	f000 f820 	bl	7ae4 <rt_put_prio>
    7aa4:	e7bd      	b.n	7a22 <rt_mbx_psh+0x1a>
    7aa6:	2300      	movs	r3, #0
    7aa8:	8123      	strh	r3, [r4, #8]
    7aaa:	e7f2      	b.n	7a92 <rt_mbx_psh+0x8a>
    7aac:	8981      	ldrh	r1, [r0, #12]
    7aae:	89c5      	ldrh	r5, [r0, #14]
    7ab0:	42a9      	cmp	r1, r5
    7ab2:	d20f      	bcs.n	7ad4 <rt_mbx_psh+0xcc>
    7ab4:	8902      	ldrh	r2, [r0, #8]
    7ab6:	1d10      	adds	r0, r2, #4
    7ab8:	0080      	lsls	r0, r0, #2
    7aba:	5106      	str	r6, [r0, r4]
    7abc:	f3ef 8010 	mrs	r0, PRIMASK
    7ac0:	b672      	cpsid	i
    7ac2:	3101      	adds	r1, #1
    7ac4:	81a1      	strh	r1, [r4, #12]
    7ac6:	b662      	cpsie	i
    7ac8:	3201      	adds	r2, #1
    7aca:	b292      	uxth	r2, r2
    7acc:	4295      	cmp	r5, r2
    7ace:	d005      	beq.n	7adc <rt_mbx_psh+0xd4>
    7ad0:	8122      	strh	r2, [r4, #8]
    7ad2:	e7a6      	b.n	7a22 <rt_mbx_psh+0x1a>
    7ad4:	2003      	movs	r0, #3
    7ad6:	f7f9 ff51 	bl	197c <os_error>
    7ada:	e7a2      	b.n	7a22 <rt_mbx_psh+0x1a>
    7adc:	8123      	strh	r3, [r4, #8]
    7ade:	e7a0      	b.n	7a22 <rt_mbx_psh+0x1a>
    7ae0:	20006084 	.word	0x20006084

00007ae4 <rt_put_prio>:
    7ae4:	b530      	push	{r4, r5, lr}
    7ae6:	7805      	ldrb	r5, [r0, #0]
    7ae8:	6842      	ldr	r2, [r0, #4]
    7aea:	3d01      	subs	r5, #1
    7aec:	b2ed      	uxtb	r5, r5
    7aee:	788c      	ldrb	r4, [r1, #2]
    7af0:	2a00      	cmp	r2, #0
    7af2:	d01a      	beq.n	7b2a <rt_put_prio+0x46>
    7af4:	7893      	ldrb	r3, [r2, #2]
    7af6:	42a3      	cmp	r3, r4
    7af8:	d204      	bcs.n	7b04 <rt_put_prio+0x20>
    7afa:	e00e      	b.n	7b1a <rt_put_prio+0x36>
    7afc:	7898      	ldrb	r0, [r3, #2]
    7afe:	4284      	cmp	r4, r0
    7b00:	d80d      	bhi.n	7b1e <rt_put_prio+0x3a>
    7b02:	001a      	movs	r2, r3
    7b04:	6853      	ldr	r3, [r2, #4]
    7b06:	2b00      	cmp	r3, #0
    7b08:	d1f8      	bne.n	7afc <rt_put_prio+0x18>
    7b0a:	2300      	movs	r3, #0
    7b0c:	604b      	str	r3, [r1, #4]
    7b0e:	6051      	str	r1, [r2, #4]
    7b10:	2d02      	cmp	r5, #2
    7b12:	d900      	bls.n	7b16 <rt_put_prio+0x32>
    7b14:	2200      	movs	r2, #0
    7b16:	608a      	str	r2, [r1, #8]
    7b18:	bd30      	pop	{r4, r5, pc}
    7b1a:	0013      	movs	r3, r2
    7b1c:	0002      	movs	r2, r0
    7b1e:	604b      	str	r3, [r1, #4]
    7b20:	6051      	str	r1, [r2, #4]
    7b22:	2d02      	cmp	r5, #2
    7b24:	d8f6      	bhi.n	7b14 <rt_put_prio+0x30>
    7b26:	6099      	str	r1, [r3, #8]
    7b28:	e7f5      	b.n	7b16 <rt_put_prio+0x32>
    7b2a:	0002      	movs	r2, r0
    7b2c:	e7ed      	b.n	7b0a <rt_put_prio+0x26>
    7b2e:	46c0      	nop			; (mov r8, r8)

00007b30 <rt_get_first>:
    7b30:	6843      	ldr	r3, [r0, #4]
    7b32:	7802      	ldrb	r2, [r0, #0]
    7b34:	6859      	ldr	r1, [r3, #4]
    7b36:	3a01      	subs	r2, #1
    7b38:	6041      	str	r1, [r0, #4]
    7b3a:	2a02      	cmp	r2, #2
    7b3c:	d808      	bhi.n	7b50 <rt_get_first+0x20>
    7b3e:	2900      	cmp	r1, #0
    7b40:	d002      	beq.n	7b48 <rt_get_first+0x18>
    7b42:	2200      	movs	r2, #0
    7b44:	6088      	str	r0, [r1, #8]
    7b46:	605a      	str	r2, [r3, #4]
    7b48:	2200      	movs	r2, #0
    7b4a:	609a      	str	r2, [r3, #8]
    7b4c:	0018      	movs	r0, r3
    7b4e:	4770      	bx	lr
    7b50:	2200      	movs	r2, #0
    7b52:	605a      	str	r2, [r3, #4]
    7b54:	e7fa      	b.n	7b4c <rt_get_first+0x1c>
    7b56:	46c0      	nop			; (mov r8, r8)

00007b58 <rt_put_rdy_first>:
    7b58:	4b03      	ldr	r3, [pc, #12]	; (7b68 <rt_put_rdy_first+0x10>)
    7b5a:	685a      	ldr	r2, [r3, #4]
    7b5c:	6042      	str	r2, [r0, #4]
    7b5e:	2200      	movs	r2, #0
    7b60:	6058      	str	r0, [r3, #4]
    7b62:	6082      	str	r2, [r0, #8]
    7b64:	4770      	bx	lr
    7b66:	46c0      	nop			; (mov r8, r8)
    7b68:	20006084 	.word	0x20006084

00007b6c <rt_get_same_rdy_prio>:
    7b6c:	4b06      	ldr	r3, [pc, #24]	; (7b88 <rt_get_same_rdy_prio+0x1c>)
    7b6e:	4a07      	ldr	r2, [pc, #28]	; (7b8c <rt_get_same_rdy_prio+0x20>)
    7b70:	6858      	ldr	r0, [r3, #4]
    7b72:	6812      	ldr	r2, [r2, #0]
    7b74:	7881      	ldrb	r1, [r0, #2]
    7b76:	7892      	ldrb	r2, [r2, #2]
    7b78:	4291      	cmp	r1, r2
    7b7a:	d102      	bne.n	7b82 <rt_get_same_rdy_prio+0x16>
    7b7c:	6842      	ldr	r2, [r0, #4]
    7b7e:	605a      	str	r2, [r3, #4]
    7b80:	4770      	bx	lr
    7b82:	2000      	movs	r0, #0
    7b84:	e7fc      	b.n	7b80 <rt_get_same_rdy_prio+0x14>
    7b86:	46c0      	nop			; (mov r8, r8)
    7b88:	20006084 	.word	0x20006084
    7b8c:	200060b8 	.word	0x200060b8

00007b90 <rt_resort_prio>:
    7b90:	6881      	ldr	r1, [r0, #8]
    7b92:	b530      	push	{r4, r5, lr}
    7b94:	2900      	cmp	r1, #0
    7b96:	d030      	beq.n	7bfa <rt_resort_prio+0x6a>
    7b98:	780b      	ldrb	r3, [r1, #0]
    7b9a:	000a      	movs	r2, r1
    7b9c:	2b00      	cmp	r3, #0
    7b9e:	d103      	bne.n	7ba8 <rt_resort_prio+0x18>
    7ba0:	6892      	ldr	r2, [r2, #8]
    7ba2:	7813      	ldrb	r3, [r2, #0]
    7ba4:	2b00      	cmp	r3, #0
    7ba6:	d0fb      	beq.n	7ba0 <rt_resort_prio+0x10>
    7ba8:	6843      	ldr	r3, [r0, #4]
    7baa:	604b      	str	r3, [r1, #4]
    7bac:	6843      	ldr	r3, [r0, #4]
    7bae:	2b00      	cmp	r3, #0
    7bb0:	d000      	beq.n	7bb4 <rt_resort_prio+0x24>
    7bb2:	6099      	str	r1, [r3, #8]
    7bb4:	7815      	ldrb	r5, [r2, #0]
    7bb6:	6851      	ldr	r1, [r2, #4]
    7bb8:	3d01      	subs	r5, #1
    7bba:	b2ed      	uxtb	r5, r5
    7bbc:	7884      	ldrb	r4, [r0, #2]
    7bbe:	2900      	cmp	r1, #0
    7bc0:	d029      	beq.n	7c16 <rt_resort_prio+0x86>
    7bc2:	788b      	ldrb	r3, [r1, #2]
    7bc4:	42a3      	cmp	r3, r4
    7bc6:	d204      	bcs.n	7bd2 <rt_resort_prio+0x42>
    7bc8:	e00e      	b.n	7be8 <rt_resort_prio+0x58>
    7bca:	789a      	ldrb	r2, [r3, #2]
    7bcc:	4294      	cmp	r4, r2
    7bce:	d80d      	bhi.n	7bec <rt_resort_prio+0x5c>
    7bd0:	0019      	movs	r1, r3
    7bd2:	684b      	ldr	r3, [r1, #4]
    7bd4:	2b00      	cmp	r3, #0
    7bd6:	d1f8      	bne.n	7bca <rt_resort_prio+0x3a>
    7bd8:	2300      	movs	r3, #0
    7bda:	6043      	str	r3, [r0, #4]
    7bdc:	6048      	str	r0, [r1, #4]
    7bde:	2d02      	cmp	r5, #2
    7be0:	d909      	bls.n	7bf6 <rt_resort_prio+0x66>
    7be2:	2300      	movs	r3, #0
    7be4:	6083      	str	r3, [r0, #8]
    7be6:	bd30      	pop	{r4, r5, pc}
    7be8:	000b      	movs	r3, r1
    7bea:	0011      	movs	r1, r2
    7bec:	6043      	str	r3, [r0, #4]
    7bee:	6048      	str	r0, [r1, #4]
    7bf0:	2d02      	cmp	r5, #2
    7bf2:	d8f6      	bhi.n	7be2 <rt_resort_prio+0x52>
    7bf4:	6098      	str	r0, [r3, #8]
    7bf6:	6081      	str	r1, [r0, #8]
    7bf8:	e7f5      	b.n	7be6 <rt_resort_prio+0x56>
    7bfa:	7843      	ldrb	r3, [r0, #1]
    7bfc:	2b01      	cmp	r3, #1
    7bfe:	d1f2      	bne.n	7be6 <rt_resort_prio+0x56>
    7c00:	4a06      	ldr	r2, [pc, #24]	; (7c1c <rt_resort_prio+0x8c>)
    7c02:	0013      	movs	r3, r2
    7c04:	e001      	b.n	7c0a <rt_resort_prio+0x7a>
    7c06:	1e0b      	subs	r3, r1, #0
    7c08:	d0d4      	beq.n	7bb4 <rt_resort_prio+0x24>
    7c0a:	6859      	ldr	r1, [r3, #4]
    7c0c:	4288      	cmp	r0, r1
    7c0e:	d1fa      	bne.n	7c06 <rt_resort_prio+0x76>
    7c10:	6841      	ldr	r1, [r0, #4]
    7c12:	6059      	str	r1, [r3, #4]
    7c14:	e7ce      	b.n	7bb4 <rt_resort_prio+0x24>
    7c16:	0011      	movs	r1, r2
    7c18:	e7de      	b.n	7bd8 <rt_resort_prio+0x48>
    7c1a:	46c0      	nop			; (mov r8, r8)
    7c1c:	20006084 	.word	0x20006084

00007c20 <rt_put_dly>:
    7c20:	b530      	push	{r4, r5, lr}
    7c22:	4c17      	ldr	r4, [pc, #92]	; (7c80 <rt_put_dly+0x60>)
    7c24:	68e2      	ldr	r2, [r4, #12]
    7c26:	2a00      	cmp	r2, #0
    7c28:	d023      	beq.n	7c72 <rt_put_dly+0x52>
    7c2a:	8aa3      	ldrh	r3, [r4, #20]
    7c2c:	4299      	cmp	r1, r3
    7c2e:	d804      	bhi.n	7c3a <rt_put_dly+0x1a>
    7c30:	e022      	b.n	7c78 <rt_put_dly+0x58>
    7c32:	68d4      	ldr	r4, [r2, #12]
    7c34:	2c00      	cmp	r4, #0
    7c36:	d013      	beq.n	7c60 <rt_put_dly+0x40>
    7c38:	0022      	movs	r2, r4
    7c3a:	8a94      	ldrh	r4, [r2, #20]
    7c3c:	191b      	adds	r3, r3, r4
    7c3e:	4299      	cmp	r1, r3
    7c40:	d8f7      	bhi.n	7c32 <rt_put_dly+0x12>
    7c42:	68d5      	ldr	r5, [r2, #12]
    7c44:	60c5      	str	r5, [r0, #12]
    7c46:	60d0      	str	r0, [r2, #12]
    7c48:	68c4      	ldr	r4, [r0, #12]
    7c4a:	6102      	str	r2, [r0, #16]
    7c4c:	2c00      	cmp	r4, #0
    7c4e:	d000      	beq.n	7c52 <rt_put_dly+0x32>
    7c50:	6120      	str	r0, [r4, #16]
    7c52:	1a5b      	subs	r3, r3, r1
    7c54:	b29b      	uxth	r3, r3
    7c56:	8283      	strh	r3, [r0, #20]
    7c58:	8a91      	ldrh	r1, [r2, #20]
    7c5a:	1acb      	subs	r3, r1, r3
    7c5c:	8293      	strh	r3, [r2, #20]
    7c5e:	bd30      	pop	{r4, r5, pc}
    7c60:	b29b      	uxth	r3, r3
    7c62:	2400      	movs	r4, #0
    7c64:	1acb      	subs	r3, r1, r3
    7c66:	60c4      	str	r4, [r0, #12]
    7c68:	60d0      	str	r0, [r2, #12]
    7c6a:	6102      	str	r2, [r0, #16]
    7c6c:	8293      	strh	r3, [r2, #20]
    7c6e:	8284      	strh	r4, [r0, #20]
    7c70:	e7f5      	b.n	7c5e <rt_put_dly+0x3e>
    7c72:	2300      	movs	r3, #0
    7c74:	0022      	movs	r2, r4
    7c76:	e7f4      	b.n	7c62 <rt_put_dly+0x42>
    7c78:	0015      	movs	r5, r2
    7c7a:	0022      	movs	r2, r4
    7c7c:	e7e2      	b.n	7c44 <rt_put_dly+0x24>
    7c7e:	46c0      	nop			; (mov r8, r8)
    7c80:	2000609c 	.word	0x2000609c

00007c84 <rt_dec_dly>:
    7c84:	b5f0      	push	{r4, r5, r6, r7, lr}
    7c86:	464e      	mov	r6, r9
    7c88:	4657      	mov	r7, sl
    7c8a:	4645      	mov	r5, r8
    7c8c:	b4e0      	push	{r5, r6, r7}
    7c8e:	4e36      	ldr	r6, [pc, #216]	; (7d68 <rt_dec_dly+0xe4>)
    7c90:	68f0      	ldr	r0, [r6, #12]
    7c92:	2800      	cmp	r0, #0
    7c94:	d059      	beq.n	7d4a <rt_dec_dly+0xc6>
    7c96:	8ab3      	ldrh	r3, [r6, #20]
    7c98:	3b01      	subs	r3, #1
    7c9a:	b29b      	uxth	r3, r3
    7c9c:	82b3      	strh	r3, [r6, #20]
    7c9e:	2b00      	cmp	r3, #0
    7ca0:	d153      	bne.n	7d4a <rt_dec_dly+0xc6>
    7ca2:	4b32      	ldr	r3, [pc, #200]	; (7d6c <rt_dec_dly+0xe8>)
    7ca4:	2500      	movs	r5, #0
    7ca6:	469c      	mov	ip, r3
    7ca8:	781f      	ldrb	r7, [r3, #0]
    7caa:	4b31      	ldr	r3, [pc, #196]	; (7d70 <rt_dec_dly+0xec>)
    7cac:	46e2      	mov	sl, ip
    7cae:	881b      	ldrh	r3, [r3, #0]
    7cb0:	3f01      	subs	r7, #1
    7cb2:	4699      	mov	r9, r3
    7cb4:	2301      	movs	r3, #1
    7cb6:	4698      	mov	r8, r3
    7cb8:	b2ff      	uxtb	r7, r7
    7cba:	6883      	ldr	r3, [r0, #8]
    7cbc:	2b00      	cmp	r3, #0
    7cbe:	d007      	beq.n	7cd0 <rt_dec_dly+0x4c>
    7cc0:	6842      	ldr	r2, [r0, #4]
    7cc2:	605a      	str	r2, [r3, #4]
    7cc4:	6842      	ldr	r2, [r0, #4]
    7cc6:	2a00      	cmp	r2, #0
    7cc8:	d001      	beq.n	7cce <rt_dec_dly+0x4a>
    7cca:	6093      	str	r3, [r2, #8]
    7ccc:	6045      	str	r5, [r0, #4]
    7cce:	6085      	str	r5, [r0, #8]
    7cd0:	4663      	mov	r3, ip
    7cd2:	685a      	ldr	r2, [r3, #4]
    7cd4:	7884      	ldrb	r4, [r0, #2]
    7cd6:	2a00      	cmp	r2, #0
    7cd8:	d03c      	beq.n	7d54 <rt_dec_dly+0xd0>
    7cda:	7893      	ldrb	r3, [r2, #2]
    7cdc:	42a3      	cmp	r3, r4
    7cde:	d204      	bcs.n	7cea <rt_dec_dly+0x66>
    7ce0:	e01c      	b.n	7d1c <rt_dec_dly+0x98>
    7ce2:	7899      	ldrb	r1, [r3, #2]
    7ce4:	428c      	cmp	r4, r1
    7ce6:	d81b      	bhi.n	7d20 <rt_dec_dly+0x9c>
    7ce8:	001a      	movs	r2, r3
    7cea:	6853      	ldr	r3, [r2, #4]
    7cec:	2b00      	cmp	r3, #0
    7cee:	d1f8      	bne.n	7ce2 <rt_dec_dly+0x5e>
    7cf0:	6045      	str	r5, [r0, #4]
    7cf2:	6050      	str	r0, [r2, #4]
    7cf4:	2f02      	cmp	r7, #2
    7cf6:	d900      	bls.n	7cfa <rt_dec_dly+0x76>
    7cf8:	2200      	movs	r2, #0
    7cfa:	7843      	ldrb	r3, [r0, #1]
    7cfc:	6082      	str	r2, [r0, #8]
    7cfe:	8a82      	ldrh	r2, [r0, #20]
    7d00:	2b04      	cmp	r3, #4
    7d02:	d017      	beq.n	7d34 <rt_dec_dly+0xb0>
    7d04:	4643      	mov	r3, r8
    7d06:	7043      	strb	r3, [r0, #1]
    7d08:	68c3      	ldr	r3, [r0, #12]
    7d0a:	2b00      	cmp	r3, #0
    7d0c:	d01a      	beq.n	7d44 <rt_dec_dly+0xc0>
    7d0e:	611e      	str	r6, [r3, #16]
    7d10:	60c5      	str	r5, [r0, #12]
    7d12:	6105      	str	r5, [r0, #16]
    7d14:	2a00      	cmp	r2, #0
    7d16:	d123      	bne.n	7d60 <rt_dec_dly+0xdc>
    7d18:	0018      	movs	r0, r3
    7d1a:	e7ce      	b.n	7cba <rt_dec_dly+0x36>
    7d1c:	0013      	movs	r3, r2
    7d1e:	4652      	mov	r2, sl
    7d20:	6043      	str	r3, [r0, #4]
    7d22:	6050      	str	r0, [r2, #4]
    7d24:	2f02      	cmp	r7, #2
    7d26:	d8e7      	bhi.n	7cf8 <rt_dec_dly+0x74>
    7d28:	6098      	str	r0, [r3, #8]
    7d2a:	7843      	ldrb	r3, [r0, #1]
    7d2c:	6082      	str	r2, [r0, #8]
    7d2e:	8a82      	ldrh	r2, [r0, #20]
    7d30:	2b04      	cmp	r3, #4
    7d32:	d1e7      	bne.n	7d04 <rt_dec_dly+0x80>
    7d34:	8ac3      	ldrh	r3, [r0, #22]
    7d36:	444b      	add	r3, r9
    7d38:	8283      	strh	r3, [r0, #20]
    7d3a:	4643      	mov	r3, r8
    7d3c:	7043      	strb	r3, [r0, #1]
    7d3e:	68c3      	ldr	r3, [r0, #12]
    7d40:	2b00      	cmp	r3, #0
    7d42:	d1e4      	bne.n	7d0e <rt_dec_dly+0x8a>
    7d44:	82b2      	strh	r2, [r6, #20]
    7d46:	60f3      	str	r3, [r6, #12]
    7d48:	6103      	str	r3, [r0, #16]
    7d4a:	bc1c      	pop	{r2, r3, r4}
    7d4c:	4690      	mov	r8, r2
    7d4e:	4699      	mov	r9, r3
    7d50:	46a2      	mov	sl, r4
    7d52:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7d54:	4652      	mov	r2, sl
    7d56:	6045      	str	r5, [r0, #4]
    7d58:	6050      	str	r0, [r2, #4]
    7d5a:	2f02      	cmp	r7, #2
    7d5c:	d8cc      	bhi.n	7cf8 <rt_dec_dly+0x74>
    7d5e:	e7cc      	b.n	7cfa <rt_dec_dly+0x76>
    7d60:	82b2      	strh	r2, [r6, #20]
    7d62:	60f3      	str	r3, [r6, #12]
    7d64:	e7f1      	b.n	7d4a <rt_dec_dly+0xc6>
    7d66:	46c0      	nop			; (mov r8, r8)
    7d68:	2000609c 	.word	0x2000609c
    7d6c:	20006084 	.word	0x20006084
    7d70:	20006080 	.word	0x20006080

00007d74 <rt_rmv_list>:
    7d74:	6883      	ldr	r3, [r0, #8]
    7d76:	2b00      	cmp	r3, #0
    7d78:	d006      	beq.n	7d88 <rt_rmv_list+0x14>
    7d7a:	6842      	ldr	r2, [r0, #4]
    7d7c:	605a      	str	r2, [r3, #4]
    7d7e:	6842      	ldr	r2, [r0, #4]
    7d80:	2a00      	cmp	r2, #0
    7d82:	d000      	beq.n	7d86 <rt_rmv_list+0x12>
    7d84:	6093      	str	r3, [r2, #8]
    7d86:	4770      	bx	lr
    7d88:	4b04      	ldr	r3, [pc, #16]	; (7d9c <rt_rmv_list+0x28>)
    7d8a:	e001      	b.n	7d90 <rt_rmv_list+0x1c>
    7d8c:	1e13      	subs	r3, r2, #0
    7d8e:	d0fa      	beq.n	7d86 <rt_rmv_list+0x12>
    7d90:	685a      	ldr	r2, [r3, #4]
    7d92:	4290      	cmp	r0, r2
    7d94:	d1fa      	bne.n	7d8c <rt_rmv_list+0x18>
    7d96:	6842      	ldr	r2, [r0, #4]
    7d98:	605a      	str	r2, [r3, #4]
    7d9a:	e7f4      	b.n	7d86 <rt_rmv_list+0x12>
    7d9c:	20006084 	.word	0x20006084

00007da0 <rt_rmv_dly>:
    7da0:	6903      	ldr	r3, [r0, #16]
    7da2:	b510      	push	{r4, lr}
    7da4:	2b00      	cmp	r3, #0
    7da6:	d00d      	beq.n	7dc4 <rt_rmv_dly+0x24>
    7da8:	68c2      	ldr	r2, [r0, #12]
    7daa:	60da      	str	r2, [r3, #12]
    7dac:	68c1      	ldr	r1, [r0, #12]
    7dae:	2900      	cmp	r1, #0
    7db0:	d009      	beq.n	7dc6 <rt_rmv_dly+0x26>
    7db2:	8a9c      	ldrh	r4, [r3, #20]
    7db4:	8a82      	ldrh	r2, [r0, #20]
    7db6:	18a2      	adds	r2, r4, r2
    7db8:	829a      	strh	r2, [r3, #20]
    7dba:	610b      	str	r3, [r1, #16]
    7dbc:	2300      	movs	r3, #0
    7dbe:	60c3      	str	r3, [r0, #12]
    7dc0:	2300      	movs	r3, #0
    7dc2:	6103      	str	r3, [r0, #16]
    7dc4:	bd10      	pop	{r4, pc}
    7dc6:	8299      	strh	r1, [r3, #20]
    7dc8:	e7fa      	b.n	7dc0 <rt_rmv_dly+0x20>
    7dca:	46c0      	nop			; (mov r8, r8)

00007dcc <rt_psq_enq>:
    7dcc:	b570      	push	{r4, r5, r6, lr}
    7dce:	4c0f      	ldr	r4, [pc, #60]	; (7e0c <rt_psq_enq+0x40>)
    7dd0:	78e5      	ldrb	r5, [r4, #3]
    7dd2:	f3ef 8310 	mrs	r3, PRIMASK
    7dd6:	b672      	cpsid	i
    7dd8:	78a3      	ldrb	r3, [r4, #2]
    7dda:	429d      	cmp	r5, r3
    7ddc:	d907      	bls.n	7dee <rt_psq_enq+0x22>
    7dde:	1c5a      	adds	r2, r3, #1
    7de0:	7823      	ldrb	r3, [r4, #0]
    7de2:	70a2      	strb	r2, [r4, #2]
    7de4:	1c5a      	adds	r2, r3, #1
    7de6:	4295      	cmp	r5, r2
    7de8:	d00d      	beq.n	7e06 <rt_psq_enq+0x3a>
    7dea:	b2d2      	uxtb	r2, r2
    7dec:	7022      	strb	r2, [r4, #0]
    7dee:	b662      	cpsie	i
    7df0:	429d      	cmp	r5, r3
    7df2:	d904      	bls.n	7dfe <rt_psq_enq+0x32>
    7df4:	00db      	lsls	r3, r3, #3
    7df6:	18e3      	adds	r3, r4, r3
    7df8:	6058      	str	r0, [r3, #4]
    7dfa:	6099      	str	r1, [r3, #8]
    7dfc:	bd70      	pop	{r4, r5, r6, pc}
    7dfe:	2002      	movs	r0, #2
    7e00:	f7f9 fdbc 	bl	197c <os_error>
    7e04:	e7fa      	b.n	7dfc <rt_psq_enq+0x30>
    7e06:	2200      	movs	r2, #0
    7e08:	7022      	strb	r2, [r4, #0]
    7e0a:	e7f0      	b.n	7dee <rt_psq_enq+0x22>
    7e0c:	20004c58 	.word	0x20004c58

00007e10 <rt_evt_wait>:
    7e10:	4b10      	ldr	r3, [pc, #64]	; (7e54 <rt_evt_wait+0x44>)
    7e12:	b570      	push	{r4, r5, r6, lr}
    7e14:	681b      	ldr	r3, [r3, #0]
    7e16:	000c      	movs	r4, r1
    7e18:	2a00      	cmp	r2, #0
    7e1a:	d00b      	beq.n	7e34 <rt_evt_wait+0x24>
    7e1c:	0005      	movs	r5, r0
    7e1e:	8b1a      	ldrh	r2, [r3, #24]
    7e20:	2106      	movs	r1, #6
    7e22:	4015      	ands	r5, r2
    7e24:	42a8      	cmp	r0, r5
    7e26:	d00a      	beq.n	7e3e <rt_evt_wait+0x2e>
    7e28:	8358      	strh	r0, [r3, #26]
    7e2a:	0020      	movs	r0, r4
    7e2c:	f000 fa94 	bl	8358 <rt_block>
    7e30:	2001      	movs	r0, #1
    7e32:	e007      	b.n	7e44 <rt_evt_wait+0x34>
    7e34:	8b1a      	ldrh	r2, [r3, #24]
    7e36:	0011      	movs	r1, r2
    7e38:	4001      	ands	r1, r0
    7e3a:	d004      	beq.n	7e46 <rt_evt_wait+0x36>
    7e3c:	8359      	strh	r1, [r3, #26]
    7e3e:	4382      	bics	r2, r0
    7e40:	2002      	movs	r0, #2
    7e42:	831a      	strh	r2, [r3, #24]
    7e44:	bd70      	pop	{r4, r5, r6, pc}
    7e46:	8358      	strh	r0, [r3, #26]
    7e48:	2105      	movs	r1, #5
    7e4a:	0020      	movs	r0, r4
    7e4c:	f000 fa84 	bl	8358 <rt_block>
    7e50:	2001      	movs	r0, #1
    7e52:	e7f7      	b.n	7e44 <rt_evt_wait+0x34>
    7e54:	200060b8 	.word	0x200060b8

00007e58 <rt_evt_set>:
    7e58:	3901      	subs	r1, #1
    7e5a:	4b14      	ldr	r3, [pc, #80]	; (7eac <rt_evt_set+0x54>)
    7e5c:	0089      	lsls	r1, r1, #2
    7e5e:	b510      	push	{r4, lr}
    7e60:	58cc      	ldr	r4, [r1, r3]
    7e62:	2c00      	cmp	r4, #0
    7e64:	d008      	beq.n	7e78 <rt_evt_set+0x20>
    7e66:	8b23      	ldrh	r3, [r4, #24]
    7e68:	8b62      	ldrh	r2, [r4, #26]
    7e6a:	4318      	orrs	r0, r3
    7e6c:	7863      	ldrb	r3, [r4, #1]
    7e6e:	8320      	strh	r0, [r4, #24]
    7e70:	2b06      	cmp	r3, #6
    7e72:	d016      	beq.n	7ea2 <rt_evt_set+0x4a>
    7e74:	2b05      	cmp	r3, #5
    7e76:	d000      	beq.n	7e7a <rt_evt_set+0x22>
    7e78:	bd10      	pop	{r4, pc}
    7e7a:	0013      	movs	r3, r2
    7e7c:	4003      	ands	r3, r0
    7e7e:	d0fb      	beq.n	7e78 <rt_evt_set+0x20>
    7e80:	8363      	strh	r3, [r4, #26]
    7e82:	4390      	bics	r0, r2
    7e84:	8320      	strh	r0, [r4, #24]
    7e86:	0020      	movs	r0, r4
    7e88:	f7ff ff8a 	bl	7da0 <rt_rmv_dly>
    7e8c:	2301      	movs	r3, #1
    7e8e:	0020      	movs	r0, r4
    7e90:	7063      	strb	r3, [r4, #1]
    7e92:	8b62      	ldrh	r2, [r4, #26]
    7e94:	2108      	movs	r1, #8
    7e96:	f7ff fa1d 	bl	72d4 <rt_ret_val2>
    7e9a:	0020      	movs	r0, r4
    7e9c:	f000 fa36 	bl	830c <rt_dispatch>
    7ea0:	e7ea      	b.n	7e78 <rt_evt_set+0x20>
    7ea2:	0013      	movs	r3, r2
    7ea4:	4003      	ands	r3, r0
    7ea6:	429a      	cmp	r2, r3
    7ea8:	d1e6      	bne.n	7e78 <rt_evt_set+0x20>
    7eaa:	e7ea      	b.n	7e82 <rt_evt_set+0x2a>
    7eac:	20004cdc 	.word	0x20004cdc

00007eb0 <rt_evt_clr>:
    7eb0:	3901      	subs	r1, #1
    7eb2:	4b04      	ldr	r3, [pc, #16]	; (7ec4 <rt_evt_clr+0x14>)
    7eb4:	0089      	lsls	r1, r1, #2
    7eb6:	58cb      	ldr	r3, [r1, r3]
    7eb8:	2b00      	cmp	r3, #0
    7eba:	d002      	beq.n	7ec2 <rt_evt_clr+0x12>
    7ebc:	8b1a      	ldrh	r2, [r3, #24]
    7ebe:	4382      	bics	r2, r0
    7ec0:	831a      	strh	r2, [r3, #24]
    7ec2:	4770      	bx	lr
    7ec4:	20004cdc 	.word	0x20004cdc

00007ec8 <isr_evt_set>:
    7ec8:	3901      	subs	r1, #1
    7eca:	4b06      	ldr	r3, [pc, #24]	; (7ee4 <isr_evt_set+0x1c>)
    7ecc:	0089      	lsls	r1, r1, #2
    7ece:	58cb      	ldr	r3, [r1, r3]
    7ed0:	b510      	push	{r4, lr}
    7ed2:	2b00      	cmp	r3, #0
    7ed4:	d005      	beq.n	7ee2 <isr_evt_set+0x1a>
    7ed6:	0001      	movs	r1, r0
    7ed8:	0018      	movs	r0, r3
    7eda:	f7ff ff77 	bl	7dcc <rt_psq_enq>
    7ede:	f000 f959 	bl	8194 <rt_psh_req>
    7ee2:	bd10      	pop	{r4, pc}
    7ee4:	20004cdc 	.word	0x20004cdc

00007ee8 <rt_evt_get>:
    7ee8:	4b01      	ldr	r3, [pc, #4]	; (7ef0 <rt_evt_get+0x8>)
    7eea:	681b      	ldr	r3, [r3, #0]
    7eec:	8b58      	ldrh	r0, [r3, #26]
    7eee:	4770      	bx	lr
    7ef0:	200060b8 	.word	0x200060b8

00007ef4 <rt_evt_psh>:
    7ef4:	b510      	push	{r4, lr}
    7ef6:	8b03      	ldrh	r3, [r0, #24]
    7ef8:	0004      	movs	r4, r0
    7efa:	4319      	orrs	r1, r3
    7efc:	7843      	ldrb	r3, [r0, #1]
    7efe:	8301      	strh	r1, [r0, #24]
    7f00:	8b42      	ldrh	r2, [r0, #26]
    7f02:	2b06      	cmp	r3, #6
    7f04:	d017      	beq.n	7f36 <rt_evt_psh+0x42>
    7f06:	2b05      	cmp	r3, #5
    7f08:	d000      	beq.n	7f0c <rt_evt_psh+0x18>
    7f0a:	bd10      	pop	{r4, pc}
    7f0c:	0013      	movs	r3, r2
    7f0e:	400b      	ands	r3, r1
    7f10:	d0fb      	beq.n	7f0a <rt_evt_psh+0x16>
    7f12:	8343      	strh	r3, [r0, #26]
    7f14:	4391      	bics	r1, r2
    7f16:	8321      	strh	r1, [r4, #24]
    7f18:	0020      	movs	r0, r4
    7f1a:	f7ff ff41 	bl	7da0 <rt_rmv_dly>
    7f1e:	2301      	movs	r3, #1
    7f20:	0020      	movs	r0, r4
    7f22:	7063      	strb	r3, [r4, #1]
    7f24:	8b62      	ldrh	r2, [r4, #26]
    7f26:	2108      	movs	r1, #8
    7f28:	f7ff f9d4 	bl	72d4 <rt_ret_val2>
    7f2c:	0021      	movs	r1, r4
    7f2e:	4804      	ldr	r0, [pc, #16]	; (7f40 <rt_evt_psh+0x4c>)
    7f30:	f7ff fdd8 	bl	7ae4 <rt_put_prio>
    7f34:	e7e9      	b.n	7f0a <rt_evt_psh+0x16>
    7f36:	0013      	movs	r3, r2
    7f38:	400b      	ands	r3, r1
    7f3a:	429a      	cmp	r2, r3
    7f3c:	d1e5      	bne.n	7f0a <rt_evt_psh+0x16>
    7f3e:	e7e9      	b.n	7f14 <rt_evt_psh+0x20>
    7f40:	20006084 	.word	0x20006084

00007f44 <rt_suspend>:
    7f44:	4b1c      	ldr	r3, [pc, #112]	; (7fb8 <rt_suspend+0x74>)
    7f46:	b510      	push	{r4, lr}
    7f48:	681b      	ldr	r3, [r3, #0]
    7f4a:	2b00      	cmp	r3, #0
    7f4c:	db20      	blt.n	7f90 <rt_suspend+0x4c>
    7f4e:	491b      	ldr	r1, [pc, #108]	; (7fbc <rt_suspend+0x78>)
    7f50:	095a      	lsrs	r2, r3, #5
    7f52:	468c      	mov	ip, r1
    7f54:	211f      	movs	r1, #31
    7f56:	400b      	ands	r3, r1
    7f58:	391e      	subs	r1, #30
    7f5a:	0008      	movs	r0, r1
    7f5c:	4098      	lsls	r0, r3
    7f5e:	0092      	lsls	r2, r2, #2
    7f60:	4462      	add	r2, ip
    7f62:	6010      	str	r0, [r2, #0]
    7f64:	4816      	ldr	r0, [pc, #88]	; (7fc0 <rt_suspend+0x7c>)
    7f66:	4a17      	ldr	r2, [pc, #92]	; (7fc4 <rt_suspend+0x80>)
    7f68:	7001      	strb	r1, [r0, #0]
    7f6a:	6813      	ldr	r3, [r2, #0]
    7f6c:	0f1b      	lsrs	r3, r3, #28
    7f6e:	400b      	ands	r3, r1
    7f70:	7043      	strb	r3, [r0, #1]
    7f72:	06db      	lsls	r3, r3, #27
    7f74:	6013      	str	r3, [r2, #0]
    7f76:	4b14      	ldr	r3, [pc, #80]	; (7fc8 <rt_suspend+0x84>)
    7f78:	68da      	ldr	r2, [r3, #12]
    7f7a:	2a00      	cmp	r2, #0
    7f7c:	d019      	beq.n	7fb2 <rt_suspend+0x6e>
    7f7e:	8a9c      	ldrh	r4, [r3, #20]
    7f80:	f7fe f9e6 	bl	6350 <sysUserTimerWakeupTime>
    7f84:	0003      	movs	r3, r0
    7f86:	0020      	movs	r0, r4
    7f88:	429c      	cmp	r4, r3
    7f8a:	d900      	bls.n	7f8e <rt_suspend+0x4a>
    7f8c:	0018      	movs	r0, r3
    7f8e:	bd10      	pop	{r4, pc}
    7f90:	2005      	movs	r0, #5
    7f92:	4b0e      	ldr	r3, [pc, #56]	; (7fcc <rt_suspend+0x88>)
    7f94:	490a      	ldr	r1, [pc, #40]	; (7fc0 <rt_suspend+0x7c>)
    7f96:	6018      	str	r0, [r3, #0]
    7f98:	2301      	movs	r3, #1
    7f9a:	4a0a      	ldr	r2, [pc, #40]	; (7fc4 <rt_suspend+0x80>)
    7f9c:	700b      	strb	r3, [r1, #0]
    7f9e:	6813      	ldr	r3, [r2, #0]
    7fa0:	0e9b      	lsrs	r3, r3, #26
    7fa2:	4003      	ands	r3, r0
    7fa4:	704b      	strb	r3, [r1, #1]
    7fa6:	065b      	lsls	r3, r3, #25
    7fa8:	6013      	str	r3, [r2, #0]
    7faa:	4b07      	ldr	r3, [pc, #28]	; (7fc8 <rt_suspend+0x84>)
    7fac:	68da      	ldr	r2, [r3, #12]
    7fae:	2a00      	cmp	r2, #0
    7fb0:	d1e5      	bne.n	7f7e <rt_suspend+0x3a>
    7fb2:	4c07      	ldr	r4, [pc, #28]	; (7fd0 <rt_suspend+0x8c>)
    7fb4:	e7e4      	b.n	7f80 <rt_suspend+0x3c>
    7fb6:	46c0      	nop			; (mov r8, r8)
    7fb8:	200060b4 	.word	0x200060b4
    7fbc:	e000e180 	.word	0xe000e180
    7fc0:	2000603d 	.word	0x2000603d
    7fc4:	e000ed04 	.word	0xe000ed04
    7fc8:	2000609c 	.word	0x2000609c
    7fcc:	e000e010 	.word	0xe000e010
    7fd0:	0000ffff 	.word	0x0000ffff

00007fd4 <rt_resume>:
    7fd4:	b5f0      	push	{r4, r5, r6, r7, lr}
    7fd6:	4647      	mov	r7, r8
    7fd8:	4b32      	ldr	r3, [pc, #200]	; (80a4 <rt_resume+0xd0>)
    7fda:	b480      	push	{r7}
    7fdc:	0007      	movs	r7, r0
    7fde:	6818      	ldr	r0, [r3, #0]
    7fe0:	2301      	movs	r3, #1
    7fe2:	7043      	strb	r3, [r0, #1]
    7fe4:	4698      	mov	r8, r3
    7fe6:	f7ff fdb7 	bl	7b58 <rt_put_rdy_first>
    7fea:	2200      	movs	r2, #0
    7fec:	4b2e      	ldr	r3, [pc, #184]	; (80a8 <rt_resume+0xd4>)
    7fee:	4e2f      	ldr	r6, [pc, #188]	; (80ac <rt_resume+0xd8>)
    7ff0:	601a      	str	r2, [r3, #0]
    7ff2:	68f3      	ldr	r3, [r6, #12]
    7ff4:	2b00      	cmp	r3, #0
    7ff6:	d04f      	beq.n	8098 <rt_resume+0xc4>
    7ff8:	8ab3      	ldrh	r3, [r6, #20]
    7ffa:	429f      	cmp	r7, r3
    7ffc:	d336      	bcc.n	806c <rt_resume+0x98>
    7ffe:	4d2c      	ldr	r5, [pc, #176]	; (80b0 <rt_resume+0xdc>)
    8000:	1afc      	subs	r4, r7, r3
    8002:	682a      	ldr	r2, [r5, #0]
    8004:	4694      	mov	ip, r2
    8006:	4463      	add	r3, ip
    8008:	602b      	str	r3, [r5, #0]
    800a:	4643      	mov	r3, r8
    800c:	82b3      	strh	r3, [r6, #20]
    800e:	e006      	b.n	801e <rt_resume+0x4a>
    8010:	682b      	ldr	r3, [r5, #0]
    8012:	3c01      	subs	r4, #1
    8014:	3301      	adds	r3, #1
    8016:	602b      	str	r3, [r5, #0]
    8018:	68f3      	ldr	r3, [r6, #12]
    801a:	2b00      	cmp	r3, #0
    801c:	d003      	beq.n	8026 <rt_resume+0x52>
    801e:	f7ff fe31 	bl	7c84 <rt_dec_dly>
    8022:	2c00      	cmp	r4, #0
    8024:	d1f4      	bne.n	8010 <rt_resume+0x3c>
    8026:	0038      	movs	r0, r7
    8028:	f7fe f99e 	bl	6368 <sysUserTimerUpdate>
    802c:	4821      	ldr	r0, [pc, #132]	; (80b4 <rt_resume+0xe0>)
    802e:	f7ff fd7f 	bl	7b30 <rt_get_first>
    8032:	f000 f963 	bl	82fc <rt_switch_req>
    8036:	4b20      	ldr	r3, [pc, #128]	; (80b8 <rt_resume+0xe4>)
    8038:	681b      	ldr	r3, [r3, #0]
    803a:	2b00      	cmp	r3, #0
    803c:	db1d      	blt.n	807a <rt_resume+0xa6>
    803e:	491f      	ldr	r1, [pc, #124]	; (80bc <rt_resume+0xe8>)
    8040:	095a      	lsrs	r2, r3, #5
    8042:	468c      	mov	ip, r1
    8044:	211f      	movs	r1, #31
    8046:	400b      	ands	r3, r1
    8048:	391e      	subs	r1, #30
    804a:	4099      	lsls	r1, r3
    804c:	0092      	lsls	r2, r2, #2
    804e:	4462      	add	r2, ip
    8050:	6011      	str	r1, [r2, #0]
    8052:	2100      	movs	r1, #0
    8054:	4a1a      	ldr	r2, [pc, #104]	; (80c0 <rt_resume+0xec>)
    8056:	7011      	strb	r1, [r2, #0]
    8058:	7890      	ldrb	r0, [r2, #2]
    805a:	7853      	ldrb	r3, [r2, #1]
    805c:	4303      	orrs	r3, r0
    805e:	4819      	ldr	r0, [pc, #100]	; (80c4 <rt_resume+0xf0>)
    8060:	071b      	lsls	r3, r3, #28
    8062:	6003      	str	r3, [r0, #0]
    8064:	7091      	strb	r1, [r2, #2]
    8066:	bc04      	pop	{r2}
    8068:	4690      	mov	r8, r2
    806a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    806c:	4910      	ldr	r1, [pc, #64]	; (80b0 <rt_resume+0xdc>)
    806e:	1bdb      	subs	r3, r3, r7
    8070:	680a      	ldr	r2, [r1, #0]
    8072:	82b3      	strh	r3, [r6, #20]
    8074:	19d2      	adds	r2, r2, r7
    8076:	600a      	str	r2, [r1, #0]
    8078:	e7d5      	b.n	8026 <rt_resume+0x52>
    807a:	2207      	movs	r2, #7
    807c:	2000      	movs	r0, #0
    807e:	4910      	ldr	r1, [pc, #64]	; (80c0 <rt_resume+0xec>)
    8080:	4b11      	ldr	r3, [pc, #68]	; (80c8 <rt_resume+0xf4>)
    8082:	601a      	str	r2, [r3, #0]
    8084:	7008      	strb	r0, [r1, #0]
    8086:	788b      	ldrb	r3, [r1, #2]
    8088:	784a      	ldrb	r2, [r1, #1]
    808a:	009b      	lsls	r3, r3, #2
    808c:	4313      	orrs	r3, r2
    808e:	4a0d      	ldr	r2, [pc, #52]	; (80c4 <rt_resume+0xf0>)
    8090:	069b      	lsls	r3, r3, #26
    8092:	6013      	str	r3, [r2, #0]
    8094:	7088      	strb	r0, [r1, #2]
    8096:	e7e6      	b.n	8066 <rt_resume+0x92>
    8098:	4a05      	ldr	r2, [pc, #20]	; (80b0 <rt_resume+0xdc>)
    809a:	6813      	ldr	r3, [r2, #0]
    809c:	19db      	adds	r3, r3, r7
    809e:	6013      	str	r3, [r2, #0]
    80a0:	e7c1      	b.n	8026 <rt_resume+0x52>
    80a2:	46c0      	nop			; (mov r8, r8)
    80a4:	200060b8 	.word	0x200060b8
    80a8:	200060f4 	.word	0x200060f4
    80ac:	2000609c 	.word	0x2000609c
    80b0:	20006080 	.word	0x20006080
    80b4:	20006084 	.word	0x20006084
    80b8:	200060b4 	.word	0x200060b4
    80bc:	e000e100 	.word	0xe000e100
    80c0:	2000603d 	.word	0x2000603d
    80c4:	e000ed04 	.word	0xe000ed04
    80c8:	e000e010 	.word	0xe000e010

000080cc <rt_tsk_lock>:
    80cc:	4b13      	ldr	r3, [pc, #76]	; (811c <rt_tsk_lock+0x50>)
    80ce:	681b      	ldr	r3, [r3, #0]
    80d0:	2b00      	cmp	r3, #0
    80d2:	db14      	blt.n	80fe <rt_tsk_lock+0x32>
    80d4:	4912      	ldr	r1, [pc, #72]	; (8120 <rt_tsk_lock+0x54>)
    80d6:	095a      	lsrs	r2, r3, #5
    80d8:	468c      	mov	ip, r1
    80da:	211f      	movs	r1, #31
    80dc:	400b      	ands	r3, r1
    80de:	391e      	subs	r1, #30
    80e0:	0008      	movs	r0, r1
    80e2:	4098      	lsls	r0, r3
    80e4:	0092      	lsls	r2, r2, #2
    80e6:	4462      	add	r2, ip
    80e8:	6010      	str	r0, [r2, #0]
    80ea:	480e      	ldr	r0, [pc, #56]	; (8124 <rt_tsk_lock+0x58>)
    80ec:	4a0e      	ldr	r2, [pc, #56]	; (8128 <rt_tsk_lock+0x5c>)
    80ee:	7001      	strb	r1, [r0, #0]
    80f0:	6813      	ldr	r3, [r2, #0]
    80f2:	0f1b      	lsrs	r3, r3, #28
    80f4:	400b      	ands	r3, r1
    80f6:	7043      	strb	r3, [r0, #1]
    80f8:	06db      	lsls	r3, r3, #27
    80fa:	6013      	str	r3, [r2, #0]
    80fc:	4770      	bx	lr
    80fe:	2005      	movs	r0, #5
    8100:	4b0a      	ldr	r3, [pc, #40]	; (812c <rt_tsk_lock+0x60>)
    8102:	4908      	ldr	r1, [pc, #32]	; (8124 <rt_tsk_lock+0x58>)
    8104:	6018      	str	r0, [r3, #0]
    8106:	2301      	movs	r3, #1
    8108:	4a07      	ldr	r2, [pc, #28]	; (8128 <rt_tsk_lock+0x5c>)
    810a:	700b      	strb	r3, [r1, #0]
    810c:	6813      	ldr	r3, [r2, #0]
    810e:	0e9b      	lsrs	r3, r3, #26
    8110:	4003      	ands	r3, r0
    8112:	704b      	strb	r3, [r1, #1]
    8114:	065b      	lsls	r3, r3, #25
    8116:	6013      	str	r3, [r2, #0]
    8118:	e7f0      	b.n	80fc <rt_tsk_lock+0x30>
    811a:	46c0      	nop			; (mov r8, r8)
    811c:	200060b4 	.word	0x200060b4
    8120:	e000e180 	.word	0xe000e180
    8124:	2000603d 	.word	0x2000603d
    8128:	e000ed04 	.word	0xe000ed04
    812c:	e000e010 	.word	0xe000e010

00008130 <rt_tsk_unlock>:
    8130:	4b13      	ldr	r3, [pc, #76]	; (8180 <rt_tsk_unlock+0x50>)
    8132:	681b      	ldr	r3, [r3, #0]
    8134:	2b00      	cmp	r3, #0
    8136:	db14      	blt.n	8162 <rt_tsk_unlock+0x32>
    8138:	4912      	ldr	r1, [pc, #72]	; (8184 <rt_tsk_unlock+0x54>)
    813a:	095a      	lsrs	r2, r3, #5
    813c:	468c      	mov	ip, r1
    813e:	211f      	movs	r1, #31
    8140:	400b      	ands	r3, r1
    8142:	391e      	subs	r1, #30
    8144:	4099      	lsls	r1, r3
    8146:	0092      	lsls	r2, r2, #2
    8148:	4462      	add	r2, ip
    814a:	6011      	str	r1, [r2, #0]
    814c:	2100      	movs	r1, #0
    814e:	4a0e      	ldr	r2, [pc, #56]	; (8188 <rt_tsk_unlock+0x58>)
    8150:	7011      	strb	r1, [r2, #0]
    8152:	7890      	ldrb	r0, [r2, #2]
    8154:	7853      	ldrb	r3, [r2, #1]
    8156:	4303      	orrs	r3, r0
    8158:	480c      	ldr	r0, [pc, #48]	; (818c <rt_tsk_unlock+0x5c>)
    815a:	071b      	lsls	r3, r3, #28
    815c:	6003      	str	r3, [r0, #0]
    815e:	7091      	strb	r1, [r2, #2]
    8160:	4770      	bx	lr
    8162:	2207      	movs	r2, #7
    8164:	2000      	movs	r0, #0
    8166:	4908      	ldr	r1, [pc, #32]	; (8188 <rt_tsk_unlock+0x58>)
    8168:	4b09      	ldr	r3, [pc, #36]	; (8190 <rt_tsk_unlock+0x60>)
    816a:	601a      	str	r2, [r3, #0]
    816c:	7008      	strb	r0, [r1, #0]
    816e:	788b      	ldrb	r3, [r1, #2]
    8170:	784a      	ldrb	r2, [r1, #1]
    8172:	009b      	lsls	r3, r3, #2
    8174:	4313      	orrs	r3, r2
    8176:	4a05      	ldr	r2, [pc, #20]	; (818c <rt_tsk_unlock+0x5c>)
    8178:	069b      	lsls	r3, r3, #26
    817a:	6013      	str	r3, [r2, #0]
    817c:	7088      	strb	r0, [r1, #2]
    817e:	e7ef      	b.n	8160 <rt_tsk_unlock+0x30>
    8180:	200060b4 	.word	0x200060b4
    8184:	e000e100 	.word	0xe000e100
    8188:	2000603d 	.word	0x2000603d
    818c:	e000ed04 	.word	0xe000ed04
    8190:	e000e010 	.word	0xe000e010

00008194 <rt_psh_req>:
    8194:	4b05      	ldr	r3, [pc, #20]	; (81ac <rt_psh_req+0x18>)
    8196:	781a      	ldrb	r2, [r3, #0]
    8198:	2a00      	cmp	r2, #0
    819a:	d002      	beq.n	81a2 <rt_psh_req+0xe>
    819c:	2201      	movs	r2, #1
    819e:	709a      	strb	r2, [r3, #2]
    81a0:	4770      	bx	lr
    81a2:	2280      	movs	r2, #128	; 0x80
    81a4:	4b02      	ldr	r3, [pc, #8]	; (81b0 <rt_psh_req+0x1c>)
    81a6:	0552      	lsls	r2, r2, #21
    81a8:	601a      	str	r2, [r3, #0]
    81aa:	e7f9      	b.n	81a0 <rt_psh_req+0xc>
    81ac:	2000603d 	.word	0x2000603d
    81b0:	e000ed04 	.word	0xe000ed04

000081b4 <rt_pop_req>:
    81b4:	4b1c      	ldr	r3, [pc, #112]	; (8228 <rt_pop_req+0x74>)
    81b6:	b570      	push	{r4, r5, r6, lr}
    81b8:	6818      	ldr	r0, [r3, #0]
    81ba:	2301      	movs	r3, #1
    81bc:	7043      	strb	r3, [r0, #1]
    81be:	f7ff fccb 	bl	7b58 <rt_put_rdy_first>
    81c2:	4d1a      	ldr	r5, [pc, #104]	; (822c <rt_pop_req+0x78>)
    81c4:	78ab      	ldrb	r3, [r5, #2]
    81c6:	786c      	ldrb	r4, [r5, #1]
    81c8:	2b00      	cmp	r3, #0
    81ca:	d112      	bne.n	81f2 <rt_pop_req+0x3e>
    81cc:	e024      	b.n	8218 <rt_pop_req+0x64>
    81ce:	2a01      	cmp	r2, #1
    81d0:	d01e      	beq.n	8210 <rt_pop_req+0x5c>
    81d2:	f7ff fb13 	bl	77fc <rt_sem_psh>
    81d6:	78eb      	ldrb	r3, [r5, #3]
    81d8:	3401      	adds	r4, #1
    81da:	429c      	cmp	r4, r3
    81dc:	d016      	beq.n	820c <rt_pop_req+0x58>
    81de:	f3ef 8310 	mrs	r3, PRIMASK
    81e2:	b672      	cpsid	i
    81e4:	78ab      	ldrb	r3, [r5, #2]
    81e6:	3b01      	subs	r3, #1
    81e8:	b2db      	uxtb	r3, r3
    81ea:	70ab      	strb	r3, [r5, #2]
    81ec:	b662      	cpsie	i
    81ee:	2b00      	cmp	r3, #0
    81f0:	d012      	beq.n	8218 <rt_pop_req+0x64>
    81f2:	00e3      	lsls	r3, r4, #3
    81f4:	18eb      	adds	r3, r5, r3
    81f6:	6858      	ldr	r0, [r3, #4]
    81f8:	7802      	ldrb	r2, [r0, #0]
    81fa:	2a00      	cmp	r2, #0
    81fc:	d1e7      	bne.n	81ce <rt_pop_req+0x1a>
    81fe:	8919      	ldrh	r1, [r3, #8]
    8200:	f7ff fe78 	bl	7ef4 <rt_evt_psh>
    8204:	78eb      	ldrb	r3, [r5, #3]
    8206:	3401      	adds	r4, #1
    8208:	429c      	cmp	r4, r3
    820a:	d1e8      	bne.n	81de <rt_pop_req+0x2a>
    820c:	2400      	movs	r4, #0
    820e:	e7e6      	b.n	81de <rt_pop_req+0x2a>
    8210:	6899      	ldr	r1, [r3, #8]
    8212:	f7ff fbf9 	bl	7a08 <rt_mbx_psh>
    8216:	e7de      	b.n	81d6 <rt_pop_req+0x22>
    8218:	706c      	strb	r4, [r5, #1]
    821a:	4805      	ldr	r0, [pc, #20]	; (8230 <rt_pop_req+0x7c>)
    821c:	f7ff fc88 	bl	7b30 <rt_get_first>
    8220:	f000 f86c 	bl	82fc <rt_switch_req>
    8224:	bd70      	pop	{r4, r5, r6, pc}
    8226:	46c0      	nop			; (mov r8, r8)
    8228:	200060b8 	.word	0x200060b8
    822c:	20004c58 	.word	0x20004c58
    8230:	20006084 	.word	0x20006084

00008234 <os_tick_init>:
    8234:	4b09      	ldr	r3, [pc, #36]	; (825c <os_tick_init+0x28>)
    8236:	21ff      	movs	r1, #255	; 0xff
    8238:	681a      	ldr	r2, [r3, #0]
    823a:	4b09      	ldr	r3, [pc, #36]	; (8260 <os_tick_init+0x2c>)
    823c:	2001      	movs	r0, #1
    823e:	601a      	str	r2, [r3, #0]
    8240:	2200      	movs	r2, #0
    8242:	4b08      	ldr	r3, [pc, #32]	; (8264 <os_tick_init+0x30>)
    8244:	0609      	lsls	r1, r1, #24
    8246:	601a      	str	r2, [r3, #0]
    8248:	4b07      	ldr	r3, [pc, #28]	; (8268 <os_tick_init+0x34>)
    824a:	3207      	adds	r2, #7
    824c:	601a      	str	r2, [r3, #0]
    824e:	4a07      	ldr	r2, [pc, #28]	; (826c <os_tick_init+0x38>)
    8250:	4240      	negs	r0, r0
    8252:	6813      	ldr	r3, [r2, #0]
    8254:	430b      	orrs	r3, r1
    8256:	6013      	str	r3, [r2, #0]
    8258:	4770      	bx	lr
    825a:	46c0      	nop			; (mov r8, r8)
    825c:	000089f0 	.word	0x000089f0
    8260:	e000e014 	.word	0xe000e014
    8264:	e000e018 	.word	0xe000e018
    8268:	e000e010 	.word	0xe000e010
    826c:	e000ed20 	.word	0xe000ed20

00008270 <os_tick_val>:
    8270:	4b02      	ldr	r3, [pc, #8]	; (827c <os_tick_val+0xc>)
    8272:	6818      	ldr	r0, [r3, #0]
    8274:	4b02      	ldr	r3, [pc, #8]	; (8280 <os_tick_val+0x10>)
    8276:	681b      	ldr	r3, [r3, #0]
    8278:	1a18      	subs	r0, r3, r0
    827a:	4770      	bx	lr
    827c:	e000e018 	.word	0xe000e018
    8280:	000089f0 	.word	0x000089f0

00008284 <os_tick_ovf>:
    8284:	4b02      	ldr	r3, [pc, #8]	; (8290 <os_tick_ovf+0xc>)
    8286:	6818      	ldr	r0, [r3, #0]
    8288:	0140      	lsls	r0, r0, #5
    828a:	0fc0      	lsrs	r0, r0, #31
    828c:	4770      	bx	lr
    828e:	46c0      	nop			; (mov r8, r8)
    8290:	e000ed04 	.word	0xe000ed04

00008294 <os_tick_irqack>:
    8294:	4770      	bx	lr
    8296:	46c0      	nop			; (mov r8, r8)

00008298 <rt_systick>:
    8298:	4b0b      	ldr	r3, [pc, #44]	; (82c8 <rt_systick+0x30>)
    829a:	b510      	push	{r4, lr}
    829c:	6818      	ldr	r0, [r3, #0]
    829e:	2301      	movs	r3, #1
    82a0:	7043      	strb	r3, [r0, #1]
    82a2:	f7ff fc59 	bl	7b58 <rt_put_rdy_first>
    82a6:	f000 faeb 	bl	8880 <rt_chk_robin>
    82aa:	4a08      	ldr	r2, [pc, #32]	; (82cc <rt_systick+0x34>)
    82ac:	6813      	ldr	r3, [r2, #0]
    82ae:	3301      	adds	r3, #1
    82b0:	6013      	str	r3, [r2, #0]
    82b2:	f7ff fce7 	bl	7c84 <rt_dec_dly>
    82b6:	f7fd ffed 	bl	6294 <sysTimerTick>
    82ba:	4805      	ldr	r0, [pc, #20]	; (82d0 <rt_systick+0x38>)
    82bc:	f7ff fc38 	bl	7b30 <rt_get_first>
    82c0:	f000 f81c 	bl	82fc <rt_switch_req>
    82c4:	bd10      	pop	{r4, pc}
    82c6:	46c0      	nop			; (mov r8, r8)
    82c8:	200060b8 	.word	0x200060b8
    82cc:	20006080 	.word	0x20006080
    82d0:	20006084 	.word	0x20006084

000082d4 <rt_stk_check>:
    82d4:	4b07      	ldr	r3, [pc, #28]	; (82f4 <rt_stk_check+0x20>)
    82d6:	b510      	push	{r4, lr}
    82d8:	681b      	ldr	r3, [r3, #0]
    82da:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    82dc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    82de:	429a      	cmp	r2, r3
    82e0:	d803      	bhi.n	82ea <rt_stk_check+0x16>
    82e2:	4b05      	ldr	r3, [pc, #20]	; (82f8 <rt_stk_check+0x24>)
    82e4:	6812      	ldr	r2, [r2, #0]
    82e6:	429a      	cmp	r2, r3
    82e8:	d002      	beq.n	82f0 <rt_stk_check+0x1c>
    82ea:	2001      	movs	r0, #1
    82ec:	f7f9 fb46 	bl	197c <os_error>
    82f0:	bd10      	pop	{r4, pc}
    82f2:	46c0      	nop			; (mov r8, r8)
    82f4:	200060b8 	.word	0x200060b8
    82f8:	e25a2ea5 	.word	0xe25a2ea5

000082fc <rt_switch_req>:
    82fc:	4b02      	ldr	r3, [pc, #8]	; (8308 <rt_switch_req+0xc>)
    82fe:	6058      	str	r0, [r3, #4]
    8300:	2302      	movs	r3, #2
    8302:	7043      	strb	r3, [r0, #1]
    8304:	4770      	bx	lr
    8306:	46c0      	nop			; (mov r8, r8)
    8308:	200060b8 	.word	0x200060b8

0000830c <rt_dispatch>:
    830c:	b570      	push	{r4, r5, r6, lr}
    830e:	1e04      	subs	r4, r0, #0
    8310:	d015      	beq.n	833e <rt_dispatch+0x32>
    8312:	4d0f      	ldr	r5, [pc, #60]	; (8350 <rt_dispatch+0x44>)
    8314:	78a2      	ldrb	r2, [r4, #2]
    8316:	6828      	ldr	r0, [r5, #0]
    8318:	7883      	ldrb	r3, [r0, #2]
    831a:	429a      	cmp	r2, r3
    831c:	d806      	bhi.n	832c <rt_dispatch+0x20>
    831e:	2301      	movs	r3, #1
    8320:	0021      	movs	r1, r4
    8322:	7063      	strb	r3, [r4, #1]
    8324:	480b      	ldr	r0, [pc, #44]	; (8354 <rt_dispatch+0x48>)
    8326:	f7ff fbdd 	bl	7ae4 <rt_put_prio>
    832a:	bd70      	pop	{r4, r5, r6, pc}
    832c:	f7ff fc14 	bl	7b58 <rt_put_rdy_first>
    8330:	2301      	movs	r3, #1
    8332:	682a      	ldr	r2, [r5, #0]
    8334:	7053      	strb	r3, [r2, #1]
    8336:	3301      	adds	r3, #1
    8338:	606c      	str	r4, [r5, #4]
    833a:	7063      	strb	r3, [r4, #1]
    833c:	e7f5      	b.n	832a <rt_dispatch+0x1e>
    833e:	4805      	ldr	r0, [pc, #20]	; (8354 <rt_dispatch+0x48>)
    8340:	f7ff fbf6 	bl	7b30 <rt_get_first>
    8344:	4b02      	ldr	r3, [pc, #8]	; (8350 <rt_dispatch+0x44>)
    8346:	6058      	str	r0, [r3, #4]
    8348:	2302      	movs	r3, #2
    834a:	7043      	strb	r3, [r0, #1]
    834c:	e7ed      	b.n	832a <rt_dispatch+0x1e>
    834e:	46c0      	nop			; (mov r8, r8)
    8350:	200060b8 	.word	0x200060b8
    8354:	20006084 	.word	0x20006084

00008358 <rt_block>:
    8358:	b570      	push	{r4, r5, r6, lr}
    835a:	000d      	movs	r5, r1
    835c:	2800      	cmp	r0, #0
    835e:	d00f      	beq.n	8380 <rt_block+0x28>
    8360:	4b08      	ldr	r3, [pc, #32]	; (8384 <rt_block+0x2c>)
    8362:	4c09      	ldr	r4, [pc, #36]	; (8388 <rt_block+0x30>)
    8364:	4298      	cmp	r0, r3
    8366:	d003      	beq.n	8370 <rt_block+0x18>
    8368:	0001      	movs	r1, r0
    836a:	6820      	ldr	r0, [r4, #0]
    836c:	f7ff fc58 	bl	7c20 <rt_put_dly>
    8370:	6823      	ldr	r3, [r4, #0]
    8372:	4806      	ldr	r0, [pc, #24]	; (838c <rt_block+0x34>)
    8374:	705d      	strb	r5, [r3, #1]
    8376:	f7ff fbdb 	bl	7b30 <rt_get_first>
    837a:	2302      	movs	r3, #2
    837c:	6060      	str	r0, [r4, #4]
    837e:	7043      	strb	r3, [r0, #1]
    8380:	bd70      	pop	{r4, r5, r6, pc}
    8382:	46c0      	nop			; (mov r8, r8)
    8384:	0000ffff 	.word	0x0000ffff
    8388:	200060b8 	.word	0x200060b8
    838c:	20006084 	.word	0x20006084

00008390 <rt_tsk_pass>:
    8390:	b570      	push	{r4, r5, r6, lr}
    8392:	f7ff fbeb 	bl	7b6c <rt_get_same_rdy_prio>
    8396:	1e04      	subs	r4, r0, #0
    8398:	d00a      	beq.n	83b0 <rt_tsk_pass+0x20>
    839a:	4d06      	ldr	r5, [pc, #24]	; (83b4 <rt_tsk_pass+0x24>)
    839c:	4806      	ldr	r0, [pc, #24]	; (83b8 <rt_tsk_pass+0x28>)
    839e:	6829      	ldr	r1, [r5, #0]
    83a0:	f7ff fba0 	bl	7ae4 <rt_put_prio>
    83a4:	2301      	movs	r3, #1
    83a6:	682a      	ldr	r2, [r5, #0]
    83a8:	7053      	strb	r3, [r2, #1]
    83aa:	3301      	adds	r3, #1
    83ac:	606c      	str	r4, [r5, #4]
    83ae:	7063      	strb	r3, [r4, #1]
    83b0:	bd70      	pop	{r4, r5, r6, pc}
    83b2:	46c0      	nop			; (mov r8, r8)
    83b4:	200060b8 	.word	0x200060b8
    83b8:	20006084 	.word	0x20006084

000083bc <rt_tsk_self>:
    83bc:	4b03      	ldr	r3, [pc, #12]	; (83cc <rt_tsk_self+0x10>)
    83be:	681b      	ldr	r3, [r3, #0]
    83c0:	2b00      	cmp	r3, #0
    83c2:	d001      	beq.n	83c8 <rt_tsk_self+0xc>
    83c4:	78d8      	ldrb	r0, [r3, #3]
    83c6:	4770      	bx	lr
    83c8:	2000      	movs	r0, #0
    83ca:	e7fc      	b.n	83c6 <rt_tsk_self+0xa>
    83cc:	200060b8 	.word	0x200060b8

000083d0 <rt_tsk_prio>:
    83d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    83d2:	2800      	cmp	r0, #0
    83d4:	d10c      	bne.n	83f0 <rt_tsk_prio+0x20>
    83d6:	2224      	movs	r2, #36	; 0x24
    83d8:	4c27      	ldr	r4, [pc, #156]	; (8478 <rt_tsk_prio+0xa8>)
    83da:	6823      	ldr	r3, [r4, #0]
    83dc:	7099      	strb	r1, [r3, #2]
    83de:	5499      	strb	r1, [r3, r2]
    83e0:	4d26      	ldr	r5, [pc, #152]	; (847c <rt_tsk_prio+0xac>)
    83e2:	686a      	ldr	r2, [r5, #4]
    83e4:	7892      	ldrb	r2, [r2, #2]
    83e6:	428a      	cmp	r2, r1
    83e8:	d82c      	bhi.n	8444 <rt_tsk_prio+0x74>
    83ea:	2200      	movs	r2, #0
    83ec:	0010      	movs	r0, r2
    83ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    83f0:	4b23      	ldr	r3, [pc, #140]	; (8480 <rt_tsk_prio+0xb0>)
    83f2:	22ff      	movs	r2, #255	; 0xff
    83f4:	881b      	ldrh	r3, [r3, #0]
    83f6:	4298      	cmp	r0, r3
    83f8:	d8f8      	bhi.n	83ec <rt_tsk_prio+0x1c>
    83fa:	1e43      	subs	r3, r0, #1
    83fc:	4821      	ldr	r0, [pc, #132]	; (8484 <rt_tsk_prio+0xb4>)
    83fe:	009b      	lsls	r3, r3, #2
    8400:	581d      	ldr	r5, [r3, r0]
    8402:	2d00      	cmp	r5, #0
    8404:	d0f2      	beq.n	83ec <rt_tsk_prio+0x1c>
    8406:	2324      	movs	r3, #36	; 0x24
    8408:	4c1b      	ldr	r4, [pc, #108]	; (8478 <rt_tsk_prio+0xa8>)
    840a:	70a9      	strb	r1, [r5, #2]
    840c:	54e9      	strb	r1, [r5, r3]
    840e:	6823      	ldr	r3, [r4, #0]
    8410:	429d      	cmp	r5, r3
    8412:	d0e5      	beq.n	83e0 <rt_tsk_prio+0x10>
    8414:	0028      	movs	r0, r5
    8416:	f7ff fbbb 	bl	7b90 <rt_resort_prio>
    841a:	786d      	ldrb	r5, [r5, #1]
    841c:	2d01      	cmp	r5, #1
    841e:	d1e4      	bne.n	83ea <rt_tsk_prio+0x1a>
    8420:	4f16      	ldr	r7, [pc, #88]	; (847c <rt_tsk_prio+0xac>)
    8422:	0038      	movs	r0, r7
    8424:	f7ff fb84 	bl	7b30 <rt_get_first>
    8428:	1e06      	subs	r6, r0, #0
    842a:	d023      	beq.n	8474 <rt_tsk_prio+0xa4>
    842c:	6820      	ldr	r0, [r4, #0]
    842e:	78b2      	ldrb	r2, [r6, #2]
    8430:	7883      	ldrb	r3, [r0, #2]
    8432:	429a      	cmp	r2, r3
    8434:	d815      	bhi.n	8462 <rt_tsk_prio+0x92>
    8436:	7075      	strb	r5, [r6, #1]
    8438:	0031      	movs	r1, r6
    843a:	0038      	movs	r0, r7
    843c:	f7ff fb52 	bl	7ae4 <rt_put_prio>
    8440:	2200      	movs	r2, #0
    8442:	e7d3      	b.n	83ec <rt_tsk_prio+0x1c>
    8444:	0019      	movs	r1, r3
    8446:	0028      	movs	r0, r5
    8448:	f7ff fb4c 	bl	7ae4 <rt_put_prio>
    844c:	2301      	movs	r3, #1
    844e:	0028      	movs	r0, r5
    8450:	6822      	ldr	r2, [r4, #0]
    8452:	7053      	strb	r3, [r2, #1]
    8454:	f7ff fb6c 	bl	7b30 <rt_get_first>
    8458:	2302      	movs	r3, #2
    845a:	6060      	str	r0, [r4, #4]
    845c:	2200      	movs	r2, #0
    845e:	7043      	strb	r3, [r0, #1]
    8460:	e7c4      	b.n	83ec <rt_tsk_prio+0x1c>
    8462:	f7ff fb79 	bl	7b58 <rt_put_rdy_first>
    8466:	6823      	ldr	r3, [r4, #0]
    8468:	2200      	movs	r2, #0
    846a:	705d      	strb	r5, [r3, #1]
    846c:	2302      	movs	r3, #2
    846e:	6066      	str	r6, [r4, #4]
    8470:	7073      	strb	r3, [r6, #1]
    8472:	e7bb      	b.n	83ec <rt_tsk_prio+0x1c>
    8474:	0038      	movs	r0, r7
    8476:	e7ed      	b.n	8454 <rt_tsk_prio+0x84>
    8478:	200060b8 	.word	0x200060b8
    847c:	20006084 	.word	0x20006084
    8480:	000089dc 	.word	0x000089dc
    8484:	20004cdc 	.word	0x20004cdc

00008488 <rt_tsk_create>:
    8488:	b5f0      	push	{r4, r5, r6, r7, lr}
    848a:	4647      	mov	r7, r8
    848c:	b480      	push	{r7}
    848e:	001f      	movs	r7, r3
    8490:	23ff      	movs	r3, #255	; 0xff
    8492:	400b      	ands	r3, r1
    8494:	4690      	mov	r8, r2
    8496:	001a      	movs	r2, r3
    8498:	4253      	negs	r3, r2
    849a:	4153      	adcs	r3, r2
    849c:	0006      	movs	r6, r0
    849e:	4831      	ldr	r0, [pc, #196]	; (8564 <rt_tsk_create+0xdc>)
    84a0:	18cc      	adds	r4, r1, r3
    84a2:	f7fe ff95 	bl	73d0 <rt_alloc_box>
    84a6:	1e05      	subs	r5, r0, #0
    84a8:	d032      	beq.n	8510 <rt_tsk_create+0x88>
    84aa:	4643      	mov	r3, r8
    84ac:	2101      	movs	r1, #1
    84ae:	62c3      	str	r3, [r0, #44]	; 0x2c
    84b0:	2300      	movs	r3, #0
    84b2:	0a22      	lsrs	r2, r4, #8
    84b4:	7041      	strb	r1, [r0, #1]
    84b6:	b2e4      	uxtb	r4, r4
    84b8:	3123      	adds	r1, #35	; 0x23
    84ba:	b292      	uxth	r2, r2
    84bc:	7003      	strb	r3, [r0, #0]
    84be:	84c2      	strh	r2, [r0, #38]	; 0x26
    84c0:	61c7      	str	r7, [r0, #28]
    84c2:	7084      	strb	r4, [r0, #2]
    84c4:	5444      	strb	r4, [r0, r1]
    84c6:	2100      	movs	r1, #0
    84c8:	6043      	str	r3, [r0, #4]
    84ca:	6083      	str	r3, [r0, #8]
    84cc:	60c3      	str	r3, [r0, #12]
    84ce:	6103      	str	r3, [r0, #16]
    84d0:	6203      	str	r3, [r0, #32]
    84d2:	8283      	strh	r3, [r0, #20]
    84d4:	82c3      	strh	r3, [r0, #22]
    84d6:	8303      	strh	r3, [r0, #24]
    84d8:	8343      	strh	r3, [r0, #26]
    84da:	3325      	adds	r3, #37	; 0x25
    84dc:	54c1      	strb	r1, [r0, r3]
    84de:	2a00      	cmp	r2, #0
    84e0:	d01a      	beq.n	8518 <rt_tsk_create+0x90>
    84e2:	0031      	movs	r1, r6
    84e4:	0028      	movs	r0, r5
    84e6:	f7fe fe99 	bl	721c <rt_init_stack>
    84ea:	4b1f      	ldr	r3, [pc, #124]	; (8568 <rt_tsk_create+0xe0>)
    84ec:	8819      	ldrh	r1, [r3, #0]
    84ee:	2900      	cmp	r1, #0
    84f0:	d00e      	beq.n	8510 <rt_tsk_create+0x88>
    84f2:	481e      	ldr	r0, [pc, #120]	; (856c <rt_tsk_create+0xe4>)
    84f4:	6803      	ldr	r3, [r0, #0]
    84f6:	2b00      	cmp	r3, #0
    84f8:	d02f      	beq.n	855a <rt_tsk_create+0xd2>
    84fa:	2201      	movs	r2, #1
    84fc:	e005      	b.n	850a <rt_tsk_create+0x82>
    84fe:	00a3      	lsls	r3, r4, #2
    8500:	3b04      	subs	r3, #4
    8502:	58c3      	ldr	r3, [r0, r3]
    8504:	2b00      	cmp	r3, #0
    8506:	d00c      	beq.n	8522 <rt_tsk_create+0x9a>
    8508:	0022      	movs	r2, r4
    850a:	1c54      	adds	r4, r2, #1
    850c:	428c      	cmp	r4, r1
    850e:	d9f6      	bls.n	84fe <rt_tsk_create+0x76>
    8510:	2000      	movs	r0, #0
    8512:	bc04      	pop	{r2}
    8514:	4690      	mov	r8, r2
    8516:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8518:	4815      	ldr	r0, [pc, #84]	; (8570 <rt_tsk_create+0xe8>)
    851a:	f7fe ff59 	bl	73d0 <rt_alloc_box>
    851e:	62e8      	str	r0, [r5, #44]	; 0x2c
    8520:	e7df      	b.n	84e2 <rt_tsk_create+0x5a>
    8522:	b2e3      	uxtb	r3, r4
    8524:	0092      	lsls	r2, r2, #2
    8526:	4e13      	ldr	r6, [pc, #76]	; (8574 <rt_tsk_create+0xec>)
    8528:	5085      	str	r5, [r0, r2]
    852a:	70eb      	strb	r3, [r5, #3]
    852c:	6830      	ldr	r0, [r6, #0]
    852e:	78aa      	ldrb	r2, [r5, #2]
    8530:	7883      	ldrb	r3, [r0, #2]
    8532:	429a      	cmp	r2, r3
    8534:	d807      	bhi.n	8546 <rt_tsk_create+0xbe>
    8536:	2301      	movs	r3, #1
    8538:	480f      	ldr	r0, [pc, #60]	; (8578 <rt_tsk_create+0xf0>)
    853a:	706b      	strb	r3, [r5, #1]
    853c:	0029      	movs	r1, r5
    853e:	f7ff fad1 	bl	7ae4 <rt_put_prio>
    8542:	0020      	movs	r0, r4
    8544:	e7e5      	b.n	8512 <rt_tsk_create+0x8a>
    8546:	f7ff fb07 	bl	7b58 <rt_put_rdy_first>
    854a:	2301      	movs	r3, #1
    854c:	6832      	ldr	r2, [r6, #0]
    854e:	0020      	movs	r0, r4
    8550:	7053      	strb	r3, [r2, #1]
    8552:	3301      	adds	r3, #1
    8554:	6075      	str	r5, [r6, #4]
    8556:	706b      	strb	r3, [r5, #1]
    8558:	e7db      	b.n	8512 <rt_tsk_create+0x8a>
    855a:	2301      	movs	r3, #1
    855c:	2200      	movs	r2, #0
    855e:	2401      	movs	r4, #1
    8560:	e7e0      	b.n	8524 <rt_tsk_create+0x9c>
    8562:	46c0      	nop			; (mov r8, r8)
    8564:	20000908 	.word	0x20000908
    8568:	000089dc 	.word	0x000089dc
    856c:	20004cdc 	.word	0x20004cdc
    8570:	200009e8 	.word	0x200009e8
    8574:	200060b8 	.word	0x200060b8
    8578:	20006084 	.word	0x20006084

0000857c <rt_tsk_delete>:
    857c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    857e:	4644      	mov	r4, r8
    8580:	465f      	mov	r7, fp
    8582:	4656      	mov	r6, sl
    8584:	464d      	mov	r5, r9
    8586:	4b5a      	ldr	r3, [pc, #360]	; (86f0 <rt_tsk_delete+0x174>)
    8588:	b4f0      	push	{r4, r5, r6, r7}
    858a:	4698      	mov	r8, r3
    858c:	681c      	ldr	r4, [r3, #0]
    858e:	2800      	cmp	r0, #0
    8590:	d00e      	beq.n	85b0 <rt_tsk_delete+0x34>
    8592:	78e3      	ldrb	r3, [r4, #3]
    8594:	4298      	cmp	r0, r3
    8596:	d00b      	beq.n	85b0 <rt_tsk_delete+0x34>
    8598:	4b56      	ldr	r3, [pc, #344]	; (86f4 <rt_tsk_delete+0x178>)
    859a:	881a      	ldrh	r2, [r3, #0]
    859c:	23ff      	movs	r3, #255	; 0xff
    859e:	4290      	cmp	r0, r2
    85a0:	d952      	bls.n	8648 <rt_tsk_delete+0xcc>
    85a2:	0018      	movs	r0, r3
    85a4:	bc3c      	pop	{r2, r3, r4, r5}
    85a6:	4690      	mov	r8, r2
    85a8:	4699      	mov	r9, r3
    85aa:	46a2      	mov	sl, r4
    85ac:	46ab      	mov	fp, r5
    85ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    85b0:	2300      	movs	r3, #0
    85b2:	7063      	strb	r3, [r4, #1]
    85b4:	f7fc fa53 	bl	4a5e <rt_get_PSP>
    85b8:	62a0      	str	r0, [r4, #40]	; 0x28
    85ba:	f7ff fe8b 	bl	82d4 <rt_stk_check>
    85be:	4643      	mov	r3, r8
    85c0:	681a      	ldr	r2, [r3, #0]
    85c2:	4f4d      	ldr	r7, [pc, #308]	; (86f8 <rt_tsk_delete+0x17c>)
    85c4:	6a14      	ldr	r4, [r2, #32]
    85c6:	2c00      	cmp	r4, #0
    85c8:	d023      	beq.n	8612 <rt_tsk_delete+0x96>
    85ca:	2601      	movs	r6, #1
    85cc:	e016      	b.n	85fc <rt_tsk_delete+0x80>
    85ce:	0020      	movs	r0, r4
    85d0:	f7ff faae 	bl	7b30 <rt_get_first>
    85d4:	0005      	movs	r5, r0
    85d6:	2100      	movs	r1, #0
    85d8:	f7fe fe78 	bl	72cc <rt_ret_val>
    85dc:	0028      	movs	r0, r5
    85de:	f7ff fbdf 	bl	7da0 <rt_rmv_dly>
    85e2:	706e      	strb	r6, [r5, #1]
    85e4:	0029      	movs	r1, r5
    85e6:	0038      	movs	r0, r7
    85e8:	f7ff fa7c 	bl	7ae4 <rt_put_prio>
    85ec:	68e3      	ldr	r3, [r4, #12]
    85ee:	6a2a      	ldr	r2, [r5, #32]
    85f0:	8066      	strh	r6, [r4, #2]
    85f2:	60a5      	str	r5, [r4, #8]
    85f4:	60e2      	str	r2, [r4, #12]
    85f6:	622c      	str	r4, [r5, #32]
    85f8:	1e1c      	subs	r4, r3, #0
    85fa:	d008      	beq.n	860e <rt_tsk_delete+0x92>
    85fc:	6863      	ldr	r3, [r4, #4]
    85fe:	2b00      	cmp	r3, #0
    8600:	d1e5      	bne.n	85ce <rt_tsk_delete+0x52>
    8602:	68e2      	ldr	r2, [r4, #12]
    8604:	8063      	strh	r3, [r4, #2]
    8606:	60a3      	str	r3, [r4, #8]
    8608:	60e3      	str	r3, [r4, #12]
    860a:	1e14      	subs	r4, r2, #0
    860c:	d1f6      	bne.n	85fc <rt_tsk_delete+0x80>
    860e:	4643      	mov	r3, r8
    8610:	681a      	ldr	r2, [r3, #0]
    8612:	2400      	movs	r4, #0
    8614:	78d3      	ldrb	r3, [r2, #3]
    8616:	4939      	ldr	r1, [pc, #228]	; (86fc <rt_tsk_delete+0x180>)
    8618:	3b01      	subs	r3, #1
    861a:	009b      	lsls	r3, r3, #2
    861c:	505c      	str	r4, [r3, r1]
    861e:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    8620:	4837      	ldr	r0, [pc, #220]	; (8700 <rt_tsk_delete+0x184>)
    8622:	f7fe fef5 	bl	7410 <rt_free_box>
    8626:	4643      	mov	r3, r8
    8628:	6819      	ldr	r1, [r3, #0]
    862a:	4836      	ldr	r0, [pc, #216]	; (8704 <rt_tsk_delete+0x188>)
    862c:	62cc      	str	r4, [r1, #44]	; 0x2c
    862e:	f7fe feef 	bl	7410 <rt_free_box>
    8632:	4643      	mov	r3, r8
    8634:	601c      	str	r4, [r3, #0]
    8636:	0038      	movs	r0, r7
    8638:	f7ff fa7a 	bl	7b30 <rt_get_first>
    863c:	4643      	mov	r3, r8
    863e:	6058      	str	r0, [r3, #4]
    8640:	2302      	movs	r3, #2
    8642:	7043      	strb	r3, [r0, #1]
    8644:	2300      	movs	r3, #0
    8646:	e7ac      	b.n	85a2 <rt_tsk_delete+0x26>
    8648:	4a2c      	ldr	r2, [pc, #176]	; (86fc <rt_tsk_delete+0x180>)
    864a:	1e46      	subs	r6, r0, #1
    864c:	4692      	mov	sl, r2
    864e:	00b2      	lsls	r2, r6, #2
    8650:	4693      	mov	fp, r2
    8652:	4652      	mov	r2, sl
    8654:	4659      	mov	r1, fp
    8656:	5856      	ldr	r6, [r2, r1]
    8658:	2e00      	cmp	r6, #0
    865a:	d0a2      	beq.n	85a2 <rt_tsk_delete+0x26>
    865c:	0030      	movs	r0, r6
    865e:	f7ff fb89 	bl	7d74 <rt_rmv_list>
    8662:	0030      	movs	r0, r6
    8664:	f7ff fb9c 	bl	7da0 <rt_rmv_dly>
    8668:	2301      	movs	r3, #1
    866a:	6a34      	ldr	r4, [r6, #32]
    866c:	4f22      	ldr	r7, [pc, #136]	; (86f8 <rt_tsk_delete+0x17c>)
    866e:	4699      	mov	r9, r3
    8670:	2c00      	cmp	r4, #0
    8672:	d11a      	bne.n	86aa <rt_tsk_delete+0x12e>
    8674:	e022      	b.n	86bc <rt_tsk_delete+0x140>
    8676:	0020      	movs	r0, r4
    8678:	f7ff fa5a 	bl	7b30 <rt_get_first>
    867c:	0005      	movs	r5, r0
    867e:	2100      	movs	r1, #0
    8680:	f7fe fe24 	bl	72cc <rt_ret_val>
    8684:	0028      	movs	r0, r5
    8686:	f7ff fb8b 	bl	7da0 <rt_rmv_dly>
    868a:	464b      	mov	r3, r9
    868c:	0029      	movs	r1, r5
    868e:	706b      	strb	r3, [r5, #1]
    8690:	0038      	movs	r0, r7
    8692:	f7ff fa27 	bl	7ae4 <rt_put_prio>
    8696:	464a      	mov	r2, r9
    8698:	68e3      	ldr	r3, [r4, #12]
    869a:	8062      	strh	r2, [r4, #2]
    869c:	6a2a      	ldr	r2, [r5, #32]
    869e:	60a5      	str	r5, [r4, #8]
    86a0:	60e2      	str	r2, [r4, #12]
    86a2:	622c      	str	r4, [r5, #32]
    86a4:	001c      	movs	r4, r3
    86a6:	2c00      	cmp	r4, #0
    86a8:	d008      	beq.n	86bc <rt_tsk_delete+0x140>
    86aa:	6863      	ldr	r3, [r4, #4]
    86ac:	2b00      	cmp	r3, #0
    86ae:	d1e2      	bne.n	8676 <rt_tsk_delete+0xfa>
    86b0:	68e2      	ldr	r2, [r4, #12]
    86b2:	8063      	strh	r3, [r4, #2]
    86b4:	60a3      	str	r3, [r4, #8]
    86b6:	60e3      	str	r3, [r4, #12]
    86b8:	0014      	movs	r4, r2
    86ba:	e7f4      	b.n	86a6 <rt_tsk_delete+0x12a>
    86bc:	4653      	mov	r3, sl
    86be:	465a      	mov	r2, fp
    86c0:	2400      	movs	r4, #0
    86c2:	509c      	str	r4, [r3, r2]
    86c4:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    86c6:	480e      	ldr	r0, [pc, #56]	; (8700 <rt_tsk_delete+0x184>)
    86c8:	f7fe fea2 	bl	7410 <rt_free_box>
    86cc:	0031      	movs	r1, r6
    86ce:	62f4      	str	r4, [r6, #44]	; 0x2c
    86d0:	480c      	ldr	r0, [pc, #48]	; (8704 <rt_tsk_delete+0x188>)
    86d2:	f7fe fe9d 	bl	7410 <rt_free_box>
    86d6:	4643      	mov	r3, r8
    86d8:	6819      	ldr	r1, [r3, #0]
    86da:	687b      	ldr	r3, [r7, #4]
    86dc:	789a      	ldrb	r2, [r3, #2]
    86de:	788b      	ldrb	r3, [r1, #2]
    86e0:	429a      	cmp	r2, r3
    86e2:	d9af      	bls.n	8644 <rt_tsk_delete+0xc8>
    86e4:	2301      	movs	r3, #1
    86e6:	0038      	movs	r0, r7
    86e8:	704b      	strb	r3, [r1, #1]
    86ea:	f7ff f9fb 	bl	7ae4 <rt_put_prio>
    86ee:	e7a2      	b.n	8636 <rt_tsk_delete+0xba>
    86f0:	200060b8 	.word	0x200060b8
    86f4:	000089dc 	.word	0x000089dc
    86f8:	20006084 	.word	0x20006084
    86fc:	20004cdc 	.word	0x20004cdc
    8700:	200009e8 	.word	0x200009e8
    8704:	20000908 	.word	0x20000908

00008708 <rt_sys_init>:
    8708:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    870a:	4b2b      	ldr	r3, [pc, #172]	; (87b8 <rt_sys_init+0xb0>)
    870c:	881a      	ldrh	r2, [r3, #0]
    870e:	2a00      	cmp	r2, #0
    8710:	d004      	beq.n	871c <rt_sys_init+0x14>
    8712:	0092      	lsls	r2, r2, #2
    8714:	2100      	movs	r1, #0
    8716:	4829      	ldr	r0, [pc, #164]	; (87bc <rt_sys_init+0xb4>)
    8718:	f7fc fbd8 	bl	4ecc <memset>
    871c:	4b28      	ldr	r3, [pc, #160]	; (87c0 <rt_sys_init+0xb8>)
    871e:	2234      	movs	r2, #52	; 0x34
    8720:	8819      	ldrh	r1, [r3, #0]
    8722:	4828      	ldr	r0, [pc, #160]	; (87c4 <rt_sys_init+0xbc>)
    8724:	f7fe fe28 	bl	7378 <_init_box>
    8728:	2280      	movs	r2, #128	; 0x80
    872a:	4b27      	ldr	r3, [pc, #156]	; (87c8 <rt_sys_init+0xc0>)
    872c:	0612      	lsls	r2, r2, #24
    872e:	881b      	ldrh	r3, [r3, #0]
    8730:	4f26      	ldr	r7, [pc, #152]	; (87cc <rt_sys_init+0xc4>)
    8732:	431a      	orrs	r2, r3
    8734:	4b26      	ldr	r3, [pc, #152]	; (87d0 <rt_sys_init+0xc8>)
    8736:	0038      	movs	r0, r7
    8738:	6819      	ldr	r1, [r3, #0]
    873a:	f7fe fe1d 	bl	7378 <_init_box>
    873e:	4b25      	ldr	r3, [pc, #148]	; (87d4 <rt_sys_init+0xcc>)
    8740:	2208      	movs	r2, #8
    8742:	6818      	ldr	r0, [r3, #0]
    8744:	4b24      	ldr	r3, [pc, #144]	; (87d8 <rt_sys_init+0xd0>)
    8746:	2600      	movs	r6, #0
    8748:	8819      	ldrh	r1, [r3, #0]
    874a:	f7fe fe15 	bl	7378 <_init_box>
    874e:	23ff      	movs	r3, #255	; 0xff
    8750:	2500      	movs	r5, #0
    8752:	4c22      	ldr	r4, [pc, #136]	; (87dc <rt_sys_init+0xd4>)
    8754:	0038      	movs	r0, r7
    8756:	70e3      	strb	r3, [r4, #3]
    8758:	3bfe      	subs	r3, #254	; 0xfe
    875a:	7063      	strb	r3, [r4, #1]
    875c:	3323      	adds	r3, #35	; 0x23
    875e:	54e6      	strb	r6, [r4, r3]
    8760:	3301      	adds	r3, #1
    8762:	54e6      	strb	r6, [r4, r3]
    8764:	84e5      	strh	r5, [r4, #38]	; 0x26
    8766:	7026      	strb	r6, [r4, #0]
    8768:	70a6      	strb	r6, [r4, #2]
    876a:	6065      	str	r5, [r4, #4]
    876c:	60a5      	str	r5, [r4, #8]
    876e:	60e5      	str	r5, [r4, #12]
    8770:	6125      	str	r5, [r4, #16]
    8772:	6225      	str	r5, [r4, #32]
    8774:	82a5      	strh	r5, [r4, #20]
    8776:	82e5      	strh	r5, [r4, #22]
    8778:	8325      	strh	r5, [r4, #24]
    877a:	8365      	strh	r5, [r4, #26]
    877c:	f7fe fe28 	bl	73d0 <rt_alloc_box>
    8780:	4917      	ldr	r1, [pc, #92]	; (87e0 <rt_sys_init+0xd8>)
    8782:	62e0      	str	r0, [r4, #44]	; 0x2c
    8784:	0020      	movs	r0, r4
    8786:	f7fe fd49 	bl	721c <rt_init_stack>
    878a:	2204      	movs	r2, #4
    878c:	4b15      	ldr	r3, [pc, #84]	; (87e4 <rt_sys_init+0xdc>)
    878e:	701a      	strb	r2, [r3, #0]
    8790:	605d      	str	r5, [r3, #4]
    8792:	4b15      	ldr	r3, [pc, #84]	; (87e8 <rt_sys_init+0xe0>)
    8794:	701a      	strb	r2, [r3, #0]
    8796:	60dd      	str	r5, [r3, #12]
    8798:	611d      	str	r5, [r3, #16]
    879a:	829d      	strh	r5, [r3, #20]
    879c:	4b13      	ldr	r3, [pc, #76]	; (87ec <rt_sys_init+0xe4>)
    879e:	4a14      	ldr	r2, [pc, #80]	; (87f0 <rt_sys_init+0xe8>)
    87a0:	601c      	str	r4, [r3, #0]
    87a2:	2302      	movs	r3, #2
    87a4:	7812      	ldrb	r2, [r2, #0]
    87a6:	7063      	strb	r3, [r4, #1]
    87a8:	4b12      	ldr	r3, [pc, #72]	; (87f4 <rt_sys_init+0xec>)
    87aa:	701e      	strb	r6, [r3, #0]
    87ac:	705e      	strb	r6, [r3, #1]
    87ae:	70da      	strb	r2, [r3, #3]
    87b0:	f000 f85a 	bl	8868 <rt_init_robin>
    87b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    87b6:	46c0      	nop			; (mov r8, r8)
    87b8:	000089dc 	.word	0x000089dc
    87bc:	20004cdc 	.word	0x20004cdc
    87c0:	00008a08 	.word	0x00008a08
    87c4:	20000908 	.word	0x20000908
    87c8:	000089e0 	.word	0x000089e0
    87cc:	200009e8 	.word	0x200009e8
    87d0:	00008a0c 	.word	0x00008a0c
    87d4:	20004d18 	.word	0x20004d18
    87d8:	00008a30 	.word	0x00008a30
    87dc:	200060c0 	.word	0x200060c0
    87e0:	00001975 	.word	0x00001975
    87e4:	20006084 	.word	0x20006084
    87e8:	2000609c 	.word	0x2000609c
    87ec:	200060b8 	.word	0x200060b8
    87f0:	00008a14 	.word	0x00008a14
    87f4:	20004c58 	.word	0x20004c58

000087f8 <rt_sys_start>:
    87f8:	21ff      	movs	r1, #255	; 0xff
    87fa:	4b16      	ldr	r3, [pc, #88]	; (8854 <rt_sys_start+0x5c>)
    87fc:	0409      	lsls	r1, r1, #16
    87fe:	681a      	ldr	r2, [r3, #0]
    8800:	b510      	push	{r4, lr}
    8802:	430a      	orrs	r2, r1
    8804:	601a      	str	r2, [r3, #0]
    8806:	681b      	ldr	r3, [r3, #0]
    8808:	4913      	ldr	r1, [pc, #76]	; (8858 <rt_sys_start+0x60>)
    880a:	025b      	lsls	r3, r3, #9
    880c:	680a      	ldr	r2, [r1, #0]
    880e:	0e9b      	lsrs	r3, r3, #26
    8810:	069b      	lsls	r3, r3, #26
    8812:	4313      	orrs	r3, r2
    8814:	600b      	str	r3, [r1, #0]
    8816:	f7ff fd0d 	bl	8234 <os_tick_init>
    881a:	4c10      	ldr	r4, [pc, #64]	; (885c <rt_sys_start+0x64>)
    881c:	6020      	str	r0, [r4, #0]
    881e:	2800      	cmp	r0, #0
    8820:	db17      	blt.n	8852 <rt_sys_start+0x5a>
    8822:	4a0f      	ldr	r2, [pc, #60]	; (8860 <rt_sys_start+0x68>)
    8824:	0883      	lsrs	r3, r0, #2
    8826:	4694      	mov	ip, r2
    8828:	2218      	movs	r2, #24
    882a:	00c0      	lsls	r0, r0, #3
    882c:	4010      	ands	r0, r2
    882e:	32e7      	adds	r2, #231	; 0xe7
    8830:	4082      	lsls	r2, r0
    8832:	009b      	lsls	r3, r3, #2
    8834:	4463      	add	r3, ip
    8836:	6819      	ldr	r1, [r3, #0]
    8838:	430a      	orrs	r2, r1
    883a:	490a      	ldr	r1, [pc, #40]	; (8864 <rt_sys_start+0x6c>)
    883c:	601a      	str	r2, [r3, #0]
    883e:	468c      	mov	ip, r1
    8840:	211f      	movs	r1, #31
    8842:	6822      	ldr	r2, [r4, #0]
    8844:	0953      	lsrs	r3, r2, #5
    8846:	400a      	ands	r2, r1
    8848:	391e      	subs	r1, #30
    884a:	4091      	lsls	r1, r2
    884c:	009b      	lsls	r3, r3, #2
    884e:	4463      	add	r3, ip
    8850:	6019      	str	r1, [r3, #0]
    8852:	bd10      	pop	{r4, pc}
    8854:	e000ed20 	.word	0xe000ed20
    8858:	e000ed1c 	.word	0xe000ed1c
    885c:	200060b4 	.word	0x200060b4
    8860:	e000e400 	.word	0xe000e400
    8864:	e000e100 	.word	0xe000e100

00008868 <rt_init_robin>:
    8868:	2200      	movs	r2, #0
    886a:	4b03      	ldr	r3, [pc, #12]	; (8878 <rt_init_robin+0x10>)
    886c:	601a      	str	r2, [r3, #0]
    886e:	4a03      	ldr	r2, [pc, #12]	; (887c <rt_init_robin+0x14>)
    8870:	6812      	ldr	r2, [r2, #0]
    8872:	80da      	strh	r2, [r3, #6]
    8874:	4770      	bx	lr
    8876:	46c0      	nop			; (mov r8, r8)
    8878:	200060f4 	.word	0x200060f4
    887c:	000089e4 	.word	0x000089e4

00008880 <rt_chk_robin>:
    8880:	b510      	push	{r4, lr}
    8882:	4a0f      	ldr	r2, [pc, #60]	; (88c0 <rt_chk_robin+0x40>)
    8884:	4c0f      	ldr	r4, [pc, #60]	; (88c4 <rt_chk_robin+0x44>)
    8886:	6811      	ldr	r1, [r2, #0]
    8888:	6863      	ldr	r3, [r4, #4]
    888a:	4299      	cmp	r1, r3
    888c:	d014      	beq.n	88b8 <rt_chk_robin+0x38>
    888e:	6013      	str	r3, [r2, #0]
    8890:	4b0d      	ldr	r3, [pc, #52]	; (88c8 <rt_chk_robin+0x48>)
    8892:	8819      	ldrh	r1, [r3, #0]
    8894:	88d3      	ldrh	r3, [r2, #6]
    8896:	3b01      	subs	r3, #1
    8898:	18cb      	adds	r3, r1, r3
    889a:	b29b      	uxth	r3, r3
    889c:	8093      	strh	r3, [r2, #4]
    889e:	4299      	cmp	r1, r3
    88a0:	d000      	beq.n	88a4 <rt_chk_robin+0x24>
    88a2:	bd10      	pop	{r4, pc}
    88a4:	2300      	movs	r3, #0
    88a6:	0020      	movs	r0, r4
    88a8:	6013      	str	r3, [r2, #0]
    88aa:	f7ff f941 	bl	7b30 <rt_get_first>
    88ae:	0001      	movs	r1, r0
    88b0:	0020      	movs	r0, r4
    88b2:	f7ff f917 	bl	7ae4 <rt_put_prio>
    88b6:	e7f4      	b.n	88a2 <rt_chk_robin+0x22>
    88b8:	4b03      	ldr	r3, [pc, #12]	; (88c8 <rt_chk_robin+0x48>)
    88ba:	8819      	ldrh	r1, [r3, #0]
    88bc:	8893      	ldrh	r3, [r2, #4]
    88be:	e7ee      	b.n	889e <rt_chk_robin+0x1e>
    88c0:	200060f4 	.word	0x200060f4
    88c4:	20006084 	.word	0x20006084
    88c8:	20006080 	.word	0x20006080
    88cc:	00000000 	.word	0x00000000

000088d0 <__eeprom_erase_page_veneer>:
    88d0:	b401      	push	{r0}
    88d2:	4802      	ldr	r0, [pc, #8]	; (88dc <__eeprom_erase_page_veneer+0xc>)
    88d4:	4684      	mov	ip, r0
    88d6:	bc01      	pop	{r0}
    88d8:	4760      	bx	ip
    88da:	bf00      	nop
    88dc:	2010002d 	.word	0x2010002d

000088e0 <__eeprom_program_word_veneer>:
    88e0:	b401      	push	{r0}
    88e2:	4802      	ldr	r0, [pc, #8]	; (88ec <__eeprom_program_word_veneer+0xc>)
    88e4:	4684      	mov	ip, r0
    88e6:	bc01      	pop	{r0}
    88e8:	4760      	bx	ip
    88ea:	bf00      	nop
    88ec:	20100151 	.word	0x20100151

000088f0 <__eeprom_read_word_veneer>:
    88f0:	b401      	push	{r0}
    88f2:	4802      	ldr	r0, [pc, #8]	; (88fc <__eeprom_read_word_veneer+0xc>)
    88f4:	4684      	mov	ip, r0
    88f6:	bc01      	pop	{r0}
    88f8:	4760      	bx	ip
    88fa:	bf00      	nop
    88fc:	20100229 	.word	0x20100229

00008900 <threadPacketParserDef>:
    8900:	00002fa9 00000001 00000001 00000400     ./..............

00008910 <threadFSMProceedDef>:
    8910:	00000455 00000000 00000001 00000400     U...............

00008920 <threadDUTProceedDef>:
    8920:	00000305 00000000 00000001 00000400     ................

00008930 <message_def>:
    8930:	00000004 20000868                       ....h.. 

00008938 <os_mutex_def_MutexMdbReg>:
    8938:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8948:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8958:	6e6f6973 0000000a 00001396 00001384     sion............
    8968:	000013a2 000013ae 000013ae 000013ae     ................
    8978:	000013ae 000013ae 000013ae 000013ae     ................
    8988:	000013ae 000013ae 000013ae 0000139c     ................
    8998:	000013ae 000013ae 000013ae 00001328     ............(...
    89a8:	000013ae 000013a2 000013ae 000013ae     ................
    89b8:	000013a8 6c383025 00002058 32302520     ....%08lX .. %02
    89c8:	00000058 34302520 00000058 38302520     X... %04X... %08
    89d8:	0000584c                                LX..

000089dc <os_maxtaskrun>:
    89dc:	00000004                                ....

000089e0 <os_stackinfo>:
    89e0:	01021000                                ....

000089e4 <os_rrobin>:
    89e4:	00010005                                ....

000089e8 <os_tickfreq>:
    89e8:	04c4b400                                ....

000089ec <os_tickus_i>:
    89ec:	00000050                                         P.

000089ee <os_tickus_f>:
	...

000089f0 <os_trv>:
    89f0:	0001387f                                .8..

000089f4 <os_flags>:
    89f4:	00000001                                ....

000089f8 <CMSIS_RTOS_API_Version>:
    89f8:	00010002                                ....

000089fc <CMSIS_RTOS_RTX_Version>:
    89fc:	00040052                                R...

00008a00 <os_clockrate>:
    8a00:	000003e8                                ....

00008a04 <os_timernum>:
    8a04:	00000000                                ....

00008a08 <mp_tcb_size>:
    8a08:	000000dc                                ....

00008a0c <mp_stk_size>:
    8a0c:	00003010                                .0..

00008a10 <os_stack_sz>:
    8a10:	00001260                                `...

00008a14 <os_fifo_size>:
    8a14:	00000010                                ....

00008a18 <os_thread_def_osTimerThread>:
    8a18:	00006485 00000002 00000001 00000200     .d..............

00008a28 <os_messageQ_def_osTimerMessageQ>:
    8a28:	00000004 20004cf0                       .....L. 

00008a30 <mp_tmr_size>:
    8a30:	00000000                                ....

00008a34 <os_thread_def_main>:
    8a34:	000001a1 00000000 00000001 00000040     ............@...

00008a44 <os_mutex_def_readpackMutex>:
    8a44:	2000531c                                .S. 

00008a48 <os_mutex_def_sendpackMutex>:
    8a48:	20005330                                0S. 

00008a4c <crc_table>:
    8a4c:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8a5c:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    8a6c:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    8a7c:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    8a8c:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    8a9c:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    8aac:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    8abc:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    8acc:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    8adc:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    8aec:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    8afc:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8b0c:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8b1c:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8b2c:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8b3c:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8b4c:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8b5c:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8b6c:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8b7c:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8b8c:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8b9c:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    8bac:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    8bbc:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8bcc:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8bdc:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8bec:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8bfc:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8c0c:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8c1c:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8c2c:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8c3c:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8c4c:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8c5c:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8c6c:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8c7c:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8c8c:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8c9c:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    8cac:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    8cbc:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8ccc:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8cdc:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8cec:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8cfc:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8d0c:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8d1c:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8d2c:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8d3c:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8d4c:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8d5c:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8d6c:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8d7c:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8d8c:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    8d9c:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    8dac:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    8dbc:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    8dcc:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    8ddc:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    8dec:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    8dfc:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8e0c:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8e1c:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8e2c:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8e3c:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008e4c <crc_table_low>:
    8e4c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8e5c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8e6c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8e7c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8e8c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8e9c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8eac:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8ebc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8ecc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8edc:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8eec:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8efc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8f0c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8f1c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8f2c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8f3c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

00008f4c <crc_table_high>:
    8f4c:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    8f5c:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    8f6c:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    8f7c:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    8f8c:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    8f9c:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    8fac:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    8fbc:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    8fcc:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    8fdc:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    8fec:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    8ffc:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    900c:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    901c:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    902c:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    903c:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

0000904c <defBsiParam>:
    904c:	56789abc 00011234 00020a00 00000a00     ..xV4...........
    905c:	00000000                                ....

00009060 <device_additional_info>:
    9060:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    9070:	00000000                                ....

00009074 <proc_PDU_table>:
    9074:	00003f4d 00003f4d 00003f4d 00003e11     M?..M?..M?...>..
    9084:	000038b1 00003f4d 00003f4d 00003f4d     .8..M?..M?..M?..
    9094:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    90a4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    90b4:	00003a01 00003819 00003f4d 00003f4d     .:...8..M?..M?..
    90c4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    90d4:	00003c05 00003f4d 00003f4d 00003f4d     .<..M?..M?..M?..
    90e4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    90f4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9104:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9114:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9124:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9134:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9144:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9154:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9164:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9174:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9184:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9194:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    91a4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    91b4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    91c4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    91d4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    91e4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    91f4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9204:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9214:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9224:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9234:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9244:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9254:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9264:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9274:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9284:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9294:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    92a4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    92b4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    92c4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    92d4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    92e4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    92f4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9304:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9314:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9324:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9334:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9344:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9354:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9364:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9374:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9384:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9394:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    93a4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    93b4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    93c4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    93d4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    93e4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    93f4:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9404:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9414:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9424:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9434:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9444:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9454:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..
    9464:	00003f4d 00003f4d 00003f4d 00003f4d     M?..M?..M?..M?..

00009474 <_global_impure_ptr>:
    9474:	20000018                                ... 

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
