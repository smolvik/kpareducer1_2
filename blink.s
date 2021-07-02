
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 fd 03 00 00 8d 04 00 00 8d 04 00 00     ... ............
	...
      2c:	3f 45 00 00 00 00 00 00 00 00 00 00 c5 45 00 00     ?E...........E..
      3c:	0d 46 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     .F..............
      4c:	8d 04 00 00 8d 04 00 00 8d 04 00 00 6d 11 00 00     ............m...
      5c:	85 0a 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
      6c:	8d 04 00 00 8d 04 00 00 8d 04 00 00 59 01 00 00     ............Y...
      7c:	7d 01 00 00 8d 04 00 00 8d 04 00 00 c5 25 00 00     }............%..
      8c:	8d 04 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
      9c:	8d 04 00 00 8d 04 00 00 00 00 00 00 00 00 00 00     ................
      ac:	8d 04 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
      bc:	8d 04 00 00                                         ....

000000c0 <main>:
      c0:	b580      	push	{r7, lr}
      c2:	af00      	add	r7, sp, #0
      c4:	f001 feda 	bl	1e7c <SystemInit>
      c8:	f000 f9fe 	bl	4c8 <owen485_init>
      cc:	f000 feda 	bl	e84 <mdb232_init>
      d0:	f001 ff08 	bl	1ee4 <RemoteMacInit>
      d4:	f001 ffb6 	bl	2044 <EthernetConfig>
      d8:	4b15      	ldr	r3, [pc, #84]	; (130 <main+0x70>)
      da:	0018      	movs	r0, r3
      dc:	f006 f8a4 	bl	6228 <osMutexCreate>
      e0:	0002      	movs	r2, r0
      e2:	4b14      	ldr	r3, [pc, #80]	; (134 <main+0x74>)
      e4:	601a      	str	r2, [r3, #0]
      e6:	f005 fa9f 	bl	5628 <osKernelInitialize>
      ea:	4b13      	ldr	r3, [pc, #76]	; (138 <main+0x78>)
      ec:	2100      	movs	r1, #0
      ee:	0018      	movs	r0, r3
      f0:	f006 fb7c 	bl	67ec <osMessageCreate>
      f4:	0002      	movs	r2, r0
      f6:	4b11      	ldr	r3, [pc, #68]	; (13c <main+0x7c>)
      f8:	601a      	str	r2, [r3, #0]
      fa:	4b11      	ldr	r3, [pc, #68]	; (140 <main+0x80>)
      fc:	2100      	movs	r1, #0
      fe:	0018      	movs	r0, r3
     100:	f005 fc24 	bl	594c <osThreadCreate>
     104:	0002      	movs	r2, r0
     106:	4b0f      	ldr	r3, [pc, #60]	; (144 <main+0x84>)
     108:	601a      	str	r2, [r3, #0]
     10a:	4b0f      	ldr	r3, [pc, #60]	; (148 <main+0x88>)
     10c:	2100      	movs	r1, #0
     10e:	0018      	movs	r0, r3
     110:	f005 fc1c 	bl	594c <osThreadCreate>
     114:	0002      	movs	r2, r0
     116:	4b0d      	ldr	r3, [pc, #52]	; (14c <main+0x8c>)
     118:	601a      	str	r2, [r3, #0]
     11a:	4b0d      	ldr	r3, [pc, #52]	; (150 <main+0x90>)
     11c:	2100      	movs	r1, #0
     11e:	0018      	movs	r0, r3
     120:	f005 fc14 	bl	594c <osThreadCreate>
     124:	0002      	movs	r2, r0
     126:	4b0b      	ldr	r3, [pc, #44]	; (154 <main+0x94>)
     128:	601a      	str	r2, [r3, #0]
     12a:	f005 fb19 	bl	5760 <osKernelStart>
     12e:	e7fe      	b.n	12e <main+0x6e>
     130:	000083b8 	.word	0x000083b8
     134:	20000888 	.word	0x20000888
     138:	000083b0 	.word	0x000083b0
     13c:	20000864 	.word	0x20000864
     140:	00008380 	.word	0x00008380
     144:	20000858 	.word	0x20000858
     148:	00008390 	.word	0x00008390
     14c:	2000085c 	.word	0x2000085c
     150:	000083a0 	.word	0x000083a0
     154:	20000860 	.word	0x20000860

00000158 <TIMER1_Handler>:
     158:	b580      	push	{r7, lr}
     15a:	af00      	add	r7, sp, #0
     15c:	4b05      	ldr	r3, [pc, #20]	; (174 <TIMER1_Handler+0x1c>)
     15e:	2200      	movs	r2, #0
     160:	655a      	str	r2, [r3, #84]	; 0x54
     162:	4b05      	ldr	r3, [pc, #20]	; (178 <TIMER1_Handler+0x20>)
     164:	681b      	ldr	r3, [r3, #0]
     166:	2101      	movs	r1, #1
     168:	0018      	movs	r0, r3
     16a:	f005 ffa1 	bl	60b0 <osSignalSet>
     16e:	46c0      	nop			; (mov r8, r8)
     170:	46bd      	mov	sp, r7
     172:	bd80      	pop	{r7, pc}
     174:	40070000 	.word	0x40070000
     178:	20000860 	.word	0x20000860

0000017c <TIMER2_Handler>:
     17c:	b580      	push	{r7, lr}
     17e:	af00      	add	r7, sp, #0
     180:	4b0e      	ldr	r3, [pc, #56]	; (1bc <TIMER2_Handler+0x40>)
     182:	2200      	movs	r2, #0
     184:	655a      	str	r2, [r3, #84]	; 0x54
     186:	4b0e      	ldr	r3, [pc, #56]	; (1c0 <TIMER2_Handler+0x44>)
     188:	681a      	ldr	r2, [r3, #0]
     18a:	4b0e      	ldr	r3, [pc, #56]	; (1c4 <TIMER2_Handler+0x48>)
     18c:	681b      	ldr	r3, [r3, #0]
     18e:	18d3      	adds	r3, r2, r3
     190:	041b      	lsls	r3, r3, #16
     192:	0c1a      	lsrs	r2, r3, #16
     194:	4b0a      	ldr	r3, [pc, #40]	; (1c0 <TIMER2_Handler+0x44>)
     196:	601a      	str	r2, [r3, #0]
     198:	4b09      	ldr	r3, [pc, #36]	; (1c0 <TIMER2_Handler+0x44>)
     19a:	681b      	ldr	r3, [r3, #0]
     19c:	4a0a      	ldr	r2, [pc, #40]	; (1c8 <TIMER2_Handler+0x4c>)
     19e:	4293      	cmp	r3, r2
     1a0:	d904      	bls.n	1ac <TIMER2_Handler+0x30>
     1a2:	4b0a      	ldr	r3, [pc, #40]	; (1cc <TIMER2_Handler+0x50>)
     1a4:	2280      	movs	r2, #128	; 0x80
     1a6:	0152      	lsls	r2, r2, #5
     1a8:	621a      	str	r2, [r3, #32]
     1aa:	e003      	b.n	1b4 <TIMER2_Handler+0x38>
     1ac:	4b07      	ldr	r3, [pc, #28]	; (1cc <TIMER2_Handler+0x50>)
     1ae:	2280      	movs	r2, #128	; 0x80
     1b0:	0152      	lsls	r2, r2, #5
     1b2:	625a      	str	r2, [r3, #36]	; 0x24
     1b4:	46c0      	nop			; (mov r8, r8)
     1b6:	46bd      	mov	sp, r7
     1b8:	bd80      	pop	{r7, pc}
     1ba:	46c0      	nop			; (mov r8, r8)
     1bc:	40078000 	.word	0x40078000
     1c0:	200008a0 	.word	0x200008a0
     1c4:	2000089c 	.word	0x2000089c
     1c8:	00007530 	.word	0x00007530
     1cc:	400b0000 	.word	0x400b0000

000001d0 <dut_start>:
     1d0:	b580      	push	{r7, lr}
     1d2:	af00      	add	r7, sp, #0
     1d4:	4b06      	ldr	r3, [pc, #24]	; (1f0 <dut_start+0x20>)
     1d6:	4a06      	ldr	r2, [pc, #24]	; (1f0 <dut_start+0x20>)
     1d8:	68d2      	ldr	r2, [r2, #12]
     1da:	2101      	movs	r1, #1
     1dc:	430a      	orrs	r2, r1
     1de:	60da      	str	r2, [r3, #12]
     1e0:	4b04      	ldr	r3, [pc, #16]	; (1f4 <dut_start+0x24>)
     1e2:	2280      	movs	r2, #128	; 0x80
     1e4:	0112      	lsls	r2, r2, #4
     1e6:	621a      	str	r2, [r3, #32]
     1e8:	46c0      	nop			; (mov r8, r8)
     1ea:	46bd      	mov	sp, r7
     1ec:	bd80      	pop	{r7, pc}
     1ee:	46c0      	nop			; (mov r8, r8)
     1f0:	40078000 	.word	0x40078000
     1f4:	400b0000 	.word	0x400b0000

000001f8 <dut_stop>:
     1f8:	b580      	push	{r7, lr}
     1fa:	af00      	add	r7, sp, #0
     1fc:	4b06      	ldr	r3, [pc, #24]	; (218 <__UVISION_VERSION+0xf>)
     1fe:	4a06      	ldr	r2, [pc, #24]	; (218 <__UVISION_VERSION+0xf>)
     200:	68d2      	ldr	r2, [r2, #12]
     202:	2101      	movs	r1, #1
     204:	438a      	bics	r2, r1
     206:	60da      	str	r2, [r3, #12]
     208:	4b04      	ldr	r3, [pc, #16]	; (21c <__UVISION_VERSION+0x13>)
     20a:	2280      	movs	r2, #128	; 0x80
     20c:	0112      	lsls	r2, r2, #4
     20e:	625a      	str	r2, [r3, #36]	; 0x24
     210:	46c0      	nop			; (mov r8, r8)
     212:	46bd      	mov	sp, r7
     214:	bd80      	pop	{r7, pc}
     216:	46c0      	nop			; (mov r8, r8)
     218:	40078000 	.word	0x40078000
     21c:	400b0000 	.word	0x400b0000

00000220 <dut_set_speed>:
     220:	b580      	push	{r7, lr}
     222:	b082      	sub	sp, #8
     224:	af00      	add	r7, sp, #0
     226:	6078      	str	r0, [r7, #4]
     228:	687b      	ldr	r3, [r7, #4]
     22a:	121b      	asrs	r3, r3, #8
     22c:	001a      	movs	r2, r3
     22e:	4b03      	ldr	r3, [pc, #12]	; (23c <dut_set_speed+0x1c>)
     230:	601a      	str	r2, [r3, #0]
     232:	46c0      	nop			; (mov r8, r8)
     234:	46bd      	mov	sp, r7
     236:	b002      	add	sp, #8
     238:	bd80      	pop	{r7, pc}
     23a:	46c0      	nop			; (mov r8, r8)
     23c:	2000089c 	.word	0x2000089c

00000240 <dut_set_torque>:
     240:	b580      	push	{r7, lr}
     242:	b082      	sub	sp, #8
     244:	af00      	add	r7, sp, #0
     246:	6078      	str	r0, [r7, #4]
     248:	46c0      	nop			; (mov r8, r8)
     24a:	46bd      	mov	sp, r7
     24c:	b002      	add	sp, #8
     24e:	bd80      	pop	{r7, pc}

00000250 <threadDUTProceed>:
     250:	b580      	push	{r7, lr}
     252:	b092      	sub	sp, #72	; 0x48
     254:	af00      	add	r7, sp, #0
     256:	6078      	str	r0, [r7, #4]
     258:	2300      	movs	r3, #0
     25a:	647b      	str	r3, [r7, #68]	; 0x44
     25c:	231c      	movs	r3, #28
     25e:	18fb      	adds	r3, r7, r3
     260:	2200      	movs	r2, #0
     262:	601a      	str	r2, [r3, #0]
     264:	231c      	movs	r3, #28
     266:	18fb      	adds	r3, r7, r3
     268:	2200      	movs	r2, #0
     26a:	605a      	str	r2, [r3, #4]
     26c:	231c      	movs	r3, #28
     26e:	18fb      	adds	r3, r7, r3
     270:	2200      	movs	r2, #0
     272:	609a      	str	r2, [r3, #8]
     274:	231c      	movs	r3, #28
     276:	18fb      	adds	r3, r7, r3
     278:	2200      	movs	r2, #0
     27a:	60da      	str	r2, [r3, #12]
     27c:	231c      	movs	r3, #28
     27e:	18fb      	adds	r3, r7, r3
     280:	2200      	movs	r2, #0
     282:	611a      	str	r2, [r3, #16]
     284:	231c      	movs	r3, #28
     286:	18fb      	adds	r3, r7, r3
     288:	2200      	movs	r2, #0
     28a:	615a      	str	r2, [r3, #20]
     28c:	231c      	movs	r3, #28
     28e:	18fb      	adds	r3, r7, r3
     290:	2200      	movs	r2, #0
     292:	619a      	str	r2, [r3, #24]
     294:	231c      	movs	r3, #28
     296:	18fb      	adds	r3, r7, r3
     298:	2200      	movs	r2, #0
     29a:	61da      	str	r2, [r3, #28]
     29c:	2310      	movs	r3, #16
     29e:	18f8      	adds	r0, r7, r3
     2a0:	2301      	movs	r3, #1
     2a2:	425b      	negs	r3, r3
     2a4:	001a      	movs	r2, r3
     2a6:	2100      	movs	r1, #0
     2a8:	f005 ff30 	bl	610c <osSignalWait>
     2ac:	2310      	movs	r3, #16
     2ae:	18fb      	adds	r3, r7, r3
     2b0:	681b      	ldr	r3, [r3, #0]
     2b2:	2b08      	cmp	r3, #8
     2b4:	d1f2      	bne.n	29c <threadDUTProceed+0x4c>
     2b6:	2310      	movs	r3, #16
     2b8:	18fb      	adds	r3, r7, r3
     2ba:	685b      	ldr	r3, [r3, #4]
     2bc:	2b02      	cmp	r3, #2
     2be:	d029      	beq.n	314 <threadDUTProceed+0xc4>
     2c0:	2b04      	cmp	r3, #4
     2c2:	d033      	beq.n	32c <threadDUTProceed+0xdc>
     2c4:	2b01      	cmp	r3, #1
     2c6:	d170      	bne.n	3aa <threadDUTProceed+0x15a>
     2c8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     2ca:	2b01      	cmp	r3, #1
     2cc:	d916      	bls.n	2fc <threadDUTProceed+0xac>
     2ce:	4b37      	ldr	r3, [pc, #220]	; (3ac <threadDUTProceed+0x15c>)
     2d0:	681a      	ldr	r2, [r3, #0]
     2d2:	231c      	movs	r3, #28
     2d4:	18fb      	adds	r3, r7, r3
     2d6:	605a      	str	r2, [r3, #4]
     2d8:	f003 ff06 	bl	40e8 <fsm_get_cyccnt>
     2dc:	0002      	movs	r2, r0
     2de:	231c      	movs	r3, #28
     2e0:	18fb      	adds	r3, r7, r3
     2e2:	619a      	str	r2, [r3, #24]
     2e4:	231c      	movs	r3, #28
     2e6:	18fb      	adds	r3, r7, r3
     2e8:	2120      	movs	r1, #32
     2ea:	0018      	movs	r0, r3
     2ec:	f003 f94a 	bl	3584 <mdb_fifo_write>
     2f0:	231c      	movs	r3, #28
     2f2:	18fb      	adds	r3, r7, r3
     2f4:	2200      	movs	r2, #0
     2f6:	61da      	str	r2, [r3, #28]
     2f8:	2300      	movs	r3, #0
     2fa:	647b      	str	r3, [r7, #68]	; 0x44
     2fc:	2301      	movs	r3, #1
     2fe:	647b      	str	r3, [r7, #68]	; 0x44
     300:	2204      	movs	r2, #4
     302:	2100      	movs	r1, #0
     304:	2001      	movs	r0, #1
     306:	f000 fe17 	bl	f38 <mdb232_read_inputregs>
     30a:	4b29      	ldr	r3, [pc, #164]	; (3b0 <threadDUTProceed+0x160>)
     30c:	0018      	movs	r0, r3
     30e:	f000 fa5d 	bl	7cc <owen_si8_request>
     312:	e04a      	b.n	3aa <threadDUTProceed+0x15a>
     314:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     316:	2202      	movs	r2, #2
     318:	4313      	orrs	r3, r2
     31a:	647b      	str	r3, [r7, #68]	; 0x44
     31c:	f000 fed0 	bl	10c0 <mdb232_bikm_get_torque>
     320:	0003      	movs	r3, r0
     322:	001a      	movs	r2, r3
     324:	231c      	movs	r3, #28
     326:	18fb      	adds	r3, r7, r3
     328:	605a      	str	r2, [r3, #4]
     32a:	e03e      	b.n	3aa <threadDUTProceed+0x15a>
     32c:	230c      	movs	r3, #12
     32e:	18fb      	adds	r3, r7, r3
     330:	0018      	movs	r0, r3
     332:	f000 fa77 	bl	824 <owen485_get>
     336:	0003      	movs	r3, r0
     338:	643b      	str	r3, [r7, #64]	; 0x40
     33a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     33c:	2b01      	cmp	r3, #1
     33e:	d118      	bne.n	372 <threadDUTProceed+0x122>
     340:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     342:	2204      	movs	r2, #4
     344:	4313      	orrs	r3, r2
     346:	647b      	str	r3, [r7, #68]	; 0x44
     348:	68fa      	ldr	r2, [r7, #12]
     34a:	231c      	movs	r3, #28
     34c:	18fb      	adds	r3, r7, r3
     34e:	601a      	str	r2, [r3, #0]
     350:	4b18      	ldr	r3, [pc, #96]	; (3b4 <threadDUTProceed+0x164>)
     352:	0018      	movs	r0, r3
     354:	f000 fa3a 	bl	7cc <owen_si8_request>
     358:	68fb      	ldr	r3, [r7, #12]
     35a:	021b      	lsls	r3, r3, #8
     35c:	2204      	movs	r2, #4
     35e:	4313      	orrs	r3, r2
     360:	63fb      	str	r3, [r7, #60]	; 0x3c
     362:	4b15      	ldr	r3, [pc, #84]	; (3b8 <threadDUTProceed+0x168>)
     364:	681b      	ldr	r3, [r3, #0]
     366:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
     368:	2200      	movs	r2, #0
     36a:	0018      	movs	r0, r3
     36c:	f006 fa6a 	bl	6844 <osMessagePut>
     370:	e01a      	b.n	3a8 <threadDUTProceed+0x158>
     372:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     374:	2b02      	cmp	r3, #2
     376:	d10d      	bne.n	394 <threadDUTProceed+0x144>
     378:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     37a:	2208      	movs	r2, #8
     37c:	4313      	orrs	r3, r2
     37e:	647b      	str	r3, [r7, #68]	; 0x44
     380:	68fa      	ldr	r2, [r7, #12]
     382:	0013      	movs	r3, r2
     384:	011b      	lsls	r3, r3, #4
     386:	1a9b      	subs	r3, r3, r2
     388:	029b      	lsls	r3, r3, #10
     38a:	001a      	movs	r2, r3
     38c:	231c      	movs	r3, #28
     38e:	18fb      	adds	r3, r7, r3
     390:	609a      	str	r2, [r3, #8]
     392:	e009      	b.n	3a8 <threadDUTProceed+0x158>
     394:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     396:	2b03      	cmp	r3, #3
     398:	d104      	bne.n	3a4 <threadDUTProceed+0x154>
     39a:	68fa      	ldr	r2, [r7, #12]
     39c:	231c      	movs	r3, #28
     39e:	18fb      	adds	r3, r7, r3
     3a0:	61da      	str	r2, [r3, #28]
     3a2:	e001      	b.n	3a8 <threadDUTProceed+0x158>
     3a4:	2300      	movs	r3, #0
     3a6:	643b      	str	r3, [r7, #64]	; 0x40
     3a8:	46c0      	nop			; (mov r8, r8)
     3aa:	e777      	b.n	29c <threadDUTProceed+0x4c>
     3ac:	20005fec 	.word	0x20005fec
     3b0:	0000c173 	.word	0x0000c173
     3b4:	0000e69c 	.word	0x0000e69c
     3b8:	20000864 	.word	0x20000864

000003bc <threadFSMProceed>:
     3bc:	b580      	push	{r7, lr}
     3be:	b086      	sub	sp, #24
     3c0:	af00      	add	r7, sp, #0
     3c2:	6078      	str	r0, [r7, #4]
     3c4:	4b0b      	ldr	r3, [pc, #44]	; (3f4 <threadFSMProceed+0x38>)
     3c6:	6819      	ldr	r1, [r3, #0]
     3c8:	2308      	movs	r3, #8
     3ca:	18f8      	adds	r0, r7, r3
     3cc:	2301      	movs	r3, #1
     3ce:	425b      	negs	r3, r3
     3d0:	001a      	movs	r2, r3
     3d2:	f006 fa5b 	bl	688c <osMessageGet>
     3d6:	2308      	movs	r3, #8
     3d8:	18fb      	adds	r3, r7, r3
     3da:	681b      	ldr	r3, [r3, #0]
     3dc:	2b10      	cmp	r3, #16
     3de:	d1f1      	bne.n	3c4 <threadFSMProceed+0x8>
     3e0:	2308      	movs	r3, #8
     3e2:	18fb      	adds	r3, r7, r3
     3e4:	685b      	ldr	r3, [r3, #4]
     3e6:	617b      	str	r3, [r7, #20]
     3e8:	4b03      	ldr	r3, [pc, #12]	; (3f8 <threadFSMProceed+0x3c>)
     3ea:	681b      	ldr	r3, [r3, #0]
     3ec:	697a      	ldr	r2, [r7, #20]
     3ee:	0010      	movs	r0, r2
     3f0:	4798      	blx	r3
     3f2:	e7e7      	b.n	3c4 <threadFSMProceed+0x8>
     3f4:	20000864 	.word	0x20000864
     3f8:	20000010 	.word	0x20000010

000003fc <handler_reset>:
     3fc:	b580      	push	{r7, lr}
     3fe:	b082      	sub	sp, #8
     400:	af00      	add	r7, sp, #0
     402:	4b1a      	ldr	r3, [pc, #104]	; (46c <_stack_size+0x6c>)
     404:	607b      	str	r3, [r7, #4]
     406:	4b1a      	ldr	r3, [pc, #104]	; (470 <_stack_size+0x70>)
     408:	603b      	str	r3, [r7, #0]
     40a:	e007      	b.n	41c <_stack_size+0x1c>
     40c:	683b      	ldr	r3, [r7, #0]
     40e:	1d1a      	adds	r2, r3, #4
     410:	603a      	str	r2, [r7, #0]
     412:	687a      	ldr	r2, [r7, #4]
     414:	1d11      	adds	r1, r2, #4
     416:	6079      	str	r1, [r7, #4]
     418:	6812      	ldr	r2, [r2, #0]
     41a:	601a      	str	r2, [r3, #0]
     41c:	683a      	ldr	r2, [r7, #0]
     41e:	4b15      	ldr	r3, [pc, #84]	; (474 <_stack_size+0x74>)
     420:	429a      	cmp	r2, r3
     422:	d3f3      	bcc.n	40c <_stack_size+0xc>
     424:	4b14      	ldr	r3, [pc, #80]	; (478 <_stack_size+0x78>)
     426:	607b      	str	r3, [r7, #4]
     428:	4b14      	ldr	r3, [pc, #80]	; (47c <_stack_size+0x7c>)
     42a:	603b      	str	r3, [r7, #0]
     42c:	e007      	b.n	43e <_stack_size+0x3e>
     42e:	683b      	ldr	r3, [r7, #0]
     430:	1d1a      	adds	r2, r3, #4
     432:	603a      	str	r2, [r7, #0]
     434:	687a      	ldr	r2, [r7, #4]
     436:	1d11      	adds	r1, r2, #4
     438:	6079      	str	r1, [r7, #4]
     43a:	6812      	ldr	r2, [r2, #0]
     43c:	601a      	str	r2, [r3, #0]
     43e:	683a      	ldr	r2, [r7, #0]
     440:	4b0f      	ldr	r3, [pc, #60]	; (480 <_stack_size+0x80>)
     442:	429a      	cmp	r2, r3
     444:	d3f3      	bcc.n	42e <_stack_size+0x2e>
     446:	4b0f      	ldr	r3, [pc, #60]	; (484 <_stack_size+0x84>)
     448:	603b      	str	r3, [r7, #0]
     44a:	e004      	b.n	456 <_stack_size+0x56>
     44c:	683b      	ldr	r3, [r7, #0]
     44e:	1d1a      	adds	r2, r3, #4
     450:	603a      	str	r2, [r7, #0]
     452:	2200      	movs	r2, #0
     454:	601a      	str	r2, [r3, #0]
     456:	683a      	ldr	r2, [r7, #0]
     458:	4b0b      	ldr	r3, [pc, #44]	; (488 <_stack_size+0x88>)
     45a:	429a      	cmp	r2, r3
     45c:	d3f6      	bcc.n	44c <_stack_size+0x4c>
     45e:	f7ff fe2f 	bl	c0 <main>
     462:	46c0      	nop			; (mov r8, r8)
     464:	46bd      	mov	sp, r7
     466:	b002      	add	sp, #8
     468:	bd80      	pop	{r7, pc}
     46a:	46c0      	nop			; (mov r8, r8)
     46c:	00009140 	.word	0x00009140
     470:	20000000 	.word	0x20000000
     474:	20000858 	.word	0x20000858
     478:	00009998 	.word	0x00009998
     47c:	20100000 	.word	0x20100000
     480:	201002a0 	.word	0x201002a0
     484:	20000858 	.word	0x20000858
     488:	200060b0 	.word	0x200060b0

0000048c <default_handler>:
     48c:	b580      	push	{r7, lr}
     48e:	af00      	add	r7, sp, #0
     490:	e7fe      	b.n	490 <default_handler+0x4>
     492:	46c0      	nop			; (mov r8, r8)

00000494 <__NVIC_EnableIRQ>:
     494:	b580      	push	{r7, lr}
     496:	b082      	sub	sp, #8
     498:	af00      	add	r7, sp, #0
     49a:	0002      	movs	r2, r0
     49c:	1dfb      	adds	r3, r7, #7
     49e:	701a      	strb	r2, [r3, #0]
     4a0:	1dfb      	adds	r3, r7, #7
     4a2:	781b      	ldrb	r3, [r3, #0]
     4a4:	2b7f      	cmp	r3, #127	; 0x7f
     4a6:	d809      	bhi.n	4bc <__NVIC_EnableIRQ+0x28>
     4a8:	4b06      	ldr	r3, [pc, #24]	; (4c4 <__NVIC_EnableIRQ+0x30>)
     4aa:	1dfa      	adds	r2, r7, #7
     4ac:	7812      	ldrb	r2, [r2, #0]
     4ae:	0011      	movs	r1, r2
     4b0:	221f      	movs	r2, #31
     4b2:	400a      	ands	r2, r1
     4b4:	2101      	movs	r1, #1
     4b6:	4091      	lsls	r1, r2
     4b8:	000a      	movs	r2, r1
     4ba:	601a      	str	r2, [r3, #0]
     4bc:	46c0      	nop			; (mov r8, r8)
     4be:	46bd      	mov	sp, r7
     4c0:	b002      	add	sp, #8
     4c2:	bd80      	pop	{r7, pc}
     4c4:	e000e100 	.word	0xe000e100

000004c8 <owen485_init>:
     4c8:	b580      	push	{r7, lr}
     4ca:	af00      	add	r7, sp, #0
     4cc:	4b16      	ldr	r3, [pc, #88]	; (528 <owen485_init+0x60>)
     4ce:	2268      	movs	r2, #104	; 0x68
     4d0:	625a      	str	r2, [r3, #36]	; 0x24
     4d2:	4b15      	ldr	r3, [pc, #84]	; (528 <owen485_init+0x60>)
     4d4:	220b      	movs	r2, #11
     4d6:	629a      	str	r2, [r3, #40]	; 0x28
     4d8:	4b13      	ldr	r3, [pc, #76]	; (528 <owen485_init+0x60>)
     4da:	4a13      	ldr	r2, [pc, #76]	; (528 <owen485_init+0x60>)
     4dc:	6b52      	ldr	r2, [r2, #52]	; 0x34
     4de:	213f      	movs	r1, #63	; 0x3f
     4e0:	438a      	bics	r2, r1
     4e2:	635a      	str	r2, [r3, #52]	; 0x34
     4e4:	4b10      	ldr	r3, [pc, #64]	; (528 <owen485_init+0x60>)
     4e6:	4a10      	ldr	r2, [pc, #64]	; (528 <owen485_init+0x60>)
     4e8:	6b52      	ldr	r2, [r2, #52]	; 0x34
     4ea:	2120      	movs	r1, #32
     4ec:	430a      	orrs	r2, r1
     4ee:	635a      	str	r2, [r3, #52]	; 0x34
     4f0:	4b0d      	ldr	r3, [pc, #52]	; (528 <owen485_init+0x60>)
     4f2:	4a0d      	ldr	r2, [pc, #52]	; (528 <owen485_init+0x60>)
     4f4:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     4f6:	2110      	movs	r1, #16
     4f8:	430a      	orrs	r2, r1
     4fa:	62da      	str	r2, [r3, #44]	; 0x2c
     4fc:	4b0a      	ldr	r3, [pc, #40]	; (528 <owen485_init+0x60>)
     4fe:	4a0a      	ldr	r2, [pc, #40]	; (528 <owen485_init+0x60>)
     500:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     502:	2160      	movs	r1, #96	; 0x60
     504:	430a      	orrs	r2, r1
     506:	62da      	str	r2, [r3, #44]	; 0x2c
     508:	4b07      	ldr	r3, [pc, #28]	; (528 <owen485_init+0x60>)
     50a:	4a07      	ldr	r2, [pc, #28]	; (528 <owen485_init+0x60>)
     50c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     50e:	4907      	ldr	r1, [pc, #28]	; (52c <owen485_init+0x64>)
     510:	430a      	orrs	r2, r1
     512:	631a      	str	r2, [r3, #48]	; 0x30
     514:	4b04      	ldr	r3, [pc, #16]	; (528 <owen485_init+0x60>)
     516:	2250      	movs	r2, #80	; 0x50
     518:	639a      	str	r2, [r3, #56]	; 0x38
     51a:	2007      	movs	r0, #7
     51c:	f7ff ffba 	bl	494 <__NVIC_EnableIRQ>
     520:	46c0      	nop			; (mov r8, r8)
     522:	46bd      	mov	sp, r7
     524:	bd80      	pop	{r7, pc}
     526:	46c0      	nop			; (mov r8, r8)
     528:	40038000 	.word	0x40038000
     52c:	00000301 	.word	0x00000301

00000530 <owen485_send>:
     530:	b580      	push	{r7, lr}
     532:	b082      	sub	sp, #8
     534:	af00      	add	r7, sp, #0
     536:	6078      	str	r0, [r7, #4]
     538:	4b13      	ldr	r3, [pc, #76]	; (588 <owen485_send+0x58>)
     53a:	4a13      	ldr	r2, [pc, #76]	; (588 <owen485_send+0x58>)
     53c:	6812      	ldr	r2, [r2, #0]
     53e:	2180      	movs	r1, #128	; 0x80
     540:	0209      	lsls	r1, r1, #8
     542:	430a      	orrs	r2, r1
     544:	601a      	str	r2, [r3, #0]
     546:	e00b      	b.n	560 <owen485_send+0x30>
     548:	46c0      	nop			; (mov r8, r8)
     54a:	4b10      	ldr	r3, [pc, #64]	; (58c <owen485_send+0x5c>)
     54c:	699b      	ldr	r3, [r3, #24]
     54e:	2220      	movs	r2, #32
     550:	4013      	ands	r3, r2
     552:	d1fa      	bne.n	54a <owen485_send+0x1a>
     554:	4a0d      	ldr	r2, [pc, #52]	; (58c <owen485_send+0x5c>)
     556:	687b      	ldr	r3, [r7, #4]
     558:	1c59      	adds	r1, r3, #1
     55a:	6079      	str	r1, [r7, #4]
     55c:	781b      	ldrb	r3, [r3, #0]
     55e:	6013      	str	r3, [r2, #0]
     560:	687b      	ldr	r3, [r7, #4]
     562:	781b      	ldrb	r3, [r3, #0]
     564:	2b00      	cmp	r3, #0
     566:	d1ef      	bne.n	548 <owen485_send+0x18>
     568:	46c0      	nop			; (mov r8, r8)
     56a:	4b08      	ldr	r3, [pc, #32]	; (58c <owen485_send+0x5c>)
     56c:	699b      	ldr	r3, [r3, #24]
     56e:	2208      	movs	r2, #8
     570:	4013      	ands	r3, r2
     572:	d1fa      	bne.n	56a <owen485_send+0x3a>
     574:	4b04      	ldr	r3, [pc, #16]	; (588 <owen485_send+0x58>)
     576:	4a04      	ldr	r2, [pc, #16]	; (588 <owen485_send+0x58>)
     578:	6812      	ldr	r2, [r2, #0]
     57a:	4905      	ldr	r1, [pc, #20]	; (590 <owen485_send+0x60>)
     57c:	400a      	ands	r2, r1
     57e:	601a      	str	r2, [r3, #0]
     580:	46c0      	nop			; (mov r8, r8)
     582:	46bd      	mov	sp, r7
     584:	b002      	add	sp, #8
     586:	bd80      	pop	{r7, pc}
     588:	400c0000 	.word	0x400c0000
     58c:	40038000 	.word	0x40038000
     590:	ffff7fff 	.word	0xffff7fff

00000594 <owen_unpack_ascii>:
     594:	b580      	push	{r7, lr}
     596:	b088      	sub	sp, #32
     598:	af00      	add	r7, sp, #0
     59a:	60f8      	str	r0, [r7, #12]
     59c:	60b9      	str	r1, [r7, #8]
     59e:	607a      	str	r2, [r7, #4]
     5a0:	68fb      	ldr	r3, [r7, #12]
     5a2:	3301      	adds	r3, #1
     5a4:	60fb      	str	r3, [r7, #12]
     5a6:	687b      	ldr	r3, [r7, #4]
     5a8:	105b      	asrs	r3, r3, #1
     5aa:	61bb      	str	r3, [r7, #24]
     5ac:	2300      	movs	r3, #0
     5ae:	61fb      	str	r3, [r7, #28]
     5b0:	e03e      	b.n	630 <owen_unpack_ascii+0x9c>
     5b2:	68fb      	ldr	r3, [r7, #12]
     5b4:	781b      	ldrb	r3, [r3, #0]
     5b6:	2b00      	cmp	r3, #0
     5b8:	d03e      	beq.n	638 <owen_unpack_ascii+0xa4>
     5ba:	68fb      	ldr	r3, [r7, #12]
     5bc:	781b      	ldrb	r3, [r3, #0]
     5be:	2b0d      	cmp	r3, #13
     5c0:	d03a      	beq.n	638 <owen_unpack_ascii+0xa4>
     5c2:	68fb      	ldr	r3, [r7, #12]
     5c4:	781b      	ldrb	r3, [r3, #0]
     5c6:	2b0a      	cmp	r3, #10
     5c8:	d036      	beq.n	638 <owen_unpack_ascii+0xa4>
     5ca:	68fb      	ldr	r3, [r7, #12]
     5cc:	1c5a      	adds	r2, r3, #1
     5ce:	60fa      	str	r2, [r7, #12]
     5d0:	781a      	ldrb	r2, [r3, #0]
     5d2:	2317      	movs	r3, #23
     5d4:	18fb      	adds	r3, r7, r3
     5d6:	3a47      	subs	r2, #71	; 0x47
     5d8:	701a      	strb	r2, [r3, #0]
     5da:	2317      	movs	r3, #23
     5dc:	18fb      	adds	r3, r7, r3
     5de:	781b      	ldrb	r3, [r3, #0]
     5e0:	22f0      	movs	r2, #240	; 0xf0
     5e2:	4013      	ands	r3, r2
     5e4:	d001      	beq.n	5ea <owen_unpack_ascii+0x56>
     5e6:	2300      	movs	r3, #0
     5e8:	e027      	b.n	63a <owen_unpack_ascii+0xa6>
     5ea:	68fb      	ldr	r3, [r7, #12]
     5ec:	1c5a      	adds	r2, r3, #1
     5ee:	60fa      	str	r2, [r7, #12]
     5f0:	781a      	ldrb	r2, [r3, #0]
     5f2:	2316      	movs	r3, #22
     5f4:	18fb      	adds	r3, r7, r3
     5f6:	3a47      	subs	r2, #71	; 0x47
     5f8:	701a      	strb	r2, [r3, #0]
     5fa:	2316      	movs	r3, #22
     5fc:	18fb      	adds	r3, r7, r3
     5fe:	781b      	ldrb	r3, [r3, #0]
     600:	22f0      	movs	r2, #240	; 0xf0
     602:	4013      	ands	r3, r2
     604:	d001      	beq.n	60a <owen_unpack_ascii+0x76>
     606:	2300      	movs	r3, #0
     608:	e017      	b.n	63a <owen_unpack_ascii+0xa6>
     60a:	68bb      	ldr	r3, [r7, #8]
     60c:	1c5a      	adds	r2, r3, #1
     60e:	60ba      	str	r2, [r7, #8]
     610:	2217      	movs	r2, #23
     612:	18ba      	adds	r2, r7, r2
     614:	7812      	ldrb	r2, [r2, #0]
     616:	0112      	lsls	r2, r2, #4
     618:	b251      	sxtb	r1, r2
     61a:	2216      	movs	r2, #22
     61c:	18ba      	adds	r2, r7, r2
     61e:	7812      	ldrb	r2, [r2, #0]
     620:	b252      	sxtb	r2, r2
     622:	430a      	orrs	r2, r1
     624:	b252      	sxtb	r2, r2
     626:	b2d2      	uxtb	r2, r2
     628:	701a      	strb	r2, [r3, #0]
     62a:	69fb      	ldr	r3, [r7, #28]
     62c:	3301      	adds	r3, #1
     62e:	61fb      	str	r3, [r7, #28]
     630:	69fa      	ldr	r2, [r7, #28]
     632:	69bb      	ldr	r3, [r7, #24]
     634:	429a      	cmp	r2, r3
     636:	dbbc      	blt.n	5b2 <owen_unpack_ascii+0x1e>
     638:	69fb      	ldr	r3, [r7, #28]
     63a:	0018      	movs	r0, r3
     63c:	46bd      	mov	sp, r7
     63e:	b008      	add	sp, #32
     640:	bd80      	pop	{r7, pc}
     642:	46c0      	nop			; (mov r8, r8)

00000644 <owen_pack_ascii>:
     644:	b580      	push	{r7, lr}
     646:	b086      	sub	sp, #24
     648:	af00      	add	r7, sp, #0
     64a:	60f8      	str	r0, [r7, #12]
     64c:	60b9      	str	r1, [r7, #8]
     64e:	607a      	str	r2, [r7, #4]
     650:	68bb      	ldr	r3, [r7, #8]
     652:	1c5a      	adds	r2, r3, #1
     654:	60ba      	str	r2, [r7, #8]
     656:	2223      	movs	r2, #35	; 0x23
     658:	701a      	strb	r2, [r3, #0]
     65a:	2300      	movs	r3, #0
     65c:	617b      	str	r3, [r7, #20]
     65e:	e020      	b.n	6a2 <owen_pack_ascii+0x5e>
     660:	68fb      	ldr	r3, [r7, #12]
     662:	1c5a      	adds	r2, r3, #1
     664:	60fa      	str	r2, [r7, #12]
     666:	2213      	movs	r2, #19
     668:	18ba      	adds	r2, r7, r2
     66a:	781b      	ldrb	r3, [r3, #0]
     66c:	7013      	strb	r3, [r2, #0]
     66e:	68bb      	ldr	r3, [r7, #8]
     670:	1c5a      	adds	r2, r3, #1
     672:	60ba      	str	r2, [r7, #8]
     674:	2213      	movs	r2, #19
     676:	18ba      	adds	r2, r7, r2
     678:	7812      	ldrb	r2, [r2, #0]
     67a:	0912      	lsrs	r2, r2, #4
     67c:	b2d2      	uxtb	r2, r2
     67e:	3247      	adds	r2, #71	; 0x47
     680:	b2d2      	uxtb	r2, r2
     682:	701a      	strb	r2, [r3, #0]
     684:	68bb      	ldr	r3, [r7, #8]
     686:	1c5a      	adds	r2, r3, #1
     688:	60ba      	str	r2, [r7, #8]
     68a:	2213      	movs	r2, #19
     68c:	18ba      	adds	r2, r7, r2
     68e:	7812      	ldrb	r2, [r2, #0]
     690:	210f      	movs	r1, #15
     692:	400a      	ands	r2, r1
     694:	b2d2      	uxtb	r2, r2
     696:	3247      	adds	r2, #71	; 0x47
     698:	b2d2      	uxtb	r2, r2
     69a:	701a      	strb	r2, [r3, #0]
     69c:	697b      	ldr	r3, [r7, #20]
     69e:	3301      	adds	r3, #1
     6a0:	617b      	str	r3, [r7, #20]
     6a2:	697a      	ldr	r2, [r7, #20]
     6a4:	687b      	ldr	r3, [r7, #4]
     6a6:	429a      	cmp	r2, r3
     6a8:	dbda      	blt.n	660 <owen_pack_ascii+0x1c>
     6aa:	68bb      	ldr	r3, [r7, #8]
     6ac:	1c5a      	adds	r2, r3, #1
     6ae:	60ba      	str	r2, [r7, #8]
     6b0:	220d      	movs	r2, #13
     6b2:	701a      	strb	r2, [r3, #0]
     6b4:	68bb      	ldr	r3, [r7, #8]
     6b6:	1c5a      	adds	r2, r3, #1
     6b8:	60ba      	str	r2, [r7, #8]
     6ba:	2200      	movs	r2, #0
     6bc:	701a      	strb	r2, [r3, #0]
     6be:	46c0      	nop			; (mov r8, r8)
     6c0:	46bd      	mov	sp, r7
     6c2:	b006      	add	sp, #24
     6c4:	bd80      	pop	{r7, pc}
     6c6:	46c0      	nop			; (mov r8, r8)

000006c8 <owen_crc16_wtb>:
     6c8:	b580      	push	{r7, lr}
     6ca:	b084      	sub	sp, #16
     6cc:	af00      	add	r7, sp, #0
     6ce:	6078      	str	r0, [r7, #4]
     6d0:	6039      	str	r1, [r7, #0]
     6d2:	230a      	movs	r3, #10
     6d4:	18fb      	adds	r3, r7, r3
     6d6:	2200      	movs	r2, #0
     6d8:	801a      	strh	r2, [r3, #0]
     6da:	2300      	movs	r3, #0
     6dc:	60fb      	str	r3, [r7, #12]
     6de:	e01c      	b.n	71a <owen_crc16_wtb+0x52>
     6e0:	230a      	movs	r3, #10
     6e2:	18fb      	adds	r3, r7, r3
     6e4:	881b      	ldrh	r3, [r3, #0]
     6e6:	021b      	lsls	r3, r3, #8
     6e8:	b21a      	sxth	r2, r3
     6ea:	230a      	movs	r3, #10
     6ec:	18fb      	adds	r3, r7, r3
     6ee:	881b      	ldrh	r3, [r3, #0]
     6f0:	0a1b      	lsrs	r3, r3, #8
     6f2:	b29b      	uxth	r3, r3
     6f4:	0018      	movs	r0, r3
     6f6:	68fb      	ldr	r3, [r7, #12]
     6f8:	6879      	ldr	r1, [r7, #4]
     6fa:	18cb      	adds	r3, r1, r3
     6fc:	781b      	ldrb	r3, [r3, #0]
     6fe:	0001      	movs	r1, r0
     700:	4059      	eors	r1, r3
     702:	4b0b      	ldr	r3, [pc, #44]	; (730 <owen_crc16_wtb+0x68>)
     704:	0049      	lsls	r1, r1, #1
     706:	5acb      	ldrh	r3, [r1, r3]
     708:	b21b      	sxth	r3, r3
     70a:	4053      	eors	r3, r2
     70c:	b21a      	sxth	r2, r3
     70e:	230a      	movs	r3, #10
     710:	18fb      	adds	r3, r7, r3
     712:	801a      	strh	r2, [r3, #0]
     714:	68fb      	ldr	r3, [r7, #12]
     716:	3301      	adds	r3, #1
     718:	60fb      	str	r3, [r7, #12]
     71a:	68fa      	ldr	r2, [r7, #12]
     71c:	683b      	ldr	r3, [r7, #0]
     71e:	429a      	cmp	r2, r3
     720:	dbde      	blt.n	6e0 <owen_crc16_wtb+0x18>
     722:	230a      	movs	r3, #10
     724:	18fb      	adds	r3, r7, r3
     726:	881b      	ldrh	r3, [r3, #0]
     728:	0018      	movs	r0, r3
     72a:	46bd      	mov	sp, r7
     72c:	b004      	add	sp, #16
     72e:	bd80      	pop	{r7, pc}
     730:	000083bc 	.word	0x000083bc

00000734 <owen_mk_frame>:
     734:	b590      	push	{r4, r7, lr}
     736:	b085      	sub	sp, #20
     738:	af00      	add	r7, sp, #0
     73a:	6078      	str	r0, [r7, #4]
     73c:	0008      	movs	r0, r1
     73e:	0011      	movs	r1, r2
     740:	1cfb      	adds	r3, r7, #3
     742:	1c02      	adds	r2, r0, #0
     744:	701a      	strb	r2, [r3, #0]
     746:	003b      	movs	r3, r7
     748:	1c0a      	adds	r2, r1, #0
     74a:	801a      	strh	r2, [r3, #0]
     74c:	687b      	ldr	r3, [r7, #4]
     74e:	60fb      	str	r3, [r7, #12]
     750:	68fb      	ldr	r3, [r7, #12]
     752:	1c5a      	adds	r2, r3, #1
     754:	60fa      	str	r2, [r7, #12]
     756:	1cfa      	adds	r2, r7, #3
     758:	7812      	ldrb	r2, [r2, #0]
     75a:	701a      	strb	r2, [r3, #0]
     75c:	68fb      	ldr	r3, [r7, #12]
     75e:	1c5a      	adds	r2, r3, #1
     760:	60fa      	str	r2, [r7, #12]
     762:	2210      	movs	r2, #16
     764:	701a      	strb	r2, [r3, #0]
     766:	68fb      	ldr	r3, [r7, #12]
     768:	1c5a      	adds	r2, r3, #1
     76a:	60fa      	str	r2, [r7, #12]
     76c:	003a      	movs	r2, r7
     76e:	8812      	ldrh	r2, [r2, #0]
     770:	0a12      	lsrs	r2, r2, #8
     772:	b292      	uxth	r2, r2
     774:	b2d2      	uxtb	r2, r2
     776:	701a      	strb	r2, [r3, #0]
     778:	68fb      	ldr	r3, [r7, #12]
     77a:	1c5a      	adds	r2, r3, #1
     77c:	60fa      	str	r2, [r7, #12]
     77e:	003a      	movs	r2, r7
     780:	8812      	ldrh	r2, [r2, #0]
     782:	b2d2      	uxtb	r2, r2
     784:	701a      	strb	r2, [r3, #0]
     786:	230a      	movs	r3, #10
     788:	18fc      	adds	r4, r7, r3
     78a:	687b      	ldr	r3, [r7, #4]
     78c:	2104      	movs	r1, #4
     78e:	0018      	movs	r0, r3
     790:	f7ff ff9a 	bl	6c8 <owen_crc16_wtb>
     794:	0003      	movs	r3, r0
     796:	8023      	strh	r3, [r4, #0]
     798:	68fb      	ldr	r3, [r7, #12]
     79a:	1c5a      	adds	r2, r3, #1
     79c:	60fa      	str	r2, [r7, #12]
     79e:	220a      	movs	r2, #10
     7a0:	18ba      	adds	r2, r7, r2
     7a2:	8812      	ldrh	r2, [r2, #0]
     7a4:	0a12      	lsrs	r2, r2, #8
     7a6:	b292      	uxth	r2, r2
     7a8:	b2d2      	uxtb	r2, r2
     7aa:	701a      	strb	r2, [r3, #0]
     7ac:	68fb      	ldr	r3, [r7, #12]
     7ae:	1c5a      	adds	r2, r3, #1
     7b0:	60fa      	str	r2, [r7, #12]
     7b2:	220a      	movs	r2, #10
     7b4:	18ba      	adds	r2, r7, r2
     7b6:	8812      	ldrh	r2, [r2, #0]
     7b8:	b2d2      	uxtb	r2, r2
     7ba:	701a      	strb	r2, [r3, #0]
     7bc:	68fa      	ldr	r2, [r7, #12]
     7be:	687b      	ldr	r3, [r7, #4]
     7c0:	1ad3      	subs	r3, r2, r3
     7c2:	0018      	movs	r0, r3
     7c4:	46bd      	mov	sp, r7
     7c6:	b005      	add	sp, #20
     7c8:	bd90      	pop	{r4, r7, pc}
     7ca:	46c0      	nop			; (mov r8, r8)

000007cc <owen_si8_request>:
     7cc:	b580      	push	{r7, lr}
     7ce:	b094      	sub	sp, #80	; 0x50
     7d0:	af00      	add	r7, sp, #0
     7d2:	0002      	movs	r2, r0
     7d4:	1dbb      	adds	r3, r7, #6
     7d6:	801a      	strh	r2, [r3, #0]
     7d8:	1dbb      	adds	r3, r7, #6
     7da:	881a      	ldrh	r2, [r3, #0]
     7dc:	2334      	movs	r3, #52	; 0x34
     7de:	18fb      	adds	r3, r7, r3
     7e0:	2101      	movs	r1, #1
     7e2:	0018      	movs	r0, r3
     7e4:	f7ff ffa6 	bl	734 <owen_mk_frame>
     7e8:	0003      	movs	r3, r0
     7ea:	64fb      	str	r3, [r7, #76]	; 0x4c
     7ec:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
     7ee:	2308      	movs	r3, #8
     7f0:	18f9      	adds	r1, r7, r3
     7f2:	2334      	movs	r3, #52	; 0x34
     7f4:	18fb      	adds	r3, r7, r3
     7f6:	0018      	movs	r0, r3
     7f8:	f7ff ff24 	bl	644 <owen_pack_ascii>
     7fc:	4b07      	ldr	r3, [pc, #28]	; (81c <owen_si8_request+0x50>)
     7fe:	2200      	movs	r2, #0
     800:	601a      	str	r2, [r3, #0]
     802:	4b07      	ldr	r3, [pc, #28]	; (820 <owen_si8_request+0x54>)
     804:	2200      	movs	r2, #0
     806:	601a      	str	r2, [r3, #0]
     808:	2308      	movs	r3, #8
     80a:	18fb      	adds	r3, r7, r3
     80c:	0018      	movs	r0, r3
     80e:	f7ff fe8f 	bl	530 <owen485_send>
     812:	46c0      	nop			; (mov r8, r8)
     814:	46bd      	mov	sp, r7
     816:	b014      	add	sp, #80	; 0x50
     818:	bd80      	pop	{r7, pc}
     81a:	46c0      	nop			; (mov r8, r8)
     81c:	200008d0 	.word	0x200008d0
     820:	200008d4 	.word	0x200008d4

00000824 <owen485_get>:
     824:	b590      	push	{r4, r7, lr}
     826:	b09f      	sub	sp, #124	; 0x7c
     828:	af00      	add	r7, sp, #0
     82a:	6078      	str	r0, [r7, #4]
     82c:	4b8d      	ldr	r3, [pc, #564]	; (a64 <owen485_get+0x240>)
     82e:	681b      	ldr	r3, [r3, #0]
     830:	2b00      	cmp	r3, #0
     832:	d101      	bne.n	838 <owen485_get+0x14>
     834:	2300      	movs	r3, #0
     836:	e111      	b.n	a5c <owen485_get+0x238>
     838:	2300      	movs	r3, #0
     83a:	647b      	str	r3, [r7, #68]	; 0x44
     83c:	4b8a      	ldr	r3, [pc, #552]	; (a68 <owen485_get+0x244>)
     83e:	681a      	ldr	r2, [r3, #0]
     840:	4b8a      	ldr	r3, [pc, #552]	; (a6c <owen485_get+0x248>)
     842:	18d0      	adds	r0, r2, r3
     844:	4b87      	ldr	r3, [pc, #540]	; (a64 <owen485_get+0x240>)
     846:	681b      	ldr	r3, [r3, #0]
     848:	001a      	movs	r2, r3
     84a:	2328      	movs	r3, #40	; 0x28
     84c:	18fb      	adds	r3, r7, r3
     84e:	0019      	movs	r1, r3
     850:	f7ff fea0 	bl	594 <owen_unpack_ascii>
     854:	0003      	movs	r3, r0
     856:	647b      	str	r3, [r7, #68]	; 0x44
     858:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     85a:	2b00      	cmp	r3, #0
     85c:	d100      	bne.n	860 <owen485_get+0x3c>
     85e:	e0fc      	b.n	a5a <owen485_get+0x236>
     860:	2342      	movs	r3, #66	; 0x42
     862:	18fc      	adds	r4, r7, r3
     864:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     866:	2328      	movs	r3, #40	; 0x28
     868:	18fb      	adds	r3, r7, r3
     86a:	0011      	movs	r1, r2
     86c:	0018      	movs	r0, r3
     86e:	f7ff ff2b 	bl	6c8 <owen_crc16_wtb>
     872:	0003      	movs	r3, r0
     874:	8023      	strh	r3, [r4, #0]
     876:	2342      	movs	r3, #66	; 0x42
     878:	18fb      	adds	r3, r7, r3
     87a:	881b      	ldrh	r3, [r3, #0]
     87c:	2b00      	cmp	r3, #0
     87e:	d000      	beq.n	882 <owen485_get+0x5e>
     880:	e0eb      	b.n	a5a <owen485_get+0x236>
     882:	2328      	movs	r3, #40	; 0x28
     884:	18fb      	adds	r3, r7, r3
     886:	789b      	ldrb	r3, [r3, #2]
     888:	021b      	lsls	r3, r3, #8
     88a:	b21a      	sxth	r2, r3
     88c:	2328      	movs	r3, #40	; 0x28
     88e:	18fb      	adds	r3, r7, r3
     890:	78db      	ldrb	r3, [r3, #3]
     892:	b21b      	sxth	r3, r3
     894:	4313      	orrs	r3, r2
     896:	b21a      	sxth	r2, r3
     898:	2340      	movs	r3, #64	; 0x40
     89a:	18fb      	adds	r3, r7, r3
     89c:	801a      	strh	r2, [r3, #0]
     89e:	2340      	movs	r3, #64	; 0x40
     8a0:	18fb      	adds	r3, r7, r3
     8a2:	881b      	ldrh	r3, [r3, #0]
     8a4:	4a72      	ldr	r2, [pc, #456]	; (a70 <owen485_get+0x24c>)
     8a6:	4293      	cmp	r3, r2
     8a8:	d143      	bne.n	932 <owen485_get+0x10e>
     8aa:	2300      	movs	r3, #0
     8ac:	677b      	str	r3, [r7, #116]	; 0x74
     8ae:	2328      	movs	r3, #40	; 0x28
     8b0:	18fb      	adds	r3, r7, r3
     8b2:	3307      	adds	r3, #7
     8b4:	673b      	str	r3, [r7, #112]	; 0x70
     8b6:	2308      	movs	r3, #8
     8b8:	18fb      	adds	r3, r7, r3
     8ba:	4a6e      	ldr	r2, [pc, #440]	; (a74 <owen485_get+0x250>)
     8bc:	ca13      	ldmia	r2!, {r0, r1, r4}
     8be:	c313      	stmia	r3!, {r0, r1, r4}
     8c0:	ca13      	ldmia	r2!, {r0, r1, r4}
     8c2:	c313      	stmia	r3!, {r0, r1, r4}
     8c4:	ca03      	ldmia	r2!, {r0, r1}
     8c6:	c303      	stmia	r3!, {r0, r1}
     8c8:	2308      	movs	r3, #8
     8ca:	18fb      	adds	r3, r7, r3
     8cc:	66fb      	str	r3, [r7, #108]	; 0x6c
     8ce:	2300      	movs	r3, #0
     8d0:	66bb      	str	r3, [r7, #104]	; 0x68
     8d2:	e026      	b.n	922 <owen485_get+0xfe>
     8d4:	6f3b      	ldr	r3, [r7, #112]	; 0x70
     8d6:	1e5a      	subs	r2, r3, #1
     8d8:	673a      	str	r2, [r7, #112]	; 0x70
     8da:	223f      	movs	r2, #63	; 0x3f
     8dc:	18ba      	adds	r2, r7, r2
     8de:	781b      	ldrb	r3, [r3, #0]
     8e0:	7013      	strb	r3, [r2, #0]
     8e2:	233f      	movs	r3, #63	; 0x3f
     8e4:	18fb      	adds	r3, r7, r3
     8e6:	781b      	ldrb	r3, [r3, #0]
     8e8:	220f      	movs	r2, #15
     8ea:	401a      	ands	r2, r3
     8ec:	6efb      	ldr	r3, [r7, #108]	; 0x6c
     8ee:	1d19      	adds	r1, r3, #4
     8f0:	66f9      	str	r1, [r7, #108]	; 0x6c
     8f2:	681b      	ldr	r3, [r3, #0]
     8f4:	4353      	muls	r3, r2
     8f6:	6f7a      	ldr	r2, [r7, #116]	; 0x74
     8f8:	18d3      	adds	r3, r2, r3
     8fa:	677b      	str	r3, [r7, #116]	; 0x74
     8fc:	233f      	movs	r3, #63	; 0x3f
     8fe:	18fb      	adds	r3, r7, r3
     900:	781b      	ldrb	r3, [r3, #0]
     902:	091b      	lsrs	r3, r3, #4
     904:	b2db      	uxtb	r3, r3
     906:	001a      	movs	r2, r3
     908:	230f      	movs	r3, #15
     90a:	401a      	ands	r2, r3
     90c:	6efb      	ldr	r3, [r7, #108]	; 0x6c
     90e:	1d19      	adds	r1, r3, #4
     910:	66f9      	str	r1, [r7, #108]	; 0x6c
     912:	681b      	ldr	r3, [r3, #0]
     914:	4353      	muls	r3, r2
     916:	6f7a      	ldr	r2, [r7, #116]	; 0x74
     918:	18d3      	adds	r3, r2, r3
     91a:	677b      	str	r3, [r7, #116]	; 0x74
     91c:	6ebb      	ldr	r3, [r7, #104]	; 0x68
     91e:	3301      	adds	r3, #1
     920:	66bb      	str	r3, [r7, #104]	; 0x68
     922:	6ebb      	ldr	r3, [r7, #104]	; 0x68
     924:	2b03      	cmp	r3, #3
     926:	ddd5      	ble.n	8d4 <owen485_get+0xb0>
     928:	687b      	ldr	r3, [r7, #4]
     92a:	6f7a      	ldr	r2, [r7, #116]	; 0x74
     92c:	601a      	str	r2, [r3, #0]
     92e:	2301      	movs	r3, #1
     930:	e094      	b.n	a5c <owen485_get+0x238>
     932:	2340      	movs	r3, #64	; 0x40
     934:	18fb      	adds	r3, r7, r3
     936:	881b      	ldrh	r3, [r3, #0]
     938:	4a4f      	ldr	r2, [pc, #316]	; (a78 <owen485_get+0x254>)
     93a:	4293      	cmp	r3, r2
     93c:	d143      	bne.n	9c6 <owen485_get+0x1a2>
     93e:	2300      	movs	r3, #0
     940:	667b      	str	r3, [r7, #100]	; 0x64
     942:	2328      	movs	r3, #40	; 0x28
     944:	18fb      	adds	r3, r7, r3
     946:	3307      	adds	r3, #7
     948:	663b      	str	r3, [r7, #96]	; 0x60
     94a:	2308      	movs	r3, #8
     94c:	18fb      	adds	r3, r7, r3
     94e:	4a49      	ldr	r2, [pc, #292]	; (a74 <owen485_get+0x250>)
     950:	ca13      	ldmia	r2!, {r0, r1, r4}
     952:	c313      	stmia	r3!, {r0, r1, r4}
     954:	ca13      	ldmia	r2!, {r0, r1, r4}
     956:	c313      	stmia	r3!, {r0, r1, r4}
     958:	ca03      	ldmia	r2!, {r0, r1}
     95a:	c303      	stmia	r3!, {r0, r1}
     95c:	2308      	movs	r3, #8
     95e:	18fb      	adds	r3, r7, r3
     960:	65fb      	str	r3, [r7, #92]	; 0x5c
     962:	2300      	movs	r3, #0
     964:	65bb      	str	r3, [r7, #88]	; 0x58
     966:	e026      	b.n	9b6 <owen485_get+0x192>
     968:	6e3b      	ldr	r3, [r7, #96]	; 0x60
     96a:	1e5a      	subs	r2, r3, #1
     96c:	663a      	str	r2, [r7, #96]	; 0x60
     96e:	223e      	movs	r2, #62	; 0x3e
     970:	18ba      	adds	r2, r7, r2
     972:	781b      	ldrb	r3, [r3, #0]
     974:	7013      	strb	r3, [r2, #0]
     976:	233e      	movs	r3, #62	; 0x3e
     978:	18fb      	adds	r3, r7, r3
     97a:	781b      	ldrb	r3, [r3, #0]
     97c:	220f      	movs	r2, #15
     97e:	401a      	ands	r2, r3
     980:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     982:	1d19      	adds	r1, r3, #4
     984:	65f9      	str	r1, [r7, #92]	; 0x5c
     986:	681b      	ldr	r3, [r3, #0]
     988:	4353      	muls	r3, r2
     98a:	6e7a      	ldr	r2, [r7, #100]	; 0x64
     98c:	18d3      	adds	r3, r2, r3
     98e:	667b      	str	r3, [r7, #100]	; 0x64
     990:	233e      	movs	r3, #62	; 0x3e
     992:	18fb      	adds	r3, r7, r3
     994:	781b      	ldrb	r3, [r3, #0]
     996:	091b      	lsrs	r3, r3, #4
     998:	b2db      	uxtb	r3, r3
     99a:	001a      	movs	r2, r3
     99c:	230f      	movs	r3, #15
     99e:	401a      	ands	r2, r3
     9a0:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     9a2:	1d19      	adds	r1, r3, #4
     9a4:	65f9      	str	r1, [r7, #92]	; 0x5c
     9a6:	681b      	ldr	r3, [r3, #0]
     9a8:	4353      	muls	r3, r2
     9aa:	6e7a      	ldr	r2, [r7, #100]	; 0x64
     9ac:	18d3      	adds	r3, r2, r3
     9ae:	667b      	str	r3, [r7, #100]	; 0x64
     9b0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     9b2:	3301      	adds	r3, #1
     9b4:	65bb      	str	r3, [r7, #88]	; 0x58
     9b6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     9b8:	2b03      	cmp	r3, #3
     9ba:	ddd5      	ble.n	968 <owen485_get+0x144>
     9bc:	687b      	ldr	r3, [r7, #4]
     9be:	6e7a      	ldr	r2, [r7, #100]	; 0x64
     9c0:	601a      	str	r2, [r3, #0]
     9c2:	2302      	movs	r3, #2
     9c4:	e04a      	b.n	a5c <owen485_get+0x238>
     9c6:	2340      	movs	r3, #64	; 0x40
     9c8:	18fb      	adds	r3, r7, r3
     9ca:	881b      	ldrh	r3, [r3, #0]
     9cc:	4a2b      	ldr	r2, [pc, #172]	; (a7c <owen485_get+0x258>)
     9ce:	4293      	cmp	r3, r2
     9d0:	d143      	bne.n	a5a <owen485_get+0x236>
     9d2:	2308      	movs	r3, #8
     9d4:	18fb      	adds	r3, r7, r3
     9d6:	4a2a      	ldr	r2, [pc, #168]	; (a80 <owen485_get+0x25c>)
     9d8:	ca13      	ldmia	r2!, {r0, r1, r4}
     9da:	c313      	stmia	r3!, {r0, r1, r4}
     9dc:	ca13      	ldmia	r2!, {r0, r1, r4}
     9de:	c313      	stmia	r3!, {r0, r1, r4}
     9e0:	ca03      	ldmia	r2!, {r0, r1}
     9e2:	c303      	stmia	r3!, {r0, r1}
     9e4:	2308      	movs	r3, #8
     9e6:	18fb      	adds	r3, r7, r3
     9e8:	653b      	str	r3, [r7, #80]	; 0x50
     9ea:	2300      	movs	r3, #0
     9ec:	64fb      	str	r3, [r7, #76]	; 0x4c
     9ee:	2328      	movs	r3, #40	; 0x28
     9f0:	18fb      	adds	r3, r7, r3
     9f2:	3309      	adds	r3, #9
     9f4:	64bb      	str	r3, [r7, #72]	; 0x48
     9f6:	2300      	movs	r3, #0
     9f8:	657b      	str	r3, [r7, #84]	; 0x54
     9fa:	e026      	b.n	a4a <owen485_get+0x226>
     9fc:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     9fe:	1e5a      	subs	r2, r3, #1
     a00:	64ba      	str	r2, [r7, #72]	; 0x48
     a02:	223d      	movs	r2, #61	; 0x3d
     a04:	18ba      	adds	r2, r7, r2
     a06:	781b      	ldrb	r3, [r3, #0]
     a08:	7013      	strb	r3, [r2, #0]
     a0a:	233d      	movs	r3, #61	; 0x3d
     a0c:	18fb      	adds	r3, r7, r3
     a0e:	781b      	ldrb	r3, [r3, #0]
     a10:	220f      	movs	r2, #15
     a12:	401a      	ands	r2, r3
     a14:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     a16:	1d19      	adds	r1, r3, #4
     a18:	6539      	str	r1, [r7, #80]	; 0x50
     a1a:	681b      	ldr	r3, [r3, #0]
     a1c:	4353      	muls	r3, r2
     a1e:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
     a20:	18d3      	adds	r3, r2, r3
     a22:	64fb      	str	r3, [r7, #76]	; 0x4c
     a24:	233d      	movs	r3, #61	; 0x3d
     a26:	18fb      	adds	r3, r7, r3
     a28:	781b      	ldrb	r3, [r3, #0]
     a2a:	091b      	lsrs	r3, r3, #4
     a2c:	b2db      	uxtb	r3, r3
     a2e:	001a      	movs	r2, r3
     a30:	230f      	movs	r3, #15
     a32:	401a      	ands	r2, r3
     a34:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     a36:	1d19      	adds	r1, r3, #4
     a38:	6539      	str	r1, [r7, #80]	; 0x50
     a3a:	681b      	ldr	r3, [r3, #0]
     a3c:	4353      	muls	r3, r2
     a3e:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
     a40:	18d3      	adds	r3, r2, r3
     a42:	64fb      	str	r3, [r7, #76]	; 0x4c
     a44:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     a46:	3301      	adds	r3, #1
     a48:	657b      	str	r3, [r7, #84]	; 0x54
     a4a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     a4c:	2b03      	cmp	r3, #3
     a4e:	ddd5      	ble.n	9fc <owen485_get+0x1d8>
     a50:	687b      	ldr	r3, [r7, #4]
     a52:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
     a54:	601a      	str	r2, [r3, #0]
     a56:	2303      	movs	r3, #3
     a58:	e000      	b.n	a5c <owen485_get+0x238>
     a5a:	2300      	movs	r3, #0
     a5c:	0018      	movs	r0, r3
     a5e:	46bd      	mov	sp, r7
     a60:	b01f      	add	sp, #124	; 0x7c
     a62:	bd90      	pop	{r4, r7, pc}
     a64:	200008d0 	.word	0x200008d0
     a68:	200008d4 	.word	0x200008d4
     a6c:	200008a4 	.word	0x200008a4
     a70:	0000c173 	.word	0x0000c173
     a74:	000085bc 	.word	0x000085bc
     a78:	00008fc2 	.word	0x00008fc2
     a7c:	0000e69c 	.word	0x0000e69c
     a80:	000085dc 	.word	0x000085dc

00000a84 <UART2_Handler>:
     a84:	b580      	push	{r7, lr}
     a86:	b086      	sub	sp, #24
     a88:	af00      	add	r7, sp, #0
     a8a:	230c      	movs	r3, #12
     a8c:	607b      	str	r3, [r7, #4]
     a8e:	4b32      	ldr	r3, [pc, #200]	; (b58 <UART2_Handler+0xd4>)
     a90:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a92:	2240      	movs	r2, #64	; 0x40
     a94:	4013      	ands	r3, r2
     a96:	d024      	beq.n	ae2 <UART2_Handler+0x5e>
     a98:	4b30      	ldr	r3, [pc, #192]	; (b5c <UART2_Handler+0xd8>)
     a9a:	681a      	ldr	r2, [r3, #0]
     a9c:	4b30      	ldr	r3, [pc, #192]	; (b60 <UART2_Handler+0xdc>)
     a9e:	18d3      	adds	r3, r2, r3
     aa0:	617b      	str	r3, [r7, #20]
     aa2:	e014      	b.n	ace <UART2_Handler+0x4a>
     aa4:	697b      	ldr	r3, [r7, #20]
     aa6:	1c5a      	adds	r2, r3, #1
     aa8:	617a      	str	r2, [r7, #20]
     aaa:	4a2b      	ldr	r2, [pc, #172]	; (b58 <UART2_Handler+0xd4>)
     aac:	6812      	ldr	r2, [r2, #0]
     aae:	b2d2      	uxtb	r2, r2
     ab0:	701a      	strb	r2, [r3, #0]
     ab2:	781b      	ldrb	r3, [r3, #0]
     ab4:	2b0d      	cmp	r3, #13
     ab6:	d105      	bne.n	ac4 <UART2_Handler+0x40>
     ab8:	4b2a      	ldr	r3, [pc, #168]	; (b64 <UART2_Handler+0xe0>)
     aba:	681b      	ldr	r3, [r3, #0]
     abc:	2104      	movs	r1, #4
     abe:	0018      	movs	r0, r3
     ac0:	f005 faf6 	bl	60b0 <osSignalSet>
     ac4:	4b25      	ldr	r3, [pc, #148]	; (b5c <UART2_Handler+0xd8>)
     ac6:	681b      	ldr	r3, [r3, #0]
     ac8:	1c5a      	adds	r2, r3, #1
     aca:	4b24      	ldr	r3, [pc, #144]	; (b5c <UART2_Handler+0xd8>)
     acc:	601a      	str	r2, [r3, #0]
     ace:	4b23      	ldr	r3, [pc, #140]	; (b5c <UART2_Handler+0xd8>)
     ad0:	681b      	ldr	r3, [r3, #0]
     ad2:	2b2b      	cmp	r3, #43	; 0x2b
     ad4:	d83b      	bhi.n	b4e <UART2_Handler+0xca>
     ad6:	4b20      	ldr	r3, [pc, #128]	; (b58 <UART2_Handler+0xd4>)
     ad8:	699b      	ldr	r3, [r3, #24]
     ada:	2210      	movs	r2, #16
     adc:	4013      	ands	r3, r2
     ade:	d0e1      	beq.n	aa4 <UART2_Handler+0x20>
     ae0:	e035      	b.n	b4e <UART2_Handler+0xca>
     ae2:	4b1d      	ldr	r3, [pc, #116]	; (b58 <UART2_Handler+0xd4>)
     ae4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     ae6:	2210      	movs	r2, #16
     ae8:	4013      	ands	r3, r2
     aea:	d031      	beq.n	b50 <UART2_Handler+0xcc>
     aec:	4b1b      	ldr	r3, [pc, #108]	; (b5c <UART2_Handler+0xd8>)
     aee:	681a      	ldr	r2, [r3, #0]
     af0:	4b1b      	ldr	r3, [pc, #108]	; (b60 <UART2_Handler+0xdc>)
     af2:	18d3      	adds	r3, r2, r3
     af4:	613b      	str	r3, [r7, #16]
     af6:	4b19      	ldr	r3, [pc, #100]	; (b5c <UART2_Handler+0xd8>)
     af8:	681b      	ldr	r3, [r3, #0]
     afa:	222c      	movs	r2, #44	; 0x2c
     afc:	1ad3      	subs	r3, r2, r3
     afe:	60bb      	str	r3, [r7, #8]
     b00:	68ba      	ldr	r2, [r7, #8]
     b02:	687b      	ldr	r3, [r7, #4]
     b04:	429a      	cmp	r2, r3
     b06:	dd01      	ble.n	b0c <UART2_Handler+0x88>
     b08:	687b      	ldr	r3, [r7, #4]
     b0a:	60bb      	str	r3, [r7, #8]
     b0c:	2300      	movs	r3, #0
     b0e:	60fb      	str	r3, [r7, #12]
     b10:	e012      	b.n	b38 <UART2_Handler+0xb4>
     b12:	693b      	ldr	r3, [r7, #16]
     b14:	1c5a      	adds	r2, r3, #1
     b16:	613a      	str	r2, [r7, #16]
     b18:	4a0f      	ldr	r2, [pc, #60]	; (b58 <UART2_Handler+0xd4>)
     b1a:	6812      	ldr	r2, [r2, #0]
     b1c:	b2d2      	uxtb	r2, r2
     b1e:	701a      	strb	r2, [r3, #0]
     b20:	781b      	ldrb	r3, [r3, #0]
     b22:	2b23      	cmp	r3, #35	; 0x23
     b24:	d105      	bne.n	b32 <UART2_Handler+0xae>
     b26:	4b0d      	ldr	r3, [pc, #52]	; (b5c <UART2_Handler+0xd8>)
     b28:	681a      	ldr	r2, [r3, #0]
     b2a:	68fb      	ldr	r3, [r7, #12]
     b2c:	18d2      	adds	r2, r2, r3
     b2e:	4b0e      	ldr	r3, [pc, #56]	; (b68 <UART2_Handler+0xe4>)
     b30:	601a      	str	r2, [r3, #0]
     b32:	68fb      	ldr	r3, [r7, #12]
     b34:	3301      	adds	r3, #1
     b36:	60fb      	str	r3, [r7, #12]
     b38:	68fa      	ldr	r2, [r7, #12]
     b3a:	68bb      	ldr	r3, [r7, #8]
     b3c:	429a      	cmp	r2, r3
     b3e:	dbe8      	blt.n	b12 <UART2_Handler+0x8e>
     b40:	4b06      	ldr	r3, [pc, #24]	; (b5c <UART2_Handler+0xd8>)
     b42:	681a      	ldr	r2, [r3, #0]
     b44:	68fb      	ldr	r3, [r7, #12]
     b46:	18d2      	adds	r2, r2, r3
     b48:	4b04      	ldr	r3, [pc, #16]	; (b5c <UART2_Handler+0xd8>)
     b4a:	601a      	str	r2, [r3, #0]
     b4c:	e000      	b.n	b50 <UART2_Handler+0xcc>
     b4e:	46c0      	nop			; (mov r8, r8)
     b50:	46bd      	mov	sp, r7
     b52:	b006      	add	sp, #24
     b54:	bd80      	pop	{r7, pc}
     b56:	46c0      	nop			; (mov r8, r8)
     b58:	40038000 	.word	0x40038000
     b5c:	200008d0 	.word	0x200008d0
     b60:	200008a4 	.word	0x200008a4
     b64:	20000860 	.word	0x20000860
     b68:	200008d4 	.word	0x200008d4

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
     b84:	000085fc 	.word	0x000085fc

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
     bbc:	20006028 	.word	0x20006028

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
     bd4:	20006028 	.word	0x20006028

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
     c24:	20006028 	.word	0x20006028

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
     c44:	20006028 	.word	0x20006028

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
     c64:	20006028 	.word	0x20006028

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
     ce4:	200008dc 	.word	0x200008dc
     ce8:	200060b0 	.word	0x200060b0
     cec:	00008604 	.word	0x00008604
     cf0:	20006028 	.word	0x20006028

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
     d24:	20006028 	.word	0x20006028

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
     d74:	20006028 	.word	0x20006028

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
     d94:	20006028 	.word	0x20006028

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
     df4:	20006028 	.word	0x20006028

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
     fba:	f002 f8c3 	bl	3144 <crc16>
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
     ff8:	200008f0 	.word	0x200008f0

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
    107e:	f002 f861 	bl	3144 <crc16>
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
    10bc:	200008f0 	.word	0x200008f0

000010c0 <mdb232_bikm_get_torque>:
    10c0:	b580      	push	{r7, lr}
    10c2:	b084      	sub	sp, #16
    10c4:	af00      	add	r7, sp, #0
    10c6:	4b27      	ldr	r3, [pc, #156]	; (1164 <mdb232_bikm_get_torque+0xa4>)
    10c8:	60fb      	str	r3, [r7, #12]
    10ca:	2006      	movs	r0, #6
    10cc:	f7ff feba 	bl	e44 <__NVIC_DisableIRQ>
    10d0:	4b25      	ldr	r3, [pc, #148]	; (1168 <mdb232_bikm_get_torque+0xa8>)
    10d2:	681b      	ldr	r3, [r3, #0]
    10d4:	2b00      	cmp	r3, #0
    10d6:	d03c      	beq.n	1152 <mdb232_bikm_get_torque+0x92>
    10d8:	68fb      	ldr	r3, [r7, #12]
    10da:	1c5a      	adds	r2, r3, #1
    10dc:	60fa      	str	r2, [r7, #12]
    10de:	781b      	ldrb	r3, [r3, #0]
    10e0:	041b      	lsls	r3, r3, #16
    10e2:	60bb      	str	r3, [r7, #8]
    10e4:	68fb      	ldr	r3, [r7, #12]
    10e6:	1c5a      	adds	r2, r3, #1
    10e8:	60fa      	str	r2, [r7, #12]
    10ea:	781b      	ldrb	r3, [r3, #0]
    10ec:	061b      	lsls	r3, r3, #24
    10ee:	001a      	movs	r2, r3
    10f0:	68bb      	ldr	r3, [r7, #8]
    10f2:	4313      	orrs	r3, r2
    10f4:	60bb      	str	r3, [r7, #8]
    10f6:	68fb      	ldr	r3, [r7, #12]
    10f8:	1c5a      	adds	r2, r3, #1
    10fa:	60fa      	str	r2, [r7, #12]
    10fc:	781b      	ldrb	r3, [r3, #0]
    10fe:	001a      	movs	r2, r3
    1100:	68bb      	ldr	r3, [r7, #8]
    1102:	4313      	orrs	r3, r2
    1104:	60bb      	str	r3, [r7, #8]
    1106:	68fb      	ldr	r3, [r7, #12]
    1108:	781b      	ldrb	r3, [r3, #0]
    110a:	021b      	lsls	r3, r3, #8
    110c:	001a      	movs	r2, r3
    110e:	68bb      	ldr	r3, [r7, #8]
    1110:	4313      	orrs	r3, r2
    1112:	60bb      	str	r3, [r7, #8]
    1114:	2006      	movs	r0, #6
    1116:	f7ff fe7b 	bl	e10 <__NVIC_EnableIRQ>
    111a:	68bb      	ldr	r3, [r7, #8]
    111c:	0ddb      	lsrs	r3, r3, #23
    111e:	22ff      	movs	r2, #255	; 0xff
    1120:	4013      	ands	r3, r2
    1122:	3b7f      	subs	r3, #127	; 0x7f
    1124:	607b      	str	r3, [r7, #4]
    1126:	68bb      	ldr	r3, [r7, #8]
    1128:	025b      	lsls	r3, r3, #9
    112a:	0a5b      	lsrs	r3, r3, #9
    112c:	2280      	movs	r2, #128	; 0x80
    112e:	0412      	lsls	r2, r2, #16
    1130:	4313      	orrs	r3, r2
    1132:	603b      	str	r3, [r7, #0]
    1134:	687b      	ldr	r3, [r7, #4]
    1136:	220e      	movs	r2, #14
    1138:	1ad3      	subs	r3, r2, r3
    113a:	2201      	movs	r2, #1
    113c:	409a      	lsls	r2, r3
    113e:	0013      	movs	r3, r2
    1140:	001a      	movs	r2, r3
    1142:	683b      	ldr	r3, [r7, #0]
    1144:	18d2      	adds	r2, r2, r3
    1146:	687b      	ldr	r3, [r7, #4]
    1148:	210f      	movs	r1, #15
    114a:	1acb      	subs	r3, r1, r3
    114c:	40da      	lsrs	r2, r3
    114e:	0013      	movs	r3, r2
    1150:	e003      	b.n	115a <mdb232_bikm_get_torque+0x9a>
    1152:	2006      	movs	r0, #6
    1154:	f7ff fe5c 	bl	e10 <__NVIC_EnableIRQ>
    1158:	2300      	movs	r3, #0
    115a:	0018      	movs	r0, r3
    115c:	46bd      	mov	sp, r7
    115e:	b004      	add	sp, #16
    1160:	bd80      	pop	{r7, pc}
    1162:	46c0      	nop			; (mov r8, r8)
    1164:	200008e3 	.word	0x200008e3
    1168:	20000900 	.word	0x20000900

0000116c <UART1_Handler>:
    116c:	b580      	push	{r7, lr}
    116e:	b082      	sub	sp, #8
    1170:	af00      	add	r7, sp, #0
    1172:	4b16      	ldr	r3, [pc, #88]	; (11cc <UART1_Handler+0x60>)
    1174:	2200      	movs	r2, #0
    1176:	601a      	str	r2, [r3, #0]
    1178:	4b15      	ldr	r3, [pc, #84]	; (11d0 <UART1_Handler+0x64>)
    117a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    117c:	2240      	movs	r2, #64	; 0x40
    117e:	4013      	ands	r3, r2
    1180:	d016      	beq.n	11b0 <UART1_Handler+0x44>
    1182:	4b14      	ldr	r3, [pc, #80]	; (11d4 <UART1_Handler+0x68>)
    1184:	603b      	str	r3, [r7, #0]
    1186:	2300      	movs	r3, #0
    1188:	607b      	str	r3, [r7, #4]
    118a:	e009      	b.n	11a0 <UART1_Handler+0x34>
    118c:	683b      	ldr	r3, [r7, #0]
    118e:	1c5a      	adds	r2, r3, #1
    1190:	603a      	str	r2, [r7, #0]
    1192:	4a0f      	ldr	r2, [pc, #60]	; (11d0 <UART1_Handler+0x64>)
    1194:	6812      	ldr	r2, [r2, #0]
    1196:	b2d2      	uxtb	r2, r2
    1198:	701a      	strb	r2, [r3, #0]
    119a:	687b      	ldr	r3, [r7, #4]
    119c:	3301      	adds	r3, #1
    119e:	607b      	str	r3, [r7, #4]
    11a0:	687b      	ldr	r3, [r7, #4]
    11a2:	2b0f      	cmp	r3, #15
    11a4:	dc04      	bgt.n	11b0 <UART1_Handler+0x44>
    11a6:	4b0a      	ldr	r3, [pc, #40]	; (11d0 <UART1_Handler+0x64>)
    11a8:	699b      	ldr	r3, [r3, #24]
    11aa:	2210      	movs	r2, #16
    11ac:	4013      	ands	r3, r2
    11ae:	d0ed      	beq.n	118c <UART1_Handler+0x20>
    11b0:	4b06      	ldr	r3, [pc, #24]	; (11cc <UART1_Handler+0x60>)
    11b2:	687a      	ldr	r2, [r7, #4]
    11b4:	601a      	str	r2, [r3, #0]
    11b6:	4b08      	ldr	r3, [pc, #32]	; (11d8 <UART1_Handler+0x6c>)
    11b8:	681b      	ldr	r3, [r3, #0]
    11ba:	2102      	movs	r1, #2
    11bc:	0018      	movs	r0, r3
    11be:	f004 ff77 	bl	60b0 <osSignalSet>
    11c2:	46c0      	nop			; (mov r8, r8)
    11c4:	46bd      	mov	sp, r7
    11c6:	b002      	add	sp, #8
    11c8:	bd80      	pop	{r7, pc}
    11ca:	46c0      	nop			; (mov r8, r8)
    11cc:	20000900 	.word	0x20000900
    11d0:	40030000 	.word	0x40030000
    11d4:	200008e0 	.word	0x200008e0
    11d8:	20000860 	.word	0x20000860

000011dc <xputc>:
    11dc:	b580      	push	{r7, lr}
    11de:	b082      	sub	sp, #8
    11e0:	af00      	add	r7, sp, #0
    11e2:	0002      	movs	r2, r0
    11e4:	1dfb      	adds	r3, r7, #7
    11e6:	701a      	strb	r2, [r3, #0]
    11e8:	1dfb      	adds	r3, r7, #7
    11ea:	781b      	ldrb	r3, [r3, #0]
    11ec:	2b0a      	cmp	r3, #10
    11ee:	d102      	bne.n	11f6 <xputc+0x1a>
    11f0:	200d      	movs	r0, #13
    11f2:	f7ff fff3 	bl	11dc <xputc>
    11f6:	4b0d      	ldr	r3, [pc, #52]	; (122c <xputc+0x50>)
    11f8:	681b      	ldr	r3, [r3, #0]
    11fa:	2b00      	cmp	r3, #0
    11fc:	d008      	beq.n	1210 <xputc+0x34>
    11fe:	4b0b      	ldr	r3, [pc, #44]	; (122c <xputc+0x50>)
    1200:	681b      	ldr	r3, [r3, #0]
    1202:	1c59      	adds	r1, r3, #1
    1204:	4a09      	ldr	r2, [pc, #36]	; (122c <xputc+0x50>)
    1206:	6011      	str	r1, [r2, #0]
    1208:	1dfa      	adds	r2, r7, #7
    120a:	7812      	ldrb	r2, [r2, #0]
    120c:	701a      	strb	r2, [r3, #0]
    120e:	e009      	b.n	1224 <xputc+0x48>
    1210:	4b07      	ldr	r3, [pc, #28]	; (1230 <xputc+0x54>)
    1212:	681b      	ldr	r3, [r3, #0]
    1214:	2b00      	cmp	r3, #0
    1216:	d005      	beq.n	1224 <xputc+0x48>
    1218:	4b05      	ldr	r3, [pc, #20]	; (1230 <xputc+0x54>)
    121a:	681b      	ldr	r3, [r3, #0]
    121c:	1dfa      	adds	r2, r7, #7
    121e:	7812      	ldrb	r2, [r2, #0]
    1220:	0010      	movs	r0, r2
    1222:	4798      	blx	r3
    1224:	46bd      	mov	sp, r7
    1226:	b002      	add	sp, #8
    1228:	bd80      	pop	{r7, pc}
    122a:	46c0      	nop			; (mov r8, r8)
    122c:	20000908 	.word	0x20000908
    1230:	20000904 	.word	0x20000904

00001234 <xputs>:
    1234:	b580      	push	{r7, lr}
    1236:	b082      	sub	sp, #8
    1238:	af00      	add	r7, sp, #0
    123a:	6078      	str	r0, [r7, #4]
    123c:	e006      	b.n	124c <xputs+0x18>
    123e:	687b      	ldr	r3, [r7, #4]
    1240:	1c5a      	adds	r2, r3, #1
    1242:	607a      	str	r2, [r7, #4]
    1244:	781b      	ldrb	r3, [r3, #0]
    1246:	0018      	movs	r0, r3
    1248:	f7ff ffc8 	bl	11dc <xputc>
    124c:	687b      	ldr	r3, [r7, #4]
    124e:	781b      	ldrb	r3, [r3, #0]
    1250:	2b00      	cmp	r3, #0
    1252:	d1f4      	bne.n	123e <xputs+0xa>
    1254:	46c0      	nop			; (mov r8, r8)
    1256:	46bd      	mov	sp, r7
    1258:	b002      	add	sp, #8
    125a:	bd80      	pop	{r7, pc}

0000125c <xfputs>:
    125c:	b580      	push	{r7, lr}
    125e:	b084      	sub	sp, #16
    1260:	af00      	add	r7, sp, #0
    1262:	6078      	str	r0, [r7, #4]
    1264:	6039      	str	r1, [r7, #0]
    1266:	4b0c      	ldr	r3, [pc, #48]	; (1298 <xfputs+0x3c>)
    1268:	681b      	ldr	r3, [r3, #0]
    126a:	60fb      	str	r3, [r7, #12]
    126c:	4b0a      	ldr	r3, [pc, #40]	; (1298 <xfputs+0x3c>)
    126e:	687a      	ldr	r2, [r7, #4]
    1270:	601a      	str	r2, [r3, #0]
    1272:	e006      	b.n	1282 <xfputs+0x26>
    1274:	683b      	ldr	r3, [r7, #0]
    1276:	1c5a      	adds	r2, r3, #1
    1278:	603a      	str	r2, [r7, #0]
    127a:	781b      	ldrb	r3, [r3, #0]
    127c:	0018      	movs	r0, r3
    127e:	f7ff ffad 	bl	11dc <xputc>
    1282:	683b      	ldr	r3, [r7, #0]
    1284:	781b      	ldrb	r3, [r3, #0]
    1286:	2b00      	cmp	r3, #0
    1288:	d1f4      	bne.n	1274 <xfputs+0x18>
    128a:	4b03      	ldr	r3, [pc, #12]	; (1298 <xfputs+0x3c>)
    128c:	68fa      	ldr	r2, [r7, #12]
    128e:	601a      	str	r2, [r3, #0]
    1290:	46c0      	nop			; (mov r8, r8)
    1292:	46bd      	mov	sp, r7
    1294:	b004      	add	sp, #16
    1296:	bd80      	pop	{r7, pc}
    1298:	20000904 	.word	0x20000904

0000129c <xvprintf>:
    129c:	b580      	push	{r7, lr}
    129e:	b08e      	sub	sp, #56	; 0x38
    12a0:	af00      	add	r7, sp, #0
    12a2:	6078      	str	r0, [r7, #4]
    12a4:	6039      	str	r1, [r7, #0]
    12a6:	687b      	ldr	r3, [r7, #4]
    12a8:	1c5a      	adds	r2, r3, #1
    12aa:	607a      	str	r2, [r7, #4]
    12ac:	221f      	movs	r2, #31
    12ae:	18ba      	adds	r2, r7, r2
    12b0:	781b      	ldrb	r3, [r3, #0]
    12b2:	7013      	strb	r3, [r2, #0]
    12b4:	231f      	movs	r3, #31
    12b6:	18fb      	adds	r3, r7, r3
    12b8:	781b      	ldrb	r3, [r3, #0]
    12ba:	2b00      	cmp	r3, #0
    12bc:	d100      	bne.n	12c0 <xvprintf+0x24>
    12be:	e172      	b.n	15a6 <xvprintf+0x30a>
    12c0:	231f      	movs	r3, #31
    12c2:	18fb      	adds	r3, r7, r3
    12c4:	781b      	ldrb	r3, [r3, #0]
    12c6:	2b25      	cmp	r3, #37	; 0x25
    12c8:	d006      	beq.n	12d8 <xvprintf+0x3c>
    12ca:	231f      	movs	r3, #31
    12cc:	18fb      	adds	r3, r7, r3
    12ce:	781b      	ldrb	r3, [r3, #0]
    12d0:	0018      	movs	r0, r3
    12d2:	f7ff ff83 	bl	11dc <xputc>
    12d6:	e165      	b.n	15a4 <xvprintf+0x308>
    12d8:	2300      	movs	r3, #0
    12da:	627b      	str	r3, [r7, #36]	; 0x24
    12dc:	687b      	ldr	r3, [r7, #4]
    12de:	1c5a      	adds	r2, r3, #1
    12e0:	607a      	str	r2, [r7, #4]
    12e2:	221f      	movs	r2, #31
    12e4:	18ba      	adds	r2, r7, r2
    12e6:	781b      	ldrb	r3, [r3, #0]
    12e8:	7013      	strb	r3, [r2, #0]
    12ea:	231f      	movs	r3, #31
    12ec:	18fb      	adds	r3, r7, r3
    12ee:	781b      	ldrb	r3, [r3, #0]
    12f0:	2b30      	cmp	r3, #48	; 0x30
    12f2:	d109      	bne.n	1308 <xvprintf+0x6c>
    12f4:	2301      	movs	r3, #1
    12f6:	627b      	str	r3, [r7, #36]	; 0x24
    12f8:	687b      	ldr	r3, [r7, #4]
    12fa:	1c5a      	adds	r2, r3, #1
    12fc:	607a      	str	r2, [r7, #4]
    12fe:	221f      	movs	r2, #31
    1300:	18ba      	adds	r2, r7, r2
    1302:	781b      	ldrb	r3, [r3, #0]
    1304:	7013      	strb	r3, [r2, #0]
    1306:	e00d      	b.n	1324 <xvprintf+0x88>
    1308:	231f      	movs	r3, #31
    130a:	18fb      	adds	r3, r7, r3
    130c:	781b      	ldrb	r3, [r3, #0]
    130e:	2b2d      	cmp	r3, #45	; 0x2d
    1310:	d108      	bne.n	1324 <xvprintf+0x88>
    1312:	2302      	movs	r3, #2
    1314:	627b      	str	r3, [r7, #36]	; 0x24
    1316:	687b      	ldr	r3, [r7, #4]
    1318:	1c5a      	adds	r2, r3, #1
    131a:	607a      	str	r2, [r7, #4]
    131c:	221f      	movs	r2, #31
    131e:	18ba      	adds	r2, r7, r2
    1320:	781b      	ldrb	r3, [r3, #0]
    1322:	7013      	strb	r3, [r2, #0]
    1324:	2300      	movs	r3, #0
    1326:	62bb      	str	r3, [r7, #40]	; 0x28
    1328:	e012      	b.n	1350 <xvprintf+0xb4>
    132a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    132c:	0013      	movs	r3, r2
    132e:	009b      	lsls	r3, r3, #2
    1330:	189b      	adds	r3, r3, r2
    1332:	005b      	lsls	r3, r3, #1
    1334:	001a      	movs	r2, r3
    1336:	231f      	movs	r3, #31
    1338:	18fb      	adds	r3, r7, r3
    133a:	781b      	ldrb	r3, [r3, #0]
    133c:	18d3      	adds	r3, r2, r3
    133e:	3b30      	subs	r3, #48	; 0x30
    1340:	62bb      	str	r3, [r7, #40]	; 0x28
    1342:	687b      	ldr	r3, [r7, #4]
    1344:	1c5a      	adds	r2, r3, #1
    1346:	607a      	str	r2, [r7, #4]
    1348:	221f      	movs	r2, #31
    134a:	18ba      	adds	r2, r7, r2
    134c:	781b      	ldrb	r3, [r3, #0]
    134e:	7013      	strb	r3, [r2, #0]
    1350:	231f      	movs	r3, #31
    1352:	18fb      	adds	r3, r7, r3
    1354:	781b      	ldrb	r3, [r3, #0]
    1356:	2b2f      	cmp	r3, #47	; 0x2f
    1358:	d904      	bls.n	1364 <xvprintf+0xc8>
    135a:	231f      	movs	r3, #31
    135c:	18fb      	adds	r3, r7, r3
    135e:	781b      	ldrb	r3, [r3, #0]
    1360:	2b39      	cmp	r3, #57	; 0x39
    1362:	d9e2      	bls.n	132a <xvprintf+0x8e>
    1364:	231f      	movs	r3, #31
    1366:	18fb      	adds	r3, r7, r3
    1368:	781b      	ldrb	r3, [r3, #0]
    136a:	2b6c      	cmp	r3, #108	; 0x6c
    136c:	d004      	beq.n	1378 <xvprintf+0xdc>
    136e:	231f      	movs	r3, #31
    1370:	18fb      	adds	r3, r7, r3
    1372:	781b      	ldrb	r3, [r3, #0]
    1374:	2b4c      	cmp	r3, #76	; 0x4c
    1376:	d10a      	bne.n	138e <xvprintf+0xf2>
    1378:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    137a:	2204      	movs	r2, #4
    137c:	4313      	orrs	r3, r2
    137e:	627b      	str	r3, [r7, #36]	; 0x24
    1380:	687b      	ldr	r3, [r7, #4]
    1382:	1c5a      	adds	r2, r3, #1
    1384:	607a      	str	r2, [r7, #4]
    1386:	221f      	movs	r2, #31
    1388:	18ba      	adds	r2, r7, r2
    138a:	781b      	ldrb	r3, [r3, #0]
    138c:	7013      	strb	r3, [r2, #0]
    138e:	231f      	movs	r3, #31
    1390:	18fb      	adds	r3, r7, r3
    1392:	781b      	ldrb	r3, [r3, #0]
    1394:	2b00      	cmp	r3, #0
    1396:	d100      	bne.n	139a <xvprintf+0xfe>
    1398:	e107      	b.n	15aa <xvprintf+0x30e>
    139a:	231e      	movs	r3, #30
    139c:	18fb      	adds	r3, r7, r3
    139e:	221f      	movs	r2, #31
    13a0:	18ba      	adds	r2, r7, r2
    13a2:	7812      	ldrb	r2, [r2, #0]
    13a4:	701a      	strb	r2, [r3, #0]
    13a6:	231e      	movs	r3, #30
    13a8:	18fb      	adds	r3, r7, r3
    13aa:	781b      	ldrb	r3, [r3, #0]
    13ac:	2b60      	cmp	r3, #96	; 0x60
    13ae:	d906      	bls.n	13be <xvprintf+0x122>
    13b0:	231e      	movs	r3, #30
    13b2:	18fb      	adds	r3, r7, r3
    13b4:	221e      	movs	r2, #30
    13b6:	18ba      	adds	r2, r7, r2
    13b8:	7812      	ldrb	r2, [r2, #0]
    13ba:	3a20      	subs	r2, #32
    13bc:	701a      	strb	r2, [r3, #0]
    13be:	231e      	movs	r3, #30
    13c0:	18fb      	adds	r3, r7, r3
    13c2:	781b      	ldrb	r3, [r3, #0]
    13c4:	3b42      	subs	r3, #66	; 0x42
    13c6:	2b16      	cmp	r3, #22
    13c8:	d847      	bhi.n	145a <xvprintf+0x1be>
    13ca:	009a      	lsls	r2, r3, #2
    13cc:	4b79      	ldr	r3, [pc, #484]	; (15b4 <xvprintf+0x318>)
    13ce:	18d3      	adds	r3, r2, r3
    13d0:	681b      	ldr	r3, [r3, #0]
    13d2:	469f      	mov	pc, r3
    13d4:	683b      	ldr	r3, [r7, #0]
    13d6:	1d1a      	adds	r2, r3, #4
    13d8:	603a      	str	r2, [r7, #0]
    13da:	681b      	ldr	r3, [r3, #0]
    13dc:	61bb      	str	r3, [r7, #24]
    13de:	2300      	movs	r3, #0
    13e0:	62fb      	str	r3, [r7, #44]	; 0x2c
    13e2:	e002      	b.n	13ea <xvprintf+0x14e>
    13e4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    13e6:	3301      	adds	r3, #1
    13e8:	62fb      	str	r3, [r7, #44]	; 0x2c
    13ea:	69ba      	ldr	r2, [r7, #24]
    13ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    13ee:	18d3      	adds	r3, r2, r3
    13f0:	781b      	ldrb	r3, [r3, #0]
    13f2:	2b00      	cmp	r3, #0
    13f4:	d1f6      	bne.n	13e4 <xvprintf+0x148>
    13f6:	e002      	b.n	13fe <xvprintf+0x162>
    13f8:	2020      	movs	r0, #32
    13fa:	f7ff feef 	bl	11dc <xputc>
    13fe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1400:	2202      	movs	r2, #2
    1402:	4013      	ands	r3, r2
    1404:	d105      	bne.n	1412 <xvprintf+0x176>
    1406:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1408:	1c5a      	adds	r2, r3, #1
    140a:	62fa      	str	r2, [r7, #44]	; 0x2c
    140c:	6aba      	ldr	r2, [r7, #40]	; 0x28
    140e:	4293      	cmp	r3, r2
    1410:	d3f2      	bcc.n	13f8 <xvprintf+0x15c>
    1412:	69bb      	ldr	r3, [r7, #24]
    1414:	0018      	movs	r0, r3
    1416:	f7ff ff0d 	bl	1234 <xputs>
    141a:	e002      	b.n	1422 <xvprintf+0x186>
    141c:	2020      	movs	r0, #32
    141e:	f7ff fedd 	bl	11dc <xputc>
    1422:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1424:	1c5a      	adds	r2, r3, #1
    1426:	62fa      	str	r2, [r7, #44]	; 0x2c
    1428:	6aba      	ldr	r2, [r7, #40]	; 0x28
    142a:	4293      	cmp	r3, r2
    142c:	d3f6      	bcc.n	141c <xvprintf+0x180>
    142e:	e0b9      	b.n	15a4 <xvprintf+0x308>
    1430:	683b      	ldr	r3, [r7, #0]
    1432:	1d1a      	adds	r2, r3, #4
    1434:	603a      	str	r2, [r7, #0]
    1436:	681b      	ldr	r3, [r3, #0]
    1438:	b2db      	uxtb	r3, r3
    143a:	0018      	movs	r0, r3
    143c:	f7ff fece 	bl	11dc <xputc>
    1440:	e0b0      	b.n	15a4 <xvprintf+0x308>
    1442:	2302      	movs	r3, #2
    1444:	637b      	str	r3, [r7, #52]	; 0x34
    1446:	e00f      	b.n	1468 <xvprintf+0x1cc>
    1448:	2308      	movs	r3, #8
    144a:	637b      	str	r3, [r7, #52]	; 0x34
    144c:	e00c      	b.n	1468 <xvprintf+0x1cc>
    144e:	230a      	movs	r3, #10
    1450:	637b      	str	r3, [r7, #52]	; 0x34
    1452:	e009      	b.n	1468 <xvprintf+0x1cc>
    1454:	2310      	movs	r3, #16
    1456:	637b      	str	r3, [r7, #52]	; 0x34
    1458:	e006      	b.n	1468 <xvprintf+0x1cc>
    145a:	231f      	movs	r3, #31
    145c:	18fb      	adds	r3, r7, r3
    145e:	781b      	ldrb	r3, [r3, #0]
    1460:	0018      	movs	r0, r3
    1462:	f7ff febb 	bl	11dc <xputc>
    1466:	e09d      	b.n	15a4 <xvprintf+0x308>
    1468:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    146a:	2204      	movs	r2, #4
    146c:	4013      	ands	r3, r2
    146e:	d004      	beq.n	147a <xvprintf+0x1de>
    1470:	683b      	ldr	r3, [r7, #0]
    1472:	1d1a      	adds	r2, r3, #4
    1474:	603a      	str	r2, [r7, #0]
    1476:	681b      	ldr	r3, [r3, #0]
    1478:	e00d      	b.n	1496 <xvprintf+0x1fa>
    147a:	231e      	movs	r3, #30
    147c:	18fb      	adds	r3, r7, r3
    147e:	781b      	ldrb	r3, [r3, #0]
    1480:	2b44      	cmp	r3, #68	; 0x44
    1482:	d104      	bne.n	148e <xvprintf+0x1f2>
    1484:	683b      	ldr	r3, [r7, #0]
    1486:	1d1a      	adds	r2, r3, #4
    1488:	603a      	str	r2, [r7, #0]
    148a:	681b      	ldr	r3, [r3, #0]
    148c:	e003      	b.n	1496 <xvprintf+0x1fa>
    148e:	683b      	ldr	r3, [r7, #0]
    1490:	1d1a      	adds	r2, r3, #4
    1492:	603a      	str	r2, [r7, #0]
    1494:	681b      	ldr	r3, [r3, #0]
    1496:	623b      	str	r3, [r7, #32]
    1498:	231e      	movs	r3, #30
    149a:	18fb      	adds	r3, r7, r3
    149c:	781b      	ldrb	r3, [r3, #0]
    149e:	2b44      	cmp	r3, #68	; 0x44
    14a0:	d109      	bne.n	14b6 <xvprintf+0x21a>
    14a2:	6a3b      	ldr	r3, [r7, #32]
    14a4:	2b00      	cmp	r3, #0
    14a6:	da06      	bge.n	14b6 <xvprintf+0x21a>
    14a8:	6a3b      	ldr	r3, [r7, #32]
    14aa:	425b      	negs	r3, r3
    14ac:	623b      	str	r3, [r7, #32]
    14ae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14b0:	2208      	movs	r2, #8
    14b2:	4313      	orrs	r3, r2
    14b4:	627b      	str	r3, [r7, #36]	; 0x24
    14b6:	2300      	movs	r3, #0
    14b8:	633b      	str	r3, [r7, #48]	; 0x30
    14ba:	6a3b      	ldr	r3, [r7, #32]
    14bc:	6b79      	ldr	r1, [r7, #52]	; 0x34
    14be:	0018      	movs	r0, r3
    14c0:	f003 f808 	bl	44d4 <__aeabi_uidivmod>
    14c4:	000b      	movs	r3, r1
    14c6:	001a      	movs	r2, r3
    14c8:	231e      	movs	r3, #30
    14ca:	18fb      	adds	r3, r7, r3
    14cc:	701a      	strb	r2, [r3, #0]
    14ce:	6b79      	ldr	r1, [r7, #52]	; 0x34
    14d0:	6a38      	ldr	r0, [r7, #32]
    14d2:	f002 ff79 	bl	43c8 <__aeabi_uidiv>
    14d6:	0003      	movs	r3, r0
    14d8:	623b      	str	r3, [r7, #32]
    14da:	231e      	movs	r3, #30
    14dc:	18fb      	adds	r3, r7, r3
    14de:	781b      	ldrb	r3, [r3, #0]
    14e0:	2b09      	cmp	r3, #9
    14e2:	d90e      	bls.n	1502 <xvprintf+0x266>
    14e4:	231f      	movs	r3, #31
    14e6:	18fb      	adds	r3, r7, r3
    14e8:	781b      	ldrb	r3, [r3, #0]
    14ea:	2b78      	cmp	r3, #120	; 0x78
    14ec:	d101      	bne.n	14f2 <xvprintf+0x256>
    14ee:	2327      	movs	r3, #39	; 0x27
    14f0:	e000      	b.n	14f4 <xvprintf+0x258>
    14f2:	2307      	movs	r3, #7
    14f4:	221e      	movs	r2, #30
    14f6:	18ba      	adds	r2, r7, r2
    14f8:	211e      	movs	r1, #30
    14fa:	1879      	adds	r1, r7, r1
    14fc:	7809      	ldrb	r1, [r1, #0]
    14fe:	185b      	adds	r3, r3, r1
    1500:	7013      	strb	r3, [r2, #0]
    1502:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1504:	1c5a      	adds	r2, r3, #1
    1506:	633a      	str	r2, [r7, #48]	; 0x30
    1508:	221e      	movs	r2, #30
    150a:	18ba      	adds	r2, r7, r2
    150c:	7812      	ldrb	r2, [r2, #0]
    150e:	3230      	adds	r2, #48	; 0x30
    1510:	b2d1      	uxtb	r1, r2
    1512:	2208      	movs	r2, #8
    1514:	18ba      	adds	r2, r7, r2
    1516:	54d1      	strb	r1, [r2, r3]
    1518:	6a3b      	ldr	r3, [r7, #32]
    151a:	2b00      	cmp	r3, #0
    151c:	d002      	beq.n	1524 <xvprintf+0x288>
    151e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1520:	2b0f      	cmp	r3, #15
    1522:	d9ca      	bls.n	14ba <xvprintf+0x21e>
    1524:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1526:	2208      	movs	r2, #8
    1528:	4013      	ands	r3, r2
    152a:	d006      	beq.n	153a <xvprintf+0x29e>
    152c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    152e:	1c5a      	adds	r2, r3, #1
    1530:	633a      	str	r2, [r7, #48]	; 0x30
    1532:	2208      	movs	r2, #8
    1534:	18ba      	adds	r2, r7, r2
    1536:	212d      	movs	r1, #45	; 0x2d
    1538:	54d1      	strb	r1, [r2, r3]
    153a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    153c:	62fb      	str	r3, [r7, #44]	; 0x2c
    153e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1540:	2201      	movs	r2, #1
    1542:	4013      	ands	r3, r2
    1544:	d001      	beq.n	154a <xvprintf+0x2ae>
    1546:	2230      	movs	r2, #48	; 0x30
    1548:	e000      	b.n	154c <xvprintf+0x2b0>
    154a:	2220      	movs	r2, #32
    154c:	231e      	movs	r3, #30
    154e:	18fb      	adds	r3, r7, r3
    1550:	701a      	strb	r2, [r3, #0]
    1552:	e005      	b.n	1560 <xvprintf+0x2c4>
    1554:	231e      	movs	r3, #30
    1556:	18fb      	adds	r3, r7, r3
    1558:	781b      	ldrb	r3, [r3, #0]
    155a:	0018      	movs	r0, r3
    155c:	f7ff fe3e 	bl	11dc <xputc>
    1560:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1562:	2202      	movs	r2, #2
    1564:	4013      	ands	r3, r2
    1566:	d105      	bne.n	1574 <xvprintf+0x2d8>
    1568:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    156a:	1c5a      	adds	r2, r3, #1
    156c:	62fa      	str	r2, [r7, #44]	; 0x2c
    156e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1570:	4293      	cmp	r3, r2
    1572:	d3ef      	bcc.n	1554 <xvprintf+0x2b8>
    1574:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1576:	3b01      	subs	r3, #1
    1578:	633b      	str	r3, [r7, #48]	; 0x30
    157a:	2308      	movs	r3, #8
    157c:	18fa      	adds	r2, r7, r3
    157e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1580:	18d3      	adds	r3, r2, r3
    1582:	781b      	ldrb	r3, [r3, #0]
    1584:	0018      	movs	r0, r3
    1586:	f7ff fe29 	bl	11dc <xputc>
    158a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    158c:	2b00      	cmp	r3, #0
    158e:	d1f1      	bne.n	1574 <xvprintf+0x2d8>
    1590:	e002      	b.n	1598 <xvprintf+0x2fc>
    1592:	2020      	movs	r0, #32
    1594:	f7ff fe22 	bl	11dc <xputc>
    1598:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    159a:	1c5a      	adds	r2, r3, #1
    159c:	62fa      	str	r2, [r7, #44]	; 0x2c
    159e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    15a0:	4293      	cmp	r3, r2
    15a2:	d3f6      	bcc.n	1592 <xvprintf+0x2f6>
    15a4:	e67f      	b.n	12a6 <xvprintf+0xa>
    15a6:	46c0      	nop			; (mov r8, r8)
    15a8:	e000      	b.n	15ac <xvprintf+0x310>
    15aa:	46c0      	nop			; (mov r8, r8)
    15ac:	46c0      	nop			; (mov r8, r8)
    15ae:	46bd      	mov	sp, r7
    15b0:	b00e      	add	sp, #56	; 0x38
    15b2:	bd80      	pop	{r7, pc}
    15b4:	00008620 	.word	0x00008620

000015b8 <xprintf>:
    15b8:	b40f      	push	{r0, r1, r2, r3}
    15ba:	b580      	push	{r7, lr}
    15bc:	b082      	sub	sp, #8
    15be:	af00      	add	r7, sp, #0
    15c0:	2314      	movs	r3, #20
    15c2:	18fb      	adds	r3, r7, r3
    15c4:	607b      	str	r3, [r7, #4]
    15c6:	687a      	ldr	r2, [r7, #4]
    15c8:	693b      	ldr	r3, [r7, #16]
    15ca:	0011      	movs	r1, r2
    15cc:	0018      	movs	r0, r3
    15ce:	f7ff fe65 	bl	129c <xvprintf>
    15d2:	46c0      	nop			; (mov r8, r8)
    15d4:	46bd      	mov	sp, r7
    15d6:	b002      	add	sp, #8
    15d8:	bc80      	pop	{r7}
    15da:	bc08      	pop	{r3}
    15dc:	b004      	add	sp, #16
    15de:	4718      	bx	r3

000015e0 <xsprintf>:
    15e0:	b40e      	push	{r1, r2, r3}
    15e2:	b580      	push	{r7, lr}
    15e4:	b085      	sub	sp, #20
    15e6:	af00      	add	r7, sp, #0
    15e8:	6078      	str	r0, [r7, #4]
    15ea:	4b0d      	ldr	r3, [pc, #52]	; (1620 <xsprintf+0x40>)
    15ec:	687a      	ldr	r2, [r7, #4]
    15ee:	601a      	str	r2, [r3, #0]
    15f0:	2320      	movs	r3, #32
    15f2:	18fb      	adds	r3, r7, r3
    15f4:	60fb      	str	r3, [r7, #12]
    15f6:	68fa      	ldr	r2, [r7, #12]
    15f8:	69fb      	ldr	r3, [r7, #28]
    15fa:	0011      	movs	r1, r2
    15fc:	0018      	movs	r0, r3
    15fe:	f7ff fe4d 	bl	129c <xvprintf>
    1602:	4b07      	ldr	r3, [pc, #28]	; (1620 <xsprintf+0x40>)
    1604:	681b      	ldr	r3, [r3, #0]
    1606:	2200      	movs	r2, #0
    1608:	701a      	strb	r2, [r3, #0]
    160a:	4b05      	ldr	r3, [pc, #20]	; (1620 <xsprintf+0x40>)
    160c:	2200      	movs	r2, #0
    160e:	601a      	str	r2, [r3, #0]
    1610:	46c0      	nop			; (mov r8, r8)
    1612:	46bd      	mov	sp, r7
    1614:	b005      	add	sp, #20
    1616:	bc80      	pop	{r7}
    1618:	bc08      	pop	{r3}
    161a:	b003      	add	sp, #12
    161c:	4718      	bx	r3
    161e:	46c0      	nop			; (mov r8, r8)
    1620:	20000908 	.word	0x20000908

00001624 <xfprintf>:
    1624:	b40e      	push	{r1, r2, r3}
    1626:	b580      	push	{r7, lr}
    1628:	b085      	sub	sp, #20
    162a:	af00      	add	r7, sp, #0
    162c:	6078      	str	r0, [r7, #4]
    162e:	4b0c      	ldr	r3, [pc, #48]	; (1660 <xfprintf+0x3c>)
    1630:	681b      	ldr	r3, [r3, #0]
    1632:	60fb      	str	r3, [r7, #12]
    1634:	4b0a      	ldr	r3, [pc, #40]	; (1660 <xfprintf+0x3c>)
    1636:	687a      	ldr	r2, [r7, #4]
    1638:	601a      	str	r2, [r3, #0]
    163a:	2320      	movs	r3, #32
    163c:	18fb      	adds	r3, r7, r3
    163e:	60bb      	str	r3, [r7, #8]
    1640:	68ba      	ldr	r2, [r7, #8]
    1642:	69fb      	ldr	r3, [r7, #28]
    1644:	0011      	movs	r1, r2
    1646:	0018      	movs	r0, r3
    1648:	f7ff fe28 	bl	129c <xvprintf>
    164c:	4b04      	ldr	r3, [pc, #16]	; (1660 <xfprintf+0x3c>)
    164e:	68fa      	ldr	r2, [r7, #12]
    1650:	601a      	str	r2, [r3, #0]
    1652:	46c0      	nop			; (mov r8, r8)
    1654:	46bd      	mov	sp, r7
    1656:	b005      	add	sp, #20
    1658:	bc80      	pop	{r7}
    165a:	bc08      	pop	{r3}
    165c:	b003      	add	sp, #12
    165e:	4718      	bx	r3
    1660:	20000904 	.word	0x20000904

00001664 <put_dump>:
    1664:	b580      	push	{r7, lr}
    1666:	b088      	sub	sp, #32
    1668:	af00      	add	r7, sp, #0
    166a:	60f8      	str	r0, [r7, #12]
    166c:	60b9      	str	r1, [r7, #8]
    166e:	607a      	str	r2, [r7, #4]
    1670:	603b      	str	r3, [r7, #0]
    1672:	68ba      	ldr	r2, [r7, #8]
    1674:	4b38      	ldr	r3, [pc, #224]	; (1758 <put_dump+0xf4>)
    1676:	0011      	movs	r1, r2
    1678:	0018      	movs	r0, r3
    167a:	f7ff ff9d 	bl	15b8 <xprintf>
    167e:	683b      	ldr	r3, [r7, #0]
    1680:	2b02      	cmp	r3, #2
    1682:	d03c      	beq.n	16fe <put_dump+0x9a>
    1684:	2b04      	cmp	r3, #4
    1686:	d04d      	beq.n	1724 <put_dump+0xc0>
    1688:	2b01      	cmp	r3, #1
    168a:	d15d      	bne.n	1748 <put_dump+0xe4>
    168c:	68fb      	ldr	r3, [r7, #12]
    168e:	613b      	str	r3, [r7, #16]
    1690:	2300      	movs	r3, #0
    1692:	61fb      	str	r3, [r7, #28]
    1694:	e00c      	b.n	16b0 <put_dump+0x4c>
    1696:	69fb      	ldr	r3, [r7, #28]
    1698:	693a      	ldr	r2, [r7, #16]
    169a:	18d3      	adds	r3, r2, r3
    169c:	781b      	ldrb	r3, [r3, #0]
    169e:	001a      	movs	r2, r3
    16a0:	4b2e      	ldr	r3, [pc, #184]	; (175c <put_dump+0xf8>)
    16a2:	0011      	movs	r1, r2
    16a4:	0018      	movs	r0, r3
    16a6:	f7ff ff87 	bl	15b8 <xprintf>
    16aa:	69fb      	ldr	r3, [r7, #28]
    16ac:	3301      	adds	r3, #1
    16ae:	61fb      	str	r3, [r7, #28]
    16b0:	69fa      	ldr	r2, [r7, #28]
    16b2:	687b      	ldr	r3, [r7, #4]
    16b4:	429a      	cmp	r2, r3
    16b6:	dbee      	blt.n	1696 <put_dump+0x32>
    16b8:	2020      	movs	r0, #32
    16ba:	f7ff fd8f 	bl	11dc <xputc>
    16be:	2300      	movs	r3, #0
    16c0:	61fb      	str	r3, [r7, #28]
    16c2:	e017      	b.n	16f4 <put_dump+0x90>
    16c4:	69fb      	ldr	r3, [r7, #28]
    16c6:	693a      	ldr	r2, [r7, #16]
    16c8:	18d3      	adds	r3, r2, r3
    16ca:	781b      	ldrb	r3, [r3, #0]
    16cc:	2b1f      	cmp	r3, #31
    16ce:	d90a      	bls.n	16e6 <put_dump+0x82>
    16d0:	69fb      	ldr	r3, [r7, #28]
    16d2:	693a      	ldr	r2, [r7, #16]
    16d4:	18d3      	adds	r3, r2, r3
    16d6:	781b      	ldrb	r3, [r3, #0]
    16d8:	2b7e      	cmp	r3, #126	; 0x7e
    16da:	d804      	bhi.n	16e6 <put_dump+0x82>
    16dc:	69fb      	ldr	r3, [r7, #28]
    16de:	693a      	ldr	r2, [r7, #16]
    16e0:	18d3      	adds	r3, r2, r3
    16e2:	781b      	ldrb	r3, [r3, #0]
    16e4:	e000      	b.n	16e8 <put_dump+0x84>
    16e6:	232e      	movs	r3, #46	; 0x2e
    16e8:	0018      	movs	r0, r3
    16ea:	f7ff fd77 	bl	11dc <xputc>
    16ee:	69fb      	ldr	r3, [r7, #28]
    16f0:	3301      	adds	r3, #1
    16f2:	61fb      	str	r3, [r7, #28]
    16f4:	69fa      	ldr	r2, [r7, #28]
    16f6:	687b      	ldr	r3, [r7, #4]
    16f8:	429a      	cmp	r2, r3
    16fa:	dbe3      	blt.n	16c4 <put_dump+0x60>
    16fc:	e024      	b.n	1748 <put_dump+0xe4>
    16fe:	68fb      	ldr	r3, [r7, #12]
    1700:	61bb      	str	r3, [r7, #24]
    1702:	69bb      	ldr	r3, [r7, #24]
    1704:	1c9a      	adds	r2, r3, #2
    1706:	61ba      	str	r2, [r7, #24]
    1708:	881b      	ldrh	r3, [r3, #0]
    170a:	001a      	movs	r2, r3
    170c:	4b14      	ldr	r3, [pc, #80]	; (1760 <put_dump+0xfc>)
    170e:	0011      	movs	r1, r2
    1710:	0018      	movs	r0, r3
    1712:	f7ff ff51 	bl	15b8 <xprintf>
    1716:	687b      	ldr	r3, [r7, #4]
    1718:	3b01      	subs	r3, #1
    171a:	607b      	str	r3, [r7, #4]
    171c:	687b      	ldr	r3, [r7, #4]
    171e:	2b00      	cmp	r3, #0
    1720:	d1ef      	bne.n	1702 <put_dump+0x9e>
    1722:	e011      	b.n	1748 <put_dump+0xe4>
    1724:	68fb      	ldr	r3, [r7, #12]
    1726:	617b      	str	r3, [r7, #20]
    1728:	697b      	ldr	r3, [r7, #20]
    172a:	1d1a      	adds	r2, r3, #4
    172c:	617a      	str	r2, [r7, #20]
    172e:	681a      	ldr	r2, [r3, #0]
    1730:	4b0c      	ldr	r3, [pc, #48]	; (1764 <put_dump+0x100>)
    1732:	0011      	movs	r1, r2
    1734:	0018      	movs	r0, r3
    1736:	f7ff ff3f 	bl	15b8 <xprintf>
    173a:	687b      	ldr	r3, [r7, #4]
    173c:	3b01      	subs	r3, #1
    173e:	607b      	str	r3, [r7, #4]
    1740:	687b      	ldr	r3, [r7, #4]
    1742:	2b00      	cmp	r3, #0
    1744:	d1f0      	bne.n	1728 <put_dump+0xc4>
    1746:	46c0      	nop			; (mov r8, r8)
    1748:	200a      	movs	r0, #10
    174a:	f7ff fd47 	bl	11dc <xputc>
    174e:	46c0      	nop			; (mov r8, r8)
    1750:	46bd      	mov	sp, r7
    1752:	b008      	add	sp, #32
    1754:	bd80      	pop	{r7, pc}
    1756:	46c0      	nop			; (mov r8, r8)
    1758:	0000867c 	.word	0x0000867c
    175c:	00008684 	.word	0x00008684
    1760:	0000868c 	.word	0x0000868c
    1764:	00008694 	.word	0x00008694

00001768 <xgets>:
    1768:	b580      	push	{r7, lr}
    176a:	b084      	sub	sp, #16
    176c:	af00      	add	r7, sp, #0
    176e:	6078      	str	r0, [r7, #4]
    1770:	6039      	str	r1, [r7, #0]
    1772:	4b24      	ldr	r3, [pc, #144]	; (1804 <xgets+0x9c>)
    1774:	681b      	ldr	r3, [r3, #0]
    1776:	2b00      	cmp	r3, #0
    1778:	d101      	bne.n	177e <xgets+0x16>
    177a:	2300      	movs	r3, #0
    177c:	e03e      	b.n	17fc <xgets+0x94>
    177e:	2300      	movs	r3, #0
    1780:	60fb      	str	r3, [r7, #12]
    1782:	4b20      	ldr	r3, [pc, #128]	; (1804 <xgets+0x9c>)
    1784:	681b      	ldr	r3, [r3, #0]
    1786:	4798      	blx	r3
    1788:	0003      	movs	r3, r0
    178a:	60bb      	str	r3, [r7, #8]
    178c:	68bb      	ldr	r3, [r7, #8]
    178e:	2b00      	cmp	r3, #0
    1790:	d101      	bne.n	1796 <xgets+0x2e>
    1792:	2300      	movs	r3, #0
    1794:	e032      	b.n	17fc <xgets+0x94>
    1796:	68bb      	ldr	r3, [r7, #8]
    1798:	2b0d      	cmp	r3, #13
    179a:	d025      	beq.n	17e8 <xgets+0x80>
    179c:	68bb      	ldr	r3, [r7, #8]
    179e:	2b08      	cmp	r3, #8
    17a0:	d10b      	bne.n	17ba <xgets+0x52>
    17a2:	68fb      	ldr	r3, [r7, #12]
    17a4:	2b00      	cmp	r3, #0
    17a6:	d008      	beq.n	17ba <xgets+0x52>
    17a8:	68fb      	ldr	r3, [r7, #12]
    17aa:	3b01      	subs	r3, #1
    17ac:	60fb      	str	r3, [r7, #12]
    17ae:	68bb      	ldr	r3, [r7, #8]
    17b0:	b2db      	uxtb	r3, r3
    17b2:	0018      	movs	r0, r3
    17b4:	f7ff fd12 	bl	11dc <xputc>
    17b8:	e015      	b.n	17e6 <xgets+0x7e>
    17ba:	68bb      	ldr	r3, [r7, #8]
    17bc:	2b1f      	cmp	r3, #31
    17be:	dde0      	ble.n	1782 <xgets+0x1a>
    17c0:	683b      	ldr	r3, [r7, #0]
    17c2:	1e5a      	subs	r2, r3, #1
    17c4:	68fb      	ldr	r3, [r7, #12]
    17c6:	429a      	cmp	r2, r3
    17c8:	dddb      	ble.n	1782 <xgets+0x1a>
    17ca:	68fb      	ldr	r3, [r7, #12]
    17cc:	1c5a      	adds	r2, r3, #1
    17ce:	60fa      	str	r2, [r7, #12]
    17d0:	001a      	movs	r2, r3
    17d2:	687b      	ldr	r3, [r7, #4]
    17d4:	189b      	adds	r3, r3, r2
    17d6:	68ba      	ldr	r2, [r7, #8]
    17d8:	b2d2      	uxtb	r2, r2
    17da:	701a      	strb	r2, [r3, #0]
    17dc:	68bb      	ldr	r3, [r7, #8]
    17de:	b2db      	uxtb	r3, r3
    17e0:	0018      	movs	r0, r3
    17e2:	f7ff fcfb 	bl	11dc <xputc>
    17e6:	e7cc      	b.n	1782 <xgets+0x1a>
    17e8:	46c0      	nop			; (mov r8, r8)
    17ea:	68fb      	ldr	r3, [r7, #12]
    17ec:	687a      	ldr	r2, [r7, #4]
    17ee:	18d3      	adds	r3, r2, r3
    17f0:	2200      	movs	r2, #0
    17f2:	701a      	strb	r2, [r3, #0]
    17f4:	200a      	movs	r0, #10
    17f6:	f7ff fcf1 	bl	11dc <xputc>
    17fa:	2301      	movs	r3, #1
    17fc:	0018      	movs	r0, r3
    17fe:	46bd      	mov	sp, r7
    1800:	b004      	add	sp, #16
    1802:	bd80      	pop	{r7, pc}
    1804:	2000090c 	.word	0x2000090c

00001808 <xfgets>:
    1808:	b580      	push	{r7, lr}
    180a:	b086      	sub	sp, #24
    180c:	af00      	add	r7, sp, #0
    180e:	60f8      	str	r0, [r7, #12]
    1810:	60b9      	str	r1, [r7, #8]
    1812:	607a      	str	r2, [r7, #4]
    1814:	4b0a      	ldr	r3, [pc, #40]	; (1840 <xfgets+0x38>)
    1816:	681b      	ldr	r3, [r3, #0]
    1818:	617b      	str	r3, [r7, #20]
    181a:	4b09      	ldr	r3, [pc, #36]	; (1840 <xfgets+0x38>)
    181c:	68fa      	ldr	r2, [r7, #12]
    181e:	601a      	str	r2, [r3, #0]
    1820:	687a      	ldr	r2, [r7, #4]
    1822:	68bb      	ldr	r3, [r7, #8]
    1824:	0011      	movs	r1, r2
    1826:	0018      	movs	r0, r3
    1828:	f7ff ff9e 	bl	1768 <xgets>
    182c:	0003      	movs	r3, r0
    182e:	613b      	str	r3, [r7, #16]
    1830:	4b03      	ldr	r3, [pc, #12]	; (1840 <xfgets+0x38>)
    1832:	697a      	ldr	r2, [r7, #20]
    1834:	601a      	str	r2, [r3, #0]
    1836:	693b      	ldr	r3, [r7, #16]
    1838:	0018      	movs	r0, r3
    183a:	46bd      	mov	sp, r7
    183c:	b006      	add	sp, #24
    183e:	bd80      	pop	{r7, pc}
    1840:	2000090c 	.word	0x2000090c

00001844 <xatoi>:
    1844:	b580      	push	{r7, lr}
    1846:	b084      	sub	sp, #16
    1848:	af00      	add	r7, sp, #0
    184a:	6078      	str	r0, [r7, #4]
    184c:	6039      	str	r1, [r7, #0]
    184e:	2309      	movs	r3, #9
    1850:	18fb      	adds	r3, r7, r3
    1852:	2200      	movs	r2, #0
    1854:	701a      	strb	r2, [r3, #0]
    1856:	683b      	ldr	r3, [r7, #0]
    1858:	2200      	movs	r2, #0
    185a:	601a      	str	r2, [r3, #0]
    185c:	e004      	b.n	1868 <xatoi+0x24>
    185e:	687b      	ldr	r3, [r7, #4]
    1860:	681b      	ldr	r3, [r3, #0]
    1862:	1c5a      	adds	r2, r3, #1
    1864:	687b      	ldr	r3, [r7, #4]
    1866:	601a      	str	r2, [r3, #0]
    1868:	687b      	ldr	r3, [r7, #4]
    186a:	681a      	ldr	r2, [r3, #0]
    186c:	230b      	movs	r3, #11
    186e:	18fb      	adds	r3, r7, r3
    1870:	7812      	ldrb	r2, [r2, #0]
    1872:	701a      	strb	r2, [r3, #0]
    1874:	230b      	movs	r3, #11
    1876:	18fb      	adds	r3, r7, r3
    1878:	781b      	ldrb	r3, [r3, #0]
    187a:	2b20      	cmp	r3, #32
    187c:	d0ef      	beq.n	185e <xatoi+0x1a>
    187e:	230b      	movs	r3, #11
    1880:	18fb      	adds	r3, r7, r3
    1882:	781b      	ldrb	r3, [r3, #0]
    1884:	2b2d      	cmp	r3, #45	; 0x2d
    1886:	d10e      	bne.n	18a6 <xatoi+0x62>
    1888:	2309      	movs	r3, #9
    188a:	18fb      	adds	r3, r7, r3
    188c:	2201      	movs	r2, #1
    188e:	701a      	strb	r2, [r3, #0]
    1890:	687b      	ldr	r3, [r7, #4]
    1892:	681b      	ldr	r3, [r3, #0]
    1894:	1c5a      	adds	r2, r3, #1
    1896:	687b      	ldr	r3, [r7, #4]
    1898:	601a      	str	r2, [r3, #0]
    189a:	687b      	ldr	r3, [r7, #4]
    189c:	681a      	ldr	r2, [r3, #0]
    189e:	230b      	movs	r3, #11
    18a0:	18fb      	adds	r3, r7, r3
    18a2:	7812      	ldrb	r2, [r2, #0]
    18a4:	701a      	strb	r2, [r3, #0]
    18a6:	230b      	movs	r3, #11
    18a8:	18fb      	adds	r3, r7, r3
    18aa:	781b      	ldrb	r3, [r3, #0]
    18ac:	2b30      	cmp	r3, #48	; 0x30
    18ae:	d149      	bne.n	1944 <xatoi+0x100>
    18b0:	687b      	ldr	r3, [r7, #4]
    18b2:	681b      	ldr	r3, [r3, #0]
    18b4:	1c5a      	adds	r2, r3, #1
    18b6:	687b      	ldr	r3, [r7, #4]
    18b8:	601a      	str	r2, [r3, #0]
    18ba:	687b      	ldr	r3, [r7, #4]
    18bc:	681a      	ldr	r2, [r3, #0]
    18be:	230b      	movs	r3, #11
    18c0:	18fb      	adds	r3, r7, r3
    18c2:	7812      	ldrb	r2, [r2, #0]
    18c4:	701a      	strb	r2, [r3, #0]
    18c6:	230b      	movs	r3, #11
    18c8:	18fb      	adds	r3, r7, r3
    18ca:	781b      	ldrb	r3, [r3, #0]
    18cc:	2b62      	cmp	r3, #98	; 0x62
    18ce:	d011      	beq.n	18f4 <xatoi+0xb0>
    18d0:	2b78      	cmp	r3, #120	; 0x78
    18d2:	d11f      	bne.n	1914 <xatoi+0xd0>
    18d4:	230a      	movs	r3, #10
    18d6:	18fb      	adds	r3, r7, r3
    18d8:	2210      	movs	r2, #16
    18da:	701a      	strb	r2, [r3, #0]
    18dc:	687b      	ldr	r3, [r7, #4]
    18de:	681b      	ldr	r3, [r3, #0]
    18e0:	1c5a      	adds	r2, r3, #1
    18e2:	687b      	ldr	r3, [r7, #4]
    18e4:	601a      	str	r2, [r3, #0]
    18e6:	687b      	ldr	r3, [r7, #4]
    18e8:	681a      	ldr	r2, [r3, #0]
    18ea:	230b      	movs	r3, #11
    18ec:	18fb      	adds	r3, r7, r3
    18ee:	7812      	ldrb	r2, [r2, #0]
    18f0:	701a      	strb	r2, [r3, #0]
    18f2:	e037      	b.n	1964 <xatoi+0x120>
    18f4:	230a      	movs	r3, #10
    18f6:	18fb      	adds	r3, r7, r3
    18f8:	2202      	movs	r2, #2
    18fa:	701a      	strb	r2, [r3, #0]
    18fc:	687b      	ldr	r3, [r7, #4]
    18fe:	681b      	ldr	r3, [r3, #0]
    1900:	1c5a      	adds	r2, r3, #1
    1902:	687b      	ldr	r3, [r7, #4]
    1904:	601a      	str	r2, [r3, #0]
    1906:	687b      	ldr	r3, [r7, #4]
    1908:	681a      	ldr	r2, [r3, #0]
    190a:	230b      	movs	r3, #11
    190c:	18fb      	adds	r3, r7, r3
    190e:	7812      	ldrb	r2, [r2, #0]
    1910:	701a      	strb	r2, [r3, #0]
    1912:	e027      	b.n	1964 <xatoi+0x120>
    1914:	230b      	movs	r3, #11
    1916:	18fb      	adds	r3, r7, r3
    1918:	781b      	ldrb	r3, [r3, #0]
    191a:	2b20      	cmp	r3, #32
    191c:	d801      	bhi.n	1922 <xatoi+0xde>
    191e:	2301      	movs	r3, #1
    1920:	e079      	b.n	1a16 <xatoi+0x1d2>
    1922:	230b      	movs	r3, #11
    1924:	18fb      	adds	r3, r7, r3
    1926:	781b      	ldrb	r3, [r3, #0]
    1928:	2b2f      	cmp	r3, #47	; 0x2f
    192a:	d904      	bls.n	1936 <xatoi+0xf2>
    192c:	230b      	movs	r3, #11
    192e:	18fb      	adds	r3, r7, r3
    1930:	781b      	ldrb	r3, [r3, #0]
    1932:	2b39      	cmp	r3, #57	; 0x39
    1934:	d901      	bls.n	193a <xatoi+0xf6>
    1936:	2300      	movs	r3, #0
    1938:	e06d      	b.n	1a16 <xatoi+0x1d2>
    193a:	230a      	movs	r3, #10
    193c:	18fb      	adds	r3, r7, r3
    193e:	2208      	movs	r2, #8
    1940:	701a      	strb	r2, [r3, #0]
    1942:	e00f      	b.n	1964 <xatoi+0x120>
    1944:	230b      	movs	r3, #11
    1946:	18fb      	adds	r3, r7, r3
    1948:	781b      	ldrb	r3, [r3, #0]
    194a:	2b2f      	cmp	r3, #47	; 0x2f
    194c:	d904      	bls.n	1958 <xatoi+0x114>
    194e:	230b      	movs	r3, #11
    1950:	18fb      	adds	r3, r7, r3
    1952:	781b      	ldrb	r3, [r3, #0]
    1954:	2b39      	cmp	r3, #57	; 0x39
    1956:	d901      	bls.n	195c <xatoi+0x118>
    1958:	2300      	movs	r3, #0
    195a:	e05c      	b.n	1a16 <xatoi+0x1d2>
    195c:	230a      	movs	r3, #10
    195e:	18fb      	adds	r3, r7, r3
    1960:	220a      	movs	r2, #10
    1962:	701a      	strb	r2, [r3, #0]
    1964:	2300      	movs	r3, #0
    1966:	60fb      	str	r3, [r7, #12]
    1968:	e044      	b.n	19f4 <xatoi+0x1b0>
    196a:	230b      	movs	r3, #11
    196c:	18fb      	adds	r3, r7, r3
    196e:	781b      	ldrb	r3, [r3, #0]
    1970:	2b60      	cmp	r3, #96	; 0x60
    1972:	d906      	bls.n	1982 <xatoi+0x13e>
    1974:	230b      	movs	r3, #11
    1976:	18fb      	adds	r3, r7, r3
    1978:	220b      	movs	r2, #11
    197a:	18ba      	adds	r2, r7, r2
    197c:	7812      	ldrb	r2, [r2, #0]
    197e:	3a20      	subs	r2, #32
    1980:	701a      	strb	r2, [r3, #0]
    1982:	230b      	movs	r3, #11
    1984:	18fb      	adds	r3, r7, r3
    1986:	220b      	movs	r2, #11
    1988:	18ba      	adds	r2, r7, r2
    198a:	7812      	ldrb	r2, [r2, #0]
    198c:	3a30      	subs	r2, #48	; 0x30
    198e:	701a      	strb	r2, [r3, #0]
    1990:	230b      	movs	r3, #11
    1992:	18fb      	adds	r3, r7, r3
    1994:	781b      	ldrb	r3, [r3, #0]
    1996:	2b10      	cmp	r3, #16
    1998:	d90d      	bls.n	19b6 <xatoi+0x172>
    199a:	230b      	movs	r3, #11
    199c:	18fb      	adds	r3, r7, r3
    199e:	220b      	movs	r2, #11
    19a0:	18ba      	adds	r2, r7, r2
    19a2:	7812      	ldrb	r2, [r2, #0]
    19a4:	3a07      	subs	r2, #7
    19a6:	701a      	strb	r2, [r3, #0]
    19a8:	230b      	movs	r3, #11
    19aa:	18fb      	adds	r3, r7, r3
    19ac:	781b      	ldrb	r3, [r3, #0]
    19ae:	2b09      	cmp	r3, #9
    19b0:	d801      	bhi.n	19b6 <xatoi+0x172>
    19b2:	2300      	movs	r3, #0
    19b4:	e02f      	b.n	1a16 <xatoi+0x1d2>
    19b6:	230b      	movs	r3, #11
    19b8:	18fa      	adds	r2, r7, r3
    19ba:	230a      	movs	r3, #10
    19bc:	18fb      	adds	r3, r7, r3
    19be:	7812      	ldrb	r2, [r2, #0]
    19c0:	781b      	ldrb	r3, [r3, #0]
    19c2:	429a      	cmp	r2, r3
    19c4:	d301      	bcc.n	19ca <xatoi+0x186>
    19c6:	2300      	movs	r3, #0
    19c8:	e025      	b.n	1a16 <xatoi+0x1d2>
    19ca:	230a      	movs	r3, #10
    19cc:	18fb      	adds	r3, r7, r3
    19ce:	781b      	ldrb	r3, [r3, #0]
    19d0:	68fa      	ldr	r2, [r7, #12]
    19d2:	435a      	muls	r2, r3
    19d4:	230b      	movs	r3, #11
    19d6:	18fb      	adds	r3, r7, r3
    19d8:	781b      	ldrb	r3, [r3, #0]
    19da:	18d3      	adds	r3, r2, r3
    19dc:	60fb      	str	r3, [r7, #12]
    19de:	687b      	ldr	r3, [r7, #4]
    19e0:	681b      	ldr	r3, [r3, #0]
    19e2:	1c5a      	adds	r2, r3, #1
    19e4:	687b      	ldr	r3, [r7, #4]
    19e6:	601a      	str	r2, [r3, #0]
    19e8:	687b      	ldr	r3, [r7, #4]
    19ea:	681a      	ldr	r2, [r3, #0]
    19ec:	230b      	movs	r3, #11
    19ee:	18fb      	adds	r3, r7, r3
    19f0:	7812      	ldrb	r2, [r2, #0]
    19f2:	701a      	strb	r2, [r3, #0]
    19f4:	230b      	movs	r3, #11
    19f6:	18fb      	adds	r3, r7, r3
    19f8:	781b      	ldrb	r3, [r3, #0]
    19fa:	2b20      	cmp	r3, #32
    19fc:	d8b5      	bhi.n	196a <xatoi+0x126>
    19fe:	2309      	movs	r3, #9
    1a00:	18fb      	adds	r3, r7, r3
    1a02:	781b      	ldrb	r3, [r3, #0]
    1a04:	2b00      	cmp	r3, #0
    1a06:	d002      	beq.n	1a0e <xatoi+0x1ca>
    1a08:	68fb      	ldr	r3, [r7, #12]
    1a0a:	425b      	negs	r3, r3
    1a0c:	60fb      	str	r3, [r7, #12]
    1a0e:	68fa      	ldr	r2, [r7, #12]
    1a10:	683b      	ldr	r3, [r7, #0]
    1a12:	601a      	str	r2, [r3, #0]
    1a14:	2301      	movs	r3, #1
    1a16:	0018      	movs	r0, r3
    1a18:	46bd      	mov	sp, r7
    1a1a:	b004      	add	sp, #16
    1a1c:	bd80      	pop	{r7, pc}
    1a1e:	46c0      	nop			; (mov r8, r8)

00001a20 <os_idle_demon>:
    1a20:	b580      	push	{r7, lr}
    1a22:	af00      	add	r7, sp, #0
    1a24:	e7fe      	b.n	1a24 <os_idle_demon+0x4>
    1a26:	46c0      	nop			; (mov r8, r8)

00001a28 <os_error>:
    1a28:	b580      	push	{r7, lr}
    1a2a:	b082      	sub	sp, #8
    1a2c:	af00      	add	r7, sp, #0
    1a2e:	6078      	str	r0, [r7, #4]
    1a30:	687b      	ldr	r3, [r7, #4]
    1a32:	2b02      	cmp	r3, #2
    1a34:	d009      	beq.n	1a4a <os_error+0x22>
    1a36:	d802      	bhi.n	1a3e <os_error+0x16>
    1a38:	2b01      	cmp	r3, #1
    1a3a:	d005      	beq.n	1a48 <os_error+0x20>
    1a3c:	e008      	b.n	1a50 <os_error+0x28>
    1a3e:	2b03      	cmp	r3, #3
    1a40:	d004      	beq.n	1a4c <os_error+0x24>
    1a42:	2b04      	cmp	r3, #4
    1a44:	d003      	beq.n	1a4e <os_error+0x26>
    1a46:	e003      	b.n	1a50 <os_error+0x28>
    1a48:	e002      	b.n	1a50 <os_error+0x28>
    1a4a:	e001      	b.n	1a50 <os_error+0x28>
    1a4c:	e000      	b.n	1a50 <os_error+0x28>
    1a4e:	46c0      	nop			; (mov r8, r8)
    1a50:	e7fe      	b.n	1a50 <os_error+0x28>
    1a52:	46c0      	nop			; (mov r8, r8)

00001a54 <software_init_hook>:
    1a54:	2000      	movs	r0, #0
    1a56:	2100      	movs	r1, #0
    1a58:	4604      	mov	r4, r0
    1a5a:	460d      	mov	r5, r1
    1a5c:	4808      	ldr	r0, [pc, #32]	; (1a80 <software_init_hook+0x2c>)
    1a5e:	f002 ff1f 	bl	48a0 <atexit>
    1a62:	f002 ff4f 	bl	4904 <__libc_init_array>
    1a66:	4620      	mov	r0, r4
    1a68:	4629      	mov	r1, r5
    1a6a:	f003 fddd 	bl	5628 <osKernelInitialize>
    1a6e:	4805      	ldr	r0, [pc, #20]	; (1a84 <software_init_hook+0x30>)
    1a70:	2100      	movs	r1, #0
    1a72:	f003 ff6b 	bl	594c <osThreadCreate>
    1a76:	f003 fe73 	bl	5760 <osKernelStart>
    1a7a:	f002 ff19 	bl	48b0 <exit>
    1a7e:	0000      	.short	0x0000
    1a80:	000048d1 	.word	0x000048d1
    1a84:	000086f4 	.word	0x000086f4

00001a88 <__NVIC_EnableIRQ>:
    1a88:	b580      	push	{r7, lr}
    1a8a:	b082      	sub	sp, #8
    1a8c:	af00      	add	r7, sp, #0
    1a8e:	0002      	movs	r2, r0
    1a90:	1dfb      	adds	r3, r7, #7
    1a92:	701a      	strb	r2, [r3, #0]
    1a94:	1dfb      	adds	r3, r7, #7
    1a96:	781b      	ldrb	r3, [r3, #0]
    1a98:	2b7f      	cmp	r3, #127	; 0x7f
    1a9a:	d809      	bhi.n	1ab0 <__NVIC_EnableIRQ+0x28>
    1a9c:	4b06      	ldr	r3, [pc, #24]	; (1ab8 <__NVIC_EnableIRQ+0x30>)
    1a9e:	1dfa      	adds	r2, r7, #7
    1aa0:	7812      	ldrb	r2, [r2, #0]
    1aa2:	0011      	movs	r1, r2
    1aa4:	221f      	movs	r2, #31
    1aa6:	400a      	ands	r2, r1
    1aa8:	2101      	movs	r1, #1
    1aaa:	4091      	lsls	r1, r2
    1aac:	000a      	movs	r2, r1
    1aae:	601a      	str	r2, [r3, #0]
    1ab0:	46c0      	nop			; (mov r8, r8)
    1ab2:	46bd      	mov	sp, r7
    1ab4:	b002      	add	sp, #8
    1ab6:	bd80      	pop	{r7, pc}
    1ab8:	e000e100 	.word	0xe000e100

00001abc <__NVIC_SetPriority>:
    1abc:	b5b0      	push	{r4, r5, r7, lr}
    1abe:	b082      	sub	sp, #8
    1ac0:	af00      	add	r7, sp, #0
    1ac2:	0002      	movs	r2, r0
    1ac4:	6039      	str	r1, [r7, #0]
    1ac6:	1dfb      	adds	r3, r7, #7
    1ac8:	701a      	strb	r2, [r3, #0]
    1aca:	1dfb      	adds	r3, r7, #7
    1acc:	781b      	ldrb	r3, [r3, #0]
    1ace:	2b7f      	cmp	r3, #127	; 0x7f
    1ad0:	d828      	bhi.n	1b24 <__NVIC_SetPriority+0x68>
    1ad2:	4c2f      	ldr	r4, [pc, #188]	; (1b90 <__NVIC_SetPriority+0xd4>)
    1ad4:	1dfb      	adds	r3, r7, #7
    1ad6:	781b      	ldrb	r3, [r3, #0]
    1ad8:	b25b      	sxtb	r3, r3
    1ada:	089b      	lsrs	r3, r3, #2
    1adc:	492c      	ldr	r1, [pc, #176]	; (1b90 <__NVIC_SetPriority+0xd4>)
    1ade:	1dfa      	adds	r2, r7, #7
    1ae0:	7812      	ldrb	r2, [r2, #0]
    1ae2:	b252      	sxtb	r2, r2
    1ae4:	0892      	lsrs	r2, r2, #2
    1ae6:	32c0      	adds	r2, #192	; 0xc0
    1ae8:	0092      	lsls	r2, r2, #2
    1aea:	5852      	ldr	r2, [r2, r1]
    1aec:	1df9      	adds	r1, r7, #7
    1aee:	7809      	ldrb	r1, [r1, #0]
    1af0:	0008      	movs	r0, r1
    1af2:	2103      	movs	r1, #3
    1af4:	4001      	ands	r1, r0
    1af6:	00c9      	lsls	r1, r1, #3
    1af8:	20ff      	movs	r0, #255	; 0xff
    1afa:	4088      	lsls	r0, r1
    1afc:	0001      	movs	r1, r0
    1afe:	43c9      	mvns	r1, r1
    1b00:	4011      	ands	r1, r2
    1b02:	683a      	ldr	r2, [r7, #0]
    1b04:	0192      	lsls	r2, r2, #6
    1b06:	20ff      	movs	r0, #255	; 0xff
    1b08:	4010      	ands	r0, r2
    1b0a:	1dfa      	adds	r2, r7, #7
    1b0c:	7812      	ldrb	r2, [r2, #0]
    1b0e:	0015      	movs	r5, r2
    1b10:	2203      	movs	r2, #3
    1b12:	402a      	ands	r2, r5
    1b14:	00d2      	lsls	r2, r2, #3
    1b16:	4090      	lsls	r0, r2
    1b18:	0002      	movs	r2, r0
    1b1a:	430a      	orrs	r2, r1
    1b1c:	33c0      	adds	r3, #192	; 0xc0
    1b1e:	009b      	lsls	r3, r3, #2
    1b20:	511a      	str	r2, [r3, r4]
    1b22:	e031      	b.n	1b88 <__NVIC_SetPriority+0xcc>
    1b24:	4c1b      	ldr	r4, [pc, #108]	; (1b94 <__NVIC_SetPriority+0xd8>)
    1b26:	1dfb      	adds	r3, r7, #7
    1b28:	781b      	ldrb	r3, [r3, #0]
    1b2a:	001a      	movs	r2, r3
    1b2c:	230f      	movs	r3, #15
    1b2e:	4013      	ands	r3, r2
    1b30:	3b08      	subs	r3, #8
    1b32:	0899      	lsrs	r1, r3, #2
    1b34:	4a17      	ldr	r2, [pc, #92]	; (1b94 <__NVIC_SetPriority+0xd8>)
    1b36:	1dfb      	adds	r3, r7, #7
    1b38:	781b      	ldrb	r3, [r3, #0]
    1b3a:	0018      	movs	r0, r3
    1b3c:	230f      	movs	r3, #15
    1b3e:	4003      	ands	r3, r0
    1b40:	3b08      	subs	r3, #8
    1b42:	089b      	lsrs	r3, r3, #2
    1b44:	3306      	adds	r3, #6
    1b46:	009b      	lsls	r3, r3, #2
    1b48:	18d3      	adds	r3, r2, r3
    1b4a:	3304      	adds	r3, #4
    1b4c:	681b      	ldr	r3, [r3, #0]
    1b4e:	1dfa      	adds	r2, r7, #7
    1b50:	7812      	ldrb	r2, [r2, #0]
    1b52:	0010      	movs	r0, r2
    1b54:	2203      	movs	r2, #3
    1b56:	4002      	ands	r2, r0
    1b58:	00d2      	lsls	r2, r2, #3
    1b5a:	20ff      	movs	r0, #255	; 0xff
    1b5c:	4090      	lsls	r0, r2
    1b5e:	0002      	movs	r2, r0
    1b60:	43d2      	mvns	r2, r2
    1b62:	401a      	ands	r2, r3
    1b64:	683b      	ldr	r3, [r7, #0]
    1b66:	019b      	lsls	r3, r3, #6
    1b68:	20ff      	movs	r0, #255	; 0xff
    1b6a:	4018      	ands	r0, r3
    1b6c:	1dfb      	adds	r3, r7, #7
    1b6e:	781b      	ldrb	r3, [r3, #0]
    1b70:	001d      	movs	r5, r3
    1b72:	2303      	movs	r3, #3
    1b74:	402b      	ands	r3, r5
    1b76:	00db      	lsls	r3, r3, #3
    1b78:	4098      	lsls	r0, r3
    1b7a:	0003      	movs	r3, r0
    1b7c:	431a      	orrs	r2, r3
    1b7e:	1d8b      	adds	r3, r1, #6
    1b80:	009b      	lsls	r3, r3, #2
    1b82:	18e3      	adds	r3, r4, r3
    1b84:	3304      	adds	r3, #4
    1b86:	601a      	str	r2, [r3, #0]
    1b88:	46c0      	nop			; (mov r8, r8)
    1b8a:	46bd      	mov	sp, r7
    1b8c:	b002      	add	sp, #8
    1b8e:	bdb0      	pop	{r4, r5, r7, pc}
    1b90:	e000e100 	.word	0xe000e100
    1b94:	e000ed00 	.word	0xe000ed00

00001b98 <PortConfig>:
    1b98:	b580      	push	{r7, lr}
    1b9a:	af00      	add	r7, sp, #0
    1b9c:	4b3c      	ldr	r3, [pc, #240]	; (1c90 <PortConfig+0xf8>)
    1b9e:	4a3c      	ldr	r2, [pc, #240]	; (1c90 <PortConfig+0xf8>)
    1ba0:	68d2      	ldr	r2, [r2, #12]
    1ba2:	21de      	movs	r1, #222	; 0xde
    1ba4:	0209      	lsls	r1, r1, #8
    1ba6:	430a      	orrs	r2, r1
    1ba8:	60da      	str	r2, [r3, #12]
    1baa:	4b39      	ldr	r3, [pc, #228]	; (1c90 <PortConfig+0xf8>)
    1bac:	4a38      	ldr	r2, [pc, #224]	; (1c90 <PortConfig+0xf8>)
    1bae:	6812      	ldr	r2, [r2, #0]
    1bb0:	4938      	ldr	r1, [pc, #224]	; (1c94 <PortConfig+0xfc>)
    1bb2:	400a      	ands	r2, r1
    1bb4:	601a      	str	r2, [r3, #0]
    1bb6:	4b36      	ldr	r3, [pc, #216]	; (1c90 <PortConfig+0xf8>)
    1bb8:	4a35      	ldr	r2, [pc, #212]	; (1c90 <PortConfig+0xf8>)
    1bba:	6852      	ldr	r2, [r2, #4]
    1bbc:	21de      	movs	r1, #222	; 0xde
    1bbe:	0209      	lsls	r1, r1, #8
    1bc0:	430a      	orrs	r2, r1
    1bc2:	605a      	str	r2, [r3, #4]
    1bc4:	4b32      	ldr	r3, [pc, #200]	; (1c90 <PortConfig+0xf8>)
    1bc6:	4a32      	ldr	r2, [pc, #200]	; (1c90 <PortConfig+0xf8>)
    1bc8:	6992      	ldr	r2, [r2, #24]
    1bca:	4933      	ldr	r1, [pc, #204]	; (1c98 <PortConfig+0x100>)
    1bcc:	430a      	orrs	r2, r1
    1bce:	619a      	str	r2, [r3, #24]
    1bd0:	4b2f      	ldr	r3, [pc, #188]	; (1c90 <PortConfig+0xf8>)
    1bd2:	4a2f      	ldr	r2, [pc, #188]	; (1c90 <PortConfig+0xf8>)
    1bd4:	68d2      	ldr	r2, [r2, #12]
    1bd6:	21ff      	movs	r1, #255	; 0xff
    1bd8:	0049      	lsls	r1, r1, #1
    1bda:	430a      	orrs	r2, r1
    1bdc:	60da      	str	r2, [r3, #12]
    1bde:	4b2c      	ldr	r3, [pc, #176]	; (1c90 <PortConfig+0xf8>)
    1be0:	4a2b      	ldr	r2, [pc, #172]	; (1c90 <PortConfig+0xf8>)
    1be2:	6812      	ldr	r2, [r2, #0]
    1be4:	492d      	ldr	r1, [pc, #180]	; (1c9c <PortConfig+0x104>)
    1be6:	400a      	ands	r2, r1
    1be8:	601a      	str	r2, [r3, #0]
    1bea:	4b29      	ldr	r3, [pc, #164]	; (1c90 <PortConfig+0xf8>)
    1bec:	4a28      	ldr	r2, [pc, #160]	; (1c90 <PortConfig+0xf8>)
    1bee:	6852      	ldr	r2, [r2, #4]
    1bf0:	21ff      	movs	r1, #255	; 0xff
    1bf2:	0049      	lsls	r1, r1, #1
    1bf4:	430a      	orrs	r2, r1
    1bf6:	605a      	str	r2, [r3, #4]
    1bf8:	4b25      	ldr	r3, [pc, #148]	; (1c90 <PortConfig+0xf8>)
    1bfa:	4a25      	ldr	r2, [pc, #148]	; (1c90 <PortConfig+0xf8>)
    1bfc:	6992      	ldr	r2, [r2, #24]
    1bfe:	4928      	ldr	r1, [pc, #160]	; (1ca0 <PortConfig+0x108>)
    1c00:	430a      	orrs	r2, r1
    1c02:	619a      	str	r2, [r3, #24]
    1c04:	4b27      	ldr	r3, [pc, #156]	; (1ca4 <PortConfig+0x10c>)
    1c06:	4a27      	ldr	r2, [pc, #156]	; (1ca4 <PortConfig+0x10c>)
    1c08:	6892      	ldr	r2, [r2, #8]
    1c0a:	21a0      	movs	r1, #160	; 0xa0
    1c0c:	0549      	lsls	r1, r1, #21
    1c0e:	430a      	orrs	r2, r1
    1c10:	609a      	str	r2, [r3, #8]
    1c12:	4b24      	ldr	r3, [pc, #144]	; (1ca4 <PortConfig+0x10c>)
    1c14:	4a23      	ldr	r2, [pc, #140]	; (1ca4 <PortConfig+0x10c>)
    1c16:	68d2      	ldr	r2, [r2, #12]
    1c18:	21e0      	movs	r1, #224	; 0xe0
    1c1a:	0209      	lsls	r1, r1, #8
    1c1c:	430a      	orrs	r2, r1
    1c1e:	60da      	str	r2, [r3, #12]
    1c20:	4b20      	ldr	r3, [pc, #128]	; (1ca4 <PortConfig+0x10c>)
    1c22:	4a20      	ldr	r2, [pc, #128]	; (1ca4 <PortConfig+0x10c>)
    1c24:	6992      	ldr	r2, [r2, #24]
    1c26:	21fc      	movs	r1, #252	; 0xfc
    1c28:	0609      	lsls	r1, r1, #24
    1c2a:	430a      	orrs	r2, r1
    1c2c:	619a      	str	r2, [r3, #24]
    1c2e:	4b1d      	ldr	r3, [pc, #116]	; (1ca4 <PortConfig+0x10c>)
    1c30:	4a1c      	ldr	r2, [pc, #112]	; (1ca4 <PortConfig+0x10c>)
    1c32:	6812      	ldr	r2, [r2, #0]
    1c34:	491c      	ldr	r1, [pc, #112]	; (1ca8 <PortConfig+0x110>)
    1c36:	400a      	ands	r2, r1
    1c38:	601a      	str	r2, [r3, #0]
    1c3a:	4b1a      	ldr	r3, [pc, #104]	; (1ca4 <PortConfig+0x10c>)
    1c3c:	4a19      	ldr	r2, [pc, #100]	; (1ca4 <PortConfig+0x10c>)
    1c3e:	6852      	ldr	r2, [r2, #4]
    1c40:	2180      	movs	r1, #128	; 0x80
    1c42:	0209      	lsls	r1, r1, #8
    1c44:	430a      	orrs	r2, r1
    1c46:	605a      	str	r2, [r3, #4]
    1c48:	4b18      	ldr	r3, [pc, #96]	; (1cac <PortConfig+0x114>)
    1c4a:	4a18      	ldr	r2, [pc, #96]	; (1cac <PortConfig+0x114>)
    1c4c:	6892      	ldr	r2, [r2, #8]
    1c4e:	4918      	ldr	r1, [pc, #96]	; (1cb0 <PortConfig+0x118>)
    1c50:	400a      	ands	r2, r1
    1c52:	609a      	str	r2, [r3, #8]
    1c54:	4b15      	ldr	r3, [pc, #84]	; (1cac <PortConfig+0x114>)
    1c56:	4a15      	ldr	r2, [pc, #84]	; (1cac <PortConfig+0x114>)
    1c58:	6892      	ldr	r2, [r2, #8]
    1c5a:	21a0      	movs	r1, #160	; 0xa0
    1c5c:	0049      	lsls	r1, r1, #1
    1c5e:	430a      	orrs	r2, r1
    1c60:	609a      	str	r2, [r3, #8]
    1c62:	4b12      	ldr	r3, [pc, #72]	; (1cac <PortConfig+0x114>)
    1c64:	4a11      	ldr	r2, [pc, #68]	; (1cac <PortConfig+0x114>)
    1c66:	68d2      	ldr	r2, [r2, #12]
    1c68:	2118      	movs	r1, #24
    1c6a:	430a      	orrs	r2, r1
    1c6c:	60da      	str	r2, [r3, #12]
    1c6e:	4b0f      	ldr	r3, [pc, #60]	; (1cac <PortConfig+0x114>)
    1c70:	4a0e      	ldr	r2, [pc, #56]	; (1cac <PortConfig+0x114>)
    1c72:	6992      	ldr	r2, [r2, #24]
    1c74:	21f0      	movs	r1, #240	; 0xf0
    1c76:	0089      	lsls	r1, r1, #2
    1c78:	430a      	orrs	r2, r1
    1c7a:	619a      	str	r2, [r3, #24]
    1c7c:	4b0b      	ldr	r3, [pc, #44]	; (1cac <PortConfig+0x114>)
    1c7e:	4a0b      	ldr	r2, [pc, #44]	; (1cac <PortConfig+0x114>)
    1c80:	6812      	ldr	r2, [r2, #0]
    1c82:	2118      	movs	r1, #24
    1c84:	438a      	bics	r2, r1
    1c86:	601a      	str	r2, [r3, #0]
    1c88:	46c0      	nop			; (mov r8, r8)
    1c8a:	46bd      	mov	sp, r7
    1c8c:	bd80      	pop	{r7, pc}
    1c8e:	46c0      	nop			; (mov r8, r8)
    1c90:	400b0000 	.word	0x400b0000
    1c94:	ffff21ff 	.word	0xffff21ff
    1c98:	f3fc0000 	.word	0xf3fc0000
    1c9c:	fffffe01 	.word	0xfffffe01
    1ca0:	0003fffc 	.word	0x0003fffc
    1ca4:	400c0000 	.word	0x400c0000
    1ca8:	ffff1fff 	.word	0xffff1fff
    1cac:	400b8000 	.word	0x400b8000
    1cb0:	fffffc3f 	.word	0xfffffc3f

00001cb4 <ClkConfig>:
    1cb4:	b580      	push	{r7, lr}
    1cb6:	af00      	add	r7, sp, #0
    1cb8:	4b4b      	ldr	r3, [pc, #300]	; (1de8 <ClkConfig+0x134>)
    1cba:	2280      	movs	r2, #128	; 0x80
    1cbc:	0092      	lsls	r2, r2, #2
    1cbe:	619a      	str	r2, [r3, #24]
    1cc0:	4b4a      	ldr	r3, [pc, #296]	; (1dec <ClkConfig+0x138>)
    1cc2:	4a4a      	ldr	r2, [pc, #296]	; (1dec <ClkConfig+0x138>)
    1cc4:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1cc6:	2118      	movs	r1, #24
    1cc8:	430a      	orrs	r2, r1
    1cca:	63da      	str	r2, [r3, #60]	; 0x3c
    1ccc:	4b47      	ldr	r3, [pc, #284]	; (1dec <ClkConfig+0x138>)
    1cce:	4a48      	ldr	r2, [pc, #288]	; (1df0 <ClkConfig+0x13c>)
    1cd0:	649a      	str	r2, [r3, #72]	; 0x48
    1cd2:	4b46      	ldr	r3, [pc, #280]	; (1dec <ClkConfig+0x138>)
    1cd4:	2201      	movs	r2, #1
    1cd6:	645a      	str	r2, [r3, #68]	; 0x44
    1cd8:	4b43      	ldr	r3, [pc, #268]	; (1de8 <ClkConfig+0x134>)
    1cda:	4a43      	ldr	r2, [pc, #268]	; (1de8 <ClkConfig+0x134>)
    1cdc:	6892      	ldr	r2, [r2, #8]
    1cde:	2105      	movs	r1, #5
    1ce0:	430a      	orrs	r2, r1
    1ce2:	609a      	str	r2, [r3, #8]
    1ce4:	46c0      	nop			; (mov r8, r8)
    1ce6:	4b40      	ldr	r3, [pc, #256]	; (1de8 <ClkConfig+0x134>)
    1ce8:	681b      	ldr	r3, [r3, #0]
    1cea:	220c      	movs	r2, #12
    1cec:	4013      	ands	r3, r2
    1cee:	2b0c      	cmp	r3, #12
    1cf0:	d1f9      	bne.n	1ce6 <ClkConfig+0x32>
    1cf2:	4b3d      	ldr	r3, [pc, #244]	; (1de8 <ClkConfig+0x134>)
    1cf4:	4a3c      	ldr	r2, [pc, #240]	; (1de8 <ClkConfig+0x134>)
    1cf6:	68d2      	ldr	r2, [r2, #12]
    1cf8:	2102      	movs	r1, #2
    1cfa:	430a      	orrs	r2, r1
    1cfc:	60da      	str	r2, [r3, #12]
    1cfe:	4b3a      	ldr	r3, [pc, #232]	; (1de8 <ClkConfig+0x134>)
    1d00:	4a3c      	ldr	r2, [pc, #240]	; (1df4 <ClkConfig+0x140>)
    1d02:	605a      	str	r2, [r3, #4]
    1d04:	46c0      	nop			; (mov r8, r8)
    1d06:	4b38      	ldr	r3, [pc, #224]	; (1de8 <ClkConfig+0x134>)
    1d08:	681b      	ldr	r3, [r3, #0]
    1d0a:	2202      	movs	r2, #2
    1d0c:	4013      	ands	r3, r2
    1d0e:	d0fa      	beq.n	1d06 <ClkConfig+0x52>
    1d10:	4b35      	ldr	r3, [pc, #212]	; (1de8 <ClkConfig+0x134>)
    1d12:	4a35      	ldr	r2, [pc, #212]	; (1de8 <ClkConfig+0x134>)
    1d14:	69d2      	ldr	r2, [r2, #28]
    1d16:	2108      	movs	r1, #8
    1d18:	430a      	orrs	r2, r1
    1d1a:	61da      	str	r2, [r3, #28]
    1d1c:	4b36      	ldr	r3, [pc, #216]	; (1df8 <ClkConfig+0x144>)
    1d1e:	4a36      	ldr	r2, [pc, #216]	; (1df8 <ClkConfig+0x144>)
    1d20:	6812      	ldr	r2, [r2, #0]
    1d22:	2118      	movs	r1, #24
    1d24:	430a      	orrs	r2, r1
    1d26:	601a      	str	r2, [r3, #0]
    1d28:	4b2f      	ldr	r3, [pc, #188]	; (1de8 <ClkConfig+0x134>)
    1d2a:	4a2f      	ldr	r2, [pc, #188]	; (1de8 <ClkConfig+0x134>)
    1d2c:	69d2      	ldr	r2, [r2, #28]
    1d2e:	2108      	movs	r1, #8
    1d30:	438a      	bics	r2, r1
    1d32:	61da      	str	r2, [r3, #28]
    1d34:	4b2c      	ldr	r3, [pc, #176]	; (1de8 <ClkConfig+0x134>)
    1d36:	4a2c      	ldr	r2, [pc, #176]	; (1de8 <ClkConfig+0x134>)
    1d38:	68d2      	ldr	r2, [r2, #12]
    1d3a:	2180      	movs	r1, #128	; 0x80
    1d3c:	0049      	lsls	r1, r1, #1
    1d3e:	430a      	orrs	r2, r1
    1d40:	60da      	str	r2, [r3, #12]
    1d42:	4b29      	ldr	r3, [pc, #164]	; (1de8 <ClkConfig+0x134>)
    1d44:	4a28      	ldr	r2, [pc, #160]	; (1de8 <ClkConfig+0x134>)
    1d46:	68d2      	ldr	r2, [r2, #12]
    1d48:	2104      	movs	r1, #4
    1d4a:	430a      	orrs	r2, r1
    1d4c:	60da      	str	r2, [r3, #12]
    1d4e:	4b26      	ldr	r3, [pc, #152]	; (1de8 <ClkConfig+0x134>)
    1d50:	22e4      	movs	r2, #228	; 0xe4
    1d52:	0592      	lsls	r2, r2, #22
    1d54:	635a      	str	r2, [r3, #52]	; 0x34
    1d56:	4b24      	ldr	r3, [pc, #144]	; (1de8 <ClkConfig+0x134>)
    1d58:	4a23      	ldr	r2, [pc, #140]	; (1de8 <ClkConfig+0x134>)
    1d5a:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d5c:	2180      	movs	r1, #128	; 0x80
    1d5e:	0449      	lsls	r1, r1, #17
    1d60:	430a      	orrs	r2, r1
    1d62:	625a      	str	r2, [r3, #36]	; 0x24
    1d64:	4b20      	ldr	r3, [pc, #128]	; (1de8 <ClkConfig+0x134>)
    1d66:	4a20      	ldr	r2, [pc, #128]	; (1de8 <ClkConfig+0x134>)
    1d68:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d6a:	21ff      	movs	r1, #255	; 0xff
    1d6c:	438a      	bics	r2, r1
    1d6e:	625a      	str	r2, [r3, #36]	; 0x24
    1d70:	4b1d      	ldr	r3, [pc, #116]	; (1de8 <ClkConfig+0x134>)
    1d72:	4a1d      	ldr	r2, [pc, #116]	; (1de8 <ClkConfig+0x134>)
    1d74:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d76:	2180      	movs	r1, #128	; 0x80
    1d78:	0489      	lsls	r1, r1, #18
    1d7a:	430a      	orrs	r2, r1
    1d7c:	625a      	str	r2, [r3, #36]	; 0x24
    1d7e:	4b1a      	ldr	r3, [pc, #104]	; (1de8 <ClkConfig+0x134>)
    1d80:	4a19      	ldr	r2, [pc, #100]	; (1de8 <ClkConfig+0x134>)
    1d82:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d84:	491d      	ldr	r1, [pc, #116]	; (1dfc <ClkConfig+0x148>)
    1d86:	400a      	ands	r2, r1
    1d88:	625a      	str	r2, [r3, #36]	; 0x24
    1d8a:	4b17      	ldr	r3, [pc, #92]	; (1de8 <ClkConfig+0x134>)
    1d8c:	4a16      	ldr	r2, [pc, #88]	; (1de8 <ClkConfig+0x134>)
    1d8e:	69d2      	ldr	r2, [r2, #28]
    1d90:	491b      	ldr	r1, [pc, #108]	; (1e00 <ClkConfig+0x14c>)
    1d92:	430a      	orrs	r2, r1
    1d94:	61da      	str	r2, [r3, #28]
    1d96:	4b14      	ldr	r3, [pc, #80]	; (1de8 <ClkConfig+0x134>)
    1d98:	4a13      	ldr	r2, [pc, #76]	; (1de8 <ClkConfig+0x134>)
    1d9a:	69d2      	ldr	r2, [r2, #28]
    1d9c:	2180      	movs	r1, #128	; 0x80
    1d9e:	430a      	orrs	r2, r1
    1da0:	61da      	str	r2, [r3, #28]
    1da2:	4b11      	ldr	r3, [pc, #68]	; (1de8 <ClkConfig+0x134>)
    1da4:	4a10      	ldr	r2, [pc, #64]	; (1de8 <ClkConfig+0x134>)
    1da6:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1da8:	2180      	movs	r1, #128	; 0x80
    1daa:	0489      	lsls	r1, r1, #18
    1dac:	430a      	orrs	r2, r1
    1dae:	629a      	str	r2, [r3, #40]	; 0x28
    1db0:	4b0d      	ldr	r3, [pc, #52]	; (1de8 <ClkConfig+0x134>)
    1db2:	4a0d      	ldr	r2, [pc, #52]	; (1de8 <ClkConfig+0x134>)
    1db4:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1db6:	4911      	ldr	r1, [pc, #68]	; (1dfc <ClkConfig+0x148>)
    1db8:	400a      	ands	r2, r1
    1dba:	629a      	str	r2, [r3, #40]	; 0x28
    1dbc:	4b0a      	ldr	r3, [pc, #40]	; (1de8 <ClkConfig+0x134>)
    1dbe:	4a0a      	ldr	r2, [pc, #40]	; (1de8 <ClkConfig+0x134>)
    1dc0:	69d2      	ldr	r2, [r2, #28]
    1dc2:	2140      	movs	r1, #64	; 0x40
    1dc4:	430a      	orrs	r2, r1
    1dc6:	61da      	str	r2, [r3, #28]
    1dc8:	4b07      	ldr	r3, [pc, #28]	; (1de8 <ClkConfig+0x134>)
    1dca:	4a07      	ldr	r2, [pc, #28]	; (1de8 <ClkConfig+0x134>)
    1dcc:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1dce:	2180      	movs	r1, #128	; 0x80
    1dd0:	0449      	lsls	r1, r1, #17
    1dd2:	430a      	orrs	r2, r1
    1dd4:	629a      	str	r2, [r3, #40]	; 0x28
    1dd6:	4b04      	ldr	r3, [pc, #16]	; (1de8 <ClkConfig+0x134>)
    1dd8:	4a03      	ldr	r2, [pc, #12]	; (1de8 <ClkConfig+0x134>)
    1dda:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1ddc:	21ff      	movs	r1, #255	; 0xff
    1dde:	438a      	bics	r2, r1
    1de0:	629a      	str	r2, [r3, #40]	; 0x28
    1de2:	46c0      	nop			; (mov r8, r8)
    1de4:	46bd      	mov	sp, r7
    1de6:	bd80      	pop	{r7, pc}
    1de8:	40020000 	.word	0x40020000
    1dec:	400d8000 	.word	0x400d8000
    1df0:	000fffff 	.word	0x000fffff
    1df4:	00000b04 	.word	0x00000b04
    1df8:	40018000 	.word	0x40018000
    1dfc:	ffff00ff 	.word	0xffff00ff
    1e00:	03c0c000 	.word	0x03c0c000

00001e04 <TimerConfig>:
    1e04:	b580      	push	{r7, lr}
    1e06:	af00      	add	r7, sp, #0
    1e08:	4b19      	ldr	r3, [pc, #100]	; (1e70 <TimerConfig+0x6c>)
    1e0a:	2200      	movs	r2, #0
    1e0c:	601a      	str	r2, [r3, #0]
    1e0e:	4b18      	ldr	r3, [pc, #96]	; (1e70 <TimerConfig+0x6c>)
    1e10:	225f      	movs	r2, #95	; 0x5f
    1e12:	605a      	str	r2, [r3, #4]
    1e14:	4b16      	ldr	r3, [pc, #88]	; (1e70 <TimerConfig+0x6c>)
    1e16:	4a17      	ldr	r2, [pc, #92]	; (1e74 <TimerConfig+0x70>)
    1e18:	609a      	str	r2, [r3, #8]
    1e1a:	4b15      	ldr	r3, [pc, #84]	; (1e70 <TimerConfig+0x6c>)
    1e1c:	4a14      	ldr	r2, [pc, #80]	; (1e70 <TimerConfig+0x6c>)
    1e1e:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1e20:	2102      	movs	r1, #2
    1e22:	430a      	orrs	r2, r1
    1e24:	659a      	str	r2, [r3, #88]	; 0x58
    1e26:	4b12      	ldr	r3, [pc, #72]	; (1e70 <TimerConfig+0x6c>)
    1e28:	4a11      	ldr	r2, [pc, #68]	; (1e70 <TimerConfig+0x6c>)
    1e2a:	68d2      	ldr	r2, [r2, #12]
    1e2c:	2101      	movs	r1, #1
    1e2e:	430a      	orrs	r2, r1
    1e30:	60da      	str	r2, [r3, #12]
    1e32:	200e      	movs	r0, #14
    1e34:	f7ff fe28 	bl	1a88 <__NVIC_EnableIRQ>
    1e38:	4b0f      	ldr	r3, [pc, #60]	; (1e78 <TimerConfig+0x74>)
    1e3a:	2200      	movs	r2, #0
    1e3c:	601a      	str	r2, [r3, #0]
    1e3e:	4b0e      	ldr	r3, [pc, #56]	; (1e78 <TimerConfig+0x74>)
    1e40:	225f      	movs	r2, #95	; 0x5f
    1e42:	605a      	str	r2, [r3, #4]
    1e44:	4b0c      	ldr	r3, [pc, #48]	; (1e78 <TimerConfig+0x74>)
    1e46:	22ee      	movs	r2, #238	; 0xee
    1e48:	0092      	lsls	r2, r2, #2
    1e4a:	609a      	str	r2, [r3, #8]
    1e4c:	4b0a      	ldr	r3, [pc, #40]	; (1e78 <TimerConfig+0x74>)
    1e4e:	4a0a      	ldr	r2, [pc, #40]	; (1e78 <TimerConfig+0x74>)
    1e50:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1e52:	2102      	movs	r1, #2
    1e54:	430a      	orrs	r2, r1
    1e56:	659a      	str	r2, [r3, #88]	; 0x58
    1e58:	4b07      	ldr	r3, [pc, #28]	; (1e78 <TimerConfig+0x74>)
    1e5a:	4a07      	ldr	r2, [pc, #28]	; (1e78 <TimerConfig+0x74>)
    1e5c:	68d2      	ldr	r2, [r2, #12]
    1e5e:	2101      	movs	r1, #1
    1e60:	430a      	orrs	r2, r1
    1e62:	60da      	str	r2, [r3, #12]
    1e64:	200f      	movs	r0, #15
    1e66:	f7ff fe0f 	bl	1a88 <__NVIC_EnableIRQ>
    1e6a:	46c0      	nop			; (mov r8, r8)
    1e6c:	46bd      	mov	sp, r7
    1e6e:	bd80      	pop	{r7, pc}
    1e70:	40070000 	.word	0x40070000
    1e74:	0001869f 	.word	0x0001869f
    1e78:	40078000 	.word	0x40078000

00001e7c <SystemInit>:
    1e7c:	b580      	push	{r7, lr}
    1e7e:	af00      	add	r7, sp, #0
    1e80:	f7ff ff18 	bl	1cb4 <ClkConfig>
    1e84:	f7ff fe88 	bl	1b98 <PortConfig>
    1e88:	f7ff ffbc 	bl	1e04 <TimerConfig>
    1e8c:	2100      	movs	r1, #0
    1e8e:	2012      	movs	r0, #18
    1e90:	f7ff fe14 	bl	1abc <__NVIC_SetPriority>
    1e94:	2101      	movs	r1, #1
    1e96:	200e      	movs	r0, #14
    1e98:	f7ff fe10 	bl	1abc <__NVIC_SetPriority>
    1e9c:	2301      	movs	r3, #1
    1e9e:	425b      	negs	r3, r3
    1ea0:	2103      	movs	r1, #3
    1ea2:	0018      	movs	r0, r3
    1ea4:	f7ff fe0a 	bl	1abc <__NVIC_SetPriority>
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
    1f14:	20004d24 	.word	0x20004d24

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
    2046:	b082      	sub	sp, #8
    2048:	af00      	add	r7, sp, #0
    204a:	2103      	movs	r1, #3
    204c:	201c      	movs	r0, #28
    204e:	f7ff ff63 	bl	1f18 <PHYInit>
    2052:	23c0      	movs	r3, #192	; 0xc0
    2054:	059b      	lsls	r3, r3, #22
    2056:	4a12      	ldr	r2, [pc, #72]	; (20a0 <EthernetConfig+0x5c>)
    2058:	8812      	ldrh	r2, [r2, #0]
    205a:	805a      	strh	r2, [r3, #2]
    205c:	23c0      	movs	r3, #192	; 0xc0
    205e:	059b      	lsls	r3, r3, #22
    2060:	4a0f      	ldr	r2, [pc, #60]	; (20a0 <EthernetConfig+0x5c>)
    2062:	8852      	ldrh	r2, [r2, #2]
    2064:	809a      	strh	r2, [r3, #4]
    2066:	23c0      	movs	r3, #192	; 0xc0
    2068:	059b      	lsls	r3, r3, #22
    206a:	4a0d      	ldr	r2, [pc, #52]	; (20a0 <EthernetConfig+0x5c>)
    206c:	8892      	ldrh	r2, [r2, #4]
    206e:	80da      	strh	r2, [r3, #6]
    2070:	f000 f81e 	bl	20b0 <MACReset>
    2074:	23c0      	movs	r3, #192	; 0xc0
    2076:	059b      	lsls	r3, r3, #22
    2078:	2207      	movs	r2, #7
    207a:	841a      	strh	r2, [r3, #32]
    207c:	2012      	movs	r0, #18
    207e:	f7ff ff17 	bl	1eb0 <__NVIC_EnableIRQ>
    2082:	4b08      	ldr	r3, [pc, #32]	; (20a4 <EthernetConfig+0x60>)
    2084:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    2086:	607b      	str	r3, [r7, #4]
    2088:	687b      	ldr	r3, [r7, #4]
    208a:	b29a      	uxth	r2, r3
    208c:	4b06      	ldr	r3, [pc, #24]	; (20a8 <EthernetConfig+0x64>)
    208e:	801a      	strh	r2, [r3, #0]
    2090:	687b      	ldr	r3, [r7, #4]
    2092:	b29a      	uxth	r2, r3
    2094:	4b05      	ldr	r3, [pc, #20]	; (20ac <EthernetConfig+0x68>)
    2096:	801a      	strh	r2, [r3, #0]
    2098:	46c0      	nop			; (mov r8, r8)
    209a:	46bd      	mov	sp, r7
    209c:	b002      	add	sp, #8
    209e:	bd80      	pop	{r7, pc}
    20a0:	20000004 	.word	0x20000004
    20a4:	400d8000 	.word	0x400d8000
    20a8:	20004d38 	.word	0x20004d38
    20ac:	20004d3a 	.word	0x20004d3a

000020b0 <MACReset>:
    20b0:	b580      	push	{r7, lr}
    20b2:	af00      	add	r7, sp, #0
    20b4:	23c0      	movs	r3, #192	; 0xc0
    20b6:	059b      	lsls	r3, r3, #22
    20b8:	22c0      	movs	r2, #192	; 0xc0
    20ba:	0592      	lsls	r2, r2, #22
    20bc:	8bd2      	ldrh	r2, [r2, #30]
    20be:	b292      	uxth	r2, r2
    20c0:	2103      	movs	r1, #3
    20c2:	430a      	orrs	r2, r1
    20c4:	b292      	uxth	r2, r2
    20c6:	83da      	strh	r2, [r3, #30]
    20c8:	f000 f86a 	bl	21a0 <ClearMemory>
    20cc:	23c0      	movs	r3, #192	; 0xc0
    20ce:	059b      	lsls	r3, r3, #22
    20d0:	2280      	movs	r2, #128	; 0x80
    20d2:	0152      	lsls	r2, r2, #5
    20d4:	801a      	strh	r2, [r3, #0]
    20d6:	23c0      	movs	r3, #192	; 0xc0
    20d8:	059b      	lsls	r3, r3, #22
    20da:	2200      	movs	r2, #0
    20dc:	811a      	strh	r2, [r3, #8]
    20de:	23c0      	movs	r3, #192	; 0xc0
    20e0:	059b      	lsls	r3, r3, #22
    20e2:	2200      	movs	r2, #0
    20e4:	815a      	strh	r2, [r3, #10]
    20e6:	23c0      	movs	r3, #192	; 0xc0
    20e8:	059b      	lsls	r3, r3, #22
    20ea:	2200      	movs	r2, #0
    20ec:	819a      	strh	r2, [r3, #12]
    20ee:	23c0      	movs	r3, #192	; 0xc0
    20f0:	059b      	lsls	r3, r3, #22
    20f2:	4a26      	ldr	r2, [pc, #152]	; (218c <MACReset+0xdc>)
    20f4:	81da      	strh	r2, [r3, #14]
    20f6:	23c0      	movs	r3, #192	; 0xc0
    20f8:	059b      	lsls	r3, r3, #22
    20fa:	2260      	movs	r2, #96	; 0x60
    20fc:	821a      	strh	r2, [r3, #16]
    20fe:	23c0      	movs	r3, #192	; 0xc0
    2100:	059b      	lsls	r3, r3, #22
    2102:	2250      	movs	r2, #80	; 0x50
    2104:	825a      	strh	r2, [r3, #18]
    2106:	23c0      	movs	r3, #192	; 0xc0
    2108:	059b      	lsls	r3, r3, #22
    210a:	2280      	movs	r2, #128	; 0x80
    210c:	0092      	lsls	r2, r2, #2
    210e:	829a      	strh	r2, [r3, #20]
    2110:	23c0      	movs	r3, #192	; 0xc0
    2112:	059b      	lsls	r3, r3, #22
    2114:	2205      	movs	r2, #5
    2116:	82da      	strh	r2, [r3, #22]
    2118:	23c0      	movs	r3, #192	; 0xc0
    211a:	059b      	lsls	r3, r3, #22
    211c:	4a1c      	ldr	r2, [pc, #112]	; (2190 <MACReset+0xe0>)
    211e:	831a      	strh	r2, [r3, #24]
    2120:	23c0      	movs	r3, #192	; 0xc0
    2122:	059b      	lsls	r3, r3, #22
    2124:	4a1b      	ldr	r2, [pc, #108]	; (2194 <MACReset+0xe4>)
    2126:	835a      	strh	r2, [r3, #26]
    2128:	23c0      	movs	r3, #192	; 0xc0
    212a:	059b      	lsls	r3, r3, #22
    212c:	2280      	movs	r2, #128	; 0x80
    212e:	839a      	strh	r2, [r3, #28]
    2130:	23c0      	movs	r3, #192	; 0xc0
    2132:	059b      	lsls	r3, r3, #22
    2134:	4a18      	ldr	r2, [pc, #96]	; (2198 <MACReset+0xe8>)
    2136:	83da      	strh	r2, [r3, #30]
    2138:	23c0      	movs	r3, #192	; 0xc0
    213a:	059b      	lsls	r3, r3, #22
    213c:	2200      	movs	r2, #0
    213e:	841a      	strh	r2, [r3, #32]
    2140:	23c0      	movs	r3, #192	; 0xc0
    2142:	059b      	lsls	r3, r3, #22
    2144:	2201      	movs	r2, #1
    2146:	4252      	negs	r2, r2
    2148:	845a      	strh	r2, [r3, #34]	; 0x22
    214a:	23c0      	movs	r3, #192	; 0xc0
    214c:	059b      	lsls	r3, r3, #22
    214e:	2200      	movs	r2, #0
    2150:	851a      	strh	r2, [r3, #40]	; 0x28
    2152:	23c0      	movs	r3, #192	; 0xc0
    2154:	059b      	lsls	r3, r3, #22
    2156:	2280      	movs	r2, #128	; 0x80
    2158:	0152      	lsls	r2, r2, #5
    215a:	855a      	strh	r2, [r3, #42]	; 0x2a
    215c:	23c0      	movs	r3, #192	; 0xc0
    215e:	059b      	lsls	r3, r3, #22
    2160:	22c0      	movs	r2, #192	; 0xc0
    2162:	0592      	lsls	r2, r2, #22
    2164:	8b92      	ldrh	r2, [r2, #28]
    2166:	b292      	uxth	r2, r2
    2168:	490c      	ldr	r1, [pc, #48]	; (219c <MACReset+0xec>)
    216a:	400a      	ands	r2, r1
    216c:	b292      	uxth	r2, r2
    216e:	839a      	strh	r2, [r3, #28]
    2170:	23c0      	movs	r3, #192	; 0xc0
    2172:	059b      	lsls	r3, r3, #22
    2174:	22c0      	movs	r2, #192	; 0xc0
    2176:	0592      	lsls	r2, r2, #22
    2178:	8bd2      	ldrh	r2, [r2, #30]
    217a:	b292      	uxth	r2, r2
    217c:	2103      	movs	r1, #3
    217e:	438a      	bics	r2, r1
    2180:	b292      	uxth	r2, r2
    2182:	83da      	strh	r2, [r3, #30]
    2184:	46c0      	nop			; (mov r8, r8)
    2186:	46bd      	mov	sp, r7
    2188:	bd80      	pop	{r7, pc}
    218a:	46c0      	nop			; (mov r8, r8)
    218c:	ffff8000 	.word	0xffff8000
    2190:	ffff8606 	.word	0xffff8606
    2194:	ffff81fa 	.word	0xffff81fa
    2198:	00003003 	.word	0x00003003
    219c:	ffffbfff 	.word	0xffffbfff

000021a0 <ClearMemory>:
    21a0:	b580      	push	{r7, lr}
    21a2:	b082      	sub	sp, #8
    21a4:	af00      	add	r7, sp, #0
    21a6:	23e0      	movs	r3, #224	; 0xe0
    21a8:	059b      	lsls	r3, r3, #22
    21aa:	603b      	str	r3, [r7, #0]
    21ac:	2300      	movs	r3, #0
    21ae:	607b      	str	r3, [r7, #4]
    21b0:	e007      	b.n	21c2 <ClearMemory+0x22>
    21b2:	683b      	ldr	r3, [r7, #0]
    21b4:	1d1a      	adds	r2, r3, #4
    21b6:	603a      	str	r2, [r7, #0]
    21b8:	2200      	movs	r2, #0
    21ba:	601a      	str	r2, [r3, #0]
    21bc:	687b      	ldr	r3, [r7, #4]
    21be:	3301      	adds	r3, #1
    21c0:	607b      	str	r3, [r7, #4]
    21c2:	687b      	ldr	r3, [r7, #4]
    21c4:	4a03      	ldr	r2, [pc, #12]	; (21d4 <ClearMemory+0x34>)
    21c6:	4293      	cmp	r3, r2
    21c8:	d9f3      	bls.n	21b2 <ClearMemory+0x12>
    21ca:	46c0      	nop			; (mov r8, r8)
    21cc:	46bd      	mov	sp, r7
    21ce:	b002      	add	sp, #8
    21d0:	bd80      	pop	{r7, pc}
    21d2:	46c0      	nop			; (mov r8, r8)
    21d4:	000007ff 	.word	0x000007ff

000021d8 <ReadPacket>:
    21d8:	b580      	push	{r7, lr}
    21da:	b08a      	sub	sp, #40	; 0x28
    21dc:	af00      	add	r7, sp, #0
    21de:	6078      	str	r0, [r7, #4]
    21e0:	2316      	movs	r3, #22
    21e2:	18fb      	adds	r3, r7, r3
    21e4:	2200      	movs	r2, #0
    21e6:	801a      	strh	r2, [r3, #0]
    21e8:	2326      	movs	r3, #38	; 0x26
    21ea:	18fb      	adds	r3, r7, r3
    21ec:	2200      	movs	r2, #0
    21ee:	801a      	strh	r2, [r3, #0]
    21f0:	4b71      	ldr	r3, [pc, #452]	; (23b8 <ReadPacket+0x1e0>)
    21f2:	681a      	ldr	r2, [r3, #0]
    21f4:	2301      	movs	r3, #1
    21f6:	425b      	negs	r3, r3
    21f8:	0019      	movs	r1, r3
    21fa:	0010      	movs	r0, r2
    21fc:	f004 f83a 	bl	6274 <osMutexWait>
    2200:	23c0      	movs	r3, #192	; 0xc0
    2202:	059a      	lsls	r2, r3, #22
    2204:	2314      	movs	r3, #20
    2206:	18fb      	adds	r3, r7, r3
    2208:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    220a:	801a      	strh	r2, [r3, #0]
    220c:	23c0      	movs	r3, #192	; 0xc0
    220e:	059a      	lsls	r2, r3, #22
    2210:	2312      	movs	r3, #18
    2212:	18fb      	adds	r3, r7, r3
    2214:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    2216:	801a      	strh	r2, [r3, #0]
    2218:	2314      	movs	r3, #20
    221a:	18fa      	adds	r2, r7, r3
    221c:	2312      	movs	r3, #18
    221e:	18fb      	adds	r3, r7, r3
    2220:	8812      	ldrh	r2, [r2, #0]
    2222:	881b      	ldrh	r3, [r3, #0]
    2224:	429a      	cmp	r2, r3
    2226:	d90e      	bls.n	2246 <ReadPacket+0x6e>
    2228:	2326      	movs	r3, #38	; 0x26
    222a:	18fb      	adds	r3, r7, r3
    222c:	2214      	movs	r2, #20
    222e:	18b9      	adds	r1, r7, r2
    2230:	2212      	movs	r2, #18
    2232:	18ba      	adds	r2, r7, r2
    2234:	8809      	ldrh	r1, [r1, #0]
    2236:	8812      	ldrh	r2, [r2, #0]
    2238:	1a8a      	subs	r2, r1, r2
    223a:	801a      	strh	r2, [r3, #0]
    223c:	2316      	movs	r3, #22
    223e:	18fb      	adds	r3, r7, r3
    2240:	2200      	movs	r2, #0
    2242:	801a      	strh	r2, [r3, #0]
    2244:	e00e      	b.n	2264 <ReadPacket+0x8c>
    2246:	2326      	movs	r3, #38	; 0x26
    2248:	18fb      	adds	r3, r7, r3
    224a:	2212      	movs	r2, #18
    224c:	18ba      	adds	r2, r7, r2
    224e:	8812      	ldrh	r2, [r2, #0]
    2250:	2180      	movs	r1, #128	; 0x80
    2252:	0149      	lsls	r1, r1, #5
    2254:	1a8a      	subs	r2, r1, r2
    2256:	801a      	strh	r2, [r3, #0]
    2258:	2316      	movs	r3, #22
    225a:	18fb      	adds	r3, r7, r3
    225c:	2214      	movs	r2, #20
    225e:	18ba      	adds	r2, r7, r2
    2260:	8812      	ldrh	r2, [r2, #0]
    2262:	801a      	strh	r2, [r3, #0]
    2264:	2312      	movs	r3, #18
    2266:	18fb      	adds	r3, r7, r3
    2268:	881b      	ldrh	r3, [r3, #0]
    226a:	22e0      	movs	r2, #224	; 0xe0
    226c:	0592      	lsls	r2, r2, #22
    226e:	4694      	mov	ip, r2
    2270:	4463      	add	r3, ip
    2272:	623b      	str	r3, [r7, #32]
    2274:	687b      	ldr	r3, [r7, #4]
    2276:	61fb      	str	r3, [r7, #28]
    2278:	2308      	movs	r3, #8
    227a:	18fa      	adds	r2, r7, r3
    227c:	6a3b      	ldr	r3, [r7, #32]
    227e:	1d19      	adds	r1, r3, #4
    2280:	6239      	str	r1, [r7, #32]
    2282:	681b      	ldr	r3, [r3, #0]
    2284:	6013      	str	r3, [r2, #0]
    2286:	2308      	movs	r3, #8
    2288:	18fb      	adds	r3, r7, r3
    228a:	881b      	ldrh	r3, [r3, #0]
    228c:	3303      	adds	r3, #3
    228e:	2b00      	cmp	r3, #0
    2290:	da00      	bge.n	2294 <ReadPacket+0xbc>
    2292:	3303      	adds	r3, #3
    2294:	109b      	asrs	r3, r3, #2
    2296:	60fb      	str	r3, [r7, #12]
    2298:	2326      	movs	r3, #38	; 0x26
    229a:	18fb      	adds	r3, r7, r3
    229c:	2226      	movs	r2, #38	; 0x26
    229e:	18ba      	adds	r2, r7, r2
    22a0:	8812      	ldrh	r2, [r2, #0]
    22a2:	3a04      	subs	r2, #4
    22a4:	801a      	strh	r2, [r3, #0]
    22a6:	6a3b      	ldr	r3, [r7, #32]
    22a8:	b29b      	uxth	r3, r3
    22aa:	4a44      	ldr	r2, [pc, #272]	; (23bc <ReadPacket+0x1e4>)
    22ac:	4293      	cmp	r3, r2
    22ae:	d902      	bls.n	22b6 <ReadPacket+0xde>
    22b0:	23e0      	movs	r3, #224	; 0xe0
    22b2:	059b      	lsls	r3, r3, #22
    22b4:	623b      	str	r3, [r7, #32]
    22b6:	2308      	movs	r3, #8
    22b8:	18fb      	adds	r3, r7, r3
    22ba:	881b      	ldrh	r3, [r3, #0]
    22bc:	2226      	movs	r2, #38	; 0x26
    22be:	18ba      	adds	r2, r7, r2
    22c0:	8812      	ldrh	r2, [r2, #0]
    22c2:	429a      	cmp	r2, r3
    22c4:	d312      	bcc.n	22ec <ReadPacket+0x114>
    22c6:	2300      	movs	r3, #0
    22c8:	61bb      	str	r3, [r7, #24]
    22ca:	e00a      	b.n	22e2 <ReadPacket+0x10a>
    22cc:	69fb      	ldr	r3, [r7, #28]
    22ce:	1d1a      	adds	r2, r3, #4
    22d0:	61fa      	str	r2, [r7, #28]
    22d2:	6a3a      	ldr	r2, [r7, #32]
    22d4:	1d11      	adds	r1, r2, #4
    22d6:	6239      	str	r1, [r7, #32]
    22d8:	6812      	ldr	r2, [r2, #0]
    22da:	601a      	str	r2, [r3, #0]
    22dc:	69bb      	ldr	r3, [r7, #24]
    22de:	3301      	adds	r3, #1
    22e0:	61bb      	str	r3, [r7, #24]
    22e2:	69ba      	ldr	r2, [r7, #24]
    22e4:	68fb      	ldr	r3, [r7, #12]
    22e6:	429a      	cmp	r2, r3
    22e8:	d3f0      	bcc.n	22cc <ReadPacket+0xf4>
    22ea:	e034      	b.n	2356 <ReadPacket+0x17e>
    22ec:	2326      	movs	r3, #38	; 0x26
    22ee:	18fb      	adds	r3, r7, r3
    22f0:	881b      	ldrh	r3, [r3, #0]
    22f2:	089b      	lsrs	r3, r3, #2
    22f4:	b29b      	uxth	r3, r3
    22f6:	001a      	movs	r2, r3
    22f8:	68fb      	ldr	r3, [r7, #12]
    22fa:	1a9b      	subs	r3, r3, r2
    22fc:	60fb      	str	r3, [r7, #12]
    22fe:	2300      	movs	r3, #0
    2300:	61bb      	str	r3, [r7, #24]
    2302:	e00a      	b.n	231a <ReadPacket+0x142>
    2304:	69fb      	ldr	r3, [r7, #28]
    2306:	1d1a      	adds	r2, r3, #4
    2308:	61fa      	str	r2, [r7, #28]
    230a:	6a3a      	ldr	r2, [r7, #32]
    230c:	1d11      	adds	r1, r2, #4
    230e:	6239      	str	r1, [r7, #32]
    2310:	6812      	ldr	r2, [r2, #0]
    2312:	601a      	str	r2, [r3, #0]
    2314:	69bb      	ldr	r3, [r7, #24]
    2316:	3301      	adds	r3, #1
    2318:	61bb      	str	r3, [r7, #24]
    231a:	2326      	movs	r3, #38	; 0x26
    231c:	18fb      	adds	r3, r7, r3
    231e:	881b      	ldrh	r3, [r3, #0]
    2320:	089b      	lsrs	r3, r3, #2
    2322:	b29b      	uxth	r3, r3
    2324:	001a      	movs	r2, r3
    2326:	69bb      	ldr	r3, [r7, #24]
    2328:	429a      	cmp	r2, r3
    232a:	d8eb      	bhi.n	2304 <ReadPacket+0x12c>
    232c:	23e0      	movs	r3, #224	; 0xe0
    232e:	059b      	lsls	r3, r3, #22
    2330:	623b      	str	r3, [r7, #32]
    2332:	2300      	movs	r3, #0
    2334:	61bb      	str	r3, [r7, #24]
    2336:	e00a      	b.n	234e <ReadPacket+0x176>
    2338:	69fb      	ldr	r3, [r7, #28]
    233a:	1d1a      	adds	r2, r3, #4
    233c:	61fa      	str	r2, [r7, #28]
    233e:	6a3a      	ldr	r2, [r7, #32]
    2340:	1d11      	adds	r1, r2, #4
    2342:	6239      	str	r1, [r7, #32]
    2344:	6812      	ldr	r2, [r2, #0]
    2346:	601a      	str	r2, [r3, #0]
    2348:	69bb      	ldr	r3, [r7, #24]
    234a:	3301      	adds	r3, #1
    234c:	61bb      	str	r3, [r7, #24]
    234e:	69ba      	ldr	r2, [r7, #24]
    2350:	68fb      	ldr	r3, [r7, #12]
    2352:	429a      	cmp	r2, r3
    2354:	d3f0      	bcc.n	2338 <ReadPacket+0x160>
    2356:	6a3b      	ldr	r3, [r7, #32]
    2358:	b29b      	uxth	r3, r3
    235a:	4a18      	ldr	r2, [pc, #96]	; (23bc <ReadPacket+0x1e4>)
    235c:	4293      	cmp	r3, r2
    235e:	d902      	bls.n	2366 <ReadPacket+0x18e>
    2360:	23e0      	movs	r3, #224	; 0xe0
    2362:	059b      	lsls	r3, r3, #22
    2364:	623b      	str	r3, [r7, #32]
    2366:	23c0      	movs	r3, #192	; 0xc0
    2368:	059b      	lsls	r3, r3, #22
    236a:	6a3a      	ldr	r2, [r7, #32]
    236c:	b292      	uxth	r2, r2
    236e:	851a      	strh	r2, [r3, #40]	; 0x28
    2370:	23c0      	movs	r3, #192	; 0xc0
    2372:	059b      	lsls	r3, r3, #22
    2374:	22c0      	movs	r2, #192	; 0xc0
    2376:	0592      	lsls	r2, r2, #22
    2378:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    237a:	b292      	uxth	r2, r2
    237c:	3a20      	subs	r2, #32
    237e:	b292      	uxth	r2, r2
    2380:	861a      	strh	r2, [r3, #48]	; 0x30
    2382:	687b      	ldr	r3, [r7, #4]
    2384:	88da      	ldrh	r2, [r3, #6]
    2386:	4b0e      	ldr	r3, [pc, #56]	; (23c0 <ReadPacket+0x1e8>)
    2388:	801a      	strh	r2, [r3, #0]
    238a:	687b      	ldr	r3, [r7, #4]
    238c:	891a      	ldrh	r2, [r3, #8]
    238e:	4b0c      	ldr	r3, [pc, #48]	; (23c0 <ReadPacket+0x1e8>)
    2390:	805a      	strh	r2, [r3, #2]
    2392:	687b      	ldr	r3, [r7, #4]
    2394:	895a      	ldrh	r2, [r3, #10]
    2396:	4b0a      	ldr	r3, [pc, #40]	; (23c0 <ReadPacket+0x1e8>)
    2398:	809a      	strh	r2, [r3, #4]
    239a:	4b09      	ldr	r3, [pc, #36]	; (23c0 <ReadPacket+0x1e8>)
    239c:	2201      	movs	r2, #1
    239e:	815a      	strh	r2, [r3, #10]
    23a0:	4b05      	ldr	r3, [pc, #20]	; (23b8 <ReadPacket+0x1e0>)
    23a2:	681b      	ldr	r3, [r3, #0]
    23a4:	0018      	movs	r0, r3
    23a6:	f003 ff75 	bl	6294 <osMutexRelease>
    23aa:	2308      	movs	r3, #8
    23ac:	18fb      	adds	r3, r7, r3
    23ae:	881b      	ldrh	r3, [r3, #0]
    23b0:	0018      	movs	r0, r3
    23b2:	46bd      	mov	sp, r7
    23b4:	b00a      	add	sp, #40	; 0x28
    23b6:	bd80      	pop	{r7, pc}
    23b8:	20005334 	.word	0x20005334
    23bc:	00000fff 	.word	0x00000fff
    23c0:	20004d24 	.word	0x20004d24

000023c4 <SendPacket>:
    23c4:	b580      	push	{r7, lr}
    23c6:	b08a      	sub	sp, #40	; 0x28
    23c8:	af00      	add	r7, sp, #0
    23ca:	6078      	str	r0, [r7, #4]
    23cc:	6039      	str	r1, [r7, #0]
    23ce:	4b79      	ldr	r3, [pc, #484]	; (25b4 <SendPacket+0x1f0>)
    23d0:	681a      	ldr	r2, [r3, #0]
    23d2:	2301      	movs	r3, #1
    23d4:	425b      	negs	r3, r3
    23d6:	0019      	movs	r1, r3
    23d8:	0010      	movs	r0, r2
    23da:	f003 ff4b 	bl	6274 <osMutexWait>
    23de:	23c0      	movs	r3, #192	; 0xc0
    23e0:	059b      	lsls	r3, r3, #22
    23e2:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    23e4:	b29b      	uxth	r3, r3
    23e6:	61bb      	str	r3, [r7, #24]
    23e8:	23c0      	movs	r3, #192	; 0xc0
    23ea:	059b      	lsls	r3, r3, #22
    23ec:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    23ee:	b29b      	uxth	r3, r3
    23f0:	617b      	str	r3, [r7, #20]
    23f2:	69ba      	ldr	r2, [r7, #24]
    23f4:	697b      	ldr	r3, [r7, #20]
    23f6:	429a      	cmp	r2, r3
    23f8:	d90d      	bls.n	2416 <SendPacket+0x52>
    23fa:	69bb      	ldr	r3, [r7, #24]
    23fc:	b29a      	uxth	r2, r3
    23fe:	697b      	ldr	r3, [r7, #20]
    2400:	b29b      	uxth	r3, r3
    2402:	1ad3      	subs	r3, r2, r3
    2404:	b29a      	uxth	r2, r3
    2406:	230c      	movs	r3, #12
    2408:	18fb      	adds	r3, r7, r3
    240a:	801a      	strh	r2, [r3, #0]
    240c:	230c      	movs	r3, #12
    240e:	18fb      	adds	r3, r7, r3
    2410:	2200      	movs	r2, #0
    2412:	805a      	strh	r2, [r3, #2]
    2414:	e011      	b.n	243a <SendPacket+0x76>
    2416:	697b      	ldr	r3, [r7, #20]
    2418:	b29b      	uxth	r3, r3
    241a:	2280      	movs	r2, #128	; 0x80
    241c:	0192      	lsls	r2, r2, #6
    241e:	1ad3      	subs	r3, r2, r3
    2420:	b29a      	uxth	r2, r3
    2422:	230c      	movs	r3, #12
    2424:	18fb      	adds	r3, r7, r3
    2426:	801a      	strh	r2, [r3, #0]
    2428:	69bb      	ldr	r3, [r7, #24]
    242a:	b29b      	uxth	r3, r3
    242c:	4a62      	ldr	r2, [pc, #392]	; (25b8 <SendPacket+0x1f4>)
    242e:	4694      	mov	ip, r2
    2430:	4463      	add	r3, ip
    2432:	b29a      	uxth	r2, r3
    2434:	230c      	movs	r3, #12
    2436:	18fb      	adds	r3, r7, r3
    2438:	805a      	strh	r2, [r3, #2]
    243a:	230c      	movs	r3, #12
    243c:	18fb      	adds	r3, r7, r3
    243e:	881b      	ldrh	r3, [r3, #0]
    2440:	001a      	movs	r2, r3
    2442:	230c      	movs	r3, #12
    2444:	18fb      	adds	r3, r7, r3
    2446:	885b      	ldrh	r3, [r3, #2]
    2448:	18d3      	adds	r3, r2, r3
    244a:	3b08      	subs	r3, #8
    244c:	001a      	movs	r2, r3
    244e:	683b      	ldr	r3, [r7, #0]
    2450:	429a      	cmp	r2, r3
    2452:	da01      	bge.n	2458 <SendPacket+0x94>
    2454:	2300      	movs	r3, #0
    2456:	e0a9      	b.n	25ac <SendPacket+0x1e8>
    2458:	683b      	ldr	r3, [r7, #0]
    245a:	613b      	str	r3, [r7, #16]
    245c:	687b      	ldr	r3, [r7, #4]
    245e:	623b      	str	r3, [r7, #32]
    2460:	697b      	ldr	r3, [r7, #20]
    2462:	22e0      	movs	r2, #224	; 0xe0
    2464:	0592      	lsls	r2, r2, #22
    2466:	4694      	mov	ip, r2
    2468:	4463      	add	r3, ip
    246a:	61fb      	str	r3, [r7, #28]
    246c:	69fb      	ldr	r3, [r7, #28]
    246e:	1d1a      	adds	r2, r3, #4
    2470:	61fa      	str	r2, [r7, #28]
    2472:	693a      	ldr	r2, [r7, #16]
    2474:	601a      	str	r2, [r3, #0]
    2476:	230c      	movs	r3, #12
    2478:	18fb      	adds	r3, r7, r3
    247a:	881b      	ldrh	r3, [r3, #0]
    247c:	3b04      	subs	r3, #4
    247e:	b29a      	uxth	r2, r3
    2480:	230c      	movs	r3, #12
    2482:	18fb      	adds	r3, r7, r3
    2484:	801a      	strh	r2, [r3, #0]
    2486:	69fb      	ldr	r3, [r7, #28]
    2488:	b29b      	uxth	r3, r3
    248a:	4a4c      	ldr	r2, [pc, #304]	; (25bc <SendPacket+0x1f8>)
    248c:	4293      	cmp	r3, r2
    248e:	d901      	bls.n	2494 <SendPacket+0xd0>
    2490:	4b4b      	ldr	r3, [pc, #300]	; (25c0 <SendPacket+0x1fc>)
    2492:	61fb      	str	r3, [r7, #28]
    2494:	683b      	ldr	r3, [r7, #0]
    2496:	3303      	adds	r3, #3
    2498:	2b00      	cmp	r3, #0
    249a:	da00      	bge.n	249e <SendPacket+0xda>
    249c:	3303      	adds	r3, #3
    249e:	109b      	asrs	r3, r3, #2
    24a0:	613b      	str	r3, [r7, #16]
    24a2:	230c      	movs	r3, #12
    24a4:	18fb      	adds	r3, r7, r3
    24a6:	881b      	ldrh	r3, [r3, #0]
    24a8:	001a      	movs	r2, r3
    24aa:	683b      	ldr	r3, [r7, #0]
    24ac:	429a      	cmp	r2, r3
    24ae:	db1a      	blt.n	24e6 <SendPacket+0x122>
    24b0:	2326      	movs	r3, #38	; 0x26
    24b2:	18fb      	adds	r3, r7, r3
    24b4:	2200      	movs	r2, #0
    24b6:	801a      	strh	r2, [r3, #0]
    24b8:	e00e      	b.n	24d8 <SendPacket+0x114>
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
    24e2:	d3ea      	bcc.n	24ba <SendPacket+0xf6>
    24e4:	e042      	b.n	256c <SendPacket+0x1a8>
    24e6:	230c      	movs	r3, #12
    24e8:	18fb      	adds	r3, r7, r3
    24ea:	881b      	ldrh	r3, [r3, #0]
    24ec:	089b      	lsrs	r3, r3, #2
    24ee:	b29b      	uxth	r3, r3
    24f0:	001a      	movs	r2, r3
    24f2:	693b      	ldr	r3, [r7, #16]
    24f4:	1a9b      	subs	r3, r3, r2
    24f6:	613b      	str	r3, [r7, #16]
    24f8:	2326      	movs	r3, #38	; 0x26
    24fa:	18fb      	adds	r3, r7, r3
    24fc:	2200      	movs	r2, #0
    24fe:	801a      	strh	r2, [r3, #0]
    2500:	e00e      	b.n	2520 <SendPacket+0x15c>
    2502:	69fb      	ldr	r3, [r7, #28]
    2504:	1d1a      	adds	r2, r3, #4
    2506:	61fa      	str	r2, [r7, #28]
    2508:	6a3a      	ldr	r2, [r7, #32]
    250a:	1d11      	adds	r1, r2, #4
    250c:	6239      	str	r1, [r7, #32]
    250e:	6812      	ldr	r2, [r2, #0]
    2510:	601a      	str	r2, [r3, #0]
    2512:	2326      	movs	r3, #38	; 0x26
    2514:	18fb      	adds	r3, r7, r3
    2516:	881a      	ldrh	r2, [r3, #0]
    2518:	2326      	movs	r3, #38	; 0x26
    251a:	18fb      	adds	r3, r7, r3
    251c:	3201      	adds	r2, #1
    251e:	801a      	strh	r2, [r3, #0]
    2520:	230c      	movs	r3, #12
    2522:	18fb      	adds	r3, r7, r3
    2524:	881b      	ldrh	r3, [r3, #0]
    2526:	089b      	lsrs	r3, r3, #2
    2528:	b29b      	uxth	r3, r3
    252a:	2226      	movs	r2, #38	; 0x26
    252c:	18ba      	adds	r2, r7, r2
    252e:	8812      	ldrh	r2, [r2, #0]
    2530:	429a      	cmp	r2, r3
    2532:	d3e6      	bcc.n	2502 <SendPacket+0x13e>
    2534:	4b22      	ldr	r3, [pc, #136]	; (25c0 <SendPacket+0x1fc>)
    2536:	61fb      	str	r3, [r7, #28]
    2538:	2326      	movs	r3, #38	; 0x26
    253a:	18fb      	adds	r3, r7, r3
    253c:	2200      	movs	r2, #0
    253e:	801a      	strh	r2, [r3, #0]
    2540:	e00e      	b.n	2560 <SendPacket+0x19c>
    2542:	69fb      	ldr	r3, [r7, #28]
    2544:	1d1a      	adds	r2, r3, #4
    2546:	61fa      	str	r2, [r7, #28]
    2548:	6a3a      	ldr	r2, [r7, #32]
    254a:	1d11      	adds	r1, r2, #4
    254c:	6239      	str	r1, [r7, #32]
    254e:	6812      	ldr	r2, [r2, #0]
    2550:	601a      	str	r2, [r3, #0]
    2552:	2326      	movs	r3, #38	; 0x26
    2554:	18fb      	adds	r3, r7, r3
    2556:	881a      	ldrh	r2, [r3, #0]
    2558:	2326      	movs	r3, #38	; 0x26
    255a:	18fb      	adds	r3, r7, r3
    255c:	3201      	adds	r2, #1
    255e:	801a      	strh	r2, [r3, #0]
    2560:	2326      	movs	r3, #38	; 0x26
    2562:	18fb      	adds	r3, r7, r3
    2564:	881a      	ldrh	r2, [r3, #0]
    2566:	693b      	ldr	r3, [r7, #16]
    2568:	429a      	cmp	r2, r3
    256a:	d3ea      	bcc.n	2542 <SendPacket+0x17e>
    256c:	69fb      	ldr	r3, [r7, #28]
    256e:	b29b      	uxth	r3, r3
    2570:	4a12      	ldr	r2, [pc, #72]	; (25bc <SendPacket+0x1f8>)
    2572:	4293      	cmp	r3, r2
    2574:	d901      	bls.n	257a <SendPacket+0x1b6>
    2576:	4b12      	ldr	r3, [pc, #72]	; (25c0 <SendPacket+0x1fc>)
    2578:	61fb      	str	r3, [r7, #28]
    257a:	2300      	movs	r3, #0
    257c:	613b      	str	r3, [r7, #16]
    257e:	69fb      	ldr	r3, [r7, #28]
    2580:	1d1a      	adds	r2, r3, #4
    2582:	61fa      	str	r2, [r7, #28]
    2584:	693a      	ldr	r2, [r7, #16]
    2586:	601a      	str	r2, [r3, #0]
    2588:	69fb      	ldr	r3, [r7, #28]
    258a:	b29b      	uxth	r3, r3
    258c:	4a0b      	ldr	r2, [pc, #44]	; (25bc <SendPacket+0x1f8>)
    258e:	4293      	cmp	r3, r2
    2590:	d901      	bls.n	2596 <SendPacket+0x1d2>
    2592:	4b0b      	ldr	r3, [pc, #44]	; (25c0 <SendPacket+0x1fc>)
    2594:	61fb      	str	r3, [r7, #28]
    2596:	23c0      	movs	r3, #192	; 0xc0
    2598:	059b      	lsls	r3, r3, #22
    259a:	69fa      	ldr	r2, [r7, #28]
    259c:	b292      	uxth	r2, r2
    259e:	855a      	strh	r2, [r3, #42]	; 0x2a
    25a0:	4b04      	ldr	r3, [pc, #16]	; (25b4 <SendPacket+0x1f0>)
    25a2:	681b      	ldr	r3, [r3, #0]
    25a4:	0018      	movs	r0, r3
    25a6:	f003 fe75 	bl	6294 <osMutexRelease>
    25aa:	683b      	ldr	r3, [r7, #0]
    25ac:	0018      	movs	r0, r3
    25ae:	46bd      	mov	sp, r7
    25b0:	b00a      	add	sp, #40	; 0x28
    25b2:	bd80      	pop	{r7, pc}
    25b4:	20005348 	.word	0x20005348
    25b8:	fffff000 	.word	0xfffff000
    25bc:	00001ffc 	.word	0x00001ffc
    25c0:	38001000 	.word	0x38001000

000025c4 <ETHERNET_Handler>:
    25c4:	b580      	push	{r7, lr}
    25c6:	b082      	sub	sp, #8
    25c8:	af00      	add	r7, sp, #0
    25ca:	23c0      	movs	r3, #192	; 0xc0
    25cc:	059a      	lsls	r2, r3, #22
    25ce:	1dbb      	adds	r3, r7, #6
    25d0:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    25d2:	801a      	strh	r2, [r3, #0]
    25d4:	23c0      	movs	r3, #192	; 0xc0
    25d6:	059b      	lsls	r3, r3, #22
    25d8:	1dba      	adds	r2, r7, #6
    25da:	8812      	ldrh	r2, [r2, #0]
    25dc:	845a      	strh	r2, [r3, #34]	; 0x22
    25de:	1dbb      	adds	r3, r7, #6
    25e0:	881b      	ldrh	r3, [r3, #0]
    25e2:	2201      	movs	r2, #1
    25e4:	4013      	ands	r3, r2
    25e6:	d008      	beq.n	25fa <ETHERNET_Handler+0x36>
    25e8:	4b0a      	ldr	r3, [pc, #40]	; (2614 <ETHERNET_Handler+0x50>)
    25ea:	2201      	movs	r2, #1
    25ec:	601a      	str	r2, [r3, #0]
    25ee:	4b0a      	ldr	r3, [pc, #40]	; (2618 <ETHERNET_Handler+0x54>)
    25f0:	681b      	ldr	r3, [r3, #0]
    25f2:	2101      	movs	r1, #1
    25f4:	0018      	movs	r0, r3
    25f6:	f003 fd5b 	bl	60b0 <osSignalSet>
    25fa:	1dbb      	adds	r3, r7, #6
    25fc:	881b      	ldrh	r3, [r3, #0]
    25fe:	2202      	movs	r2, #2
    2600:	4013      	ands	r3, r2
    2602:	d002      	beq.n	260a <ETHERNET_Handler+0x46>
    2604:	4b05      	ldr	r3, [pc, #20]	; (261c <ETHERNET_Handler+0x58>)
    2606:	2201      	movs	r2, #1
    2608:	601a      	str	r2, [r3, #0]
    260a:	46c0      	nop			; (mov r8, r8)
    260c:	46bd      	mov	sp, r7
    260e:	b002      	add	sp, #8
    2610:	bd80      	pop	{r7, pc}
    2612:	46c0      	nop			; (mov r8, r8)
    2614:	20004d30 	.word	0x20004d30
    2618:	20000858 	.word	0x20000858
    261c:	20004d34 	.word	0x20004d34

00002620 <network_config>:
    2620:	b580      	push	{r7, lr}
    2622:	af00      	add	r7, sp, #0
    2624:	46c0      	nop			; (mov r8, r8)
    2626:	46bd      	mov	sp, r7
    2628:	bd80      	pop	{r7, pc}
    262a:	46c0      	nop			; (mov r8, r8)

0000262c <Answear_ARP>:
    262c:	b580      	push	{r7, lr}
    262e:	b08c      	sub	sp, #48	; 0x30
    2630:	af00      	add	r7, sp, #0
    2632:	4b36      	ldr	r3, [pc, #216]	; (270c <Answear_ARP+0xe0>)
    2634:	88da      	ldrh	r2, [r3, #6]
    2636:	1d3b      	adds	r3, r7, #4
    2638:	801a      	strh	r2, [r3, #0]
    263a:	4b34      	ldr	r3, [pc, #208]	; (270c <Answear_ARP+0xe0>)
    263c:	891a      	ldrh	r2, [r3, #8]
    263e:	1d3b      	adds	r3, r7, #4
    2640:	805a      	strh	r2, [r3, #2]
    2642:	4b32      	ldr	r3, [pc, #200]	; (270c <Answear_ARP+0xe0>)
    2644:	895a      	ldrh	r2, [r3, #10]
    2646:	1d3b      	adds	r3, r7, #4
    2648:	809a      	strh	r2, [r3, #4]
    264a:	23c0      	movs	r3, #192	; 0xc0
    264c:	059b      	lsls	r3, r3, #22
    264e:	885b      	ldrh	r3, [r3, #2]
    2650:	b29a      	uxth	r2, r3
    2652:	1d3b      	adds	r3, r7, #4
    2654:	80da      	strh	r2, [r3, #6]
    2656:	23c0      	movs	r3, #192	; 0xc0
    2658:	059b      	lsls	r3, r3, #22
    265a:	889b      	ldrh	r3, [r3, #4]
    265c:	b29a      	uxth	r2, r3
    265e:	1d3b      	adds	r3, r7, #4
    2660:	811a      	strh	r2, [r3, #8]
    2662:	23c0      	movs	r3, #192	; 0xc0
    2664:	059b      	lsls	r3, r3, #22
    2666:	88db      	ldrh	r3, [r3, #6]
    2668:	b29a      	uxth	r2, r3
    266a:	1d3b      	adds	r3, r7, #4
    266c:	815a      	strh	r2, [r3, #10]
    266e:	4b27      	ldr	r3, [pc, #156]	; (270c <Answear_ARP+0xe0>)
    2670:	899a      	ldrh	r2, [r3, #12]
    2672:	1d3b      	adds	r3, r7, #4
    2674:	819a      	strh	r2, [r3, #12]
    2676:	4b25      	ldr	r3, [pc, #148]	; (270c <Answear_ARP+0xe0>)
    2678:	89da      	ldrh	r2, [r3, #14]
    267a:	1d3b      	adds	r3, r7, #4
    267c:	81da      	strh	r2, [r3, #14]
    267e:	4b23      	ldr	r3, [pc, #140]	; (270c <Answear_ARP+0xe0>)
    2680:	8a1a      	ldrh	r2, [r3, #16]
    2682:	1d3b      	adds	r3, r7, #4
    2684:	821a      	strh	r2, [r3, #16]
    2686:	4b21      	ldr	r3, [pc, #132]	; (270c <Answear_ARP+0xe0>)
    2688:	8a5a      	ldrh	r2, [r3, #18]
    268a:	1d3b      	adds	r3, r7, #4
    268c:	825a      	strh	r2, [r3, #18]
    268e:	1d3b      	adds	r3, r7, #4
    2690:	2280      	movs	r2, #128	; 0x80
    2692:	0092      	lsls	r2, r2, #2
    2694:	829a      	strh	r2, [r3, #20]
    2696:	23c0      	movs	r3, #192	; 0xc0
    2698:	059b      	lsls	r3, r3, #22
    269a:	885b      	ldrh	r3, [r3, #2]
    269c:	b29a      	uxth	r2, r3
    269e:	1d3b      	adds	r3, r7, #4
    26a0:	82da      	strh	r2, [r3, #22]
    26a2:	23c0      	movs	r3, #192	; 0xc0
    26a4:	059b      	lsls	r3, r3, #22
    26a6:	889b      	ldrh	r3, [r3, #4]
    26a8:	b29a      	uxth	r2, r3
    26aa:	1d3b      	adds	r3, r7, #4
    26ac:	831a      	strh	r2, [r3, #24]
    26ae:	23c0      	movs	r3, #192	; 0xc0
    26b0:	059b      	lsls	r3, r3, #22
    26b2:	88db      	ldrh	r3, [r3, #6]
    26b4:	b29a      	uxth	r2, r3
    26b6:	1d3b      	adds	r3, r7, #4
    26b8:	835a      	strh	r2, [r3, #26]
    26ba:	4b15      	ldr	r3, [pc, #84]	; (2710 <Answear_ARP+0xe4>)
    26bc:	881a      	ldrh	r2, [r3, #0]
    26be:	1d3b      	adds	r3, r7, #4
    26c0:	839a      	strh	r2, [r3, #28]
    26c2:	4b13      	ldr	r3, [pc, #76]	; (2710 <Answear_ARP+0xe4>)
    26c4:	885a      	ldrh	r2, [r3, #2]
    26c6:	1d3b      	adds	r3, r7, #4
    26c8:	83da      	strh	r2, [r3, #30]
    26ca:	4b10      	ldr	r3, [pc, #64]	; (270c <Answear_ARP+0xe0>)
    26cc:	88da      	ldrh	r2, [r3, #6]
    26ce:	1d3b      	adds	r3, r7, #4
    26d0:	841a      	strh	r2, [r3, #32]
    26d2:	4b0e      	ldr	r3, [pc, #56]	; (270c <Answear_ARP+0xe0>)
    26d4:	891a      	ldrh	r2, [r3, #8]
    26d6:	1d3b      	adds	r3, r7, #4
    26d8:	845a      	strh	r2, [r3, #34]	; 0x22
    26da:	4b0c      	ldr	r3, [pc, #48]	; (270c <Answear_ARP+0xe0>)
    26dc:	895a      	ldrh	r2, [r3, #10]
    26de:	1d3b      	adds	r3, r7, #4
    26e0:	849a      	strh	r2, [r3, #36]	; 0x24
    26e2:	4b0a      	ldr	r3, [pc, #40]	; (270c <Answear_ARP+0xe0>)
    26e4:	8b9a      	ldrh	r2, [r3, #28]
    26e6:	1d3b      	adds	r3, r7, #4
    26e8:	84da      	strh	r2, [r3, #38]	; 0x26
    26ea:	4b08      	ldr	r3, [pc, #32]	; (270c <Answear_ARP+0xe0>)
    26ec:	8bda      	ldrh	r2, [r3, #30]
    26ee:	1d3b      	adds	r3, r7, #4
    26f0:	851a      	strh	r2, [r3, #40]	; 0x28
    26f2:	1d3b      	adds	r3, r7, #4
    26f4:	2200      	movs	r2, #0
    26f6:	855a      	strh	r2, [r3, #42]	; 0x2a
    26f8:	1d3b      	adds	r3, r7, #4
    26fa:	212a      	movs	r1, #42	; 0x2a
    26fc:	0018      	movs	r0, r3
    26fe:	f7ff fe61 	bl	23c4 <SendPacket>
    2702:	46c0      	nop			; (mov r8, r8)
    2704:	46bd      	mov	sp, r7
    2706:	b00c      	add	sp, #48	; 0x30
    2708:	bd80      	pop	{r7, pc}
    270a:	46c0      	nop			; (mov r8, r8)
    270c:	20004d40 	.word	0x20004d40
    2710:	2000000c 	.word	0x2000000c

00002714 <CheckSum_UDP>:
    2714:	b580      	push	{r7, lr}
    2716:	b086      	sub	sp, #24
    2718:	af00      	add	r7, sp, #0
    271a:	0002      	movs	r2, r0
    271c:	6039      	str	r1, [r7, #0]
    271e:	1dbb      	adds	r3, r7, #6
    2720:	801a      	strh	r2, [r3, #0]
    2722:	2300      	movs	r3, #0
    2724:	613b      	str	r3, [r7, #16]
    2726:	230d      	movs	r3, #13
    2728:	617b      	str	r3, [r7, #20]
    272a:	e019      	b.n	2760 <CheckSum_UDP+0x4c>
    272c:	697b      	ldr	r3, [r7, #20]
    272e:	005b      	lsls	r3, r3, #1
    2730:	683a      	ldr	r2, [r7, #0]
    2732:	18d3      	adds	r3, r2, r3
    2734:	881b      	ldrh	r3, [r3, #0]
    2736:	021b      	lsls	r3, r3, #8
    2738:	041b      	lsls	r3, r3, #16
    273a:	0c1a      	lsrs	r2, r3, #16
    273c:	697b      	ldr	r3, [r7, #20]
    273e:	005b      	lsls	r3, r3, #1
    2740:	6839      	ldr	r1, [r7, #0]
    2742:	18cb      	adds	r3, r1, r3
    2744:	881b      	ldrh	r3, [r3, #0]
    2746:	0a1b      	lsrs	r3, r3, #8
    2748:	b29b      	uxth	r3, r3
    274a:	0019      	movs	r1, r3
    274c:	23ff      	movs	r3, #255	; 0xff
    274e:	400b      	ands	r3, r1
    2750:	18d3      	adds	r3, r2, r3
    2752:	001a      	movs	r2, r3
    2754:	693b      	ldr	r3, [r7, #16]
    2756:	189b      	adds	r3, r3, r2
    2758:	613b      	str	r3, [r7, #16]
    275a:	697b      	ldr	r3, [r7, #20]
    275c:	3301      	adds	r3, #1
    275e:	617b      	str	r3, [r7, #20]
    2760:	697b      	ldr	r3, [r7, #20]
    2762:	2b10      	cmp	r3, #16
    2764:	d9e2      	bls.n	272c <CheckSum_UDP+0x18>
    2766:	683b      	ldr	r3, [r7, #0]
    2768:	3316      	adds	r3, #22
    276a:	881b      	ldrh	r3, [r3, #0]
    276c:	0a1b      	lsrs	r3, r3, #8
    276e:	b29b      	uxth	r3, r3
    2770:	001a      	movs	r2, r3
    2772:	23ff      	movs	r3, #255	; 0xff
    2774:	4013      	ands	r3, r2
    2776:	693a      	ldr	r2, [r7, #16]
    2778:	18d3      	adds	r3, r2, r3
    277a:	613b      	str	r3, [r7, #16]
    277c:	1dbb      	adds	r3, r7, #6
    277e:	881b      	ldrh	r3, [r3, #0]
    2780:	693a      	ldr	r2, [r7, #16]
    2782:	18d3      	adds	r3, r2, r3
    2784:	613b      	str	r3, [r7, #16]
    2786:	683b      	ldr	r3, [r7, #0]
    2788:	3322      	adds	r3, #34	; 0x22
    278a:	881b      	ldrh	r3, [r3, #0]
    278c:	021b      	lsls	r3, r3, #8
    278e:	041b      	lsls	r3, r3, #16
    2790:	0c1a      	lsrs	r2, r3, #16
    2792:	683b      	ldr	r3, [r7, #0]
    2794:	3322      	adds	r3, #34	; 0x22
    2796:	881b      	ldrh	r3, [r3, #0]
    2798:	0a1b      	lsrs	r3, r3, #8
    279a:	b29b      	uxth	r3, r3
    279c:	0019      	movs	r1, r3
    279e:	23ff      	movs	r3, #255	; 0xff
    27a0:	400b      	ands	r3, r1
    27a2:	18d3      	adds	r3, r2, r3
    27a4:	001a      	movs	r2, r3
    27a6:	693b      	ldr	r3, [r7, #16]
    27a8:	189b      	adds	r3, r3, r2
    27aa:	613b      	str	r3, [r7, #16]
    27ac:	683b      	ldr	r3, [r7, #0]
    27ae:	3324      	adds	r3, #36	; 0x24
    27b0:	881b      	ldrh	r3, [r3, #0]
    27b2:	021b      	lsls	r3, r3, #8
    27b4:	041b      	lsls	r3, r3, #16
    27b6:	0c1a      	lsrs	r2, r3, #16
    27b8:	683b      	ldr	r3, [r7, #0]
    27ba:	3324      	adds	r3, #36	; 0x24
    27bc:	881b      	ldrh	r3, [r3, #0]
    27be:	0a1b      	lsrs	r3, r3, #8
    27c0:	b29b      	uxth	r3, r3
    27c2:	0019      	movs	r1, r3
    27c4:	23ff      	movs	r3, #255	; 0xff
    27c6:	400b      	ands	r3, r1
    27c8:	18d3      	adds	r3, r2, r3
    27ca:	001a      	movs	r2, r3
    27cc:	693b      	ldr	r3, [r7, #16]
    27ce:	189b      	adds	r3, r3, r2
    27d0:	613b      	str	r3, [r7, #16]
    27d2:	1dbb      	adds	r3, r7, #6
    27d4:	881b      	ldrh	r3, [r3, #0]
    27d6:	693a      	ldr	r2, [r7, #16]
    27d8:	18d3      	adds	r3, r2, r3
    27da:	613b      	str	r3, [r7, #16]
    27dc:	683b      	ldr	r3, [r7, #0]
    27de:	3328      	adds	r3, #40	; 0x28
    27e0:	881b      	ldrh	r3, [r3, #0]
    27e2:	021b      	lsls	r3, r3, #8
    27e4:	041b      	lsls	r3, r3, #16
    27e6:	0c1a      	lsrs	r2, r3, #16
    27e8:	683b      	ldr	r3, [r7, #0]
    27ea:	3328      	adds	r3, #40	; 0x28
    27ec:	881b      	ldrh	r3, [r3, #0]
    27ee:	0a1b      	lsrs	r3, r3, #8
    27f0:	b29b      	uxth	r3, r3
    27f2:	0019      	movs	r1, r3
    27f4:	23ff      	movs	r3, #255	; 0xff
    27f6:	400b      	ands	r3, r1
    27f8:	18d3      	adds	r3, r2, r3
    27fa:	001a      	movs	r2, r3
    27fc:	693b      	ldr	r3, [r7, #16]
    27fe:	189b      	adds	r3, r3, r2
    2800:	613b      	str	r3, [r7, #16]
    2802:	683b      	ldr	r3, [r7, #0]
    2804:	332a      	adds	r3, #42	; 0x2a
    2806:	60fb      	str	r3, [r7, #12]
    2808:	2300      	movs	r3, #0
    280a:	617b      	str	r3, [r7, #20]
    280c:	e017      	b.n	283e <CheckSum_UDP+0x12a>
    280e:	697b      	ldr	r3, [r7, #20]
    2810:	2201      	movs	r2, #1
    2812:	4013      	ands	r3, r2
    2814:	d008      	beq.n	2828 <CheckSum_UDP+0x114>
    2816:	68fb      	ldr	r3, [r7, #12]
    2818:	1c5a      	adds	r2, r3, #1
    281a:	60fa      	str	r2, [r7, #12]
    281c:	781b      	ldrb	r3, [r3, #0]
    281e:	001a      	movs	r2, r3
    2820:	693b      	ldr	r3, [r7, #16]
    2822:	189b      	adds	r3, r3, r2
    2824:	613b      	str	r3, [r7, #16]
    2826:	e007      	b.n	2838 <CheckSum_UDP+0x124>
    2828:	68fb      	ldr	r3, [r7, #12]
    282a:	1c5a      	adds	r2, r3, #1
    282c:	60fa      	str	r2, [r7, #12]
    282e:	781b      	ldrb	r3, [r3, #0]
    2830:	021b      	lsls	r3, r3, #8
    2832:	693a      	ldr	r2, [r7, #16]
    2834:	18d3      	adds	r3, r2, r3
    2836:	613b      	str	r3, [r7, #16]
    2838:	697b      	ldr	r3, [r7, #20]
    283a:	3301      	adds	r3, #1
    283c:	617b      	str	r3, [r7, #20]
    283e:	1dbb      	adds	r3, r7, #6
    2840:	881b      	ldrh	r3, [r3, #0]
    2842:	3b08      	subs	r3, #8
    2844:	001a      	movs	r2, r3
    2846:	697b      	ldr	r3, [r7, #20]
    2848:	429a      	cmp	r2, r3
    284a:	d8e0      	bhi.n	280e <CheckSum_UDP+0xfa>
    284c:	e006      	b.n	285c <CheckSum_UDP+0x148>
    284e:	693b      	ldr	r3, [r7, #16]
    2850:	0c1a      	lsrs	r2, r3, #16
    2852:	693b      	ldr	r3, [r7, #16]
    2854:	041b      	lsls	r3, r3, #16
    2856:	0c1b      	lsrs	r3, r3, #16
    2858:	18d3      	adds	r3, r2, r3
    285a:	613b      	str	r3, [r7, #16]
    285c:	693b      	ldr	r3, [r7, #16]
    285e:	0c1b      	lsrs	r3, r3, #16
    2860:	d1f5      	bne.n	284e <CheckSum_UDP+0x13a>
    2862:	693b      	ldr	r3, [r7, #16]
    2864:	b29b      	uxth	r3, r3
    2866:	43db      	mvns	r3, r3
    2868:	b29b      	uxth	r3, r3
    286a:	0018      	movs	r0, r3
    286c:	46bd      	mov	sp, r7
    286e:	b006      	add	sp, #24
    2870:	bd80      	pop	{r7, pc}
    2872:	46c0      	nop			; (mov r8, r8)

00002874 <CheckSum_IP>:
    2874:	b580      	push	{r7, lr}
    2876:	b084      	sub	sp, #16
    2878:	af00      	add	r7, sp, #0
    287a:	6078      	str	r0, [r7, #4]
    287c:	2300      	movs	r3, #0
    287e:	60bb      	str	r3, [r7, #8]
    2880:	2300      	movs	r3, #0
    2882:	60fb      	str	r3, [r7, #12]
    2884:	e011      	b.n	28aa <CheckSum_IP+0x36>
    2886:	68fb      	ldr	r3, [r7, #12]
    2888:	2b05      	cmp	r3, #5
    288a:	d00a      	beq.n	28a2 <CheckSum_IP+0x2e>
    288c:	68fb      	ldr	r3, [r7, #12]
    288e:	3307      	adds	r3, #7
    2890:	005b      	lsls	r3, r3, #1
    2892:	687a      	ldr	r2, [r7, #4]
    2894:	18d3      	adds	r3, r2, r3
    2896:	881b      	ldrh	r3, [r3, #0]
    2898:	001a      	movs	r2, r3
    289a:	68bb      	ldr	r3, [r7, #8]
    289c:	189b      	adds	r3, r3, r2
    289e:	60bb      	str	r3, [r7, #8]
    28a0:	e000      	b.n	28a4 <CheckSum_IP+0x30>
    28a2:	46c0      	nop			; (mov r8, r8)
    28a4:	68fb      	ldr	r3, [r7, #12]
    28a6:	3301      	adds	r3, #1
    28a8:	60fb      	str	r3, [r7, #12]
    28aa:	68fb      	ldr	r3, [r7, #12]
    28ac:	2b09      	cmp	r3, #9
    28ae:	d9ea      	bls.n	2886 <CheckSum_IP+0x12>
    28b0:	68bb      	ldr	r3, [r7, #8]
    28b2:	0c1a      	lsrs	r2, r3, #16
    28b4:	68bb      	ldr	r3, [r7, #8]
    28b6:	041b      	lsls	r3, r3, #16
    28b8:	0c1b      	lsrs	r3, r3, #16
    28ba:	18d3      	adds	r3, r2, r3
    28bc:	60bb      	str	r3, [r7, #8]
    28be:	68bb      	ldr	r3, [r7, #8]
    28c0:	b29b      	uxth	r3, r3
    28c2:	43db      	mvns	r3, r3
    28c4:	b29b      	uxth	r3, r3
    28c6:	0018      	movs	r0, r3
    28c8:	46bd      	mov	sp, r7
    28ca:	b004      	add	sp, #16
    28cc:	bd80      	pop	{r7, pc}
    28ce:	46c0      	nop			; (mov r8, r8)

000028d0 <CheckSum_ICMP>:
    28d0:	b580      	push	{r7, lr}
    28d2:	b084      	sub	sp, #16
    28d4:	af00      	add	r7, sp, #0
    28d6:	0002      	movs	r2, r0
    28d8:	6039      	str	r1, [r7, #0]
    28da:	1dbb      	adds	r3, r7, #6
    28dc:	801a      	strh	r2, [r3, #0]
    28de:	2300      	movs	r3, #0
    28e0:	60bb      	str	r3, [r7, #8]
    28e2:	2300      	movs	r3, #0
    28e4:	60fb      	str	r3, [r7, #12]
    28e6:	e011      	b.n	290c <CheckSum_ICMP+0x3c>
    28e8:	68fb      	ldr	r3, [r7, #12]
    28ea:	2b01      	cmp	r3, #1
    28ec:	d00a      	beq.n	2904 <CheckSum_ICMP+0x34>
    28ee:	68fb      	ldr	r3, [r7, #12]
    28f0:	3311      	adds	r3, #17
    28f2:	005b      	lsls	r3, r3, #1
    28f4:	683a      	ldr	r2, [r7, #0]
    28f6:	18d3      	adds	r3, r2, r3
    28f8:	881b      	ldrh	r3, [r3, #0]
    28fa:	001a      	movs	r2, r3
    28fc:	68bb      	ldr	r3, [r7, #8]
    28fe:	189b      	adds	r3, r3, r2
    2900:	60bb      	str	r3, [r7, #8]
    2902:	e000      	b.n	2906 <CheckSum_ICMP+0x36>
    2904:	46c0      	nop			; (mov r8, r8)
    2906:	68fb      	ldr	r3, [r7, #12]
    2908:	3301      	adds	r3, #1
    290a:	60fb      	str	r3, [r7, #12]
    290c:	1dbb      	adds	r3, r7, #6
    290e:	881a      	ldrh	r2, [r3, #0]
    2910:	68fb      	ldr	r3, [r7, #12]
    2912:	429a      	cmp	r2, r3
    2914:	d8e8      	bhi.n	28e8 <CheckSum_ICMP+0x18>
    2916:	68bb      	ldr	r3, [r7, #8]
    2918:	0c1a      	lsrs	r2, r3, #16
    291a:	68bb      	ldr	r3, [r7, #8]
    291c:	041b      	lsls	r3, r3, #16
    291e:	0c1b      	lsrs	r3, r3, #16
    2920:	18d3      	adds	r3, r2, r3
    2922:	60bb      	str	r3, [r7, #8]
    2924:	68bb      	ldr	r3, [r7, #8]
    2926:	b29b      	uxth	r3, r3
    2928:	43db      	mvns	r3, r3
    292a:	b29b      	uxth	r3, r3
    292c:	0018      	movs	r0, r3
    292e:	46bd      	mov	sp, r7
    2930:	b004      	add	sp, #16
    2932:	bd80      	pop	{r7, pc}

00002934 <Request_ICMP>:
    2934:	b580      	push	{r7, lr}
    2936:	b096      	sub	sp, #88	; 0x58
    2938:	af00      	add	r7, sp, #0
    293a:	4b73      	ldr	r3, [pc, #460]	; (2b08 <Request_ICMP+0x1d4>)
    293c:	881a      	ldrh	r2, [r3, #0]
    293e:	1d3b      	adds	r3, r7, #4
    2940:	801a      	strh	r2, [r3, #0]
    2942:	4b71      	ldr	r3, [pc, #452]	; (2b08 <Request_ICMP+0x1d4>)
    2944:	885a      	ldrh	r2, [r3, #2]
    2946:	1d3b      	adds	r3, r7, #4
    2948:	805a      	strh	r2, [r3, #2]
    294a:	4b6f      	ldr	r3, [pc, #444]	; (2b08 <Request_ICMP+0x1d4>)
    294c:	889a      	ldrh	r2, [r3, #4]
    294e:	1d3b      	adds	r3, r7, #4
    2950:	809a      	strh	r2, [r3, #4]
    2952:	23c0      	movs	r3, #192	; 0xc0
    2954:	059b      	lsls	r3, r3, #22
    2956:	885b      	ldrh	r3, [r3, #2]
    2958:	b29a      	uxth	r2, r3
    295a:	1d3b      	adds	r3, r7, #4
    295c:	80da      	strh	r2, [r3, #6]
    295e:	23c0      	movs	r3, #192	; 0xc0
    2960:	059b      	lsls	r3, r3, #22
    2962:	889b      	ldrh	r3, [r3, #4]
    2964:	b29a      	uxth	r2, r3
    2966:	1d3b      	adds	r3, r7, #4
    2968:	811a      	strh	r2, [r3, #8]
    296a:	23c0      	movs	r3, #192	; 0xc0
    296c:	059b      	lsls	r3, r3, #22
    296e:	88db      	ldrh	r3, [r3, #6]
    2970:	b29a      	uxth	r2, r3
    2972:	1d3b      	adds	r3, r7, #4
    2974:	815a      	strh	r2, [r3, #10]
    2976:	1d3b      	adds	r3, r7, #4
    2978:	2208      	movs	r2, #8
    297a:	819a      	strh	r2, [r3, #12]
    297c:	1d3b      	adds	r3, r7, #4
    297e:	2245      	movs	r2, #69	; 0x45
    2980:	81da      	strh	r2, [r3, #14]
    2982:	1d3b      	adds	r3, r7, #4
    2984:	22f0      	movs	r2, #240	; 0xf0
    2986:	0192      	lsls	r2, r2, #6
    2988:	821a      	strh	r2, [r3, #16]
    298a:	4b60      	ldr	r3, [pc, #384]	; (2b0c <Request_ICMP+0x1d8>)
    298c:	881a      	ldrh	r2, [r3, #0]
    298e:	1d3b      	adds	r3, r7, #4
    2990:	825a      	strh	r2, [r3, #18]
    2992:	1d3b      	adds	r3, r7, #4
    2994:	2200      	movs	r2, #0
    2996:	829a      	strh	r2, [r3, #20]
    2998:	1d3b      	adds	r3, r7, #4
    299a:	22c0      	movs	r2, #192	; 0xc0
    299c:	0052      	lsls	r2, r2, #1
    299e:	82da      	strh	r2, [r3, #22]
    29a0:	1d3b      	adds	r3, r7, #4
    29a2:	2200      	movs	r2, #0
    29a4:	831a      	strh	r2, [r3, #24]
    29a6:	4b5a      	ldr	r3, [pc, #360]	; (2b10 <Request_ICMP+0x1dc>)
    29a8:	881a      	ldrh	r2, [r3, #0]
    29aa:	1d3b      	adds	r3, r7, #4
    29ac:	835a      	strh	r2, [r3, #26]
    29ae:	4b58      	ldr	r3, [pc, #352]	; (2b10 <Request_ICMP+0x1dc>)
    29b0:	885a      	ldrh	r2, [r3, #2]
    29b2:	1d3b      	adds	r3, r7, #4
    29b4:	839a      	strh	r2, [r3, #28]
    29b6:	4b54      	ldr	r3, [pc, #336]	; (2b08 <Request_ICMP+0x1d4>)
    29b8:	88da      	ldrh	r2, [r3, #6]
    29ba:	1d3b      	adds	r3, r7, #4
    29bc:	83da      	strh	r2, [r3, #30]
    29be:	4b52      	ldr	r3, [pc, #328]	; (2b08 <Request_ICMP+0x1d4>)
    29c0:	891a      	ldrh	r2, [r3, #8]
    29c2:	1d3b      	adds	r3, r7, #4
    29c4:	841a      	strh	r2, [r3, #32]
    29c6:	1d3b      	adds	r3, r7, #4
    29c8:	0018      	movs	r0, r3
    29ca:	f7ff ff53 	bl	2874 <CheckSum_IP>
    29ce:	0003      	movs	r3, r0
    29d0:	001a      	movs	r2, r3
    29d2:	1d3b      	adds	r3, r7, #4
    29d4:	831a      	strh	r2, [r3, #24]
    29d6:	1d3b      	adds	r3, r7, #4
    29d8:	2208      	movs	r2, #8
    29da:	845a      	strh	r2, [r3, #34]	; 0x22
    29dc:	1d3b      	adds	r3, r7, #4
    29de:	2200      	movs	r2, #0
    29e0:	849a      	strh	r2, [r3, #36]	; 0x24
    29e2:	1d3b      	adds	r3, r7, #4
    29e4:	2202      	movs	r2, #2
    29e6:	84da      	strh	r2, [r3, #38]	; 0x26
    29e8:	4b4a      	ldr	r3, [pc, #296]	; (2b14 <Request_ICMP+0x1e0>)
    29ea:	881a      	ldrh	r2, [r3, #0]
    29ec:	1d3b      	adds	r3, r7, #4
    29ee:	851a      	strh	r2, [r3, #40]	; 0x28
    29f0:	2300      	movs	r3, #0
    29f2:	657b      	str	r3, [r7, #84]	; 0x54
    29f4:	2300      	movs	r3, #0
    29f6:	653b      	str	r3, [r7, #80]	; 0x50
    29f8:	e021      	b.n	2a3e <Request_ICMP+0x10a>
    29fa:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29fc:	b2db      	uxtb	r3, r3
    29fe:	3361      	adds	r3, #97	; 0x61
    2a00:	b2da      	uxtb	r2, r3
    2a02:	003b      	movs	r3, r7
    2a04:	701a      	strb	r2, [r3, #0]
    2a06:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2a08:	b2db      	uxtb	r3, r3
    2a0a:	3362      	adds	r3, #98	; 0x62
    2a0c:	b2da      	uxtb	r2, r3
    2a0e:	003b      	movs	r3, r7
    2a10:	705a      	strb	r2, [r3, #1]
    2a12:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2a14:	3315      	adds	r3, #21
    2a16:	001a      	movs	r2, r3
    2a18:	003b      	movs	r3, r7
    2a1a:	785b      	ldrb	r3, [r3, #1]
    2a1c:	021b      	lsls	r3, r3, #8
    2a1e:	b219      	sxth	r1, r3
    2a20:	003b      	movs	r3, r7
    2a22:	781b      	ldrb	r3, [r3, #0]
    2a24:	b21b      	sxth	r3, r3
    2a26:	430b      	orrs	r3, r1
    2a28:	b21b      	sxth	r3, r3
    2a2a:	b299      	uxth	r1, r3
    2a2c:	1d3b      	adds	r3, r7, #4
    2a2e:	0052      	lsls	r2, r2, #1
    2a30:	52d1      	strh	r1, [r2, r3]
    2a32:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2a34:	3302      	adds	r3, #2
    2a36:	657b      	str	r3, [r7, #84]	; 0x54
    2a38:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2a3a:	3301      	adds	r3, #1
    2a3c:	653b      	str	r3, [r7, #80]	; 0x50
    2a3e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2a40:	2b1f      	cmp	r3, #31
    2a42:	d9da      	bls.n	29fa <Request_ICMP+0xc6>
    2a44:	1d3b      	adds	r3, r7, #4
    2a46:	0019      	movs	r1, r3
    2a48:	2014      	movs	r0, #20
    2a4a:	f7ff ff41 	bl	28d0 <CheckSum_ICMP>
    2a4e:	0003      	movs	r3, r0
    2a50:	001a      	movs	r2, r3
    2a52:	1d3b      	adds	r3, r7, #4
    2a54:	849a      	strh	r2, [r3, #36]	; 0x24
    2a56:	1d3b      	adds	r3, r7, #4
    2a58:	214a      	movs	r1, #74	; 0x4a
    2a5a:	0018      	movs	r0, r3
    2a5c:	f7ff fcb2 	bl	23c4 <SendPacket>
    2a60:	4b2a      	ldr	r3, [pc, #168]	; (2b0c <Request_ICMP+0x1d8>)
    2a62:	881b      	ldrh	r3, [r3, #0]
    2a64:	0a1b      	lsrs	r3, r3, #8
    2a66:	b29b      	uxth	r3, r3
    2a68:	b2da      	uxtb	r2, r3
    2a6a:	003b      	movs	r3, r7
    2a6c:	701a      	strb	r2, [r3, #0]
    2a6e:	4b27      	ldr	r3, [pc, #156]	; (2b0c <Request_ICMP+0x1d8>)
    2a70:	881b      	ldrh	r3, [r3, #0]
    2a72:	b2da      	uxtb	r2, r3
    2a74:	003b      	movs	r3, r7
    2a76:	705a      	strb	r2, [r3, #1]
    2a78:	003b      	movs	r3, r7
    2a7a:	781b      	ldrb	r3, [r3, #0]
    2a7c:	3301      	adds	r3, #1
    2a7e:	b2da      	uxtb	r2, r3
    2a80:	003b      	movs	r3, r7
    2a82:	701a      	strb	r2, [r3, #0]
    2a84:	003b      	movs	r3, r7
    2a86:	781b      	ldrb	r3, [r3, #0]
    2a88:	2b00      	cmp	r3, #0
    2a8a:	d105      	bne.n	2a98 <Request_ICMP+0x164>
    2a8c:	003b      	movs	r3, r7
    2a8e:	785b      	ldrb	r3, [r3, #1]
    2a90:	3301      	adds	r3, #1
    2a92:	b2da      	uxtb	r2, r3
    2a94:	003b      	movs	r3, r7
    2a96:	705a      	strb	r2, [r3, #1]
    2a98:	003b      	movs	r3, r7
    2a9a:	781b      	ldrb	r3, [r3, #0]
    2a9c:	021b      	lsls	r3, r3, #8
    2a9e:	b21a      	sxth	r2, r3
    2aa0:	003b      	movs	r3, r7
    2aa2:	785b      	ldrb	r3, [r3, #1]
    2aa4:	b21b      	sxth	r3, r3
    2aa6:	4313      	orrs	r3, r2
    2aa8:	b21b      	sxth	r3, r3
    2aaa:	b29a      	uxth	r2, r3
    2aac:	4b17      	ldr	r3, [pc, #92]	; (2b0c <Request_ICMP+0x1d8>)
    2aae:	801a      	strh	r2, [r3, #0]
    2ab0:	4b18      	ldr	r3, [pc, #96]	; (2b14 <Request_ICMP+0x1e0>)
    2ab2:	881b      	ldrh	r3, [r3, #0]
    2ab4:	0a1b      	lsrs	r3, r3, #8
    2ab6:	b29b      	uxth	r3, r3
    2ab8:	b2da      	uxtb	r2, r3
    2aba:	003b      	movs	r3, r7
    2abc:	701a      	strb	r2, [r3, #0]
    2abe:	4b15      	ldr	r3, [pc, #84]	; (2b14 <Request_ICMP+0x1e0>)
    2ac0:	881b      	ldrh	r3, [r3, #0]
    2ac2:	b2da      	uxtb	r2, r3
    2ac4:	003b      	movs	r3, r7
    2ac6:	705a      	strb	r2, [r3, #1]
    2ac8:	003b      	movs	r3, r7
    2aca:	781b      	ldrb	r3, [r3, #0]
    2acc:	3301      	adds	r3, #1
    2ace:	b2da      	uxtb	r2, r3
    2ad0:	003b      	movs	r3, r7
    2ad2:	701a      	strb	r2, [r3, #0]
    2ad4:	003b      	movs	r3, r7
    2ad6:	781b      	ldrb	r3, [r3, #0]
    2ad8:	2b00      	cmp	r3, #0
    2ada:	d105      	bne.n	2ae8 <Request_ICMP+0x1b4>
    2adc:	003b      	movs	r3, r7
    2ade:	785b      	ldrb	r3, [r3, #1]
    2ae0:	3301      	adds	r3, #1
    2ae2:	b2da      	uxtb	r2, r3
    2ae4:	003b      	movs	r3, r7
    2ae6:	705a      	strb	r2, [r3, #1]
    2ae8:	003b      	movs	r3, r7
    2aea:	781b      	ldrb	r3, [r3, #0]
    2aec:	021b      	lsls	r3, r3, #8
    2aee:	b21a      	sxth	r2, r3
    2af0:	003b      	movs	r3, r7
    2af2:	785b      	ldrb	r3, [r3, #1]
    2af4:	b21b      	sxth	r3, r3
    2af6:	4313      	orrs	r3, r2
    2af8:	b21b      	sxth	r3, r3
    2afa:	b29a      	uxth	r2, r3
    2afc:	4b05      	ldr	r3, [pc, #20]	; (2b14 <Request_ICMP+0x1e0>)
    2afe:	801a      	strh	r2, [r3, #0]
    2b00:	46c0      	nop			; (mov r8, r8)
    2b02:	46bd      	mov	sp, r7
    2b04:	b016      	add	sp, #88	; 0x58
    2b06:	bd80      	pop	{r7, pc}
    2b08:	20004d24 	.word	0x20004d24
    2b0c:	20004d38 	.word	0x20004d38
    2b10:	2000000c 	.word	0x2000000c
    2b14:	20004d3a 	.word	0x20004d3a

00002b18 <Answear_ICMP>:
    2b18:	b580      	push	{r7, lr}
    2b1a:	b082      	sub	sp, #8
    2b1c:	af00      	add	r7, sp, #0
    2b1e:	4b53      	ldr	r3, [pc, #332]	; (2c6c <Answear_ICMP+0x154>)
    2b20:	4a53      	ldr	r2, [pc, #332]	; (2c70 <Answear_ICMP+0x158>)
    2b22:	5a9a      	ldrh	r2, [r3, r2]
    2b24:	1cbb      	adds	r3, r7, #2
    2b26:	3a26      	subs	r2, #38	; 0x26
    2b28:	801a      	strh	r2, [r3, #0]
    2b2a:	1cbb      	adds	r3, r7, #2
    2b2c:	881b      	ldrh	r3, [r3, #0]
    2b2e:	2201      	movs	r2, #1
    2b30:	4013      	ands	r3, r2
    2b32:	d017      	beq.n	2b64 <Answear_ICMP+0x4c>
    2b34:	1cbb      	adds	r3, r7, #2
    2b36:	881b      	ldrh	r3, [r3, #0]
    2b38:	3301      	adds	r3, #1
    2b3a:	105a      	asrs	r2, r3, #1
    2b3c:	1cbb      	adds	r3, r7, #2
    2b3e:	801a      	strh	r2, [r3, #0]
    2b40:	1cbb      	adds	r3, r7, #2
    2b42:	881b      	ldrh	r3, [r3, #0]
    2b44:	3310      	adds	r3, #16
    2b46:	001a      	movs	r2, r3
    2b48:	1cbb      	adds	r3, r7, #2
    2b4a:	881b      	ldrh	r3, [r3, #0]
    2b4c:	3310      	adds	r3, #16
    2b4e:	0019      	movs	r1, r3
    2b50:	4b46      	ldr	r3, [pc, #280]	; (2c6c <Answear_ICMP+0x154>)
    2b52:	0049      	lsls	r1, r1, #1
    2b54:	5acb      	ldrh	r3, [r1, r3]
    2b56:	21ff      	movs	r1, #255	; 0xff
    2b58:	400b      	ands	r3, r1
    2b5a:	b299      	uxth	r1, r3
    2b5c:	4b43      	ldr	r3, [pc, #268]	; (2c6c <Answear_ICMP+0x154>)
    2b5e:	0052      	lsls	r2, r2, #1
    2b60:	52d1      	strh	r1, [r2, r3]
    2b62:	e004      	b.n	2b6e <Answear_ICMP+0x56>
    2b64:	1cbb      	adds	r3, r7, #2
    2b66:	1cba      	adds	r2, r7, #2
    2b68:	8812      	ldrh	r2, [r2, #0]
    2b6a:	0852      	lsrs	r2, r2, #1
    2b6c:	801a      	strh	r2, [r3, #0]
    2b6e:	4b3f      	ldr	r3, [pc, #252]	; (2c6c <Answear_ICMP+0x154>)
    2b70:	88da      	ldrh	r2, [r3, #6]
    2b72:	4b40      	ldr	r3, [pc, #256]	; (2c74 <Answear_ICMP+0x15c>)
    2b74:	801a      	strh	r2, [r3, #0]
    2b76:	4b3d      	ldr	r3, [pc, #244]	; (2c6c <Answear_ICMP+0x154>)
    2b78:	891a      	ldrh	r2, [r3, #8]
    2b7a:	4b3e      	ldr	r3, [pc, #248]	; (2c74 <Answear_ICMP+0x15c>)
    2b7c:	805a      	strh	r2, [r3, #2]
    2b7e:	4b3b      	ldr	r3, [pc, #236]	; (2c6c <Answear_ICMP+0x154>)
    2b80:	895a      	ldrh	r2, [r3, #10]
    2b82:	4b3c      	ldr	r3, [pc, #240]	; (2c74 <Answear_ICMP+0x15c>)
    2b84:	809a      	strh	r2, [r3, #4]
    2b86:	23c0      	movs	r3, #192	; 0xc0
    2b88:	059b      	lsls	r3, r3, #22
    2b8a:	885b      	ldrh	r3, [r3, #2]
    2b8c:	b29a      	uxth	r2, r3
    2b8e:	4b39      	ldr	r3, [pc, #228]	; (2c74 <Answear_ICMP+0x15c>)
    2b90:	80da      	strh	r2, [r3, #6]
    2b92:	23c0      	movs	r3, #192	; 0xc0
    2b94:	059b      	lsls	r3, r3, #22
    2b96:	889b      	ldrh	r3, [r3, #4]
    2b98:	b29a      	uxth	r2, r3
    2b9a:	4b36      	ldr	r3, [pc, #216]	; (2c74 <Answear_ICMP+0x15c>)
    2b9c:	811a      	strh	r2, [r3, #8]
    2b9e:	23c0      	movs	r3, #192	; 0xc0
    2ba0:	059b      	lsls	r3, r3, #22
    2ba2:	88db      	ldrh	r3, [r3, #6]
    2ba4:	b29a      	uxth	r2, r3
    2ba6:	4b33      	ldr	r3, [pc, #204]	; (2c74 <Answear_ICMP+0x15c>)
    2ba8:	815a      	strh	r2, [r3, #10]
    2baa:	4b30      	ldr	r3, [pc, #192]	; (2c6c <Answear_ICMP+0x154>)
    2bac:	899a      	ldrh	r2, [r3, #12]
    2bae:	4b31      	ldr	r3, [pc, #196]	; (2c74 <Answear_ICMP+0x15c>)
    2bb0:	819a      	strh	r2, [r3, #12]
    2bb2:	2307      	movs	r3, #7
    2bb4:	607b      	str	r3, [r7, #4]
    2bb6:	e00a      	b.n	2bce <Answear_ICMP+0xb6>
    2bb8:	4b2c      	ldr	r3, [pc, #176]	; (2c6c <Answear_ICMP+0x154>)
    2bba:	687a      	ldr	r2, [r7, #4]
    2bbc:	0052      	lsls	r2, r2, #1
    2bbe:	5ad1      	ldrh	r1, [r2, r3]
    2bc0:	4b2c      	ldr	r3, [pc, #176]	; (2c74 <Answear_ICMP+0x15c>)
    2bc2:	687a      	ldr	r2, [r7, #4]
    2bc4:	0052      	lsls	r2, r2, #1
    2bc6:	52d1      	strh	r1, [r2, r3]
    2bc8:	687b      	ldr	r3, [r7, #4]
    2bca:	3301      	adds	r3, #1
    2bcc:	607b      	str	r3, [r7, #4]
    2bce:	687b      	ldr	r3, [r7, #4]
    2bd0:	2b0b      	cmp	r3, #11
    2bd2:	d9f1      	bls.n	2bb8 <Answear_ICMP+0xa0>
    2bd4:	4b25      	ldr	r3, [pc, #148]	; (2c6c <Answear_ICMP+0x154>)
    2bd6:	0018      	movs	r0, r3
    2bd8:	f7ff fe4c 	bl	2874 <CheckSum_IP>
    2bdc:	0003      	movs	r3, r0
    2bde:	001a      	movs	r2, r3
    2be0:	4b24      	ldr	r3, [pc, #144]	; (2c74 <Answear_ICMP+0x15c>)
    2be2:	831a      	strh	r2, [r3, #24]
    2be4:	4b21      	ldr	r3, [pc, #132]	; (2c6c <Answear_ICMP+0x154>)
    2be6:	8bda      	ldrh	r2, [r3, #30]
    2be8:	4b22      	ldr	r3, [pc, #136]	; (2c74 <Answear_ICMP+0x15c>)
    2bea:	835a      	strh	r2, [r3, #26]
    2bec:	4b1f      	ldr	r3, [pc, #124]	; (2c6c <Answear_ICMP+0x154>)
    2bee:	8c1a      	ldrh	r2, [r3, #32]
    2bf0:	4b20      	ldr	r3, [pc, #128]	; (2c74 <Answear_ICMP+0x15c>)
    2bf2:	839a      	strh	r2, [r3, #28]
    2bf4:	4b1d      	ldr	r3, [pc, #116]	; (2c6c <Answear_ICMP+0x154>)
    2bf6:	8b5a      	ldrh	r2, [r3, #26]
    2bf8:	4b1e      	ldr	r3, [pc, #120]	; (2c74 <Answear_ICMP+0x15c>)
    2bfa:	83da      	strh	r2, [r3, #30]
    2bfc:	4b1b      	ldr	r3, [pc, #108]	; (2c6c <Answear_ICMP+0x154>)
    2bfe:	8b9a      	ldrh	r2, [r3, #28]
    2c00:	4b1c      	ldr	r3, [pc, #112]	; (2c74 <Answear_ICMP+0x15c>)
    2c02:	841a      	strh	r2, [r3, #32]
    2c04:	4b1b      	ldr	r3, [pc, #108]	; (2c74 <Answear_ICMP+0x15c>)
    2c06:	2200      	movs	r2, #0
    2c08:	845a      	strh	r2, [r3, #34]	; 0x22
    2c0a:	4b18      	ldr	r3, [pc, #96]	; (2c6c <Answear_ICMP+0x154>)
    2c0c:	2200      	movs	r2, #0
    2c0e:	845a      	strh	r2, [r3, #34]	; 0x22
    2c10:	4a16      	ldr	r2, [pc, #88]	; (2c6c <Answear_ICMP+0x154>)
    2c12:	1cbb      	adds	r3, r7, #2
    2c14:	881b      	ldrh	r3, [r3, #0]
    2c16:	0011      	movs	r1, r2
    2c18:	0018      	movs	r0, r3
    2c1a:	f7ff fe59 	bl	28d0 <CheckSum_ICMP>
    2c1e:	0003      	movs	r3, r0
    2c20:	001a      	movs	r2, r3
    2c22:	4b14      	ldr	r3, [pc, #80]	; (2c74 <Answear_ICMP+0x15c>)
    2c24:	849a      	strh	r2, [r3, #36]	; 0x24
    2c26:	2313      	movs	r3, #19
    2c28:	607b      	str	r3, [r7, #4]
    2c2a:	e00a      	b.n	2c42 <Answear_ICMP+0x12a>
    2c2c:	4b0f      	ldr	r3, [pc, #60]	; (2c6c <Answear_ICMP+0x154>)
    2c2e:	687a      	ldr	r2, [r7, #4]
    2c30:	0052      	lsls	r2, r2, #1
    2c32:	5ad1      	ldrh	r1, [r2, r3]
    2c34:	4b0f      	ldr	r3, [pc, #60]	; (2c74 <Answear_ICMP+0x15c>)
    2c36:	687a      	ldr	r2, [r7, #4]
    2c38:	0052      	lsls	r2, r2, #1
    2c3a:	52d1      	strh	r1, [r2, r3]
    2c3c:	687b      	ldr	r3, [r7, #4]
    2c3e:	3301      	adds	r3, #1
    2c40:	607b      	str	r3, [r7, #4]
    2c42:	1cbb      	adds	r3, r7, #2
    2c44:	881b      	ldrh	r3, [r3, #0]
    2c46:	3311      	adds	r3, #17
    2c48:	001a      	movs	r2, r3
    2c4a:	687b      	ldr	r3, [r7, #4]
    2c4c:	429a      	cmp	r2, r3
    2c4e:	d8ed      	bhi.n	2c2c <Answear_ICMP+0x114>
    2c50:	1cbb      	adds	r3, r7, #2
    2c52:	881b      	ldrh	r3, [r3, #0]
    2c54:	3311      	adds	r3, #17
    2c56:	005a      	lsls	r2, r3, #1
    2c58:	4b06      	ldr	r3, [pc, #24]	; (2c74 <Answear_ICMP+0x15c>)
    2c5a:	0011      	movs	r1, r2
    2c5c:	0018      	movs	r0, r3
    2c5e:	f7ff fbb1 	bl	23c4 <SendPacket>
    2c62:	46c0      	nop			; (mov r8, r8)
    2c64:	46bd      	mov	sp, r7
    2c66:	b002      	add	sp, #8
    2c68:	bd80      	pop	{r7, pc}
    2c6a:	46c0      	nop			; (mov r8, r8)
    2c6c:	20004d40 	.word	0x20004d40
    2c70:	000005dc 	.word	0x000005dc
    2c74:	2000534c 	.word	0x2000534c

00002c78 <Send_UDP>:
    2c78:	b590      	push	{r4, r7, lr}
    2c7a:	b089      	sub	sp, #36	; 0x24
    2c7c:	af00      	add	r7, sp, #0
    2c7e:	6078      	str	r0, [r7, #4]
    2c80:	6039      	str	r1, [r7, #0]
    2c82:	4b86      	ldr	r3, [pc, #536]	; (2e9c <Send_UDP+0x224>)
    2c84:	881a      	ldrh	r2, [r3, #0]
    2c86:	4b86      	ldr	r3, [pc, #536]	; (2ea0 <Send_UDP+0x228>)
    2c88:	801a      	strh	r2, [r3, #0]
    2c8a:	4b84      	ldr	r3, [pc, #528]	; (2e9c <Send_UDP+0x224>)
    2c8c:	885a      	ldrh	r2, [r3, #2]
    2c8e:	4b84      	ldr	r3, [pc, #528]	; (2ea0 <Send_UDP+0x228>)
    2c90:	805a      	strh	r2, [r3, #2]
    2c92:	4b82      	ldr	r3, [pc, #520]	; (2e9c <Send_UDP+0x224>)
    2c94:	889a      	ldrh	r2, [r3, #4]
    2c96:	4b82      	ldr	r3, [pc, #520]	; (2ea0 <Send_UDP+0x228>)
    2c98:	809a      	strh	r2, [r3, #4]
    2c9a:	23c0      	movs	r3, #192	; 0xc0
    2c9c:	059b      	lsls	r3, r3, #22
    2c9e:	885b      	ldrh	r3, [r3, #2]
    2ca0:	b29a      	uxth	r2, r3
    2ca2:	4b7f      	ldr	r3, [pc, #508]	; (2ea0 <Send_UDP+0x228>)
    2ca4:	80da      	strh	r2, [r3, #6]
    2ca6:	23c0      	movs	r3, #192	; 0xc0
    2ca8:	059b      	lsls	r3, r3, #22
    2caa:	889b      	ldrh	r3, [r3, #4]
    2cac:	b29a      	uxth	r2, r3
    2cae:	4b7c      	ldr	r3, [pc, #496]	; (2ea0 <Send_UDP+0x228>)
    2cb0:	811a      	strh	r2, [r3, #8]
    2cb2:	23c0      	movs	r3, #192	; 0xc0
    2cb4:	059b      	lsls	r3, r3, #22
    2cb6:	88db      	ldrh	r3, [r3, #6]
    2cb8:	b29a      	uxth	r2, r3
    2cba:	4b79      	ldr	r3, [pc, #484]	; (2ea0 <Send_UDP+0x228>)
    2cbc:	815a      	strh	r2, [r3, #10]
    2cbe:	4b78      	ldr	r3, [pc, #480]	; (2ea0 <Send_UDP+0x228>)
    2cc0:	2208      	movs	r2, #8
    2cc2:	819a      	strh	r2, [r3, #12]
    2cc4:	4b76      	ldr	r3, [pc, #472]	; (2ea0 <Send_UDP+0x228>)
    2cc6:	2245      	movs	r2, #69	; 0x45
    2cc8:	81da      	strh	r2, [r3, #14]
    2cca:	4b75      	ldr	r3, [pc, #468]	; (2ea0 <Send_UDP+0x228>)
    2ccc:	22f0      	movs	r2, #240	; 0xf0
    2cce:	0192      	lsls	r2, r2, #6
    2cd0:	821a      	strh	r2, [r3, #16]
    2cd2:	4b74      	ldr	r3, [pc, #464]	; (2ea4 <Send_UDP+0x22c>)
    2cd4:	881a      	ldrh	r2, [r3, #0]
    2cd6:	4b72      	ldr	r3, [pc, #456]	; (2ea0 <Send_UDP+0x228>)
    2cd8:	825a      	strh	r2, [r3, #18]
    2cda:	4b71      	ldr	r3, [pc, #452]	; (2ea0 <Send_UDP+0x228>)
    2cdc:	2200      	movs	r2, #0
    2cde:	829a      	strh	r2, [r3, #20]
    2ce0:	4b6f      	ldr	r3, [pc, #444]	; (2ea0 <Send_UDP+0x228>)
    2ce2:	228c      	movs	r2, #140	; 0x8c
    2ce4:	0152      	lsls	r2, r2, #5
    2ce6:	82da      	strh	r2, [r3, #22]
    2ce8:	4b6d      	ldr	r3, [pc, #436]	; (2ea0 <Send_UDP+0x228>)
    2cea:	2200      	movs	r2, #0
    2cec:	831a      	strh	r2, [r3, #24]
    2cee:	4b6e      	ldr	r3, [pc, #440]	; (2ea8 <Send_UDP+0x230>)
    2cf0:	881a      	ldrh	r2, [r3, #0]
    2cf2:	4b6b      	ldr	r3, [pc, #428]	; (2ea0 <Send_UDP+0x228>)
    2cf4:	835a      	strh	r2, [r3, #26]
    2cf6:	4b6c      	ldr	r3, [pc, #432]	; (2ea8 <Send_UDP+0x230>)
    2cf8:	885a      	ldrh	r2, [r3, #2]
    2cfa:	4b69      	ldr	r3, [pc, #420]	; (2ea0 <Send_UDP+0x228>)
    2cfc:	839a      	strh	r2, [r3, #28]
    2cfe:	4b67      	ldr	r3, [pc, #412]	; (2e9c <Send_UDP+0x224>)
    2d00:	88da      	ldrh	r2, [r3, #6]
    2d02:	4b67      	ldr	r3, [pc, #412]	; (2ea0 <Send_UDP+0x228>)
    2d04:	83da      	strh	r2, [r3, #30]
    2d06:	4b65      	ldr	r3, [pc, #404]	; (2e9c <Send_UDP+0x224>)
    2d08:	891a      	ldrh	r2, [r3, #8]
    2d0a:	4b65      	ldr	r3, [pc, #404]	; (2ea0 <Send_UDP+0x228>)
    2d0c:	841a      	strh	r2, [r3, #32]
    2d0e:	2316      	movs	r3, #22
    2d10:	18fb      	adds	r3, r7, r3
    2d12:	4a66      	ldr	r2, [pc, #408]	; (2eac <Send_UDP+0x234>)
    2d14:	801a      	strh	r2, [r3, #0]
    2d16:	2316      	movs	r3, #22
    2d18:	18fb      	adds	r3, r7, r3
    2d1a:	2216      	movs	r2, #22
    2d1c:	18ba      	adds	r2, r7, r2
    2d1e:	8812      	ldrh	r2, [r2, #0]
    2d20:	ba52      	rev16	r2, r2
    2d22:	801a      	strh	r2, [r3, #0]
    2d24:	4b62      	ldr	r3, [pc, #392]	; (2eb0 <Send_UDP+0x238>)
    2d26:	881a      	ldrh	r2, [r3, #0]
    2d28:	2314      	movs	r3, #20
    2d2a:	18fb      	adds	r3, r7, r3
    2d2c:	ba52      	rev16	r2, r2
    2d2e:	801a      	strh	r2, [r3, #0]
    2d30:	4b5b      	ldr	r3, [pc, #364]	; (2ea0 <Send_UDP+0x228>)
    2d32:	2216      	movs	r2, #22
    2d34:	18ba      	adds	r2, r7, r2
    2d36:	8812      	ldrh	r2, [r2, #0]
    2d38:	845a      	strh	r2, [r3, #34]	; 0x22
    2d3a:	4b59      	ldr	r3, [pc, #356]	; (2ea0 <Send_UDP+0x228>)
    2d3c:	2214      	movs	r2, #20
    2d3e:	18ba      	adds	r2, r7, r2
    2d40:	8812      	ldrh	r2, [r2, #0]
    2d42:	849a      	strh	r2, [r3, #36]	; 0x24
    2d44:	4b56      	ldr	r3, [pc, #344]	; (2ea0 <Send_UDP+0x228>)
    2d46:	22c0      	movs	r2, #192	; 0xc0
    2d48:	0112      	lsls	r2, r2, #4
    2d4a:	84da      	strh	r2, [r3, #38]	; 0x26
    2d4c:	4b54      	ldr	r3, [pc, #336]	; (2ea0 <Send_UDP+0x228>)
    2d4e:	2200      	movs	r2, #0
    2d50:	851a      	strh	r2, [r3, #40]	; 0x28
    2d52:	4b58      	ldr	r3, [pc, #352]	; (2eb4 <Send_UDP+0x23c>)
    2d54:	61bb      	str	r3, [r7, #24]
    2d56:	683a      	ldr	r2, [r7, #0]
    2d58:	23fe      	movs	r3, #254	; 0xfe
    2d5a:	005b      	lsls	r3, r3, #1
    2d5c:	429a      	cmp	r2, r3
    2d5e:	dd02      	ble.n	2d66 <Send_UDP+0xee>
    2d60:	23fe      	movs	r3, #254	; 0xfe
    2d62:	005b      	lsls	r3, r3, #1
    2d64:	603b      	str	r3, [r7, #0]
    2d66:	2300      	movs	r3, #0
    2d68:	61fb      	str	r3, [r7, #28]
    2d6a:	e00a      	b.n	2d82 <Send_UDP+0x10a>
    2d6c:	69bb      	ldr	r3, [r7, #24]
    2d6e:	1c5a      	adds	r2, r3, #1
    2d70:	61ba      	str	r2, [r7, #24]
    2d72:	687a      	ldr	r2, [r7, #4]
    2d74:	1c51      	adds	r1, r2, #1
    2d76:	6079      	str	r1, [r7, #4]
    2d78:	7812      	ldrb	r2, [r2, #0]
    2d7a:	701a      	strb	r2, [r3, #0]
    2d7c:	69fb      	ldr	r3, [r7, #28]
    2d7e:	3301      	adds	r3, #1
    2d80:	61fb      	str	r3, [r7, #28]
    2d82:	683b      	ldr	r3, [r7, #0]
    2d84:	69fa      	ldr	r2, [r7, #28]
    2d86:	429a      	cmp	r2, r3
    2d88:	d3f0      	bcc.n	2d6c <Send_UDP+0xf4>
    2d8a:	683b      	ldr	r3, [r7, #0]
    2d8c:	b29a      	uxth	r2, r3
    2d8e:	2312      	movs	r3, #18
    2d90:	18fb      	adds	r3, r7, r3
    2d92:	321c      	adds	r2, #28
    2d94:	801a      	strh	r2, [r3, #0]
    2d96:	2312      	movs	r3, #18
    2d98:	18fb      	adds	r3, r7, r3
    2d9a:	881b      	ldrh	r3, [r3, #0]
    2d9c:	021b      	lsls	r3, r3, #8
    2d9e:	b29a      	uxth	r2, r3
    2da0:	2312      	movs	r3, #18
    2da2:	18fb      	adds	r3, r7, r3
    2da4:	881b      	ldrh	r3, [r3, #0]
    2da6:	0a1b      	lsrs	r3, r3, #8
    2da8:	b29b      	uxth	r3, r3
    2daa:	18d3      	adds	r3, r2, r3
    2dac:	b29a      	uxth	r2, r3
    2dae:	4b3c      	ldr	r3, [pc, #240]	; (2ea0 <Send_UDP+0x228>)
    2db0:	821a      	strh	r2, [r3, #16]
    2db2:	4b3b      	ldr	r3, [pc, #236]	; (2ea0 <Send_UDP+0x228>)
    2db4:	0018      	movs	r0, r3
    2db6:	f7ff fd5d 	bl	2874 <CheckSum_IP>
    2dba:	0003      	movs	r3, r0
    2dbc:	001a      	movs	r2, r3
    2dbe:	4b38      	ldr	r3, [pc, #224]	; (2ea0 <Send_UDP+0x228>)
    2dc0:	831a      	strh	r2, [r3, #24]
    2dc2:	683b      	ldr	r3, [r7, #0]
    2dc4:	b29a      	uxth	r2, r3
    2dc6:	2310      	movs	r3, #16
    2dc8:	18fb      	adds	r3, r7, r3
    2dca:	3208      	adds	r2, #8
    2dcc:	801a      	strh	r2, [r3, #0]
    2dce:	2310      	movs	r3, #16
    2dd0:	18fb      	adds	r3, r7, r3
    2dd2:	881b      	ldrh	r3, [r3, #0]
    2dd4:	021b      	lsls	r3, r3, #8
    2dd6:	b29a      	uxth	r2, r3
    2dd8:	2310      	movs	r3, #16
    2dda:	18fb      	adds	r3, r7, r3
    2ddc:	881b      	ldrh	r3, [r3, #0]
    2dde:	0a1b      	lsrs	r3, r3, #8
    2de0:	b29b      	uxth	r3, r3
    2de2:	18d3      	adds	r3, r2, r3
    2de4:	b29a      	uxth	r2, r3
    2de6:	4b2e      	ldr	r3, [pc, #184]	; (2ea0 <Send_UDP+0x228>)
    2de8:	84da      	strh	r2, [r3, #38]	; 0x26
    2dea:	683b      	ldr	r3, [r7, #0]
    2dec:	b29b      	uxth	r3, r3
    2dee:	3308      	adds	r3, #8
    2df0:	b29b      	uxth	r3, r3
    2df2:	220e      	movs	r2, #14
    2df4:	18bc      	adds	r4, r7, r2
    2df6:	4a2a      	ldr	r2, [pc, #168]	; (2ea0 <Send_UDP+0x228>)
    2df8:	0011      	movs	r1, r2
    2dfa:	0018      	movs	r0, r3
    2dfc:	f7ff fc8a 	bl	2714 <CheckSum_UDP>
    2e00:	0003      	movs	r3, r0
    2e02:	8023      	strh	r3, [r4, #0]
    2e04:	230e      	movs	r3, #14
    2e06:	18fb      	adds	r3, r7, r3
    2e08:	881b      	ldrh	r3, [r3, #0]
    2e0a:	021b      	lsls	r3, r3, #8
    2e0c:	b29a      	uxth	r2, r3
    2e0e:	230e      	movs	r3, #14
    2e10:	18fb      	adds	r3, r7, r3
    2e12:	881b      	ldrh	r3, [r3, #0]
    2e14:	0a1b      	lsrs	r3, r3, #8
    2e16:	b29b      	uxth	r3, r3
    2e18:	18d3      	adds	r3, r2, r3
    2e1a:	b29a      	uxth	r2, r3
    2e1c:	4b20      	ldr	r3, [pc, #128]	; (2ea0 <Send_UDP+0x228>)
    2e1e:	851a      	strh	r2, [r3, #40]	; 0x28
    2e20:	683b      	ldr	r3, [r7, #0]
    2e22:	332a      	adds	r3, #42	; 0x2a
    2e24:	001a      	movs	r2, r3
    2e26:	4b1e      	ldr	r3, [pc, #120]	; (2ea0 <Send_UDP+0x228>)
    2e28:	0011      	movs	r1, r2
    2e2a:	0018      	movs	r0, r3
    2e2c:	f7ff faca 	bl	23c4 <SendPacket>
    2e30:	4b1c      	ldr	r3, [pc, #112]	; (2ea4 <Send_UDP+0x22c>)
    2e32:	881b      	ldrh	r3, [r3, #0]
    2e34:	0a1b      	lsrs	r3, r3, #8
    2e36:	b29b      	uxth	r3, r3
    2e38:	b2da      	uxtb	r2, r3
    2e3a:	230c      	movs	r3, #12
    2e3c:	18fb      	adds	r3, r7, r3
    2e3e:	701a      	strb	r2, [r3, #0]
    2e40:	4b18      	ldr	r3, [pc, #96]	; (2ea4 <Send_UDP+0x22c>)
    2e42:	881b      	ldrh	r3, [r3, #0]
    2e44:	b2da      	uxtb	r2, r3
    2e46:	230c      	movs	r3, #12
    2e48:	18fb      	adds	r3, r7, r3
    2e4a:	705a      	strb	r2, [r3, #1]
    2e4c:	230c      	movs	r3, #12
    2e4e:	18fb      	adds	r3, r7, r3
    2e50:	781b      	ldrb	r3, [r3, #0]
    2e52:	3301      	adds	r3, #1
    2e54:	b2da      	uxtb	r2, r3
    2e56:	230c      	movs	r3, #12
    2e58:	18fb      	adds	r3, r7, r3
    2e5a:	701a      	strb	r2, [r3, #0]
    2e5c:	230c      	movs	r3, #12
    2e5e:	18fb      	adds	r3, r7, r3
    2e60:	781b      	ldrb	r3, [r3, #0]
    2e62:	2b00      	cmp	r3, #0
    2e64:	d107      	bne.n	2e76 <Send_UDP+0x1fe>
    2e66:	230c      	movs	r3, #12
    2e68:	18fb      	adds	r3, r7, r3
    2e6a:	785b      	ldrb	r3, [r3, #1]
    2e6c:	3301      	adds	r3, #1
    2e6e:	b2da      	uxtb	r2, r3
    2e70:	230c      	movs	r3, #12
    2e72:	18fb      	adds	r3, r7, r3
    2e74:	705a      	strb	r2, [r3, #1]
    2e76:	230c      	movs	r3, #12
    2e78:	18fb      	adds	r3, r7, r3
    2e7a:	781b      	ldrb	r3, [r3, #0]
    2e7c:	021b      	lsls	r3, r3, #8
    2e7e:	b21a      	sxth	r2, r3
    2e80:	230c      	movs	r3, #12
    2e82:	18fb      	adds	r3, r7, r3
    2e84:	785b      	ldrb	r3, [r3, #1]
    2e86:	b21b      	sxth	r3, r3
    2e88:	4313      	orrs	r3, r2
    2e8a:	b21b      	sxth	r3, r3
    2e8c:	b29a      	uxth	r2, r3
    2e8e:	4b05      	ldr	r3, [pc, #20]	; (2ea4 <Send_UDP+0x22c>)
    2e90:	801a      	strh	r2, [r3, #0]
    2e92:	46c0      	nop			; (mov r8, r8)
    2e94:	46bd      	mov	sp, r7
    2e96:	b009      	add	sp, #36	; 0x24
    2e98:	bd90      	pop	{r4, r7, pc}
    2e9a:	46c0      	nop			; (mov r8, r8)
    2e9c:	20004d24 	.word	0x20004d24
    2ea0:	2000558c 	.word	0x2000558c
    2ea4:	20004d38 	.word	0x20004d38
    2ea8:	2000000c 	.word	0x2000000c
    2eac:	00001234 	.word	0x00001234
    2eb0:	20005320 	.word	0x20005320
    2eb4:	200055b6 	.word	0x200055b6

00002eb8 <PacketParser>:
    2eb8:	b580      	push	{r7, lr}
    2eba:	b082      	sub	sp, #8
    2ebc:	af00      	add	r7, sp, #0
    2ebe:	4b49      	ldr	r3, [pc, #292]	; (2fe4 <PacketParser+0x12c>)
    2ec0:	899b      	ldrh	r3, [r3, #12]
    2ec2:	2b08      	cmp	r3, #8
    2ec4:	d005      	beq.n	2ed2 <PacketParser+0x1a>
    2ec6:	22c1      	movs	r2, #193	; 0xc1
    2ec8:	00d2      	lsls	r2, r2, #3
    2eca:	4293      	cmp	r3, r2
    2ecc:	d100      	bne.n	2ed0 <PacketParser+0x18>
    2ece:	e06b      	b.n	2fa8 <PacketParser+0xf0>
    2ed0:	e084      	b.n	2fdc <PacketParser+0x124>
    2ed2:	4b44      	ldr	r3, [pc, #272]	; (2fe4 <PacketParser+0x12c>)
    2ed4:	8b9a      	ldrh	r2, [r3, #28]
    2ed6:	4b44      	ldr	r3, [pc, #272]	; (2fe8 <PacketParser+0x130>)
    2ed8:	811a      	strh	r2, [r3, #8]
    2eda:	4b42      	ldr	r3, [pc, #264]	; (2fe4 <PacketParser+0x12c>)
    2edc:	8bda      	ldrh	r2, [r3, #30]
    2ede:	4b42      	ldr	r3, [pc, #264]	; (2fe8 <PacketParser+0x130>)
    2ee0:	80da      	strh	r2, [r3, #6]
    2ee2:	4b41      	ldr	r3, [pc, #260]	; (2fe8 <PacketParser+0x130>)
    2ee4:	895b      	ldrh	r3, [r3, #10]
    2ee6:	2b00      	cmp	r3, #0
    2ee8:	d100      	bne.n	2eec <PacketParser+0x34>
    2eea:	e072      	b.n	2fd2 <PacketParser+0x11a>
    2eec:	4b3d      	ldr	r3, [pc, #244]	; (2fe4 <PacketParser+0x12c>)
    2eee:	8bda      	ldrh	r2, [r3, #30]
    2ef0:	4b3e      	ldr	r3, [pc, #248]	; (2fec <PacketParser+0x134>)
    2ef2:	881b      	ldrh	r3, [r3, #0]
    2ef4:	429a      	cmp	r2, r3
    2ef6:	d000      	beq.n	2efa <PacketParser+0x42>
    2ef8:	e06d      	b.n	2fd6 <PacketParser+0x11e>
    2efa:	4b3a      	ldr	r3, [pc, #232]	; (2fe4 <PacketParser+0x12c>)
    2efc:	8c1a      	ldrh	r2, [r3, #32]
    2efe:	4b3b      	ldr	r3, [pc, #236]	; (2fec <PacketParser+0x134>)
    2f00:	885b      	ldrh	r3, [r3, #2]
    2f02:	429a      	cmp	r2, r3
    2f04:	d000      	beq.n	2f08 <PacketParser+0x50>
    2f06:	e066      	b.n	2fd6 <PacketParser+0x11e>
    2f08:	4b36      	ldr	r3, [pc, #216]	; (2fe4 <PacketParser+0x12c>)
    2f0a:	0018      	movs	r0, r3
    2f0c:	f7ff fcb2 	bl	2874 <CheckSum_IP>
    2f10:	0003      	movs	r3, r0
    2f12:	001a      	movs	r2, r3
    2f14:	4b33      	ldr	r3, [pc, #204]	; (2fe4 <PacketParser+0x12c>)
    2f16:	8b1b      	ldrh	r3, [r3, #24]
    2f18:	429a      	cmp	r2, r3
    2f1a:	d15c      	bne.n	2fd6 <PacketParser+0x11e>
    2f1c:	4b31      	ldr	r3, [pc, #196]	; (2fe4 <PacketParser+0x12c>)
    2f1e:	8adb      	ldrh	r3, [r3, #22]
    2f20:	001a      	movs	r2, r3
    2f22:	23ff      	movs	r3, #255	; 0xff
    2f24:	021b      	lsls	r3, r3, #8
    2f26:	401a      	ands	r2, r3
    2f28:	2380      	movs	r3, #128	; 0x80
    2f2a:	005b      	lsls	r3, r3, #1
    2f2c:	429a      	cmp	r2, r3
    2f2e:	d110      	bne.n	2f52 <PacketParser+0x9a>
    2f30:	4b2c      	ldr	r3, [pc, #176]	; (2fe4 <PacketParser+0x12c>)
    2f32:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2f34:	2b00      	cmp	r3, #0
    2f36:	d105      	bne.n	2f44 <PacketParser+0x8c>
    2f38:	4b2d      	ldr	r3, [pc, #180]	; (2ff0 <PacketParser+0x138>)
    2f3a:	681b      	ldr	r3, [r3, #0]
    2f3c:	1c5a      	adds	r2, r3, #1
    2f3e:	4b2c      	ldr	r3, [pc, #176]	; (2ff0 <PacketParser+0x138>)
    2f40:	601a      	str	r2, [r3, #0]
    2f42:	e048      	b.n	2fd6 <PacketParser+0x11e>
    2f44:	4b27      	ldr	r3, [pc, #156]	; (2fe4 <PacketParser+0x12c>)
    2f46:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2f48:	2b08      	cmp	r3, #8
    2f4a:	d144      	bne.n	2fd6 <PacketParser+0x11e>
    2f4c:	f7ff fde4 	bl	2b18 <Answear_ICMP>
    2f50:	e041      	b.n	2fd6 <PacketParser+0x11e>
    2f52:	4b24      	ldr	r3, [pc, #144]	; (2fe4 <PacketParser+0x12c>)
    2f54:	8adb      	ldrh	r3, [r3, #22]
    2f56:	001a      	movs	r2, r3
    2f58:	23ff      	movs	r3, #255	; 0xff
    2f5a:	021b      	lsls	r3, r3, #8
    2f5c:	401a      	ands	r2, r3
    2f5e:	2388      	movs	r3, #136	; 0x88
    2f60:	015b      	lsls	r3, r3, #5
    2f62:	429a      	cmp	r2, r3
    2f64:	d137      	bne.n	2fd6 <PacketParser+0x11e>
    2f66:	4b1f      	ldr	r3, [pc, #124]	; (2fe4 <PacketParser+0x12c>)
    2f68:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2f6a:	021b      	lsls	r3, r3, #8
    2f6c:	b29a      	uxth	r2, r3
    2f6e:	4b1d      	ldr	r3, [pc, #116]	; (2fe4 <PacketParser+0x12c>)
    2f70:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2f72:	0a1b      	lsrs	r3, r3, #8
    2f74:	b29b      	uxth	r3, r3
    2f76:	18d3      	adds	r3, r2, r3
    2f78:	b29a      	uxth	r2, r3
    2f7a:	4b1e      	ldr	r3, [pc, #120]	; (2ff4 <PacketParser+0x13c>)
    2f7c:	801a      	strh	r2, [r3, #0]
    2f7e:	4b19      	ldr	r3, [pc, #100]	; (2fe4 <PacketParser+0x12c>)
    2f80:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2f82:	021b      	lsls	r3, r3, #8
    2f84:	b299      	uxth	r1, r3
    2f86:	4b17      	ldr	r3, [pc, #92]	; (2fe4 <PacketParser+0x12c>)
    2f88:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2f8a:	0a1b      	lsrs	r3, r3, #8
    2f8c:	b29a      	uxth	r2, r3
    2f8e:	1dbb      	adds	r3, r7, #6
    2f90:	188a      	adds	r2, r1, r2
    2f92:	801a      	strh	r2, [r3, #0]
    2f94:	1dbb      	adds	r3, r7, #6
    2f96:	881b      	ldrh	r3, [r3, #0]
    2f98:	4a17      	ldr	r2, [pc, #92]	; (2ff8 <PacketParser+0x140>)
    2f9a:	4293      	cmp	r3, r2
    2f9c:	d11b      	bne.n	2fd6 <PacketParser+0x11e>
    2f9e:	4b17      	ldr	r3, [pc, #92]	; (2ffc <PacketParser+0x144>)
    2fa0:	0018      	movs	r0, r3
    2fa2:	f001 f823 	bl	3fec <mdb_proc_adu>
    2fa6:	e016      	b.n	2fd6 <PacketParser+0x11e>
    2fa8:	4b0e      	ldr	r3, [pc, #56]	; (2fe4 <PacketParser+0x12c>)
    2faa:	8a9a      	ldrh	r2, [r3, #20]
    2fac:	2380      	movs	r3, #128	; 0x80
    2fae:	005b      	lsls	r3, r3, #1
    2fb0:	429a      	cmp	r2, r3
    2fb2:	d112      	bne.n	2fda <PacketParser+0x122>
    2fb4:	4b0b      	ldr	r3, [pc, #44]	; (2fe4 <PacketParser+0x12c>)
    2fb6:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    2fb8:	4b0c      	ldr	r3, [pc, #48]	; (2fec <PacketParser+0x134>)
    2fba:	881b      	ldrh	r3, [r3, #0]
    2fbc:	429a      	cmp	r2, r3
    2fbe:	d10c      	bne.n	2fda <PacketParser+0x122>
    2fc0:	4b08      	ldr	r3, [pc, #32]	; (2fe4 <PacketParser+0x12c>)
    2fc2:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    2fc4:	4b09      	ldr	r3, [pc, #36]	; (2fec <PacketParser+0x134>)
    2fc6:	885b      	ldrh	r3, [r3, #2]
    2fc8:	429a      	cmp	r2, r3
    2fca:	d106      	bne.n	2fda <PacketParser+0x122>
    2fcc:	f7ff fb2e 	bl	262c <Answear_ARP>
    2fd0:	e003      	b.n	2fda <PacketParser+0x122>
    2fd2:	46c0      	nop			; (mov r8, r8)
    2fd4:	e002      	b.n	2fdc <PacketParser+0x124>
    2fd6:	46c0      	nop			; (mov r8, r8)
    2fd8:	e000      	b.n	2fdc <PacketParser+0x124>
    2fda:	46c0      	nop			; (mov r8, r8)
    2fdc:	46c0      	nop			; (mov r8, r8)
    2fde:	46bd      	mov	sp, r7
    2fe0:	b002      	add	sp, #8
    2fe2:	bd80      	pop	{r7, pc}
    2fe4:	20004d40 	.word	0x20004d40
    2fe8:	20004d24 	.word	0x20004d24
    2fec:	2000000c 	.word	0x2000000c
    2ff0:	20004d3c 	.word	0x20004d3c
    2ff4:	20005320 	.word	0x20005320
    2ff8:	00001234 	.word	0x00001234
    2ffc:	20004d6a 	.word	0x20004d6a

00003000 <threadPacketParser>:
    3000:	b580      	push	{r7, lr}
    3002:	b086      	sub	sp, #24
    3004:	af00      	add	r7, sp, #0
    3006:	6078      	str	r0, [r7, #4]
    3008:	4b31      	ldr	r3, [pc, #196]	; (30d0 <threadPacketParser+0xd0>)
    300a:	0018      	movs	r0, r3
    300c:	f003 f90c 	bl	6228 <osMutexCreate>
    3010:	0002      	movs	r2, r0
    3012:	4b30      	ldr	r3, [pc, #192]	; (30d4 <threadPacketParser+0xd4>)
    3014:	601a      	str	r2, [r3, #0]
    3016:	4b30      	ldr	r3, [pc, #192]	; (30d8 <threadPacketParser+0xd8>)
    3018:	0018      	movs	r0, r3
    301a:	f003 f905 	bl	6228 <osMutexCreate>
    301e:	0002      	movs	r2, r0
    3020:	4b2e      	ldr	r3, [pc, #184]	; (30dc <threadPacketParser+0xdc>)
    3022:	601a      	str	r2, [r3, #0]
    3024:	230c      	movs	r3, #12
    3026:	18f8      	adds	r0, r7, r3
    3028:	23fa      	movs	r3, #250	; 0xfa
    302a:	005b      	lsls	r3, r3, #1
    302c:	001a      	movs	r2, r3
    302e:	2100      	movs	r1, #0
    3030:	f003 f86c 	bl	610c <osSignalWait>
    3034:	230c      	movs	r3, #12
    3036:	18fb      	adds	r3, r7, r3
    3038:	681b      	ldr	r3, [r3, #0]
    303a:	2b08      	cmp	r3, #8
    303c:	d120      	bne.n	3080 <threadPacketParser+0x80>
    303e:	230c      	movs	r3, #12
    3040:	18fb      	adds	r3, r7, r3
    3042:	685b      	ldr	r3, [r3, #4]
    3044:	2b01      	cmp	r3, #1
    3046:	d142      	bne.n	30ce <threadPacketParser+0xce>
    3048:	4b25      	ldr	r3, [pc, #148]	; (30e0 <threadPacketParser+0xe0>)
    304a:	4a25      	ldr	r2, [pc, #148]	; (30e0 <threadPacketParser+0xe0>)
    304c:	6812      	ldr	r2, [r2, #0]
    304e:	2180      	movs	r1, #128	; 0x80
    3050:	404a      	eors	r2, r1
    3052:	601a      	str	r2, [r3, #0]
    3054:	e00a      	b.n	306c <threadPacketParser+0x6c>
    3056:	4b23      	ldr	r3, [pc, #140]	; (30e4 <threadPacketParser+0xe4>)
    3058:	0018      	movs	r0, r3
    305a:	f7ff f8bd 	bl	21d8 <ReadPacket>
    305e:	0003      	movs	r3, r0
    3060:	b299      	uxth	r1, r3
    3062:	4b20      	ldr	r3, [pc, #128]	; (30e4 <threadPacketParser+0xe4>)
    3064:	4a20      	ldr	r2, [pc, #128]	; (30e8 <threadPacketParser+0xe8>)
    3066:	5299      	strh	r1, [r3, r2]
    3068:	f7ff ff26 	bl	2eb8 <PacketParser>
    306c:	23c0      	movs	r3, #192	; 0xc0
    306e:	059b      	lsls	r3, r3, #22
    3070:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    3072:	b29b      	uxth	r3, r3
    3074:	001a      	movs	r2, r3
    3076:	23e0      	movs	r3, #224	; 0xe0
    3078:	4013      	ands	r3, r2
    307a:	d1ec      	bne.n	3056 <threadPacketParser+0x56>
    307c:	46c0      	nop			; (mov r8, r8)
    307e:	e026      	b.n	30ce <threadPacketParser+0xce>
    3080:	230c      	movs	r3, #12
    3082:	18fb      	adds	r3, r7, r3
    3084:	681b      	ldr	r3, [r3, #0]
    3086:	2b40      	cmp	r3, #64	; 0x40
    3088:	d1cc      	bne.n	3024 <threadPacketParser+0x24>
    308a:	23c0      	movs	r3, #192	; 0xc0
    308c:	059b      	lsls	r3, r3, #22
    308e:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3090:	b29b      	uxth	r3, r3
    3092:	001a      	movs	r2, r3
    3094:	2302      	movs	r3, #2
    3096:	4013      	ands	r3, r2
    3098:	d104      	bne.n	30a4 <threadPacketParser+0xa4>
    309a:	4b14      	ldr	r3, [pc, #80]	; (30ec <threadPacketParser+0xec>)
    309c:	2280      	movs	r2, #128	; 0x80
    309e:	0212      	lsls	r2, r2, #8
    30a0:	621a      	str	r2, [r3, #32]
    30a2:	e003      	b.n	30ac <threadPacketParser+0xac>
    30a4:	4b11      	ldr	r3, [pc, #68]	; (30ec <threadPacketParser+0xec>)
    30a6:	2280      	movs	r2, #128	; 0x80
    30a8:	0212      	lsls	r2, r2, #8
    30aa:	625a      	str	r2, [r3, #36]	; 0x24
    30ac:	23c0      	movs	r3, #192	; 0xc0
    30ae:	059b      	lsls	r3, r3, #22
    30b0:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    30b2:	b29b      	uxth	r3, r3
    30b4:	001a      	movs	r2, r3
    30b6:	2308      	movs	r3, #8
    30b8:	4013      	ands	r3, r2
    30ba:	d104      	bne.n	30c6 <threadPacketParser+0xc6>
    30bc:	4b0b      	ldr	r3, [pc, #44]	; (30ec <threadPacketParser+0xec>)
    30be:	2280      	movs	r2, #128	; 0x80
    30c0:	01d2      	lsls	r2, r2, #7
    30c2:	621a      	str	r2, [r3, #32]
    30c4:	e7ae      	b.n	3024 <threadPacketParser+0x24>
    30c6:	4b09      	ldr	r3, [pc, #36]	; (30ec <threadPacketParser+0xec>)
    30c8:	2280      	movs	r2, #128	; 0x80
    30ca:	01d2      	lsls	r2, r2, #7
    30cc:	625a      	str	r2, [r3, #36]	; 0x24
    30ce:	e7a9      	b.n	3024 <threadPacketParser+0x24>
    30d0:	00008704 	.word	0x00008704
    30d4:	20005334 	.word	0x20005334
    30d8:	00008708 	.word	0x00008708
    30dc:	20005348 	.word	0x20005348
    30e0:	400c0000 	.word	0x400c0000
    30e4:	20004d40 	.word	0x20004d40
    30e8:	000005dc 	.word	0x000005dc
    30ec:	400b0000 	.word	0x400b0000

000030f0 <crc32>:
    30f0:	b580      	push	{r7, lr}
    30f2:	b084      	sub	sp, #16
    30f4:	af00      	add	r7, sp, #0
    30f6:	6078      	str	r0, [r7, #4]
    30f8:	6039      	str	r1, [r7, #0]
    30fa:	2301      	movs	r3, #1
    30fc:	425b      	negs	r3, r3
    30fe:	60bb      	str	r3, [r7, #8]
    3100:	2300      	movs	r3, #0
    3102:	60fb      	str	r3, [r7, #12]
    3104:	e012      	b.n	312c <crc32+0x3c>
    3106:	68bb      	ldr	r3, [r7, #8]
    3108:	0a1a      	lsrs	r2, r3, #8
    310a:	68fb      	ldr	r3, [r7, #12]
    310c:	6879      	ldr	r1, [r7, #4]
    310e:	18cb      	adds	r3, r1, r3
    3110:	781b      	ldrb	r3, [r3, #0]
    3112:	0019      	movs	r1, r3
    3114:	68bb      	ldr	r3, [r7, #8]
    3116:	404b      	eors	r3, r1
    3118:	21ff      	movs	r1, #255	; 0xff
    311a:	4019      	ands	r1, r3
    311c:	4b08      	ldr	r3, [pc, #32]	; (3140 <crc32+0x50>)
    311e:	0089      	lsls	r1, r1, #2
    3120:	58cb      	ldr	r3, [r1, r3]
    3122:	4053      	eors	r3, r2
    3124:	60bb      	str	r3, [r7, #8]
    3126:	68fb      	ldr	r3, [r7, #12]
    3128:	3301      	adds	r3, #1
    312a:	60fb      	str	r3, [r7, #12]
    312c:	68fa      	ldr	r2, [r7, #12]
    312e:	683b      	ldr	r3, [r7, #0]
    3130:	429a      	cmp	r2, r3
    3132:	d3e8      	bcc.n	3106 <crc32+0x16>
    3134:	68bb      	ldr	r3, [r7, #8]
    3136:	0018      	movs	r0, r3
    3138:	46bd      	mov	sp, r7
    313a:	b004      	add	sp, #16
    313c:	bd80      	pop	{r7, pc}
    313e:	46c0      	nop			; (mov r8, r8)
    3140:	0000870c 	.word	0x0000870c

00003144 <crc16>:
    3144:	b580      	push	{r7, lr}
    3146:	b086      	sub	sp, #24
    3148:	af00      	add	r7, sp, #0
    314a:	6078      	str	r0, [r7, #4]
    314c:	6039      	str	r1, [r7, #0]
    314e:	2317      	movs	r3, #23
    3150:	18fb      	adds	r3, r7, r3
    3152:	22ff      	movs	r2, #255	; 0xff
    3154:	701a      	strb	r2, [r3, #0]
    3156:	2316      	movs	r3, #22
    3158:	18fb      	adds	r3, r7, r3
    315a:	22ff      	movs	r2, #255	; 0xff
    315c:	701a      	strb	r2, [r3, #0]
    315e:	2300      	movs	r3, #0
    3160:	613b      	str	r3, [r7, #16]
    3162:	e01e      	b.n	31a2 <crc16+0x5e>
    3164:	693b      	ldr	r3, [r7, #16]
    3166:	687a      	ldr	r2, [r7, #4]
    3168:	18d3      	adds	r3, r2, r3
    316a:	781a      	ldrb	r2, [r3, #0]
    316c:	2317      	movs	r3, #23
    316e:	18fb      	adds	r3, r7, r3
    3170:	781b      	ldrb	r3, [r3, #0]
    3172:	4053      	eors	r3, r2
    3174:	b2db      	uxtb	r3, r3
    3176:	60fb      	str	r3, [r7, #12]
    3178:	4a14      	ldr	r2, [pc, #80]	; (31cc <crc16+0x88>)
    317a:	68fb      	ldr	r3, [r7, #12]
    317c:	18d3      	adds	r3, r2, r3
    317e:	7819      	ldrb	r1, [r3, #0]
    3180:	2317      	movs	r3, #23
    3182:	18fb      	adds	r3, r7, r3
    3184:	2216      	movs	r2, #22
    3186:	18ba      	adds	r2, r7, r2
    3188:	7812      	ldrb	r2, [r2, #0]
    318a:	404a      	eors	r2, r1
    318c:	701a      	strb	r2, [r3, #0]
    318e:	2316      	movs	r3, #22
    3190:	18fb      	adds	r3, r7, r3
    3192:	490f      	ldr	r1, [pc, #60]	; (31d0 <crc16+0x8c>)
    3194:	68fa      	ldr	r2, [r7, #12]
    3196:	188a      	adds	r2, r1, r2
    3198:	7812      	ldrb	r2, [r2, #0]
    319a:	701a      	strb	r2, [r3, #0]
    319c:	693b      	ldr	r3, [r7, #16]
    319e:	3301      	adds	r3, #1
    31a0:	613b      	str	r3, [r7, #16]
    31a2:	693a      	ldr	r2, [r7, #16]
    31a4:	683b      	ldr	r3, [r7, #0]
    31a6:	429a      	cmp	r2, r3
    31a8:	dbdc      	blt.n	3164 <crc16+0x20>
    31aa:	2316      	movs	r3, #22
    31ac:	18fb      	adds	r3, r7, r3
    31ae:	781b      	ldrb	r3, [r3, #0]
    31b0:	021b      	lsls	r3, r3, #8
    31b2:	b21a      	sxth	r2, r3
    31b4:	2317      	movs	r3, #23
    31b6:	18fb      	adds	r3, r7, r3
    31b8:	781b      	ldrb	r3, [r3, #0]
    31ba:	b21b      	sxth	r3, r3
    31bc:	4313      	orrs	r3, r2
    31be:	b21b      	sxth	r3, r3
    31c0:	b29b      	uxth	r3, r3
    31c2:	0018      	movs	r0, r3
    31c4:	46bd      	mov	sp, r7
    31c6:	b006      	add	sp, #24
    31c8:	bd80      	pop	{r7, pc}
    31ca:	46c0      	nop			; (mov r8, r8)
    31cc:	00008b0c 	.word	0x00008b0c
    31d0:	00008c0c 	.word	0x00008c0c

000031d4 <eeprom_on>:
    31d4:	b580      	push	{r7, lr}
    31d6:	af00      	add	r7, sp, #0
    31d8:	b672      	cpsid	i
    31da:	4b04      	ldr	r3, [pc, #16]	; (31ec <eeprom_on+0x18>)
    31dc:	4a03      	ldr	r2, [pc, #12]	; (31ec <eeprom_on+0x18>)
    31de:	69d2      	ldr	r2, [r2, #28]
    31e0:	2108      	movs	r1, #8
    31e2:	430a      	orrs	r2, r1
    31e4:	61da      	str	r2, [r3, #28]
    31e6:	46c0      	nop			; (mov r8, r8)
    31e8:	46bd      	mov	sp, r7
    31ea:	bd80      	pop	{r7, pc}
    31ec:	40020000 	.word	0x40020000

000031f0 <eeprom_off>:
    31f0:	b580      	push	{r7, lr}
    31f2:	af00      	add	r7, sp, #0
    31f4:	b662      	cpsie	i
    31f6:	4b04      	ldr	r3, [pc, #16]	; (3208 <eeprom_off+0x18>)
    31f8:	4a03      	ldr	r2, [pc, #12]	; (3208 <eeprom_off+0x18>)
    31fa:	69d2      	ldr	r2, [r2, #28]
    31fc:	2108      	movs	r1, #8
    31fe:	438a      	bics	r2, r1
    3200:	61da      	str	r2, [r3, #28]
    3202:	46c0      	nop			; (mov r8, r8)
    3204:	46bd      	mov	sp, r7
    3206:	bd80      	pop	{r7, pc}
    3208:	40020000 	.word	0x40020000

0000320c <par_default>:
    320c:	b580      	push	{r7, lr}
    320e:	af00      	add	r7, sp, #0
    3210:	4b13      	ldr	r3, [pc, #76]	; (3260 <par_default+0x54>)
    3212:	0018      	movs	r0, r3
    3214:	2314      	movs	r3, #20
    3216:	001a      	movs	r2, r3
    3218:	2100      	movs	r1, #0
    321a:	f001 fb97 	bl	494c <memset>
    321e:	4b10      	ldr	r3, [pc, #64]	; (3260 <par_default+0x54>)
    3220:	22bc      	movs	r2, #188	; 0xbc
    3222:	701a      	strb	r2, [r3, #0]
    3224:	4b0e      	ldr	r3, [pc, #56]	; (3260 <par_default+0x54>)
    3226:	229a      	movs	r2, #154	; 0x9a
    3228:	705a      	strb	r2, [r3, #1]
    322a:	4b0d      	ldr	r3, [pc, #52]	; (3260 <par_default+0x54>)
    322c:	2278      	movs	r2, #120	; 0x78
    322e:	709a      	strb	r2, [r3, #2]
    3230:	4b0b      	ldr	r3, [pc, #44]	; (3260 <par_default+0x54>)
    3232:	2256      	movs	r2, #86	; 0x56
    3234:	70da      	strb	r2, [r3, #3]
    3236:	4b0a      	ldr	r3, [pc, #40]	; (3260 <par_default+0x54>)
    3238:	2234      	movs	r2, #52	; 0x34
    323a:	711a      	strb	r2, [r3, #4]
    323c:	4b08      	ldr	r3, [pc, #32]	; (3260 <par_default+0x54>)
    323e:	2212      	movs	r2, #18
    3240:	715a      	strb	r2, [r3, #5]
    3242:	4b07      	ldr	r3, [pc, #28]	; (3260 <par_default+0x54>)
    3244:	2201      	movs	r2, #1
    3246:	719a      	strb	r2, [r3, #6]
    3248:	4b05      	ldr	r3, [pc, #20]	; (3260 <par_default+0x54>)
    324a:	220a      	movs	r2, #10
    324c:	725a      	strb	r2, [r3, #9]
    324e:	4b04      	ldr	r3, [pc, #16]	; (3260 <par_default+0x54>)
    3250:	2202      	movs	r2, #2
    3252:	729a      	strb	r2, [r3, #10]
    3254:	4b02      	ldr	r3, [pc, #8]	; (3260 <par_default+0x54>)
    3256:	220a      	movs	r2, #10
    3258:	735a      	strb	r2, [r3, #13]
    325a:	46c0      	nop			; (mov r8, r8)
    325c:	46bd      	mov	sp, r7
    325e:	bd80      	pop	{r7, pc}
    3260:	20005b68 	.word	0x20005b68

00003264 <par_save>:
    3264:	b580      	push	{r7, lr}
    3266:	b084      	sub	sp, #16
    3268:	af00      	add	r7, sp, #0
    326a:	f7ff ffb3 	bl	31d4 <eeprom_on>
    326e:	f005 f877 	bl	8360 <__eeprom_erase_page_veneer>
    3272:	1e03      	subs	r3, r0, #0
    3274:	d01b      	beq.n	32ae <par_save+0x4a>
    3276:	4b11      	ldr	r3, [pc, #68]	; (32bc <par_save+0x58>)
    3278:	60bb      	str	r3, [r7, #8]
    327a:	2305      	movs	r3, #5
    327c:	603b      	str	r3, [r7, #0]
    327e:	2300      	movs	r3, #0
    3280:	607b      	str	r3, [r7, #4]
    3282:	2300      	movs	r3, #0
    3284:	60fb      	str	r3, [r7, #12]
    3286:	e00e      	b.n	32a6 <par_save+0x42>
    3288:	68bb      	ldr	r3, [r7, #8]
    328a:	1d1a      	adds	r2, r3, #4
    328c:	60ba      	str	r2, [r7, #8]
    328e:	681a      	ldr	r2, [r3, #0]
    3290:	687b      	ldr	r3, [r7, #4]
    3292:	0011      	movs	r1, r2
    3294:	0018      	movs	r0, r3
    3296:	f005 f85b 	bl	8350 <__eeprom_program_word_veneer>
    329a:	687b      	ldr	r3, [r7, #4]
    329c:	3304      	adds	r3, #4
    329e:	607b      	str	r3, [r7, #4]
    32a0:	68fb      	ldr	r3, [r7, #12]
    32a2:	3301      	adds	r3, #1
    32a4:	60fb      	str	r3, [r7, #12]
    32a6:	68fa      	ldr	r2, [r7, #12]
    32a8:	683b      	ldr	r3, [r7, #0]
    32aa:	429a      	cmp	r2, r3
    32ac:	dbec      	blt.n	3288 <par_save+0x24>
    32ae:	f7ff ff9f 	bl	31f0 <eeprom_off>
    32b2:	46c0      	nop			; (mov r8, r8)
    32b4:	46bd      	mov	sp, r7
    32b6:	b004      	add	sp, #16
    32b8:	bd80      	pop	{r7, pc}
    32ba:	46c0      	nop			; (mov r8, r8)
    32bc:	20005b68 	.word	0x20005b68

000032c0 <par_verify>:
    32c0:	b590      	push	{r4, r7, lr}
    32c2:	b087      	sub	sp, #28
    32c4:	af00      	add	r7, sp, #0
    32c6:	2301      	movs	r3, #1
    32c8:	617b      	str	r3, [r7, #20]
    32ca:	f7ff ff83 	bl	31d4 <eeprom_on>
    32ce:	4b13      	ldr	r3, [pc, #76]	; (331c <par_verify+0x5c>)
    32d0:	60fb      	str	r3, [r7, #12]
    32d2:	2305      	movs	r3, #5
    32d4:	607b      	str	r3, [r7, #4]
    32d6:	2300      	movs	r3, #0
    32d8:	60bb      	str	r3, [r7, #8]
    32da:	2300      	movs	r3, #0
    32dc:	613b      	str	r3, [r7, #16]
    32de:	e012      	b.n	3306 <par_verify+0x46>
    32e0:	68fb      	ldr	r3, [r7, #12]
    32e2:	1d1a      	adds	r2, r3, #4
    32e4:	60fa      	str	r2, [r7, #12]
    32e6:	681c      	ldr	r4, [r3, #0]
    32e8:	68bb      	ldr	r3, [r7, #8]
    32ea:	0018      	movs	r0, r3
    32ec:	f005 f840 	bl	8370 <__eeprom_read_word_veneer>
    32f0:	0003      	movs	r3, r0
    32f2:	429c      	cmp	r4, r3
    32f4:	d001      	beq.n	32fa <par_verify+0x3a>
    32f6:	2300      	movs	r3, #0
    32f8:	617b      	str	r3, [r7, #20]
    32fa:	68bb      	ldr	r3, [r7, #8]
    32fc:	3304      	adds	r3, #4
    32fe:	60bb      	str	r3, [r7, #8]
    3300:	693b      	ldr	r3, [r7, #16]
    3302:	3301      	adds	r3, #1
    3304:	613b      	str	r3, [r7, #16]
    3306:	693a      	ldr	r2, [r7, #16]
    3308:	687b      	ldr	r3, [r7, #4]
    330a:	429a      	cmp	r2, r3
    330c:	dbe8      	blt.n	32e0 <par_verify+0x20>
    330e:	f7ff ff6f 	bl	31f0 <eeprom_off>
    3312:	697b      	ldr	r3, [r7, #20]
    3314:	0018      	movs	r0, r3
    3316:	46bd      	mov	sp, r7
    3318:	b007      	add	sp, #28
    331a:	bd90      	pop	{r4, r7, pc}
    331c:	20005b68 	.word	0x20005b68

00003320 <par_read>:
    3320:	b590      	push	{r4, r7, lr}
    3322:	b085      	sub	sp, #20
    3324:	af00      	add	r7, sp, #0
    3326:	f7ff ff55 	bl	31d4 <eeprom_on>
    332a:	4b16      	ldr	r3, [pc, #88]	; (3384 <par_read+0x64>)
    332c:	60bb      	str	r3, [r7, #8]
    332e:	2305      	movs	r3, #5
    3330:	603b      	str	r3, [r7, #0]
    3332:	2300      	movs	r3, #0
    3334:	607b      	str	r3, [r7, #4]
    3336:	2300      	movs	r3, #0
    3338:	60fb      	str	r3, [r7, #12]
    333a:	e00e      	b.n	335a <par_read+0x3a>
    333c:	68bc      	ldr	r4, [r7, #8]
    333e:	1d23      	adds	r3, r4, #4
    3340:	60bb      	str	r3, [r7, #8]
    3342:	687b      	ldr	r3, [r7, #4]
    3344:	0018      	movs	r0, r3
    3346:	f005 f813 	bl	8370 <__eeprom_read_word_veneer>
    334a:	0003      	movs	r3, r0
    334c:	6023      	str	r3, [r4, #0]
    334e:	687b      	ldr	r3, [r7, #4]
    3350:	3304      	adds	r3, #4
    3352:	607b      	str	r3, [r7, #4]
    3354:	68fb      	ldr	r3, [r7, #12]
    3356:	3301      	adds	r3, #1
    3358:	60fb      	str	r3, [r7, #12]
    335a:	68fa      	ldr	r2, [r7, #12]
    335c:	683b      	ldr	r3, [r7, #0]
    335e:	429a      	cmp	r2, r3
    3360:	dbec      	blt.n	333c <par_read+0x1c>
    3362:	f7ff ff45 	bl	31f0 <eeprom_off>
    3366:	4b07      	ldr	r3, [pc, #28]	; (3384 <par_read+0x64>)
    3368:	2114      	movs	r1, #20
    336a:	0018      	movs	r0, r3
    336c:	f7ff fec0 	bl	30f0 <crc32>
    3370:	1e03      	subs	r3, r0, #0
    3372:	d001      	beq.n	3378 <par_read+0x58>
    3374:	2300      	movs	r3, #0
    3376:	e000      	b.n	337a <par_read+0x5a>
    3378:	2301      	movs	r3, #1
    337a:	0018      	movs	r0, r3
    337c:	46bd      	mov	sp, r7
    337e:	b005      	add	sp, #20
    3380:	bd90      	pop	{r4, r7, pc}
    3382:	46c0      	nop			; (mov r8, r8)
    3384:	20005b68 	.word	0x20005b68

00003388 <par_update>:
    3388:	b580      	push	{r7, lr}
    338a:	b088      	sub	sp, #32
    338c:	af00      	add	r7, sp, #0
    338e:	6078      	str	r0, [r7, #4]
    3390:	687b      	ldr	r3, [r7, #4]
    3392:	1c5a      	adds	r2, r3, #1
    3394:	607a      	str	r2, [r7, #4]
    3396:	781b      	ldrb	r3, [r3, #0]
    3398:	617b      	str	r3, [r7, #20]
    339a:	687b      	ldr	r3, [r7, #4]
    339c:	1c5a      	adds	r2, r3, #1
    339e:	607a      	str	r2, [r7, #4]
    33a0:	781b      	ldrb	r3, [r3, #0]
    33a2:	613b      	str	r3, [r7, #16]
    33a4:	687b      	ldr	r3, [r7, #4]
    33a6:	1c5a      	adds	r2, r3, #1
    33a8:	607a      	str	r2, [r7, #4]
    33aa:	781b      	ldrb	r3, [r3, #0]
    33ac:	60fb      	str	r3, [r7, #12]
    33ae:	687b      	ldr	r3, [r7, #4]
    33b0:	1c5a      	adds	r2, r3, #1
    33b2:	607a      	str	r2, [r7, #4]
    33b4:	781b      	ldrb	r3, [r3, #0]
    33b6:	021b      	lsls	r3, r3, #8
    33b8:	001a      	movs	r2, r3
    33ba:	68fb      	ldr	r3, [r7, #12]
    33bc:	189b      	adds	r3, r3, r2
    33be:	60fb      	str	r3, [r7, #12]
    33c0:	68fb      	ldr	r3, [r7, #12]
    33c2:	2201      	movs	r2, #1
    33c4:	4013      	ands	r3, r2
    33c6:	60bb      	str	r3, [r7, #8]
    33c8:	697a      	ldr	r2, [r7, #20]
    33ca:	693b      	ldr	r3, [r7, #16]
    33cc:	18d3      	adds	r3, r2, r3
    33ce:	2b14      	cmp	r3, #20
    33d0:	d82c      	bhi.n	342c <par_update+0xa4>
    33d2:	68bb      	ldr	r3, [r7, #8]
    33d4:	2b00      	cmp	r3, #0
    33d6:	d126      	bne.n	3426 <par_update+0x9e>
    33d8:	697a      	ldr	r2, [r7, #20]
    33da:	4b16      	ldr	r3, [pc, #88]	; (3434 <par_update+0xac>)
    33dc:	18d3      	adds	r3, r2, r3
    33de:	61bb      	str	r3, [r7, #24]
    33e0:	2300      	movs	r3, #0
    33e2:	61fb      	str	r3, [r7, #28]
    33e4:	e00a      	b.n	33fc <par_update+0x74>
    33e6:	69bb      	ldr	r3, [r7, #24]
    33e8:	1c5a      	adds	r2, r3, #1
    33ea:	61ba      	str	r2, [r7, #24]
    33ec:	687a      	ldr	r2, [r7, #4]
    33ee:	1c51      	adds	r1, r2, #1
    33f0:	6079      	str	r1, [r7, #4]
    33f2:	7812      	ldrb	r2, [r2, #0]
    33f4:	701a      	strb	r2, [r3, #0]
    33f6:	69fb      	ldr	r3, [r7, #28]
    33f8:	3301      	adds	r3, #1
    33fa:	61fb      	str	r3, [r7, #28]
    33fc:	69fa      	ldr	r2, [r7, #28]
    33fe:	693b      	ldr	r3, [r7, #16]
    3400:	429a      	cmp	r2, r3
    3402:	d3f0      	bcc.n	33e6 <par_update+0x5e>
    3404:	4b0b      	ldr	r3, [pc, #44]	; (3434 <par_update+0xac>)
    3406:	2110      	movs	r1, #16
    3408:	0018      	movs	r0, r3
    340a:	f7ff fe71 	bl	30f0 <crc32>
    340e:	0002      	movs	r2, r0
    3410:	4b08      	ldr	r3, [pc, #32]	; (3434 <par_update+0xac>)
    3412:	611a      	str	r2, [r3, #16]
    3414:	f7ff ff26 	bl	3264 <par_save>
    3418:	f7ff ff52 	bl	32c0 <par_verify>
    341c:	1e03      	subs	r3, r0, #0
    341e:	d106      	bne.n	342e <par_update+0xa6>
    3420:	f7ff fef4 	bl	320c <par_default>
    3424:	e003      	b.n	342e <par_update+0xa6>
    3426:	f7ff ff7b 	bl	3320 <par_read>
    342a:	e000      	b.n	342e <par_update+0xa6>
    342c:	46c0      	nop			; (mov r8, r8)
    342e:	46bd      	mov	sp, r7
    3430:	b008      	add	sp, #32
    3432:	bd80      	pop	{r7, pc}
    3434:	20005b68 	.word	0x20005b68

00003438 <par_mac>:
    3438:	b580      	push	{r7, lr}
    343a:	b084      	sub	sp, #16
    343c:	af00      	add	r7, sp, #0
    343e:	6078      	str	r0, [r7, #4]
    3440:	4b0b      	ldr	r3, [pc, #44]	; (3470 <par_mac+0x38>)
    3442:	60fb      	str	r3, [r7, #12]
    3444:	2300      	movs	r3, #0
    3446:	60bb      	str	r3, [r7, #8]
    3448:	e00a      	b.n	3460 <par_mac+0x28>
    344a:	687b      	ldr	r3, [r7, #4]
    344c:	1c5a      	adds	r2, r3, #1
    344e:	607a      	str	r2, [r7, #4]
    3450:	68fa      	ldr	r2, [r7, #12]
    3452:	1e51      	subs	r1, r2, #1
    3454:	60f9      	str	r1, [r7, #12]
    3456:	7812      	ldrb	r2, [r2, #0]
    3458:	701a      	strb	r2, [r3, #0]
    345a:	68bb      	ldr	r3, [r7, #8]
    345c:	3301      	adds	r3, #1
    345e:	60bb      	str	r3, [r7, #8]
    3460:	68bb      	ldr	r3, [r7, #8]
    3462:	2b05      	cmp	r3, #5
    3464:	ddf1      	ble.n	344a <par_mac+0x12>
    3466:	46c0      	nop			; (mov r8, r8)
    3468:	46bd      	mov	sp, r7
    346a:	b004      	add	sp, #16
    346c:	bd80      	pop	{r7, pc}
    346e:	46c0      	nop			; (mov r8, r8)
    3470:	20005b6d 	.word	0x20005b6d

00003474 <par_iploc>:
    3474:	b580      	push	{r7, lr}
    3476:	b084      	sub	sp, #16
    3478:	af00      	add	r7, sp, #0
    347a:	6078      	str	r0, [r7, #4]
    347c:	4b0b      	ldr	r3, [pc, #44]	; (34ac <par_iploc+0x38>)
    347e:	60fb      	str	r3, [r7, #12]
    3480:	2300      	movs	r3, #0
    3482:	60bb      	str	r3, [r7, #8]
    3484:	e00a      	b.n	349c <par_iploc+0x28>
    3486:	687b      	ldr	r3, [r7, #4]
    3488:	1c5a      	adds	r2, r3, #1
    348a:	607a      	str	r2, [r7, #4]
    348c:	68fa      	ldr	r2, [r7, #12]
    348e:	1e51      	subs	r1, r2, #1
    3490:	60f9      	str	r1, [r7, #12]
    3492:	7812      	ldrb	r2, [r2, #0]
    3494:	701a      	strb	r2, [r3, #0]
    3496:	68bb      	ldr	r3, [r7, #8]
    3498:	3301      	adds	r3, #1
    349a:	60bb      	str	r3, [r7, #8]
    349c:	68bb      	ldr	r3, [r7, #8]
    349e:	2b03      	cmp	r3, #3
    34a0:	ddf1      	ble.n	3486 <par_iploc+0x12>
    34a2:	46c0      	nop			; (mov r8, r8)
    34a4:	46bd      	mov	sp, r7
    34a6:	b004      	add	sp, #16
    34a8:	bd80      	pop	{r7, pc}
    34aa:	46c0      	nop			; (mov r8, r8)
    34ac:	20005b71 	.word	0x20005b71

000034b0 <par_iprem>:
    34b0:	b580      	push	{r7, lr}
    34b2:	b084      	sub	sp, #16
    34b4:	af00      	add	r7, sp, #0
    34b6:	6078      	str	r0, [r7, #4]
    34b8:	4b0b      	ldr	r3, [pc, #44]	; (34e8 <par_iprem+0x38>)
    34ba:	60fb      	str	r3, [r7, #12]
    34bc:	2300      	movs	r3, #0
    34be:	60bb      	str	r3, [r7, #8]
    34c0:	e00a      	b.n	34d8 <par_iprem+0x28>
    34c2:	687b      	ldr	r3, [r7, #4]
    34c4:	1c5a      	adds	r2, r3, #1
    34c6:	607a      	str	r2, [r7, #4]
    34c8:	68fa      	ldr	r2, [r7, #12]
    34ca:	1e51      	subs	r1, r2, #1
    34cc:	60f9      	str	r1, [r7, #12]
    34ce:	7812      	ldrb	r2, [r2, #0]
    34d0:	701a      	strb	r2, [r3, #0]
    34d2:	68bb      	ldr	r3, [r7, #8]
    34d4:	3301      	adds	r3, #1
    34d6:	60bb      	str	r3, [r7, #8]
    34d8:	68bb      	ldr	r3, [r7, #8]
    34da:	2b03      	cmp	r3, #3
    34dc:	ddf1      	ble.n	34c2 <par_iprem+0x12>
    34de:	46c0      	nop			; (mov r8, r8)
    34e0:	46bd      	mov	sp, r7
    34e2:	b004      	add	sp, #16
    34e4:	bd80      	pop	{r7, pc}
    34e6:	46c0      	nop			; (mov r8, r8)
    34e8:	20005b75 	.word	0x20005b75

000034ec <mdb_fifo_read>:
    34ec:	b580      	push	{r7, lr}
    34ee:	b086      	sub	sp, #24
    34f0:	af00      	add	r7, sp, #0
    34f2:	6078      	str	r0, [r7, #4]
    34f4:	6039      	str	r1, [r7, #0]
    34f6:	4b1f      	ldr	r3, [pc, #124]	; (3574 <mdb_fifo_read+0x88>)
    34f8:	681a      	ldr	r2, [r3, #0]
    34fa:	2301      	movs	r3, #1
    34fc:	425b      	negs	r3, r3
    34fe:	0019      	movs	r1, r3
    3500:	0010      	movs	r0, r2
    3502:	f002 feb7 	bl	6274 <osMutexWait>
    3506:	4b1c      	ldr	r3, [pc, #112]	; (3578 <mdb_fifo_read+0x8c>)
    3508:	681a      	ldr	r2, [r3, #0]
    350a:	4b1c      	ldr	r3, [pc, #112]	; (357c <mdb_fifo_read+0x90>)
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
    3520:	683a      	ldr	r2, [r7, #0]
    3522:	693b      	ldr	r3, [r7, #16]
    3524:	429a      	cmp	r2, r3
    3526:	d819      	bhi.n	355c <mdb_fifo_read+0x70>
    3528:	2300      	movs	r3, #0
    352a:	617b      	str	r3, [r7, #20]
    352c:	e011      	b.n	3552 <mdb_fifo_read+0x66>
    352e:	687b      	ldr	r3, [r7, #4]
    3530:	1c5a      	adds	r2, r3, #1
    3532:	607a      	str	r2, [r7, #4]
    3534:	4a11      	ldr	r2, [pc, #68]	; (357c <mdb_fifo_read+0x90>)
    3536:	6812      	ldr	r2, [r2, #0]
    3538:	4911      	ldr	r1, [pc, #68]	; (3580 <mdb_fifo_read+0x94>)
    353a:	5c8a      	ldrb	r2, [r1, r2]
    353c:	701a      	strb	r2, [r3, #0]
    353e:	4b0f      	ldr	r3, [pc, #60]	; (357c <mdb_fifo_read+0x90>)
    3540:	681b      	ldr	r3, [r3, #0]
    3542:	3301      	adds	r3, #1
    3544:	05db      	lsls	r3, r3, #23
    3546:	0dda      	lsrs	r2, r3, #23
    3548:	4b0c      	ldr	r3, [pc, #48]	; (357c <mdb_fifo_read+0x90>)
    354a:	601a      	str	r2, [r3, #0]
    354c:	697b      	ldr	r3, [r7, #20]
    354e:	3301      	adds	r3, #1
    3550:	617b      	str	r3, [r7, #20]
    3552:	697a      	ldr	r2, [r7, #20]
    3554:	683b      	ldr	r3, [r7, #0]
    3556:	429a      	cmp	r2, r3
    3558:	dbe9      	blt.n	352e <mdb_fifo_read+0x42>
    355a:	e001      	b.n	3560 <mdb_fifo_read+0x74>
    355c:	2300      	movs	r3, #0
    355e:	603b      	str	r3, [r7, #0]
    3560:	4b04      	ldr	r3, [pc, #16]	; (3574 <mdb_fifo_read+0x88>)
    3562:	681b      	ldr	r3, [r3, #0]
    3564:	0018      	movs	r0, r3
    3566:	f002 fe95 	bl	6294 <osMutexRelease>
    356a:	683b      	ldr	r3, [r7, #0]
    356c:	0018      	movs	r0, r3
    356e:	46bd      	mov	sp, r7
    3570:	b006      	add	sp, #24
    3572:	bd80      	pop	{r7, pc}
    3574:	20000888 	.word	0x20000888
    3578:	20005d7c 	.word	0x20005d7c
    357c:	20005d80 	.word	0x20005d80
    3580:	20005b7c 	.word	0x20005b7c

00003584 <mdb_fifo_write>:
    3584:	b580      	push	{r7, lr}
    3586:	b086      	sub	sp, #24
    3588:	af00      	add	r7, sp, #0
    358a:	6078      	str	r0, [r7, #4]
    358c:	6039      	str	r1, [r7, #0]
    358e:	4b1c      	ldr	r3, [pc, #112]	; (3600 <mdb_fifo_write+0x7c>)
    3590:	681a      	ldr	r2, [r3, #0]
    3592:	2301      	movs	r3, #1
    3594:	425b      	negs	r3, r3
    3596:	0019      	movs	r1, r3
    3598:	0010      	movs	r0, r2
    359a:	f002 fe6b 	bl	6274 <osMutexWait>
    359e:	4b19      	ldr	r3, [pc, #100]	; (3604 <mdb_fifo_write+0x80>)
    35a0:	681a      	ldr	r2, [r3, #0]
    35a2:	4b19      	ldr	r3, [pc, #100]	; (3608 <mdb_fifo_write+0x84>)
    35a4:	681b      	ldr	r3, [r3, #0]
    35a6:	1ad3      	subs	r3, r2, r3
    35a8:	05db      	lsls	r3, r3, #23
    35aa:	0ddb      	lsrs	r3, r3, #23
    35ac:	613b      	str	r3, [r7, #16]
    35ae:	693b      	ldr	r3, [r7, #16]
    35b0:	2280      	movs	r2, #128	; 0x80
    35b2:	0092      	lsls	r2, r2, #2
    35b4:	1ad3      	subs	r3, r2, r3
    35b6:	60fb      	str	r3, [r7, #12]
    35b8:	2300      	movs	r3, #0
    35ba:	617b      	str	r3, [r7, #20]
    35bc:	e011      	b.n	35e2 <mdb_fifo_write+0x5e>
    35be:	4b11      	ldr	r3, [pc, #68]	; (3604 <mdb_fifo_write+0x80>)
    35c0:	681a      	ldr	r2, [r3, #0]
    35c2:	687b      	ldr	r3, [r7, #4]
    35c4:	1c59      	adds	r1, r3, #1
    35c6:	6079      	str	r1, [r7, #4]
    35c8:	7819      	ldrb	r1, [r3, #0]
    35ca:	4b10      	ldr	r3, [pc, #64]	; (360c <mdb_fifo_write+0x88>)
    35cc:	5499      	strb	r1, [r3, r2]
    35ce:	4b0d      	ldr	r3, [pc, #52]	; (3604 <mdb_fifo_write+0x80>)
    35d0:	681b      	ldr	r3, [r3, #0]
    35d2:	3301      	adds	r3, #1
    35d4:	05db      	lsls	r3, r3, #23
    35d6:	0dda      	lsrs	r2, r3, #23
    35d8:	4b0a      	ldr	r3, [pc, #40]	; (3604 <mdb_fifo_write+0x80>)
    35da:	601a      	str	r2, [r3, #0]
    35dc:	697b      	ldr	r3, [r7, #20]
    35de:	3301      	adds	r3, #1
    35e0:	617b      	str	r3, [r7, #20]
    35e2:	697a      	ldr	r2, [r7, #20]
    35e4:	683b      	ldr	r3, [r7, #0]
    35e6:	429a      	cmp	r2, r3
    35e8:	dbe9      	blt.n	35be <mdb_fifo_write+0x3a>
    35ea:	4b05      	ldr	r3, [pc, #20]	; (3600 <mdb_fifo_write+0x7c>)
    35ec:	681b      	ldr	r3, [r3, #0]
    35ee:	0018      	movs	r0, r3
    35f0:	f002 fe50 	bl	6294 <osMutexRelease>
    35f4:	683b      	ldr	r3, [r7, #0]
    35f6:	0018      	movs	r0, r3
    35f8:	46bd      	mov	sp, r7
    35fa:	b006      	add	sp, #24
    35fc:	bd80      	pop	{r7, pc}
    35fe:	46c0      	nop			; (mov r8, r8)
    3600:	20000888 	.word	0x20000888
    3604:	20005d7c 	.word	0x20005d7c
    3608:	20005d80 	.word	0x20005d80
    360c:	20005b7c 	.word	0x20005b7c

00003610 <mdb_get_testparam>:
    3610:	b5b0      	push	{r4, r5, r7, lr}
    3612:	b086      	sub	sp, #24
    3614:	af00      	add	r7, sp, #0
    3616:	6078      	str	r0, [r7, #4]
    3618:	4b84      	ldr	r3, [pc, #528]	; (382c <mdb_get_testparam+0x21c>)
    361a:	885b      	ldrh	r3, [r3, #2]
    361c:	041b      	lsls	r3, r3, #16
    361e:	4a83      	ldr	r2, [pc, #524]	; (382c <mdb_get_testparam+0x21c>)
    3620:	8892      	ldrh	r2, [r2, #4]
    3622:	4313      	orrs	r3, r2
    3624:	001a      	movs	r2, r3
    3626:	687b      	ldr	r3, [r7, #4]
    3628:	21ff      	movs	r1, #255	; 0xff
    362a:	4011      	ands	r1, r2
    362c:	000c      	movs	r4, r1
    362e:	7819      	ldrb	r1, [r3, #0]
    3630:	2000      	movs	r0, #0
    3632:	4001      	ands	r1, r0
    3634:	1c08      	adds	r0, r1, #0
    3636:	1c21      	adds	r1, r4, #0
    3638:	4301      	orrs	r1, r0
    363a:	7019      	strb	r1, [r3, #0]
    363c:	0a11      	lsrs	r1, r2, #8
    363e:	20ff      	movs	r0, #255	; 0xff
    3640:	4001      	ands	r1, r0
    3642:	000c      	movs	r4, r1
    3644:	7859      	ldrb	r1, [r3, #1]
    3646:	2000      	movs	r0, #0
    3648:	4001      	ands	r1, r0
    364a:	1c08      	adds	r0, r1, #0
    364c:	1c21      	adds	r1, r4, #0
    364e:	4301      	orrs	r1, r0
    3650:	7059      	strb	r1, [r3, #1]
    3652:	0c11      	lsrs	r1, r2, #16
    3654:	20ff      	movs	r0, #255	; 0xff
    3656:	4001      	ands	r1, r0
    3658:	000c      	movs	r4, r1
    365a:	7899      	ldrb	r1, [r3, #2]
    365c:	2000      	movs	r0, #0
    365e:	4001      	ands	r1, r0
    3660:	1c08      	adds	r0, r1, #0
    3662:	1c21      	adds	r1, r4, #0
    3664:	4301      	orrs	r1, r0
    3666:	7099      	strb	r1, [r3, #2]
    3668:	0e10      	lsrs	r0, r2, #24
    366a:	78da      	ldrb	r2, [r3, #3]
    366c:	2100      	movs	r1, #0
    366e:	400a      	ands	r2, r1
    3670:	1c11      	adds	r1, r2, #0
    3672:	1c02      	adds	r2, r0, #0
    3674:	430a      	orrs	r2, r1
    3676:	70da      	strb	r2, [r3, #3]
    3678:	4b6c      	ldr	r3, [pc, #432]	; (382c <mdb_get_testparam+0x21c>)
    367a:	88db      	ldrh	r3, [r3, #6]
    367c:	041b      	lsls	r3, r3, #16
    367e:	4a6b      	ldr	r2, [pc, #428]	; (382c <mdb_get_testparam+0x21c>)
    3680:	8912      	ldrh	r2, [r2, #8]
    3682:	4313      	orrs	r3, r2
    3684:	001a      	movs	r2, r3
    3686:	687b      	ldr	r3, [r7, #4]
    3688:	21ff      	movs	r1, #255	; 0xff
    368a:	4011      	ands	r1, r2
    368c:	000c      	movs	r4, r1
    368e:	7919      	ldrb	r1, [r3, #4]
    3690:	2000      	movs	r0, #0
    3692:	4001      	ands	r1, r0
    3694:	1c08      	adds	r0, r1, #0
    3696:	1c21      	adds	r1, r4, #0
    3698:	4301      	orrs	r1, r0
    369a:	7119      	strb	r1, [r3, #4]
    369c:	0a11      	lsrs	r1, r2, #8
    369e:	20ff      	movs	r0, #255	; 0xff
    36a0:	4001      	ands	r1, r0
    36a2:	000c      	movs	r4, r1
    36a4:	7959      	ldrb	r1, [r3, #5]
    36a6:	2000      	movs	r0, #0
    36a8:	4001      	ands	r1, r0
    36aa:	1c08      	adds	r0, r1, #0
    36ac:	1c21      	adds	r1, r4, #0
    36ae:	4301      	orrs	r1, r0
    36b0:	7159      	strb	r1, [r3, #5]
    36b2:	0c11      	lsrs	r1, r2, #16
    36b4:	20ff      	movs	r0, #255	; 0xff
    36b6:	4001      	ands	r1, r0
    36b8:	000c      	movs	r4, r1
    36ba:	7999      	ldrb	r1, [r3, #6]
    36bc:	2000      	movs	r0, #0
    36be:	4001      	ands	r1, r0
    36c0:	1c08      	adds	r0, r1, #0
    36c2:	1c21      	adds	r1, r4, #0
    36c4:	4301      	orrs	r1, r0
    36c6:	7199      	strb	r1, [r3, #6]
    36c8:	0e10      	lsrs	r0, r2, #24
    36ca:	79da      	ldrb	r2, [r3, #7]
    36cc:	2100      	movs	r1, #0
    36ce:	400a      	ands	r2, r1
    36d0:	1c11      	adds	r1, r2, #0
    36d2:	1c02      	adds	r2, r0, #0
    36d4:	430a      	orrs	r2, r1
    36d6:	71da      	strb	r2, [r3, #7]
    36d8:	4b54      	ldr	r3, [pc, #336]	; (382c <mdb_get_testparam+0x21c>)
    36da:	895b      	ldrh	r3, [r3, #10]
    36dc:	041b      	lsls	r3, r3, #16
    36de:	4a53      	ldr	r2, [pc, #332]	; (382c <mdb_get_testparam+0x21c>)
    36e0:	8992      	ldrh	r2, [r2, #12]
    36e2:	4313      	orrs	r3, r2
    36e4:	001a      	movs	r2, r3
    36e6:	687b      	ldr	r3, [r7, #4]
    36e8:	21ff      	movs	r1, #255	; 0xff
    36ea:	4011      	ands	r1, r2
    36ec:	000c      	movs	r4, r1
    36ee:	7a19      	ldrb	r1, [r3, #8]
    36f0:	2000      	movs	r0, #0
    36f2:	4001      	ands	r1, r0
    36f4:	1c08      	adds	r0, r1, #0
    36f6:	1c21      	adds	r1, r4, #0
    36f8:	4301      	orrs	r1, r0
    36fa:	7219      	strb	r1, [r3, #8]
    36fc:	0a11      	lsrs	r1, r2, #8
    36fe:	20ff      	movs	r0, #255	; 0xff
    3700:	4001      	ands	r1, r0
    3702:	000c      	movs	r4, r1
    3704:	7a59      	ldrb	r1, [r3, #9]
    3706:	2000      	movs	r0, #0
    3708:	4001      	ands	r1, r0
    370a:	1c08      	adds	r0, r1, #0
    370c:	1c21      	adds	r1, r4, #0
    370e:	4301      	orrs	r1, r0
    3710:	7259      	strb	r1, [r3, #9]
    3712:	0c11      	lsrs	r1, r2, #16
    3714:	20ff      	movs	r0, #255	; 0xff
    3716:	4001      	ands	r1, r0
    3718:	000c      	movs	r4, r1
    371a:	7a99      	ldrb	r1, [r3, #10]
    371c:	2000      	movs	r0, #0
    371e:	4001      	ands	r1, r0
    3720:	1c08      	adds	r0, r1, #0
    3722:	1c21      	adds	r1, r4, #0
    3724:	4301      	orrs	r1, r0
    3726:	7299      	strb	r1, [r3, #10]
    3728:	0e10      	lsrs	r0, r2, #24
    372a:	7ada      	ldrb	r2, [r3, #11]
    372c:	2100      	movs	r1, #0
    372e:	400a      	ands	r2, r1
    3730:	1c11      	adds	r1, r2, #0
    3732:	1c02      	adds	r2, r0, #0
    3734:	430a      	orrs	r2, r1
    3736:	72da      	strb	r2, [r3, #11]
    3738:	4b3c      	ldr	r3, [pc, #240]	; (382c <mdb_get_testparam+0x21c>)
    373a:	89db      	ldrh	r3, [r3, #14]
    373c:	041b      	lsls	r3, r3, #16
    373e:	4a3b      	ldr	r2, [pc, #236]	; (382c <mdb_get_testparam+0x21c>)
    3740:	8a12      	ldrh	r2, [r2, #16]
    3742:	4313      	orrs	r3, r2
    3744:	001a      	movs	r2, r3
    3746:	687b      	ldr	r3, [r7, #4]
    3748:	21ff      	movs	r1, #255	; 0xff
    374a:	4011      	ands	r1, r2
    374c:	000c      	movs	r4, r1
    374e:	7b19      	ldrb	r1, [r3, #12]
    3750:	2000      	movs	r0, #0
    3752:	4001      	ands	r1, r0
    3754:	1c08      	adds	r0, r1, #0
    3756:	1c21      	adds	r1, r4, #0
    3758:	4301      	orrs	r1, r0
    375a:	7319      	strb	r1, [r3, #12]
    375c:	0a11      	lsrs	r1, r2, #8
    375e:	20ff      	movs	r0, #255	; 0xff
    3760:	4001      	ands	r1, r0
    3762:	000c      	movs	r4, r1
    3764:	7b59      	ldrb	r1, [r3, #13]
    3766:	2000      	movs	r0, #0
    3768:	4001      	ands	r1, r0
    376a:	1c08      	adds	r0, r1, #0
    376c:	1c21      	adds	r1, r4, #0
    376e:	4301      	orrs	r1, r0
    3770:	7359      	strb	r1, [r3, #13]
    3772:	0c11      	lsrs	r1, r2, #16
    3774:	20ff      	movs	r0, #255	; 0xff
    3776:	4001      	ands	r1, r0
    3778:	000c      	movs	r4, r1
    377a:	7b99      	ldrb	r1, [r3, #14]
    377c:	2000      	movs	r0, #0
    377e:	4001      	ands	r1, r0
    3780:	1c08      	adds	r0, r1, #0
    3782:	1c21      	adds	r1, r4, #0
    3784:	4301      	orrs	r1, r0
    3786:	7399      	strb	r1, [r3, #14]
    3788:	0e10      	lsrs	r0, r2, #24
    378a:	7bda      	ldrb	r2, [r3, #15]
    378c:	2100      	movs	r1, #0
    378e:	400a      	ands	r2, r1
    3790:	1c11      	adds	r1, r2, #0
    3792:	1c02      	adds	r2, r0, #0
    3794:	430a      	orrs	r2, r1
    3796:	73da      	strb	r2, [r3, #15]
    3798:	4b25      	ldr	r3, [pc, #148]	; (3830 <mdb_get_testparam+0x220>)
    379a:	613b      	str	r3, [r7, #16]
    379c:	4b25      	ldr	r3, [pc, #148]	; (3834 <mdb_get_testparam+0x224>)
    379e:	60fb      	str	r3, [r7, #12]
    37a0:	2300      	movs	r3, #0
    37a2:	617b      	str	r3, [r7, #20]
    37a4:	e03a      	b.n	381c <mdb_get_testparam+0x20c>
    37a6:	693b      	ldr	r3, [r7, #16]
    37a8:	1c9a      	adds	r2, r3, #2
    37aa:	613a      	str	r2, [r7, #16]
    37ac:	8819      	ldrh	r1, [r3, #0]
    37ae:	687a      	ldr	r2, [r7, #4]
    37b0:	697b      	ldr	r3, [r7, #20]
    37b2:	3308      	adds	r3, #8
    37b4:	005b      	lsls	r3, r3, #1
    37b6:	20ff      	movs	r0, #255	; 0xff
    37b8:	4008      	ands	r0, r1
    37ba:	0005      	movs	r5, r0
    37bc:	5c98      	ldrb	r0, [r3, r2]
    37be:	2400      	movs	r4, #0
    37c0:	4020      	ands	r0, r4
    37c2:	1c04      	adds	r4, r0, #0
    37c4:	1c28      	adds	r0, r5, #0
    37c6:	4320      	orrs	r0, r4
    37c8:	5498      	strb	r0, [r3, r2]
    37ca:	0a09      	lsrs	r1, r1, #8
    37cc:	b288      	uxth	r0, r1
    37ce:	18d3      	adds	r3, r2, r3
    37d0:	785a      	ldrb	r2, [r3, #1]
    37d2:	2100      	movs	r1, #0
    37d4:	400a      	ands	r2, r1
    37d6:	1c11      	adds	r1, r2, #0
    37d8:	1c02      	adds	r2, r0, #0
    37da:	430a      	orrs	r2, r1
    37dc:	705a      	strb	r2, [r3, #1]
    37de:	68fb      	ldr	r3, [r7, #12]
    37e0:	1c9a      	adds	r2, r3, #2
    37e2:	60fa      	str	r2, [r7, #12]
    37e4:	881a      	ldrh	r2, [r3, #0]
    37e6:	6879      	ldr	r1, [r7, #4]
    37e8:	697b      	ldr	r3, [r7, #20]
    37ea:	330c      	adds	r3, #12
    37ec:	005b      	lsls	r3, r3, #1
    37ee:	18cb      	adds	r3, r1, r3
    37f0:	21ff      	movs	r1, #255	; 0xff
    37f2:	4011      	ands	r1, r2
    37f4:	000c      	movs	r4, r1
    37f6:	7899      	ldrb	r1, [r3, #2]
    37f8:	2000      	movs	r0, #0
    37fa:	4001      	ands	r1, r0
    37fc:	1c08      	adds	r0, r1, #0
    37fe:	1c21      	adds	r1, r4, #0
    3800:	4301      	orrs	r1, r0
    3802:	7099      	strb	r1, [r3, #2]
    3804:	0a12      	lsrs	r2, r2, #8
    3806:	b290      	uxth	r0, r2
    3808:	78da      	ldrb	r2, [r3, #3]
    380a:	2100      	movs	r1, #0
    380c:	400a      	ands	r2, r1
    380e:	1c11      	adds	r1, r2, #0
    3810:	1c02      	adds	r2, r0, #0
    3812:	430a      	orrs	r2, r1
    3814:	70da      	strb	r2, [r3, #3]
    3816:	697b      	ldr	r3, [r7, #20]
    3818:	3301      	adds	r3, #1
    381a:	617b      	str	r3, [r7, #20]
    381c:	697b      	ldr	r3, [r7, #20]
    381e:	2b04      	cmp	r3, #4
    3820:	ddc1      	ble.n	37a6 <mdb_get_testparam+0x196>
    3822:	46c0      	nop			; (mov r8, r8)
    3824:	46bd      	mov	sp, r7
    3826:	b006      	add	sp, #24
    3828:	bdb0      	pop	{r4, r5, r7, pc}
    382a:	46c0      	nop			; (mov r8, r8)
    382c:	20005d84 	.word	0x20005d84
    3830:	20005d96 	.word	0x20005d96
    3834:	20005da0 	.word	0x20005da0

00003838 <mdb_get_holding_register>:
    3838:	b580      	push	{r7, lr}
    383a:	b084      	sub	sp, #16
    383c:	af00      	add	r7, sp, #0
    383e:	6078      	str	r0, [r7, #4]
    3840:	687b      	ldr	r3, [r7, #4]
    3842:	2b00      	cmp	r3, #0
    3844:	db02      	blt.n	384c <mdb_get_holding_register+0x14>
    3846:	687b      	ldr	r3, [r7, #4]
    3848:	2b17      	cmp	r3, #23
    384a:	dd01      	ble.n	3850 <mdb_get_holding_register+0x18>
    384c:	2300      	movs	r3, #0
    384e:	e009      	b.n	3864 <mdb_get_holding_register+0x2c>
    3850:	230e      	movs	r3, #14
    3852:	18fb      	adds	r3, r7, r3
    3854:	4a05      	ldr	r2, [pc, #20]	; (386c <mdb_get_holding_register+0x34>)
    3856:	6879      	ldr	r1, [r7, #4]
    3858:	0049      	lsls	r1, r1, #1
    385a:	5a8a      	ldrh	r2, [r1, r2]
    385c:	801a      	strh	r2, [r3, #0]
    385e:	230e      	movs	r3, #14
    3860:	18fb      	adds	r3, r7, r3
    3862:	881b      	ldrh	r3, [r3, #0]
    3864:	0018      	movs	r0, r3
    3866:	46bd      	mov	sp, r7
    3868:	b004      	add	sp, #16
    386a:	bd80      	pop	{r7, pc}
    386c:	20005d84 	.word	0x20005d84

00003870 <pdu_report_server_id>:
    3870:	b580      	push	{r7, lr}
    3872:	b086      	sub	sp, #24
    3874:	af00      	add	r7, sp, #0
    3876:	6078      	str	r0, [r7, #4]
    3878:	2311      	movs	r3, #17
    387a:	60fb      	str	r3, [r7, #12]
    387c:	4b1f      	ldr	r3, [pc, #124]	; (38fc <pdu_report_server_id+0x8c>)
    387e:	681a      	ldr	r2, [r3, #0]
    3880:	687b      	ldr	r3, [r7, #4]
    3882:	18d2      	adds	r2, r2, r3
    3884:	230b      	movs	r3, #11
    3886:	18fb      	adds	r3, r7, r3
    3888:	7812      	ldrb	r2, [r2, #0]
    388a:	701a      	strb	r2, [r3, #0]
    388c:	687b      	ldr	r3, [r7, #4]
    388e:	617b      	str	r3, [r7, #20]
    3890:	697b      	ldr	r3, [r7, #20]
    3892:	1c5a      	adds	r2, r3, #1
    3894:	617a      	str	r2, [r7, #20]
    3896:	4a1a      	ldr	r2, [pc, #104]	; (3900 <pdu_report_server_id+0x90>)
    3898:	210b      	movs	r1, #11
    389a:	1879      	adds	r1, r7, r1
    389c:	7809      	ldrb	r1, [r1, #0]
    389e:	54d1      	strb	r1, [r2, r3]
    38a0:	697b      	ldr	r3, [r7, #20]
    38a2:	1c5a      	adds	r2, r3, #1
    38a4:	617a      	str	r2, [r7, #20]
    38a6:	68fa      	ldr	r2, [r7, #12]
    38a8:	b2d2      	uxtb	r2, r2
    38aa:	3202      	adds	r2, #2
    38ac:	b2d1      	uxtb	r1, r2
    38ae:	4a14      	ldr	r2, [pc, #80]	; (3900 <pdu_report_server_id+0x90>)
    38b0:	54d1      	strb	r1, [r2, r3]
    38b2:	697b      	ldr	r3, [r7, #20]
    38b4:	1c5a      	adds	r2, r3, #1
    38b6:	617a      	str	r2, [r7, #20]
    38b8:	4a11      	ldr	r2, [pc, #68]	; (3900 <pdu_report_server_id+0x90>)
    38ba:	2111      	movs	r1, #17
    38bc:	54d1      	strb	r1, [r2, r3]
    38be:	697b      	ldr	r3, [r7, #20]
    38c0:	1c5a      	adds	r2, r3, #1
    38c2:	617a      	str	r2, [r7, #20]
    38c4:	4a0e      	ldr	r2, [pc, #56]	; (3900 <pdu_report_server_id+0x90>)
    38c6:	21ff      	movs	r1, #255	; 0xff
    38c8:	54d1      	strb	r1, [r2, r3]
    38ca:	2300      	movs	r3, #0
    38cc:	613b      	str	r3, [r7, #16]
    38ce:	e00b      	b.n	38e8 <pdu_report_server_id+0x78>
    38d0:	697b      	ldr	r3, [r7, #20]
    38d2:	1c5a      	adds	r2, r3, #1
    38d4:	617a      	str	r2, [r7, #20]
    38d6:	490b      	ldr	r1, [pc, #44]	; (3904 <pdu_report_server_id+0x94>)
    38d8:	693a      	ldr	r2, [r7, #16]
    38da:	188a      	adds	r2, r1, r2
    38dc:	7811      	ldrb	r1, [r2, #0]
    38de:	4a08      	ldr	r2, [pc, #32]	; (3900 <pdu_report_server_id+0x90>)
    38e0:	54d1      	strb	r1, [r2, r3]
    38e2:	693b      	ldr	r3, [r7, #16]
    38e4:	3301      	adds	r3, #1
    38e6:	613b      	str	r3, [r7, #16]
    38e8:	693a      	ldr	r2, [r7, #16]
    38ea:	68fb      	ldr	r3, [r7, #12]
    38ec:	429a      	cmp	r2, r3
    38ee:	dbef      	blt.n	38d0 <pdu_report_server_id+0x60>
    38f0:	697b      	ldr	r3, [r7, #20]
    38f2:	0018      	movs	r0, r3
    38f4:	46bd      	mov	sp, r7
    38f6:	b006      	add	sp, #24
    38f8:	bd80      	pop	{r7, pc}
    38fa:	46c0      	nop			; (mov r8, r8)
    38fc:	20005dc0 	.word	0x20005dc0
    3900:	20005dc4 	.word	0x20005dc4
    3904:	00008d20 	.word	0x00008d20

00003908 <pdu_read_input_registers>:
    3908:	b580      	push	{r7, lr}
    390a:	b086      	sub	sp, #24
    390c:	af00      	add	r7, sp, #0
    390e:	6078      	str	r0, [r7, #4]
    3910:	4b4e      	ldr	r3, [pc, #312]	; (3a4c <pdu_read_input_registers+0x144>)
    3912:	681a      	ldr	r2, [r3, #0]
    3914:	687b      	ldr	r3, [r7, #4]
    3916:	18d2      	adds	r2, r2, r3
    3918:	230f      	movs	r3, #15
    391a:	18fb      	adds	r3, r7, r3
    391c:	7812      	ldrb	r2, [r2, #0]
    391e:	701a      	strb	r2, [r3, #0]
    3920:	4b4a      	ldr	r3, [pc, #296]	; (3a4c <pdu_read_input_registers+0x144>)
    3922:	681a      	ldr	r2, [r3, #0]
    3924:	687b      	ldr	r3, [r7, #4]
    3926:	3301      	adds	r3, #1
    3928:	18d3      	adds	r3, r2, r3
    392a:	781b      	ldrb	r3, [r3, #0]
    392c:	021b      	lsls	r3, r3, #8
    392e:	b21a      	sxth	r2, r3
    3930:	4b46      	ldr	r3, [pc, #280]	; (3a4c <pdu_read_input_registers+0x144>)
    3932:	6819      	ldr	r1, [r3, #0]
    3934:	687b      	ldr	r3, [r7, #4]
    3936:	3302      	adds	r3, #2
    3938:	18cb      	adds	r3, r1, r3
    393a:	781b      	ldrb	r3, [r3, #0]
    393c:	b21b      	sxth	r3, r3
    393e:	4313      	orrs	r3, r2
    3940:	b21a      	sxth	r2, r3
    3942:	230c      	movs	r3, #12
    3944:	18fb      	adds	r3, r7, r3
    3946:	801a      	strh	r2, [r3, #0]
    3948:	4b40      	ldr	r3, [pc, #256]	; (3a4c <pdu_read_input_registers+0x144>)
    394a:	681a      	ldr	r2, [r3, #0]
    394c:	687b      	ldr	r3, [r7, #4]
    394e:	3303      	adds	r3, #3
    3950:	18d3      	adds	r3, r2, r3
    3952:	781b      	ldrb	r3, [r3, #0]
    3954:	021b      	lsls	r3, r3, #8
    3956:	b21a      	sxth	r2, r3
    3958:	4b3c      	ldr	r3, [pc, #240]	; (3a4c <pdu_read_input_registers+0x144>)
    395a:	6819      	ldr	r1, [r3, #0]
    395c:	687b      	ldr	r3, [r7, #4]
    395e:	3304      	adds	r3, #4
    3960:	18cb      	adds	r3, r1, r3
    3962:	781b      	ldrb	r3, [r3, #0]
    3964:	b21b      	sxth	r3, r3
    3966:	4313      	orrs	r3, r2
    3968:	b21a      	sxth	r2, r3
    396a:	230a      	movs	r3, #10
    396c:	18fb      	adds	r3, r7, r3
    396e:	801a      	strh	r2, [r3, #0]
    3970:	230c      	movs	r3, #12
    3972:	18fb      	adds	r3, r7, r3
    3974:	881b      	ldrh	r3, [r3, #0]
    3976:	2bff      	cmp	r3, #255	; 0xff
    3978:	d90a      	bls.n	3990 <pdu_read_input_registers+0x88>
    397a:	230c      	movs	r3, #12
    397c:	18fb      	adds	r3, r7, r3
    397e:	881a      	ldrh	r2, [r3, #0]
    3980:	230a      	movs	r3, #10
    3982:	18fb      	adds	r3, r7, r3
    3984:	881b      	ldrh	r3, [r3, #0]
    3986:	18d2      	adds	r2, r2, r3
    3988:	2304      	movs	r3, #4
    398a:	33ff      	adds	r3, #255	; 0xff
    398c:	429a      	cmp	r2, r3
    398e:	dd15      	ble.n	39bc <pdu_read_input_registers+0xb4>
    3990:	687b      	ldr	r3, [r7, #4]
    3992:	613b      	str	r3, [r7, #16]
    3994:	693b      	ldr	r3, [r7, #16]
    3996:	1c5a      	adds	r2, r3, #1
    3998:	613a      	str	r2, [r7, #16]
    399a:	220f      	movs	r2, #15
    399c:	18ba      	adds	r2, r7, r2
    399e:	7812      	ldrb	r2, [r2, #0]
    39a0:	2180      	movs	r1, #128	; 0x80
    39a2:	4249      	negs	r1, r1
    39a4:	430a      	orrs	r2, r1
    39a6:	b2d1      	uxtb	r1, r2
    39a8:	4a29      	ldr	r2, [pc, #164]	; (3a50 <pdu_read_input_registers+0x148>)
    39aa:	54d1      	strb	r1, [r2, r3]
    39ac:	693b      	ldr	r3, [r7, #16]
    39ae:	1c5a      	adds	r2, r3, #1
    39b0:	613a      	str	r2, [r7, #16]
    39b2:	4a27      	ldr	r2, [pc, #156]	; (3a50 <pdu_read_input_registers+0x148>)
    39b4:	2102      	movs	r1, #2
    39b6:	54d1      	strb	r1, [r2, r3]
    39b8:	693b      	ldr	r3, [r7, #16]
    39ba:	e042      	b.n	3a42 <pdu_read_input_registers+0x13a>
    39bc:	687b      	ldr	r3, [r7, #4]
    39be:	613b      	str	r3, [r7, #16]
    39c0:	693b      	ldr	r3, [r7, #16]
    39c2:	1c5a      	adds	r2, r3, #1
    39c4:	613a      	str	r2, [r7, #16]
    39c6:	4a22      	ldr	r2, [pc, #136]	; (3a50 <pdu_read_input_registers+0x148>)
    39c8:	210f      	movs	r1, #15
    39ca:	1879      	adds	r1, r7, r1
    39cc:	7809      	ldrb	r1, [r1, #0]
    39ce:	54d1      	strb	r1, [r2, r3]
    39d0:	693b      	ldr	r3, [r7, #16]
    39d2:	1c5a      	adds	r2, r3, #1
    39d4:	613a      	str	r2, [r7, #16]
    39d6:	220a      	movs	r2, #10
    39d8:	18ba      	adds	r2, r7, r2
    39da:	8812      	ldrh	r2, [r2, #0]
    39dc:	b2d2      	uxtb	r2, r2
    39de:	1892      	adds	r2, r2, r2
    39e0:	b2d1      	uxtb	r1, r2
    39e2:	4a1b      	ldr	r2, [pc, #108]	; (3a50 <pdu_read_input_registers+0x148>)
    39e4:	54d1      	strb	r1, [r2, r3]
    39e6:	2300      	movs	r3, #0
    39e8:	617b      	str	r3, [r7, #20]
    39ea:	e023      	b.n	3a34 <pdu_read_input_registers+0x12c>
    39ec:	230c      	movs	r3, #12
    39ee:	18fb      	adds	r3, r7, r3
    39f0:	881b      	ldrh	r3, [r3, #0]
    39f2:	1e5a      	subs	r2, r3, #1
    39f4:	3aff      	subs	r2, #255	; 0xff
    39f6:	697b      	ldr	r3, [r7, #20]
    39f8:	18d1      	adds	r1, r2, r3
    39fa:	2308      	movs	r3, #8
    39fc:	18fb      	adds	r3, r7, r3
    39fe:	4a15      	ldr	r2, [pc, #84]	; (3a54 <pdu_read_input_registers+0x14c>)
    3a00:	0049      	lsls	r1, r1, #1
    3a02:	5a8a      	ldrh	r2, [r1, r2]
    3a04:	801a      	strh	r2, [r3, #0]
    3a06:	693b      	ldr	r3, [r7, #16]
    3a08:	1c5a      	adds	r2, r3, #1
    3a0a:	613a      	str	r2, [r7, #16]
    3a0c:	2208      	movs	r2, #8
    3a0e:	18ba      	adds	r2, r7, r2
    3a10:	8812      	ldrh	r2, [r2, #0]
    3a12:	0a12      	lsrs	r2, r2, #8
    3a14:	b292      	uxth	r2, r2
    3a16:	b2d1      	uxtb	r1, r2
    3a18:	4a0d      	ldr	r2, [pc, #52]	; (3a50 <pdu_read_input_registers+0x148>)
    3a1a:	54d1      	strb	r1, [r2, r3]
    3a1c:	693b      	ldr	r3, [r7, #16]
    3a1e:	1c5a      	adds	r2, r3, #1
    3a20:	613a      	str	r2, [r7, #16]
    3a22:	2208      	movs	r2, #8
    3a24:	18ba      	adds	r2, r7, r2
    3a26:	8812      	ldrh	r2, [r2, #0]
    3a28:	b2d1      	uxtb	r1, r2
    3a2a:	4a09      	ldr	r2, [pc, #36]	; (3a50 <pdu_read_input_registers+0x148>)
    3a2c:	54d1      	strb	r1, [r2, r3]
    3a2e:	697b      	ldr	r3, [r7, #20]
    3a30:	3301      	adds	r3, #1
    3a32:	617b      	str	r3, [r7, #20]
    3a34:	230a      	movs	r3, #10
    3a36:	18fb      	adds	r3, r7, r3
    3a38:	881a      	ldrh	r2, [r3, #0]
    3a3a:	697b      	ldr	r3, [r7, #20]
    3a3c:	429a      	cmp	r2, r3
    3a3e:	dcd5      	bgt.n	39ec <pdu_read_input_registers+0xe4>
    3a40:	693b      	ldr	r3, [r7, #16]
    3a42:	0018      	movs	r0, r3
    3a44:	46bd      	mov	sp, r7
    3a46:	b006      	add	sp, #24
    3a48:	bd80      	pop	{r7, pc}
    3a4a:	46c0      	nop			; (mov r8, r8)
    3a4c:	20005dc0 	.word	0x20005dc0
    3a50:	20005dc4 	.word	0x20005dc4
    3a54:	20005db4 	.word	0x20005db4

00003a58 <pdu_write_multiply_registers>:
    3a58:	b580      	push	{r7, lr}
    3a5a:	b088      	sub	sp, #32
    3a5c:	af00      	add	r7, sp, #0
    3a5e:	6078      	str	r0, [r7, #4]
    3a60:	4b5a      	ldr	r3, [pc, #360]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3a62:	681a      	ldr	r2, [r3, #0]
    3a64:	687b      	ldr	r3, [r7, #4]
    3a66:	18d2      	adds	r2, r2, r3
    3a68:	2317      	movs	r3, #23
    3a6a:	18fb      	adds	r3, r7, r3
    3a6c:	7812      	ldrb	r2, [r2, #0]
    3a6e:	701a      	strb	r2, [r3, #0]
    3a70:	4b56      	ldr	r3, [pc, #344]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3a72:	681a      	ldr	r2, [r3, #0]
    3a74:	687b      	ldr	r3, [r7, #4]
    3a76:	3301      	adds	r3, #1
    3a78:	18d3      	adds	r3, r2, r3
    3a7a:	781b      	ldrb	r3, [r3, #0]
    3a7c:	021b      	lsls	r3, r3, #8
    3a7e:	b21a      	sxth	r2, r3
    3a80:	4b52      	ldr	r3, [pc, #328]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3a82:	6819      	ldr	r1, [r3, #0]
    3a84:	687b      	ldr	r3, [r7, #4]
    3a86:	3302      	adds	r3, #2
    3a88:	18cb      	adds	r3, r1, r3
    3a8a:	781b      	ldrb	r3, [r3, #0]
    3a8c:	b21b      	sxth	r3, r3
    3a8e:	4313      	orrs	r3, r2
    3a90:	b21a      	sxth	r2, r3
    3a92:	2314      	movs	r3, #20
    3a94:	18fb      	adds	r3, r7, r3
    3a96:	801a      	strh	r2, [r3, #0]
    3a98:	4b4c      	ldr	r3, [pc, #304]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3a9a:	681a      	ldr	r2, [r3, #0]
    3a9c:	687b      	ldr	r3, [r7, #4]
    3a9e:	3303      	adds	r3, #3
    3aa0:	18d3      	adds	r3, r2, r3
    3aa2:	781b      	ldrb	r3, [r3, #0]
    3aa4:	021b      	lsls	r3, r3, #8
    3aa6:	b21a      	sxth	r2, r3
    3aa8:	4b48      	ldr	r3, [pc, #288]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3aaa:	6819      	ldr	r1, [r3, #0]
    3aac:	687b      	ldr	r3, [r7, #4]
    3aae:	3304      	adds	r3, #4
    3ab0:	18cb      	adds	r3, r1, r3
    3ab2:	781b      	ldrb	r3, [r3, #0]
    3ab4:	b21b      	sxth	r3, r3
    3ab6:	4313      	orrs	r3, r2
    3ab8:	b21a      	sxth	r2, r3
    3aba:	2312      	movs	r3, #18
    3abc:	18fb      	adds	r3, r7, r3
    3abe:	801a      	strh	r2, [r3, #0]
    3ac0:	4b42      	ldr	r3, [pc, #264]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3ac2:	681a      	ldr	r2, [r3, #0]
    3ac4:	687b      	ldr	r3, [r7, #4]
    3ac6:	3305      	adds	r3, #5
    3ac8:	18d2      	adds	r2, r2, r3
    3aca:	2311      	movs	r3, #17
    3acc:	18fb      	adds	r3, r7, r3
    3ace:	7812      	ldrb	r2, [r2, #0]
    3ad0:	701a      	strb	r2, [r3, #0]
    3ad2:	2314      	movs	r3, #20
    3ad4:	18fb      	adds	r3, r7, r3
    3ad6:	881a      	ldrh	r2, [r3, #0]
    3ad8:	2312      	movs	r3, #18
    3ada:	18fb      	adds	r3, r7, r3
    3adc:	881b      	ldrh	r3, [r3, #0]
    3ade:	18d3      	adds	r3, r2, r3
    3ae0:	2b18      	cmp	r3, #24
    3ae2:	dd14      	ble.n	3b0e <pdu_write_multiply_registers+0xb6>
    3ae4:	687b      	ldr	r3, [r7, #4]
    3ae6:	61bb      	str	r3, [r7, #24]
    3ae8:	69bb      	ldr	r3, [r7, #24]
    3aea:	1c5a      	adds	r2, r3, #1
    3aec:	61ba      	str	r2, [r7, #24]
    3aee:	2217      	movs	r2, #23
    3af0:	18ba      	adds	r2, r7, r2
    3af2:	7812      	ldrb	r2, [r2, #0]
    3af4:	2180      	movs	r1, #128	; 0x80
    3af6:	4249      	negs	r1, r1
    3af8:	430a      	orrs	r2, r1
    3afa:	b2d1      	uxtb	r1, r2
    3afc:	4a34      	ldr	r2, [pc, #208]	; (3bd0 <pdu_write_multiply_registers+0x178>)
    3afe:	54d1      	strb	r1, [r2, r3]
    3b00:	69bb      	ldr	r3, [r7, #24]
    3b02:	1c5a      	adds	r2, r3, #1
    3b04:	61ba      	str	r2, [r7, #24]
    3b06:	4a32      	ldr	r2, [pc, #200]	; (3bd0 <pdu_write_multiply_registers+0x178>)
    3b08:	2102      	movs	r1, #2
    3b0a:	54d1      	strb	r1, [r2, r3]
    3b0c:	e04b      	b.n	3ba6 <pdu_write_multiply_registers+0x14e>
    3b0e:	687b      	ldr	r3, [r7, #4]
    3b10:	3306      	adds	r3, #6
    3b12:	61bb      	str	r3, [r7, #24]
    3b14:	2300      	movs	r3, #0
    3b16:	61fb      	str	r3, [r7, #28]
    3b18:	e028      	b.n	3b6c <pdu_write_multiply_registers+0x114>
    3b1a:	4b2c      	ldr	r3, [pc, #176]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3b1c:	681a      	ldr	r2, [r3, #0]
    3b1e:	69bb      	ldr	r3, [r7, #24]
    3b20:	1c59      	adds	r1, r3, #1
    3b22:	61b9      	str	r1, [r7, #24]
    3b24:	18d3      	adds	r3, r2, r3
    3b26:	781b      	ldrb	r3, [r3, #0]
    3b28:	b29a      	uxth	r2, r3
    3b2a:	230e      	movs	r3, #14
    3b2c:	18fb      	adds	r3, r7, r3
    3b2e:	0212      	lsls	r2, r2, #8
    3b30:	801a      	strh	r2, [r3, #0]
    3b32:	4b26      	ldr	r3, [pc, #152]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3b34:	681a      	ldr	r2, [r3, #0]
    3b36:	69bb      	ldr	r3, [r7, #24]
    3b38:	1c59      	adds	r1, r3, #1
    3b3a:	61b9      	str	r1, [r7, #24]
    3b3c:	18d3      	adds	r3, r2, r3
    3b3e:	781b      	ldrb	r3, [r3, #0]
    3b40:	b299      	uxth	r1, r3
    3b42:	230e      	movs	r3, #14
    3b44:	18fb      	adds	r3, r7, r3
    3b46:	220e      	movs	r2, #14
    3b48:	18ba      	adds	r2, r7, r2
    3b4a:	8812      	ldrh	r2, [r2, #0]
    3b4c:	430a      	orrs	r2, r1
    3b4e:	801a      	strh	r2, [r3, #0]
    3b50:	2314      	movs	r3, #20
    3b52:	18fb      	adds	r3, r7, r3
    3b54:	881a      	ldrh	r2, [r3, #0]
    3b56:	69fb      	ldr	r3, [r7, #28]
    3b58:	18d2      	adds	r2, r2, r3
    3b5a:	4b1e      	ldr	r3, [pc, #120]	; (3bd4 <pdu_write_multiply_registers+0x17c>)
    3b5c:	0052      	lsls	r2, r2, #1
    3b5e:	210e      	movs	r1, #14
    3b60:	1879      	adds	r1, r7, r1
    3b62:	8809      	ldrh	r1, [r1, #0]
    3b64:	52d1      	strh	r1, [r2, r3]
    3b66:	69fb      	ldr	r3, [r7, #28]
    3b68:	3301      	adds	r3, #1
    3b6a:	61fb      	str	r3, [r7, #28]
    3b6c:	2312      	movs	r3, #18
    3b6e:	18fb      	adds	r3, r7, r3
    3b70:	881a      	ldrh	r2, [r3, #0]
    3b72:	69fb      	ldr	r3, [r7, #28]
    3b74:	429a      	cmp	r2, r3
    3b76:	dcd0      	bgt.n	3b1a <pdu_write_multiply_registers+0xc2>
    3b78:	687b      	ldr	r3, [r7, #4]
    3b7a:	61bb      	str	r3, [r7, #24]
    3b7c:	687b      	ldr	r3, [r7, #4]
    3b7e:	61fb      	str	r3, [r7, #28]
    3b80:	e00c      	b.n	3b9c <pdu_write_multiply_registers+0x144>
    3b82:	69bb      	ldr	r3, [r7, #24]
    3b84:	1c5a      	adds	r2, r3, #1
    3b86:	61ba      	str	r2, [r7, #24]
    3b88:	4a10      	ldr	r2, [pc, #64]	; (3bcc <pdu_write_multiply_registers+0x174>)
    3b8a:	6811      	ldr	r1, [r2, #0]
    3b8c:	69fa      	ldr	r2, [r7, #28]
    3b8e:	188a      	adds	r2, r1, r2
    3b90:	7811      	ldrb	r1, [r2, #0]
    3b92:	4a0f      	ldr	r2, [pc, #60]	; (3bd0 <pdu_write_multiply_registers+0x178>)
    3b94:	54d1      	strb	r1, [r2, r3]
    3b96:	69fb      	ldr	r3, [r7, #28]
    3b98:	3301      	adds	r3, #1
    3b9a:	61fb      	str	r3, [r7, #28]
    3b9c:	687b      	ldr	r3, [r7, #4]
    3b9e:	1d5a      	adds	r2, r3, #5
    3ba0:	69fb      	ldr	r3, [r7, #28]
    3ba2:	429a      	cmp	r2, r3
    3ba4:	dced      	bgt.n	3b82 <pdu_write_multiply_registers+0x12a>
    3ba6:	2314      	movs	r3, #20
    3ba8:	18fb      	adds	r3, r7, r3
    3baa:	881b      	ldrh	r3, [r3, #0]
    3bac:	2b00      	cmp	r3, #0
    3bae:	d107      	bne.n	3bc0 <pdu_write_multiply_registers+0x168>
    3bb0:	4b09      	ldr	r3, [pc, #36]	; (3bd8 <pdu_write_multiply_registers+0x180>)
    3bb2:	6818      	ldr	r0, [r3, #0]
    3bb4:	4b07      	ldr	r3, [pc, #28]	; (3bd4 <pdu_write_multiply_registers+0x17c>)
    3bb6:	881b      	ldrh	r3, [r3, #0]
    3bb8:	2200      	movs	r2, #0
    3bba:	0019      	movs	r1, r3
    3bbc:	f002 fe42 	bl	6844 <osMessagePut>
    3bc0:	69bb      	ldr	r3, [r7, #24]
    3bc2:	0018      	movs	r0, r3
    3bc4:	46bd      	mov	sp, r7
    3bc6:	b008      	add	sp, #32
    3bc8:	bd80      	pop	{r7, pc}
    3bca:	46c0      	nop			; (mov r8, r8)
    3bcc:	20005dc0 	.word	0x20005dc0
    3bd0:	20005dc4 	.word	0x20005dc4
    3bd4:	20005d84 	.word	0x20005d84
    3bd8:	20000864 	.word	0x20000864

00003bdc <u16tobe>:
    3bdc:	b580      	push	{r7, lr}
    3bde:	b082      	sub	sp, #8
    3be0:	af00      	add	r7, sp, #0
    3be2:	0002      	movs	r2, r0
    3be4:	6039      	str	r1, [r7, #0]
    3be6:	1dbb      	adds	r3, r7, #6
    3be8:	801a      	strh	r2, [r3, #0]
    3bea:	683b      	ldr	r3, [r7, #0]
    3bec:	1c5a      	adds	r2, r3, #1
    3bee:	603a      	str	r2, [r7, #0]
    3bf0:	1dba      	adds	r2, r7, #6
    3bf2:	8812      	ldrh	r2, [r2, #0]
    3bf4:	0a12      	lsrs	r2, r2, #8
    3bf6:	b292      	uxth	r2, r2
    3bf8:	b2d2      	uxtb	r2, r2
    3bfa:	701a      	strb	r2, [r3, #0]
    3bfc:	683b      	ldr	r3, [r7, #0]
    3bfe:	1c5a      	adds	r2, r3, #1
    3c00:	603a      	str	r2, [r7, #0]
    3c02:	1dba      	adds	r2, r7, #6
    3c04:	8812      	ldrh	r2, [r2, #0]
    3c06:	b2d2      	uxtb	r2, r2
    3c08:	701a      	strb	r2, [r3, #0]
    3c0a:	46c0      	nop			; (mov r8, r8)
    3c0c:	46bd      	mov	sp, r7
    3c0e:	b002      	add	sp, #8
    3c10:	bd80      	pop	{r7, pc}
    3c12:	46c0      	nop			; (mov r8, r8)

00003c14 <u32tobe>:
    3c14:	b580      	push	{r7, lr}
    3c16:	b082      	sub	sp, #8
    3c18:	af00      	add	r7, sp, #0
    3c1a:	6078      	str	r0, [r7, #4]
    3c1c:	6039      	str	r1, [r7, #0]
    3c1e:	683b      	ldr	r3, [r7, #0]
    3c20:	1c5a      	adds	r2, r3, #1
    3c22:	603a      	str	r2, [r7, #0]
    3c24:	687a      	ldr	r2, [r7, #4]
    3c26:	0e12      	lsrs	r2, r2, #24
    3c28:	b2d2      	uxtb	r2, r2
    3c2a:	701a      	strb	r2, [r3, #0]
    3c2c:	683b      	ldr	r3, [r7, #0]
    3c2e:	1c5a      	adds	r2, r3, #1
    3c30:	603a      	str	r2, [r7, #0]
    3c32:	687a      	ldr	r2, [r7, #4]
    3c34:	0c12      	lsrs	r2, r2, #16
    3c36:	b2d2      	uxtb	r2, r2
    3c38:	701a      	strb	r2, [r3, #0]
    3c3a:	683b      	ldr	r3, [r7, #0]
    3c3c:	1c5a      	adds	r2, r3, #1
    3c3e:	603a      	str	r2, [r7, #0]
    3c40:	687a      	ldr	r2, [r7, #4]
    3c42:	0a12      	lsrs	r2, r2, #8
    3c44:	b2d2      	uxtb	r2, r2
    3c46:	701a      	strb	r2, [r3, #0]
    3c48:	683b      	ldr	r3, [r7, #0]
    3c4a:	1c5a      	adds	r2, r3, #1
    3c4c:	603a      	str	r2, [r7, #0]
    3c4e:	687a      	ldr	r2, [r7, #4]
    3c50:	b2d2      	uxtb	r2, r2
    3c52:	701a      	strb	r2, [r3, #0]
    3c54:	46c0      	nop			; (mov r8, r8)
    3c56:	46bd      	mov	sp, r7
    3c58:	b002      	add	sp, #8
    3c5a:	bd80      	pop	{r7, pc}

00003c5c <pdu_read_fifo_queue>:
    3c5c:	b580      	push	{r7, lr}
    3c5e:	b090      	sub	sp, #64	; 0x40
    3c60:	af00      	add	r7, sp, #0
    3c62:	6078      	str	r0, [r7, #4]
    3c64:	2336      	movs	r3, #54	; 0x36
    3c66:	18fb      	adds	r3, r7, r3
    3c68:	2203      	movs	r2, #3
    3c6a:	801a      	strh	r2, [r3, #0]
    3c6c:	4b79      	ldr	r3, [pc, #484]	; (3e54 <pdu_read_fifo_queue+0x1f8>)
    3c6e:	681a      	ldr	r2, [r3, #0]
    3c70:	687b      	ldr	r3, [r7, #4]
    3c72:	18d2      	adds	r2, r2, r3
    3c74:	2335      	movs	r3, #53	; 0x35
    3c76:	18fb      	adds	r3, r7, r3
    3c78:	7812      	ldrb	r2, [r2, #0]
    3c7a:	701a      	strb	r2, [r3, #0]
    3c7c:	4b75      	ldr	r3, [pc, #468]	; (3e54 <pdu_read_fifo_queue+0x1f8>)
    3c7e:	681a      	ldr	r2, [r3, #0]
    3c80:	687b      	ldr	r3, [r7, #4]
    3c82:	3301      	adds	r3, #1
    3c84:	18d3      	adds	r3, r2, r3
    3c86:	781b      	ldrb	r3, [r3, #0]
    3c88:	021b      	lsls	r3, r3, #8
    3c8a:	b21a      	sxth	r2, r3
    3c8c:	4b71      	ldr	r3, [pc, #452]	; (3e54 <pdu_read_fifo_queue+0x1f8>)
    3c8e:	6819      	ldr	r1, [r3, #0]
    3c90:	687b      	ldr	r3, [r7, #4]
    3c92:	3302      	adds	r3, #2
    3c94:	18cb      	adds	r3, r1, r3
    3c96:	781b      	ldrb	r3, [r3, #0]
    3c98:	b21b      	sxth	r3, r3
    3c9a:	4313      	orrs	r3, r2
    3c9c:	b21a      	sxth	r2, r3
    3c9e:	2332      	movs	r3, #50	; 0x32
    3ca0:	18fb      	adds	r3, r7, r3
    3ca2:	801a      	strh	r2, [r3, #0]
    3ca4:	2332      	movs	r3, #50	; 0x32
    3ca6:	18fb      	adds	r3, r7, r3
    3ca8:	881a      	ldrh	r2, [r3, #0]
    3caa:	2380      	movs	r3, #128	; 0x80
    3cac:	009b      	lsls	r3, r3, #2
    3cae:	429a      	cmp	r2, r3
    3cb0:	d014      	beq.n	3cdc <pdu_read_fifo_queue+0x80>
    3cb2:	687b      	ldr	r3, [r7, #4]
    3cb4:	63fb      	str	r3, [r7, #60]	; 0x3c
    3cb6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cb8:	1c5a      	adds	r2, r3, #1
    3cba:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cbc:	2235      	movs	r2, #53	; 0x35
    3cbe:	18ba      	adds	r2, r7, r2
    3cc0:	7812      	ldrb	r2, [r2, #0]
    3cc2:	2180      	movs	r1, #128	; 0x80
    3cc4:	4249      	negs	r1, r1
    3cc6:	430a      	orrs	r2, r1
    3cc8:	b2d1      	uxtb	r1, r2
    3cca:	4a63      	ldr	r2, [pc, #396]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3ccc:	54d1      	strb	r1, [r2, r3]
    3cce:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cd0:	1c5a      	adds	r2, r3, #1
    3cd2:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cd4:	4a60      	ldr	r2, [pc, #384]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3cd6:	2102      	movs	r1, #2
    3cd8:	54d1      	strb	r1, [r2, r3]
    3cda:	e0b5      	b.n	3e48 <pdu_read_fifo_queue+0x1ec>
    3cdc:	687b      	ldr	r3, [r7, #4]
    3cde:	63fb      	str	r3, [r7, #60]	; 0x3c
    3ce0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3ce2:	1c5a      	adds	r2, r3, #1
    3ce4:	63fa      	str	r2, [r7, #60]	; 0x3c
    3ce6:	4a5c      	ldr	r2, [pc, #368]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3ce8:	2135      	movs	r1, #53	; 0x35
    3cea:	1879      	adds	r1, r7, r1
    3cec:	7809      	ldrb	r1, [r1, #0]
    3cee:	54d1      	strb	r1, [r2, r3]
    3cf0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cf2:	1c5a      	adds	r2, r3, #1
    3cf4:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cf6:	4a58      	ldr	r2, [pc, #352]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3cf8:	2100      	movs	r1, #0
    3cfa:	54d1      	strb	r1, [r2, r3]
    3cfc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cfe:	1c5a      	adds	r2, r3, #1
    3d00:	63fa      	str	r2, [r7, #60]	; 0x3c
    3d02:	4a55      	ldr	r2, [pc, #340]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3d04:	2100      	movs	r1, #0
    3d06:	54d1      	strb	r1, [r2, r3]
    3d08:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d0a:	1c5a      	adds	r2, r3, #1
    3d0c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3d0e:	4a52      	ldr	r2, [pc, #328]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3d10:	2100      	movs	r1, #0
    3d12:	54d1      	strb	r1, [r2, r3]
    3d14:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d16:	1c5a      	adds	r2, r3, #1
    3d18:	63fa      	str	r2, [r7, #60]	; 0x3c
    3d1a:	4a4f      	ldr	r2, [pc, #316]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3d1c:	2100      	movs	r1, #0
    3d1e:	54d1      	strb	r1, [r2, r3]
    3d20:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d22:	62fb      	str	r3, [r7, #44]	; 0x2c
    3d24:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3d26:	4b4c      	ldr	r3, [pc, #304]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3d28:	18d3      	adds	r3, r2, r3
    3d2a:	63bb      	str	r3, [r7, #56]	; 0x38
    3d2c:	e068      	b.n	3e00 <pdu_read_fifo_queue+0x1a4>
    3d2e:	2300      	movs	r3, #0
    3d30:	62bb      	str	r3, [r7, #40]	; 0x28
    3d32:	2308      	movs	r3, #8
    3d34:	18fb      	adds	r3, r7, r3
    3d36:	2120      	movs	r1, #32
    3d38:	0018      	movs	r0, r3
    3d3a:	f7ff fbd7 	bl	34ec <mdb_fifo_read>
    3d3e:	0003      	movs	r3, r0
    3d40:	62bb      	str	r3, [r7, #40]	; 0x28
    3d42:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3d44:	2b00      	cmp	r3, #0
    3d46:	d063      	beq.n	3e10 <pdu_read_fifo_queue+0x1b4>
    3d48:	2308      	movs	r3, #8
    3d4a:	18fb      	adds	r3, r7, r3
    3d4c:	681b      	ldr	r3, [r3, #0]
    3d4e:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d50:	0011      	movs	r1, r2
    3d52:	0018      	movs	r0, r3
    3d54:	f7ff ff5e 	bl	3c14 <u32tobe>
    3d58:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d5a:	3304      	adds	r3, #4
    3d5c:	63bb      	str	r3, [r7, #56]	; 0x38
    3d5e:	2308      	movs	r3, #8
    3d60:	18fb      	adds	r3, r7, r3
    3d62:	685b      	ldr	r3, [r3, #4]
    3d64:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d66:	0011      	movs	r1, r2
    3d68:	0018      	movs	r0, r3
    3d6a:	f7ff ff53 	bl	3c14 <u32tobe>
    3d6e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d70:	3304      	adds	r3, #4
    3d72:	63bb      	str	r3, [r7, #56]	; 0x38
    3d74:	2308      	movs	r3, #8
    3d76:	18fb      	adds	r3, r7, r3
    3d78:	689b      	ldr	r3, [r3, #8]
    3d7a:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d7c:	0011      	movs	r1, r2
    3d7e:	0018      	movs	r0, r3
    3d80:	f7ff ff48 	bl	3c14 <u32tobe>
    3d84:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d86:	3304      	adds	r3, #4
    3d88:	63bb      	str	r3, [r7, #56]	; 0x38
    3d8a:	2308      	movs	r3, #8
    3d8c:	18fb      	adds	r3, r7, r3
    3d8e:	68db      	ldr	r3, [r3, #12]
    3d90:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d92:	0011      	movs	r1, r2
    3d94:	0018      	movs	r0, r3
    3d96:	f7ff ff3d 	bl	3c14 <u32tobe>
    3d9a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d9c:	3304      	adds	r3, #4
    3d9e:	63bb      	str	r3, [r7, #56]	; 0x38
    3da0:	2308      	movs	r3, #8
    3da2:	18fb      	adds	r3, r7, r3
    3da4:	691b      	ldr	r3, [r3, #16]
    3da6:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3da8:	0011      	movs	r1, r2
    3daa:	0018      	movs	r0, r3
    3dac:	f7ff ff32 	bl	3c14 <u32tobe>
    3db0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3db2:	3304      	adds	r3, #4
    3db4:	63bb      	str	r3, [r7, #56]	; 0x38
    3db6:	2308      	movs	r3, #8
    3db8:	18fb      	adds	r3, r7, r3
    3dba:	695b      	ldr	r3, [r3, #20]
    3dbc:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3dbe:	0011      	movs	r1, r2
    3dc0:	0018      	movs	r0, r3
    3dc2:	f7ff ff27 	bl	3c14 <u32tobe>
    3dc6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3dc8:	3304      	adds	r3, #4
    3dca:	63bb      	str	r3, [r7, #56]	; 0x38
    3dcc:	2308      	movs	r3, #8
    3dce:	18fb      	adds	r3, r7, r3
    3dd0:	699b      	ldr	r3, [r3, #24]
    3dd2:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3dd4:	0011      	movs	r1, r2
    3dd6:	0018      	movs	r0, r3
    3dd8:	f7ff ff1c 	bl	3c14 <u32tobe>
    3ddc:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3dde:	3304      	adds	r3, #4
    3de0:	63bb      	str	r3, [r7, #56]	; 0x38
    3de2:	2308      	movs	r3, #8
    3de4:	18fb      	adds	r3, r7, r3
    3de6:	69db      	ldr	r3, [r3, #28]
    3de8:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3dea:	0011      	movs	r1, r2
    3dec:	0018      	movs	r0, r3
    3dee:	f7ff ff11 	bl	3c14 <u32tobe>
    3df2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3df4:	3304      	adds	r3, #4
    3df6:	63bb      	str	r3, [r7, #56]	; 0x38
    3df8:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3dfa:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3dfc:	18d3      	adds	r3, r2, r3
    3dfe:	63fb      	str	r3, [r7, #60]	; 0x3c
    3e00:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e02:	3320      	adds	r3, #32
    3e04:	001a      	movs	r2, r3
    3e06:	23fc      	movs	r3, #252	; 0xfc
    3e08:	33ff      	adds	r3, #255	; 0xff
    3e0a:	429a      	cmp	r2, r3
    3e0c:	d98f      	bls.n	3d2e <pdu_read_fifo_queue+0xd2>
    3e0e:	e000      	b.n	3e12 <pdu_read_fifo_queue+0x1b6>
    3e10:	46c0      	nop			; (mov r8, r8)
    3e12:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e14:	b29a      	uxth	r2, r3
    3e16:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3e18:	b29b      	uxth	r3, r3
    3e1a:	1ad3      	subs	r3, r2, r3
    3e1c:	b29b      	uxth	r3, r3
    3e1e:	3302      	adds	r3, #2
    3e20:	b298      	uxth	r0, r3
    3e22:	687b      	ldr	r3, [r7, #4]
    3e24:	1c5a      	adds	r2, r3, #1
    3e26:	4b0c      	ldr	r3, [pc, #48]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3e28:	18d3      	adds	r3, r2, r3
    3e2a:	0019      	movs	r1, r3
    3e2c:	f7ff fed6 	bl	3bdc <u16tobe>
    3e30:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3e32:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3e34:	1ad3      	subs	r3, r2, r3
    3e36:	105b      	asrs	r3, r3, #1
    3e38:	b298      	uxth	r0, r3
    3e3a:	687b      	ldr	r3, [r7, #4]
    3e3c:	1cda      	adds	r2, r3, #3
    3e3e:	4b06      	ldr	r3, [pc, #24]	; (3e58 <pdu_read_fifo_queue+0x1fc>)
    3e40:	18d3      	adds	r3, r2, r3
    3e42:	0019      	movs	r1, r3
    3e44:	f7ff feca 	bl	3bdc <u16tobe>
    3e48:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e4a:	0018      	movs	r0, r3
    3e4c:	46bd      	mov	sp, r7
    3e4e:	b010      	add	sp, #64	; 0x40
    3e50:	bd80      	pop	{r7, pc}
    3e52:	46c0      	nop			; (mov r8, r8)
    3e54:	20005dc0 	.word	0x20005dc0
    3e58:	20005dc4 	.word	0x20005dc4

00003e5c <pdu_read_holding_registers>:
    3e5c:	b580      	push	{r7, lr}
    3e5e:	b086      	sub	sp, #24
    3e60:	af00      	add	r7, sp, #0
    3e62:	6078      	str	r0, [r7, #4]
    3e64:	4b49      	ldr	r3, [pc, #292]	; (3f8c <pdu_read_holding_registers+0x130>)
    3e66:	681a      	ldr	r2, [r3, #0]
    3e68:	687b      	ldr	r3, [r7, #4]
    3e6a:	18d2      	adds	r2, r2, r3
    3e6c:	230f      	movs	r3, #15
    3e6e:	18fb      	adds	r3, r7, r3
    3e70:	7812      	ldrb	r2, [r2, #0]
    3e72:	701a      	strb	r2, [r3, #0]
    3e74:	4b45      	ldr	r3, [pc, #276]	; (3f8c <pdu_read_holding_registers+0x130>)
    3e76:	681a      	ldr	r2, [r3, #0]
    3e78:	687b      	ldr	r3, [r7, #4]
    3e7a:	3301      	adds	r3, #1
    3e7c:	18d3      	adds	r3, r2, r3
    3e7e:	781b      	ldrb	r3, [r3, #0]
    3e80:	021b      	lsls	r3, r3, #8
    3e82:	b21a      	sxth	r2, r3
    3e84:	4b41      	ldr	r3, [pc, #260]	; (3f8c <pdu_read_holding_registers+0x130>)
    3e86:	6819      	ldr	r1, [r3, #0]
    3e88:	687b      	ldr	r3, [r7, #4]
    3e8a:	3302      	adds	r3, #2
    3e8c:	18cb      	adds	r3, r1, r3
    3e8e:	781b      	ldrb	r3, [r3, #0]
    3e90:	b21b      	sxth	r3, r3
    3e92:	4313      	orrs	r3, r2
    3e94:	b21a      	sxth	r2, r3
    3e96:	230c      	movs	r3, #12
    3e98:	18fb      	adds	r3, r7, r3
    3e9a:	801a      	strh	r2, [r3, #0]
    3e9c:	4b3b      	ldr	r3, [pc, #236]	; (3f8c <pdu_read_holding_registers+0x130>)
    3e9e:	681a      	ldr	r2, [r3, #0]
    3ea0:	687b      	ldr	r3, [r7, #4]
    3ea2:	3303      	adds	r3, #3
    3ea4:	18d3      	adds	r3, r2, r3
    3ea6:	781b      	ldrb	r3, [r3, #0]
    3ea8:	021b      	lsls	r3, r3, #8
    3eaa:	b21a      	sxth	r2, r3
    3eac:	4b37      	ldr	r3, [pc, #220]	; (3f8c <pdu_read_holding_registers+0x130>)
    3eae:	6819      	ldr	r1, [r3, #0]
    3eb0:	687b      	ldr	r3, [r7, #4]
    3eb2:	3304      	adds	r3, #4
    3eb4:	18cb      	adds	r3, r1, r3
    3eb6:	781b      	ldrb	r3, [r3, #0]
    3eb8:	b21b      	sxth	r3, r3
    3eba:	4313      	orrs	r3, r2
    3ebc:	b21a      	sxth	r2, r3
    3ebe:	230a      	movs	r3, #10
    3ec0:	18fb      	adds	r3, r7, r3
    3ec2:	801a      	strh	r2, [r3, #0]
    3ec4:	230c      	movs	r3, #12
    3ec6:	18fb      	adds	r3, r7, r3
    3ec8:	881a      	ldrh	r2, [r3, #0]
    3eca:	230a      	movs	r3, #10
    3ecc:	18fb      	adds	r3, r7, r3
    3ece:	881b      	ldrh	r3, [r3, #0]
    3ed0:	18d3      	adds	r3, r2, r3
    3ed2:	2b18      	cmp	r3, #24
    3ed4:	dd14      	ble.n	3f00 <pdu_read_holding_registers+0xa4>
    3ed6:	687b      	ldr	r3, [r7, #4]
    3ed8:	613b      	str	r3, [r7, #16]
    3eda:	693b      	ldr	r3, [r7, #16]
    3edc:	1c5a      	adds	r2, r3, #1
    3ede:	613a      	str	r2, [r7, #16]
    3ee0:	220f      	movs	r2, #15
    3ee2:	18ba      	adds	r2, r7, r2
    3ee4:	7812      	ldrb	r2, [r2, #0]
    3ee6:	2180      	movs	r1, #128	; 0x80
    3ee8:	4249      	negs	r1, r1
    3eea:	430a      	orrs	r2, r1
    3eec:	b2d1      	uxtb	r1, r2
    3eee:	4a28      	ldr	r2, [pc, #160]	; (3f90 <pdu_read_holding_registers+0x134>)
    3ef0:	54d1      	strb	r1, [r2, r3]
    3ef2:	693b      	ldr	r3, [r7, #16]
    3ef4:	1c5a      	adds	r2, r3, #1
    3ef6:	613a      	str	r2, [r7, #16]
    3ef8:	4a25      	ldr	r2, [pc, #148]	; (3f90 <pdu_read_holding_registers+0x134>)
    3efa:	2102      	movs	r1, #2
    3efc:	54d1      	strb	r1, [r2, r3]
    3efe:	e03f      	b.n	3f80 <pdu_read_holding_registers+0x124>
    3f00:	687b      	ldr	r3, [r7, #4]
    3f02:	613b      	str	r3, [r7, #16]
    3f04:	693b      	ldr	r3, [r7, #16]
    3f06:	1c5a      	adds	r2, r3, #1
    3f08:	613a      	str	r2, [r7, #16]
    3f0a:	4a21      	ldr	r2, [pc, #132]	; (3f90 <pdu_read_holding_registers+0x134>)
    3f0c:	210f      	movs	r1, #15
    3f0e:	1879      	adds	r1, r7, r1
    3f10:	7809      	ldrb	r1, [r1, #0]
    3f12:	54d1      	strb	r1, [r2, r3]
    3f14:	693b      	ldr	r3, [r7, #16]
    3f16:	1c5a      	adds	r2, r3, #1
    3f18:	613a      	str	r2, [r7, #16]
    3f1a:	220a      	movs	r2, #10
    3f1c:	18ba      	adds	r2, r7, r2
    3f1e:	8812      	ldrh	r2, [r2, #0]
    3f20:	b2d2      	uxtb	r2, r2
    3f22:	1892      	adds	r2, r2, r2
    3f24:	b2d1      	uxtb	r1, r2
    3f26:	4a1a      	ldr	r2, [pc, #104]	; (3f90 <pdu_read_holding_registers+0x134>)
    3f28:	54d1      	strb	r1, [r2, r3]
    3f2a:	2300      	movs	r3, #0
    3f2c:	617b      	str	r3, [r7, #20]
    3f2e:	e021      	b.n	3f74 <pdu_read_holding_registers+0x118>
    3f30:	230c      	movs	r3, #12
    3f32:	18fb      	adds	r3, r7, r3
    3f34:	881a      	ldrh	r2, [r3, #0]
    3f36:	697b      	ldr	r3, [r7, #20]
    3f38:	18d1      	adds	r1, r2, r3
    3f3a:	2308      	movs	r3, #8
    3f3c:	18fb      	adds	r3, r7, r3
    3f3e:	4a15      	ldr	r2, [pc, #84]	; (3f94 <pdu_read_holding_registers+0x138>)
    3f40:	0049      	lsls	r1, r1, #1
    3f42:	5a8a      	ldrh	r2, [r1, r2]
    3f44:	801a      	strh	r2, [r3, #0]
    3f46:	693b      	ldr	r3, [r7, #16]
    3f48:	1c5a      	adds	r2, r3, #1
    3f4a:	613a      	str	r2, [r7, #16]
    3f4c:	2208      	movs	r2, #8
    3f4e:	18ba      	adds	r2, r7, r2
    3f50:	8812      	ldrh	r2, [r2, #0]
    3f52:	0a12      	lsrs	r2, r2, #8
    3f54:	b292      	uxth	r2, r2
    3f56:	b2d1      	uxtb	r1, r2
    3f58:	4a0d      	ldr	r2, [pc, #52]	; (3f90 <pdu_read_holding_registers+0x134>)
    3f5a:	54d1      	strb	r1, [r2, r3]
    3f5c:	693b      	ldr	r3, [r7, #16]
    3f5e:	1c5a      	adds	r2, r3, #1
    3f60:	613a      	str	r2, [r7, #16]
    3f62:	2208      	movs	r2, #8
    3f64:	18ba      	adds	r2, r7, r2
    3f66:	8812      	ldrh	r2, [r2, #0]
    3f68:	b2d1      	uxtb	r1, r2
    3f6a:	4a09      	ldr	r2, [pc, #36]	; (3f90 <pdu_read_holding_registers+0x134>)
    3f6c:	54d1      	strb	r1, [r2, r3]
    3f6e:	697b      	ldr	r3, [r7, #20]
    3f70:	3301      	adds	r3, #1
    3f72:	617b      	str	r3, [r7, #20]
    3f74:	230a      	movs	r3, #10
    3f76:	18fb      	adds	r3, r7, r3
    3f78:	881a      	ldrh	r2, [r3, #0]
    3f7a:	697b      	ldr	r3, [r7, #20]
    3f7c:	429a      	cmp	r2, r3
    3f7e:	dcd7      	bgt.n	3f30 <pdu_read_holding_registers+0xd4>
    3f80:	693b      	ldr	r3, [r7, #16]
    3f82:	0018      	movs	r0, r3
    3f84:	46bd      	mov	sp, r7
    3f86:	b006      	add	sp, #24
    3f88:	bd80      	pop	{r7, pc}
    3f8a:	46c0      	nop			; (mov r8, r8)
    3f8c:	20005dc0 	.word	0x20005dc0
    3f90:	20005dc4 	.word	0x20005dc4
    3f94:	20005d84 	.word	0x20005d84

00003f98 <pdu_illegal_function_error>:
    3f98:	b580      	push	{r7, lr}
    3f9a:	b084      	sub	sp, #16
    3f9c:	af00      	add	r7, sp, #0
    3f9e:	6078      	str	r0, [r7, #4]
    3fa0:	4b10      	ldr	r3, [pc, #64]	; (3fe4 <pdu_illegal_function_error+0x4c>)
    3fa2:	681a      	ldr	r2, [r3, #0]
    3fa4:	687b      	ldr	r3, [r7, #4]
    3fa6:	18d2      	adds	r2, r2, r3
    3fa8:	230f      	movs	r3, #15
    3faa:	18fb      	adds	r3, r7, r3
    3fac:	7812      	ldrb	r2, [r2, #0]
    3fae:	701a      	strb	r2, [r3, #0]
    3fb0:	687b      	ldr	r3, [r7, #4]
    3fb2:	60bb      	str	r3, [r7, #8]
    3fb4:	68bb      	ldr	r3, [r7, #8]
    3fb6:	1c5a      	adds	r2, r3, #1
    3fb8:	60ba      	str	r2, [r7, #8]
    3fba:	220f      	movs	r2, #15
    3fbc:	18ba      	adds	r2, r7, r2
    3fbe:	7812      	ldrb	r2, [r2, #0]
    3fc0:	2180      	movs	r1, #128	; 0x80
    3fc2:	4249      	negs	r1, r1
    3fc4:	430a      	orrs	r2, r1
    3fc6:	b2d1      	uxtb	r1, r2
    3fc8:	4a07      	ldr	r2, [pc, #28]	; (3fe8 <pdu_illegal_function_error+0x50>)
    3fca:	54d1      	strb	r1, [r2, r3]
    3fcc:	68bb      	ldr	r3, [r7, #8]
    3fce:	1c5a      	adds	r2, r3, #1
    3fd0:	60ba      	str	r2, [r7, #8]
    3fd2:	4a05      	ldr	r2, [pc, #20]	; (3fe8 <pdu_illegal_function_error+0x50>)
    3fd4:	2101      	movs	r1, #1
    3fd6:	54d1      	strb	r1, [r2, r3]
    3fd8:	68bb      	ldr	r3, [r7, #8]
    3fda:	0018      	movs	r0, r3
    3fdc:	46bd      	mov	sp, r7
    3fde:	b004      	add	sp, #16
    3fe0:	bd80      	pop	{r7, pc}
    3fe2:	46c0      	nop			; (mov r8, r8)
    3fe4:	20005dc0 	.word	0x20005dc0
    3fe8:	20005dc4 	.word	0x20005dc4

00003fec <mdb_proc_adu>:
    3fec:	b580      	push	{r7, lr}
    3fee:	b086      	sub	sp, #24
    3ff0:	af00      	add	r7, sp, #0
    3ff2:	6078      	str	r0, [r7, #4]
    3ff4:	4b39      	ldr	r3, [pc, #228]	; (40dc <mdb_proc_adu+0xf0>)
    3ff6:	687a      	ldr	r2, [r7, #4]
    3ff8:	601a      	str	r2, [r3, #0]
    3ffa:	4b38      	ldr	r3, [pc, #224]	; (40dc <mdb_proc_adu+0xf0>)
    3ffc:	681b      	ldr	r3, [r3, #0]
    3ffe:	781b      	ldrb	r3, [r3, #0]
    4000:	021b      	lsls	r3, r3, #8
    4002:	b21a      	sxth	r2, r3
    4004:	4b35      	ldr	r3, [pc, #212]	; (40dc <mdb_proc_adu+0xf0>)
    4006:	681b      	ldr	r3, [r3, #0]
    4008:	3301      	adds	r3, #1
    400a:	781b      	ldrb	r3, [r3, #0]
    400c:	b21b      	sxth	r3, r3
    400e:	4313      	orrs	r3, r2
    4010:	b21a      	sxth	r2, r3
    4012:	2312      	movs	r3, #18
    4014:	18fb      	adds	r3, r7, r3
    4016:	801a      	strh	r2, [r3, #0]
    4018:	4b30      	ldr	r3, [pc, #192]	; (40dc <mdb_proc_adu+0xf0>)
    401a:	681b      	ldr	r3, [r3, #0]
    401c:	3302      	adds	r3, #2
    401e:	781b      	ldrb	r3, [r3, #0]
    4020:	021b      	lsls	r3, r3, #8
    4022:	b21a      	sxth	r2, r3
    4024:	4b2d      	ldr	r3, [pc, #180]	; (40dc <mdb_proc_adu+0xf0>)
    4026:	681b      	ldr	r3, [r3, #0]
    4028:	3303      	adds	r3, #3
    402a:	781b      	ldrb	r3, [r3, #0]
    402c:	b21b      	sxth	r3, r3
    402e:	4313      	orrs	r3, r2
    4030:	b21a      	sxth	r2, r3
    4032:	2310      	movs	r3, #16
    4034:	18fb      	adds	r3, r7, r3
    4036:	801a      	strh	r2, [r3, #0]
    4038:	4b28      	ldr	r3, [pc, #160]	; (40dc <mdb_proc_adu+0xf0>)
    403a:	681b      	ldr	r3, [r3, #0]
    403c:	3304      	adds	r3, #4
    403e:	781b      	ldrb	r3, [r3, #0]
    4040:	021b      	lsls	r3, r3, #8
    4042:	b21a      	sxth	r2, r3
    4044:	4b25      	ldr	r3, [pc, #148]	; (40dc <mdb_proc_adu+0xf0>)
    4046:	681b      	ldr	r3, [r3, #0]
    4048:	3305      	adds	r3, #5
    404a:	781b      	ldrb	r3, [r3, #0]
    404c:	b21b      	sxth	r3, r3
    404e:	4313      	orrs	r3, r2
    4050:	b21a      	sxth	r2, r3
    4052:	230e      	movs	r3, #14
    4054:	18fb      	adds	r3, r7, r3
    4056:	801a      	strh	r2, [r3, #0]
    4058:	4b20      	ldr	r3, [pc, #128]	; (40dc <mdb_proc_adu+0xf0>)
    405a:	681a      	ldr	r2, [r3, #0]
    405c:	230d      	movs	r3, #13
    405e:	18fb      	adds	r3, r7, r3
    4060:	7992      	ldrb	r2, [r2, #6]
    4062:	701a      	strb	r2, [r3, #0]
    4064:	4b1d      	ldr	r3, [pc, #116]	; (40dc <mdb_proc_adu+0xf0>)
    4066:	681a      	ldr	r2, [r3, #0]
    4068:	230c      	movs	r3, #12
    406a:	18fb      	adds	r3, r7, r3
    406c:	79d2      	ldrb	r2, [r2, #7]
    406e:	701a      	strb	r2, [r3, #0]
    4070:	230d      	movs	r3, #13
    4072:	18fb      	adds	r3, r7, r3
    4074:	781b      	ldrb	r3, [r3, #0]
    4076:	2b11      	cmp	r3, #17
    4078:	d12b      	bne.n	40d2 <mdb_proc_adu+0xe6>
    407a:	230c      	movs	r3, #12
    407c:	18fb      	adds	r3, r7, r3
    407e:	781a      	ldrb	r2, [r3, #0]
    4080:	4b17      	ldr	r3, [pc, #92]	; (40e0 <mdb_proc_adu+0xf4>)
    4082:	0092      	lsls	r2, r2, #2
    4084:	58d3      	ldr	r3, [r2, r3]
    4086:	2007      	movs	r0, #7
    4088:	4798      	blx	r3
    408a:	0003      	movs	r3, r0
    408c:	60bb      	str	r3, [r7, #8]
    408e:	2300      	movs	r3, #0
    4090:	617b      	str	r3, [r7, #20]
    4092:	e00c      	b.n	40ae <mdb_proc_adu+0xc2>
    4094:	4b11      	ldr	r3, [pc, #68]	; (40dc <mdb_proc_adu+0xf0>)
    4096:	681a      	ldr	r2, [r3, #0]
    4098:	697b      	ldr	r3, [r7, #20]
    409a:	18d3      	adds	r3, r2, r3
    409c:	7819      	ldrb	r1, [r3, #0]
    409e:	4a11      	ldr	r2, [pc, #68]	; (40e4 <mdb_proc_adu+0xf8>)
    40a0:	697b      	ldr	r3, [r7, #20]
    40a2:	18d3      	adds	r3, r2, r3
    40a4:	1c0a      	adds	r2, r1, #0
    40a6:	701a      	strb	r2, [r3, #0]
    40a8:	697b      	ldr	r3, [r7, #20]
    40aa:	3301      	adds	r3, #1
    40ac:	617b      	str	r3, [r7, #20]
    40ae:	697b      	ldr	r3, [r7, #20]
    40b0:	2b06      	cmp	r3, #6
    40b2:	ddef      	ble.n	4094 <mdb_proc_adu+0xa8>
    40b4:	4b0b      	ldr	r3, [pc, #44]	; (40e4 <mdb_proc_adu+0xf8>)
    40b6:	2200      	movs	r2, #0
    40b8:	711a      	strb	r2, [r3, #4]
    40ba:	68bb      	ldr	r3, [r7, #8]
    40bc:	b2db      	uxtb	r3, r3
    40be:	3b06      	subs	r3, #6
    40c0:	b2da      	uxtb	r2, r3
    40c2:	4b08      	ldr	r3, [pc, #32]	; (40e4 <mdb_proc_adu+0xf8>)
    40c4:	715a      	strb	r2, [r3, #5]
    40c6:	68ba      	ldr	r2, [r7, #8]
    40c8:	4b06      	ldr	r3, [pc, #24]	; (40e4 <mdb_proc_adu+0xf8>)
    40ca:	0011      	movs	r1, r2
    40cc:	0018      	movs	r0, r3
    40ce:	f7fe fdd3 	bl	2c78 <Send_UDP>
    40d2:	46c0      	nop			; (mov r8, r8)
    40d4:	46bd      	mov	sp, r7
    40d6:	b006      	add	sp, #24
    40d8:	bd80      	pop	{r7, pc}
    40da:	46c0      	nop			; (mov r8, r8)
    40dc:	20005dc0 	.word	0x20005dc0
    40e0:	00008d34 	.word	0x00008d34
    40e4:	20005dc4 	.word	0x20005dc4

000040e8 <fsm_get_cyccnt>:
    40e8:	b580      	push	{r7, lr}
    40ea:	af00      	add	r7, sp, #0
    40ec:	4b02      	ldr	r3, [pc, #8]	; (40f8 <fsm_get_cyccnt+0x10>)
    40ee:	681b      	ldr	r3, [r3, #0]
    40f0:	0018      	movs	r0, r3
    40f2:	46bd      	mov	sp, r7
    40f4:	bd80      	pop	{r7, pc}
    40f6:	46c0      	nop			; (mov r8, r8)
    40f8:	20005fc0 	.word	0x20005fc0

000040fc <fsm_idle>:
    40fc:	b580      	push	{r7, lr}
    40fe:	b084      	sub	sp, #16
    4100:	af00      	add	r7, sp, #0
    4102:	6078      	str	r0, [r7, #4]
    4104:	230f      	movs	r3, #15
    4106:	18fb      	adds	r3, r7, r3
    4108:	687a      	ldr	r2, [r7, #4]
    410a:	701a      	strb	r2, [r3, #0]
    410c:	230f      	movs	r3, #15
    410e:	18fb      	adds	r3, r7, r3
    4110:	781b      	ldrb	r3, [r3, #0]
    4112:	2b01      	cmp	r3, #1
    4114:	d12e      	bne.n	4174 <fsm_idle+0x78>
    4116:	4b19      	ldr	r3, [pc, #100]	; (417c <fsm_idle+0x80>)
    4118:	0018      	movs	r0, r3
    411a:	f7ff fa79 	bl	3610 <mdb_get_testparam>
    411e:	4b17      	ldr	r3, [pc, #92]	; (417c <fsm_idle+0x80>)
    4120:	681a      	ldr	r2, [r3, #0]
    4122:	4b17      	ldr	r3, [pc, #92]	; (4180 <fsm_idle+0x84>)
    4124:	601a      	str	r2, [r3, #0]
    4126:	4b16      	ldr	r3, [pc, #88]	; (4180 <fsm_idle+0x84>)
    4128:	681b      	ldr	r3, [r3, #0]
    412a:	2b00      	cmp	r3, #0
    412c:	d022      	beq.n	4174 <fsm_idle+0x78>
    412e:	4b15      	ldr	r3, [pc, #84]	; (4184 <fsm_idle+0x88>)
    4130:	4a15      	ldr	r2, [pc, #84]	; (4188 <fsm_idle+0x8c>)
    4132:	601a      	str	r2, [r3, #0]
    4134:	4b15      	ldr	r3, [pc, #84]	; (418c <fsm_idle+0x90>)
    4136:	2200      	movs	r2, #0
    4138:	601a      	str	r2, [r3, #0]
    413a:	f7fc f849 	bl	1d0 <dut_start>
    413e:	4b0f      	ldr	r3, [pc, #60]	; (417c <fsm_idle+0x80>)
    4140:	685b      	ldr	r3, [r3, #4]
    4142:	0018      	movs	r0, r3
    4144:	f7fc f86c 	bl	220 <dut_set_speed>
    4148:	4b0c      	ldr	r3, [pc, #48]	; (417c <fsm_idle+0x80>)
    414a:	68db      	ldr	r3, [r3, #12]
    414c:	4a0b      	ldr	r2, [pc, #44]	; (417c <fsm_idle+0x80>)
    414e:	8b52      	ldrh	r2, [r2, #26]
    4150:	435a      	muls	r2, r3
    4152:	0013      	movs	r3, r2
    4154:	009b      	lsls	r3, r3, #2
    4156:	189b      	adds	r3, r3, r2
    4158:	009b      	lsls	r3, r3, #2
    415a:	2280      	movs	r2, #128	; 0x80
    415c:	00d2      	lsls	r2, r2, #3
    415e:	4694      	mov	ip, r2
    4160:	4463      	add	r3, ip
    4162:	0adb      	lsrs	r3, r3, #11
    4164:	60bb      	str	r3, [r7, #8]
    4166:	68bb      	ldr	r3, [r7, #8]
    4168:	0018      	movs	r0, r3
    416a:	f7fc f869 	bl	240 <dut_set_torque>
    416e:	4b08      	ldr	r3, [pc, #32]	; (4190 <fsm_idle+0x94>)
    4170:	68ba      	ldr	r2, [r7, #8]
    4172:	601a      	str	r2, [r3, #0]
    4174:	46c0      	nop			; (mov r8, r8)
    4176:	46bd      	mov	sp, r7
    4178:	b004      	add	sp, #16
    417a:	bd80      	pop	{r7, pc}
    417c:	20005fc8 	.word	0x20005fc8
    4180:	20005fc0 	.word	0x20005fc0
    4184:	20000010 	.word	0x20000010
    4188:	00004275 	.word	0x00004275
    418c:	20005fc4 	.word	0x20005fc4
    4190:	20005fec 	.word	0x20005fec

00004194 <fsm_wait>:
    4194:	b580      	push	{r7, lr}
    4196:	b086      	sub	sp, #24
    4198:	af00      	add	r7, sp, #0
    419a:	6078      	str	r0, [r7, #4]
    419c:	2313      	movs	r3, #19
    419e:	18fb      	adds	r3, r7, r3
    41a0:	687a      	ldr	r2, [r7, #4]
    41a2:	701a      	strb	r2, [r3, #0]
    41a4:	687b      	ldr	r3, [r7, #4]
    41a6:	0a1b      	lsrs	r3, r3, #8
    41a8:	60fb      	str	r3, [r7, #12]
    41aa:	2313      	movs	r3, #19
    41ac:	18fb      	adds	r3, r7, r3
    41ae:	781b      	ldrb	r3, [r3, #0]
    41b0:	2b04      	cmp	r3, #4
    41b2:	d13b      	bne.n	422c <fsm_wait+0x98>
    41b4:	68fb      	ldr	r3, [r7, #12]
    41b6:	60bb      	str	r3, [r7, #8]
    41b8:	2300      	movs	r3, #0
    41ba:	617b      	str	r3, [r7, #20]
    41bc:	4b28      	ldr	r3, [pc, #160]	; (4260 <fsm_wait+0xcc>)
    41be:	681b      	ldr	r3, [r3, #0]
    41c0:	2b04      	cmp	r3, #4
    41c2:	d903      	bls.n	41cc <fsm_wait+0x38>
    41c4:	4b27      	ldr	r3, [pc, #156]	; (4264 <fsm_wait+0xd0>)
    41c6:	689b      	ldr	r3, [r3, #8]
    41c8:	617b      	str	r3, [r7, #20]
    41ca:	e012      	b.n	41f2 <fsm_wait+0x5e>
    41cc:	4b25      	ldr	r3, [pc, #148]	; (4264 <fsm_wait+0xd0>)
    41ce:	689a      	ldr	r2, [r3, #8]
    41d0:	4b23      	ldr	r3, [pc, #140]	; (4260 <fsm_wait+0xcc>)
    41d2:	6819      	ldr	r1, [r3, #0]
    41d4:	4b23      	ldr	r3, [pc, #140]	; (4264 <fsm_wait+0xd0>)
    41d6:	3108      	adds	r1, #8
    41d8:	0049      	lsls	r1, r1, #1
    41da:	5acb      	ldrh	r3, [r1, r3]
    41dc:	435a      	muls	r2, r3
    41de:	0013      	movs	r3, r2
    41e0:	009b      	lsls	r3, r3, #2
    41e2:	189b      	adds	r3, r3, r2
    41e4:	009b      	lsls	r3, r3, #2
    41e6:	2280      	movs	r2, #128	; 0x80
    41e8:	00d2      	lsls	r2, r2, #3
    41ea:	4694      	mov	ip, r2
    41ec:	4463      	add	r3, ip
    41ee:	0adb      	lsrs	r3, r3, #11
    41f0:	617b      	str	r3, [r7, #20]
    41f2:	68ba      	ldr	r2, [r7, #8]
    41f4:	697b      	ldr	r3, [r7, #20]
    41f6:	429a      	cmp	r2, r3
    41f8:	d318      	bcc.n	422c <fsm_wait+0x98>
    41fa:	4b19      	ldr	r3, [pc, #100]	; (4260 <fsm_wait+0xcc>)
    41fc:	681b      	ldr	r3, [r3, #0]
    41fe:	1c59      	adds	r1, r3, #1
    4200:	4a17      	ldr	r2, [pc, #92]	; (4260 <fsm_wait+0xcc>)
    4202:	6011      	str	r1, [r2, #0]
    4204:	2b05      	cmp	r3, #5
    4206:	d111      	bne.n	422c <fsm_wait+0x98>
    4208:	4b17      	ldr	r3, [pc, #92]	; (4268 <fsm_wait+0xd4>)
    420a:	2200      	movs	r2, #0
    420c:	601a      	str	r2, [r3, #0]
    420e:	4b14      	ldr	r3, [pc, #80]	; (4260 <fsm_wait+0xcc>)
    4210:	2200      	movs	r2, #0
    4212:	601a      	str	r2, [r3, #0]
    4214:	2000      	movs	r0, #0
    4216:	f7fc f803 	bl	220 <dut_set_speed>
    421a:	2000      	movs	r0, #0
    421c:	f7fc f810 	bl	240 <dut_set_torque>
    4220:	f7fb ffea 	bl	1f8 <dut_stop>
    4224:	4b11      	ldr	r3, [pc, #68]	; (426c <fsm_wait+0xd8>)
    4226:	4a12      	ldr	r2, [pc, #72]	; (4270 <fsm_wait+0xdc>)
    4228:	601a      	str	r2, [r3, #0]
    422a:	e016      	b.n	425a <fsm_wait+0xc6>
    422c:	2313      	movs	r3, #19
    422e:	18fb      	adds	r3, r7, r3
    4230:	781b      	ldrb	r3, [r3, #0]
    4232:	2b03      	cmp	r3, #3
    4234:	d111      	bne.n	425a <fsm_wait+0xc6>
    4236:	4b0c      	ldr	r3, [pc, #48]	; (4268 <fsm_wait+0xd4>)
    4238:	2200      	movs	r2, #0
    423a:	601a      	str	r2, [r3, #0]
    423c:	4b08      	ldr	r3, [pc, #32]	; (4260 <fsm_wait+0xcc>)
    423e:	2200      	movs	r2, #0
    4240:	601a      	str	r2, [r3, #0]
    4242:	2000      	movs	r0, #0
    4244:	f7fb ffec 	bl	220 <dut_set_speed>
    4248:	2000      	movs	r0, #0
    424a:	f7fb fff9 	bl	240 <dut_set_torque>
    424e:	f7fb ffd3 	bl	1f8 <dut_stop>
    4252:	4b06      	ldr	r3, [pc, #24]	; (426c <fsm_wait+0xd8>)
    4254:	4a06      	ldr	r2, [pc, #24]	; (4270 <fsm_wait+0xdc>)
    4256:	601a      	str	r2, [r3, #0]
    4258:	46c0      	nop			; (mov r8, r8)
    425a:	46bd      	mov	sp, r7
    425c:	b006      	add	sp, #24
    425e:	bd80      	pop	{r7, pc}
    4260:	20005fc4 	.word	0x20005fc4
    4264:	20005fc8 	.word	0x20005fc8
    4268:	20005fc0 	.word	0x20005fc0
    426c:	20000010 	.word	0x20000010
    4270:	000040fd 	.word	0x000040fd

00004274 <fsm_work>:
    4274:	b580      	push	{r7, lr}
    4276:	b088      	sub	sp, #32
    4278:	af00      	add	r7, sp, #0
    427a:	6078      	str	r0, [r7, #4]
    427c:	231b      	movs	r3, #27
    427e:	18fb      	adds	r3, r7, r3
    4280:	687a      	ldr	r2, [r7, #4]
    4282:	701a      	strb	r2, [r3, #0]
    4284:	687b      	ldr	r3, [r7, #4]
    4286:	0a1b      	lsrs	r3, r3, #8
    4288:	617b      	str	r3, [r7, #20]
    428a:	231b      	movs	r3, #27
    428c:	18fb      	adds	r3, r7, r3
    428e:	781b      	ldrb	r3, [r3, #0]
    4290:	2b04      	cmp	r3, #4
    4292:	d169      	bne.n	4368 <fsm_work+0xf4>
    4294:	697b      	ldr	r3, [r7, #20]
    4296:	613b      	str	r3, [r7, #16]
    4298:	2300      	movs	r3, #0
    429a:	61fb      	str	r3, [r7, #28]
    429c:	4b43      	ldr	r3, [pc, #268]	; (43ac <fsm_work+0x138>)
    429e:	681b      	ldr	r3, [r3, #0]
    42a0:	2b04      	cmp	r3, #4
    42a2:	d903      	bls.n	42ac <fsm_work+0x38>
    42a4:	4b42      	ldr	r3, [pc, #264]	; (43b0 <fsm_work+0x13c>)
    42a6:	689b      	ldr	r3, [r3, #8]
    42a8:	61fb      	str	r3, [r7, #28]
    42aa:	e012      	b.n	42d2 <fsm_work+0x5e>
    42ac:	4b40      	ldr	r3, [pc, #256]	; (43b0 <fsm_work+0x13c>)
    42ae:	689a      	ldr	r2, [r3, #8]
    42b0:	4b3e      	ldr	r3, [pc, #248]	; (43ac <fsm_work+0x138>)
    42b2:	6819      	ldr	r1, [r3, #0]
    42b4:	4b3e      	ldr	r3, [pc, #248]	; (43b0 <fsm_work+0x13c>)
    42b6:	3108      	adds	r1, #8
    42b8:	0049      	lsls	r1, r1, #1
    42ba:	5acb      	ldrh	r3, [r1, r3]
    42bc:	435a      	muls	r2, r3
    42be:	0013      	movs	r3, r2
    42c0:	009b      	lsls	r3, r3, #2
    42c2:	189b      	adds	r3, r3, r2
    42c4:	009b      	lsls	r3, r3, #2
    42c6:	2280      	movs	r2, #128	; 0x80
    42c8:	00d2      	lsls	r2, r2, #3
    42ca:	4694      	mov	ip, r2
    42cc:	4463      	add	r3, ip
    42ce:	0adb      	lsrs	r3, r3, #11
    42d0:	61fb      	str	r3, [r7, #28]
    42d2:	693b      	ldr	r3, [r7, #16]
    42d4:	2b00      	cmp	r3, #0
    42d6:	d101      	bne.n	42dc <fsm_work+0x68>
    42d8:	f7fb ff7a 	bl	1d0 <dut_start>
    42dc:	693a      	ldr	r2, [r7, #16]
    42de:	69fb      	ldr	r3, [r7, #28]
    42e0:	429a      	cmp	r2, r3
    42e2:	d331      	bcc.n	4348 <fsm_work+0xd4>
    42e4:	4b31      	ldr	r3, [pc, #196]	; (43ac <fsm_work+0x138>)
    42e6:	681b      	ldr	r3, [r3, #0]
    42e8:	1c59      	adds	r1, r3, #1
    42ea:	4a30      	ldr	r2, [pc, #192]	; (43ac <fsm_work+0x138>)
    42ec:	6011      	str	r1, [r2, #0]
    42ee:	2b05      	cmp	r3, #5
    42f0:	d10a      	bne.n	4308 <fsm_work+0x94>
    42f2:	4b2e      	ldr	r3, [pc, #184]	; (43ac <fsm_work+0x138>)
    42f4:	2200      	movs	r2, #0
    42f6:	601a      	str	r2, [r3, #0]
    42f8:	4b2e      	ldr	r3, [pc, #184]	; (43b4 <fsm_work+0x140>)
    42fa:	681b      	ldr	r3, [r3, #0]
    42fc:	1e5a      	subs	r2, r3, #1
    42fe:	4b2d      	ldr	r3, [pc, #180]	; (43b4 <fsm_work+0x140>)
    4300:	601a      	str	r2, [r3, #0]
    4302:	f7fb ff79 	bl	1f8 <dut_stop>
    4306:	e01f      	b.n	4348 <fsm_work+0xd4>
    4308:	4b28      	ldr	r3, [pc, #160]	; (43ac <fsm_work+0x138>)
    430a:	681b      	ldr	r3, [r3, #0]
    430c:	2b04      	cmp	r3, #4
    430e:	d81b      	bhi.n	4348 <fsm_work+0xd4>
    4310:	4b27      	ldr	r3, [pc, #156]	; (43b0 <fsm_work+0x13c>)
    4312:	68da      	ldr	r2, [r3, #12]
    4314:	4b25      	ldr	r3, [pc, #148]	; (43ac <fsm_work+0x138>)
    4316:	681b      	ldr	r3, [r3, #0]
    4318:	4925      	ldr	r1, [pc, #148]	; (43b0 <fsm_work+0x13c>)
    431a:	330c      	adds	r3, #12
    431c:	005b      	lsls	r3, r3, #1
    431e:	18cb      	adds	r3, r1, r3
    4320:	3302      	adds	r3, #2
    4322:	881b      	ldrh	r3, [r3, #0]
    4324:	435a      	muls	r2, r3
    4326:	0013      	movs	r3, r2
    4328:	009b      	lsls	r3, r3, #2
    432a:	189b      	adds	r3, r3, r2
    432c:	009b      	lsls	r3, r3, #2
    432e:	2280      	movs	r2, #128	; 0x80
    4330:	00d2      	lsls	r2, r2, #3
    4332:	4694      	mov	ip, r2
    4334:	4463      	add	r3, ip
    4336:	0adb      	lsrs	r3, r3, #11
    4338:	60fb      	str	r3, [r7, #12]
    433a:	68fb      	ldr	r3, [r7, #12]
    433c:	0018      	movs	r0, r3
    433e:	f7fb ff7f 	bl	240 <dut_set_torque>
    4342:	4b1d      	ldr	r3, [pc, #116]	; (43b8 <fsm_work+0x144>)
    4344:	68fa      	ldr	r2, [r7, #12]
    4346:	601a      	str	r2, [r3, #0]
    4348:	4b1a      	ldr	r3, [pc, #104]	; (43b4 <fsm_work+0x140>)
    434a:	681b      	ldr	r3, [r3, #0]
    434c:	2b00      	cmp	r3, #0
    434e:	d10b      	bne.n	4368 <fsm_work+0xf4>
    4350:	4b1a      	ldr	r3, [pc, #104]	; (43bc <fsm_work+0x148>)
    4352:	4a1b      	ldr	r2, [pc, #108]	; (43c0 <fsm_work+0x14c>)
    4354:	601a      	str	r2, [r3, #0]
    4356:	2000      	movs	r0, #0
    4358:	f7fb ff62 	bl	220 <dut_set_speed>
    435c:	2000      	movs	r0, #0
    435e:	f7fb ff6f 	bl	240 <dut_set_torque>
    4362:	f7fb ff49 	bl	1f8 <dut_stop>
    4366:	e01e      	b.n	43a6 <fsm_work+0x132>
    4368:	231b      	movs	r3, #27
    436a:	18fb      	adds	r3, r7, r3
    436c:	781b      	ldrb	r3, [r3, #0]
    436e:	2b03      	cmp	r3, #3
    4370:	d111      	bne.n	4396 <fsm_work+0x122>
    4372:	4b12      	ldr	r3, [pc, #72]	; (43bc <fsm_work+0x148>)
    4374:	4a12      	ldr	r2, [pc, #72]	; (43c0 <fsm_work+0x14c>)
    4376:	601a      	str	r2, [r3, #0]
    4378:	2000      	movs	r0, #0
    437a:	f7fb ff51 	bl	220 <dut_set_speed>
    437e:	2000      	movs	r0, #0
    4380:	f7fb ff5e 	bl	240 <dut_set_torque>
    4384:	f7fb ff38 	bl	1f8 <dut_stop>
    4388:	4b0a      	ldr	r3, [pc, #40]	; (43b4 <fsm_work+0x140>)
    438a:	2200      	movs	r2, #0
    438c:	601a      	str	r2, [r3, #0]
    438e:	4b07      	ldr	r3, [pc, #28]	; (43ac <fsm_work+0x138>)
    4390:	2200      	movs	r2, #0
    4392:	601a      	str	r2, [r3, #0]
    4394:	e007      	b.n	43a6 <fsm_work+0x132>
    4396:	231b      	movs	r3, #27
    4398:	18fb      	adds	r3, r7, r3
    439a:	781b      	ldrb	r3, [r3, #0]
    439c:	2b02      	cmp	r3, #2
    439e:	d102      	bne.n	43a6 <fsm_work+0x132>
    43a0:	4b06      	ldr	r3, [pc, #24]	; (43bc <fsm_work+0x148>)
    43a2:	4a08      	ldr	r2, [pc, #32]	; (43c4 <fsm_work+0x150>)
    43a4:	601a      	str	r2, [r3, #0]
    43a6:	46bd      	mov	sp, r7
    43a8:	b008      	add	sp, #32
    43aa:	bd80      	pop	{r7, pc}
    43ac:	20005fc4 	.word	0x20005fc4
    43b0:	20005fc8 	.word	0x20005fc8
    43b4:	20005fc0 	.word	0x20005fc0
    43b8:	20005fec 	.word	0x20005fec
    43bc:	20000010 	.word	0x20000010
    43c0:	000040fd 	.word	0x000040fd
    43c4:	00004195 	.word	0x00004195

000043c8 <__aeabi_uidiv>:
    43c8:	2200      	movs	r2, #0
    43ca:	0843      	lsrs	r3, r0, #1
    43cc:	428b      	cmp	r3, r1
    43ce:	d374      	bcc.n	44ba <__aeabi_uidiv+0xf2>
    43d0:	0903      	lsrs	r3, r0, #4
    43d2:	428b      	cmp	r3, r1
    43d4:	d35f      	bcc.n	4496 <__aeabi_uidiv+0xce>
    43d6:	0a03      	lsrs	r3, r0, #8
    43d8:	428b      	cmp	r3, r1
    43da:	d344      	bcc.n	4466 <__aeabi_uidiv+0x9e>
    43dc:	0b03      	lsrs	r3, r0, #12
    43de:	428b      	cmp	r3, r1
    43e0:	d328      	bcc.n	4434 <__aeabi_uidiv+0x6c>
    43e2:	0c03      	lsrs	r3, r0, #16
    43e4:	428b      	cmp	r3, r1
    43e6:	d30d      	bcc.n	4404 <__aeabi_uidiv+0x3c>
    43e8:	22ff      	movs	r2, #255	; 0xff
    43ea:	0209      	lsls	r1, r1, #8
    43ec:	ba12      	rev	r2, r2
    43ee:	0c03      	lsrs	r3, r0, #16
    43f0:	428b      	cmp	r3, r1
    43f2:	d302      	bcc.n	43fa <__aeabi_uidiv+0x32>
    43f4:	1212      	asrs	r2, r2, #8
    43f6:	0209      	lsls	r1, r1, #8
    43f8:	d065      	beq.n	44c6 <__aeabi_uidiv+0xfe>
    43fa:	0b03      	lsrs	r3, r0, #12
    43fc:	428b      	cmp	r3, r1
    43fe:	d319      	bcc.n	4434 <__aeabi_uidiv+0x6c>
    4400:	e000      	b.n	4404 <__aeabi_uidiv+0x3c>
    4402:	0a09      	lsrs	r1, r1, #8
    4404:	0bc3      	lsrs	r3, r0, #15
    4406:	428b      	cmp	r3, r1
    4408:	d301      	bcc.n	440e <__aeabi_uidiv+0x46>
    440a:	03cb      	lsls	r3, r1, #15
    440c:	1ac0      	subs	r0, r0, r3
    440e:	4152      	adcs	r2, r2
    4410:	0b83      	lsrs	r3, r0, #14
    4412:	428b      	cmp	r3, r1
    4414:	d301      	bcc.n	441a <__aeabi_uidiv+0x52>
    4416:	038b      	lsls	r3, r1, #14
    4418:	1ac0      	subs	r0, r0, r3
    441a:	4152      	adcs	r2, r2
    441c:	0b43      	lsrs	r3, r0, #13
    441e:	428b      	cmp	r3, r1
    4420:	d301      	bcc.n	4426 <__aeabi_uidiv+0x5e>
    4422:	034b      	lsls	r3, r1, #13
    4424:	1ac0      	subs	r0, r0, r3
    4426:	4152      	adcs	r2, r2
    4428:	0b03      	lsrs	r3, r0, #12
    442a:	428b      	cmp	r3, r1
    442c:	d301      	bcc.n	4432 <__aeabi_uidiv+0x6a>
    442e:	030b      	lsls	r3, r1, #12
    4430:	1ac0      	subs	r0, r0, r3
    4432:	4152      	adcs	r2, r2
    4434:	0ac3      	lsrs	r3, r0, #11
    4436:	428b      	cmp	r3, r1
    4438:	d301      	bcc.n	443e <__aeabi_uidiv+0x76>
    443a:	02cb      	lsls	r3, r1, #11
    443c:	1ac0      	subs	r0, r0, r3
    443e:	4152      	adcs	r2, r2
    4440:	0a83      	lsrs	r3, r0, #10
    4442:	428b      	cmp	r3, r1
    4444:	d301      	bcc.n	444a <__aeabi_uidiv+0x82>
    4446:	028b      	lsls	r3, r1, #10
    4448:	1ac0      	subs	r0, r0, r3
    444a:	4152      	adcs	r2, r2
    444c:	0a43      	lsrs	r3, r0, #9
    444e:	428b      	cmp	r3, r1
    4450:	d301      	bcc.n	4456 <__aeabi_uidiv+0x8e>
    4452:	024b      	lsls	r3, r1, #9
    4454:	1ac0      	subs	r0, r0, r3
    4456:	4152      	adcs	r2, r2
    4458:	0a03      	lsrs	r3, r0, #8
    445a:	428b      	cmp	r3, r1
    445c:	d301      	bcc.n	4462 <__aeabi_uidiv+0x9a>
    445e:	020b      	lsls	r3, r1, #8
    4460:	1ac0      	subs	r0, r0, r3
    4462:	4152      	adcs	r2, r2
    4464:	d2cd      	bcs.n	4402 <__aeabi_uidiv+0x3a>
    4466:	09c3      	lsrs	r3, r0, #7
    4468:	428b      	cmp	r3, r1
    446a:	d301      	bcc.n	4470 <__aeabi_uidiv+0xa8>
    446c:	01cb      	lsls	r3, r1, #7
    446e:	1ac0      	subs	r0, r0, r3
    4470:	4152      	adcs	r2, r2
    4472:	0983      	lsrs	r3, r0, #6
    4474:	428b      	cmp	r3, r1
    4476:	d301      	bcc.n	447c <__aeabi_uidiv+0xb4>
    4478:	018b      	lsls	r3, r1, #6
    447a:	1ac0      	subs	r0, r0, r3
    447c:	4152      	adcs	r2, r2
    447e:	0943      	lsrs	r3, r0, #5
    4480:	428b      	cmp	r3, r1
    4482:	d301      	bcc.n	4488 <__aeabi_uidiv+0xc0>
    4484:	014b      	lsls	r3, r1, #5
    4486:	1ac0      	subs	r0, r0, r3
    4488:	4152      	adcs	r2, r2
    448a:	0903      	lsrs	r3, r0, #4
    448c:	428b      	cmp	r3, r1
    448e:	d301      	bcc.n	4494 <__aeabi_uidiv+0xcc>
    4490:	010b      	lsls	r3, r1, #4
    4492:	1ac0      	subs	r0, r0, r3
    4494:	4152      	adcs	r2, r2
    4496:	08c3      	lsrs	r3, r0, #3
    4498:	428b      	cmp	r3, r1
    449a:	d301      	bcc.n	44a0 <__aeabi_uidiv+0xd8>
    449c:	00cb      	lsls	r3, r1, #3
    449e:	1ac0      	subs	r0, r0, r3
    44a0:	4152      	adcs	r2, r2
    44a2:	0883      	lsrs	r3, r0, #2
    44a4:	428b      	cmp	r3, r1
    44a6:	d301      	bcc.n	44ac <__aeabi_uidiv+0xe4>
    44a8:	008b      	lsls	r3, r1, #2
    44aa:	1ac0      	subs	r0, r0, r3
    44ac:	4152      	adcs	r2, r2
    44ae:	0843      	lsrs	r3, r0, #1
    44b0:	428b      	cmp	r3, r1
    44b2:	d301      	bcc.n	44b8 <__aeabi_uidiv+0xf0>
    44b4:	004b      	lsls	r3, r1, #1
    44b6:	1ac0      	subs	r0, r0, r3
    44b8:	4152      	adcs	r2, r2
    44ba:	1a41      	subs	r1, r0, r1
    44bc:	d200      	bcs.n	44c0 <__aeabi_uidiv+0xf8>
    44be:	4601      	mov	r1, r0
    44c0:	4152      	adcs	r2, r2
    44c2:	4610      	mov	r0, r2
    44c4:	4770      	bx	lr
    44c6:	e7ff      	b.n	44c8 <__aeabi_uidiv+0x100>
    44c8:	b501      	push	{r0, lr}
    44ca:	2000      	movs	r0, #0
    44cc:	f000 f806 	bl	44dc <__aeabi_idiv0>
    44d0:	bd02      	pop	{r1, pc}
    44d2:	46c0      	nop			; (mov r8, r8)

000044d4 <__aeabi_uidivmod>:
    44d4:	2900      	cmp	r1, #0
    44d6:	d0f7      	beq.n	44c8 <__aeabi_uidiv+0x100>
    44d8:	e776      	b.n	43c8 <__aeabi_uidiv>
    44da:	4770      	bx	lr

000044dc <__aeabi_idiv0>:
    44dc:	4770      	bx	lr
    44de:	46c0      	nop			; (mov r8, r8)

000044e0 <rt_set_PSP>:
    44e0:	f380 8809 	msr	PSP, r0
    44e4:	4770      	bx	lr

000044e6 <rt_get_PSP>:
    44e6:	f3ef 8009 	mrs	r0, PSP
    44ea:	4770      	bx	lr

000044ec <os_set_env>:
    44ec:	4668      	mov	r0, sp
    44ee:	f380 8809 	msr	PSP, r0
    44f2:	484a      	ldr	r0, [pc, #296]	; (461c <OS_Tick_Handler+0xa>)
    44f4:	7800      	ldrb	r0, [r0, #0]
    44f6:	07c0      	lsls	r0, r0, #31
    44f8:	d103      	bne.n	4502 <PrivilegedE>
    44fa:	2003      	movs	r0, #3
    44fc:	f380 8814 	msr	CONTROL, r0
    4500:	4770      	bx	lr

00004502 <PrivilegedE>:
    4502:	2002      	movs	r0, #2
    4504:	f380 8814 	msr	CONTROL, r0
    4508:	4770      	bx	lr

0000450a <_alloc_box>:
    450a:	4b45      	ldr	r3, [pc, #276]	; (4620 <OS_Tick_Handler+0xe>)
    450c:	469c      	mov	ip, r3
    450e:	f3ef 8305 	mrs	r3, IPSR
    4512:	061b      	lsls	r3, r3, #24
    4514:	d105      	bne.n	4522 <PrivilegedA>
    4516:	f3ef 8314 	mrs	r3, CONTROL
    451a:	07db      	lsls	r3, r3, #31
    451c:	d001      	beq.n	4522 <PrivilegedA>
    451e:	df00      	svc	0
    4520:	4770      	bx	lr

00004522 <PrivilegedA>:
    4522:	4760      	bx	ip

00004524 <_free_box>:
    4524:	4b3f      	ldr	r3, [pc, #252]	; (4624 <OS_Tick_Handler+0x12>)
    4526:	469c      	mov	ip, r3
    4528:	f3ef 8305 	mrs	r3, IPSR
    452c:	061b      	lsls	r3, r3, #24
    452e:	d105      	bne.n	453c <PrivilegedF>
    4530:	f3ef 8314 	mrs	r3, CONTROL
    4534:	07db      	lsls	r3, r3, #31
    4536:	d001      	beq.n	453c <PrivilegedF>
    4538:	df00      	svc	0
    453a:	4770      	bx	lr

0000453c <PrivilegedF>:
    453c:	4760      	bx	ip

0000453e <SVC_Handler>:
    453e:	f3ef 8009 	mrs	r0, PSP
    4542:	6981      	ldr	r1, [r0, #24]
    4544:	3902      	subs	r1, #2
    4546:	7809      	ldrb	r1, [r1, #0]
    4548:	2900      	cmp	r1, #0
    454a:	d12b      	bne.n	45a4 <SVC_User>
    454c:	46a6      	mov	lr, r4
    454e:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4550:	46a4      	mov	ip, r4
    4552:	4674      	mov	r4, lr
    4554:	47e0      	blx	ip
    4556:	f3ef 8309 	mrs	r3, PSP
    455a:	c307      	stmia	r3!, {r0, r1, r2}
    455c:	4b32      	ldr	r3, [pc, #200]	; (4628 <OS_Tick_Handler+0x16>)
    455e:	cb06      	ldmia	r3!, {r1, r2}
    4560:	4291      	cmp	r1, r2
    4562:	d01c      	beq.n	459e <SVC_Exit>
    4564:	3b08      	subs	r3, #8
    4566:	2900      	cmp	r1, #0
    4568:	d00d      	beq.n	4586 <SVC_Next>
    456a:	f3ef 8009 	mrs	r0, PSP
    456e:	3820      	subs	r0, #32
    4570:	6288      	str	r0, [r1, #40]	; 0x28
    4572:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4574:	4644      	mov	r4, r8
    4576:	464d      	mov	r5, r9
    4578:	4656      	mov	r6, sl
    457a:	465f      	mov	r7, fp
    457c:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    457e:	b40c      	push	{r2, r3}
    4580:	f003 fbe8 	bl	7d54 <rt_stk_check>
    4584:	bc0c      	pop	{r2, r3}

00004586 <SVC_Next>:
    4586:	601a      	str	r2, [r3, #0]
    4588:	6a90      	ldr	r0, [r2, #40]	; 0x28
    458a:	3010      	adds	r0, #16
    458c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    458e:	46a0      	mov	r8, r4
    4590:	46a9      	mov	r9, r5
    4592:	46b2      	mov	sl, r6
    4594:	46bb      	mov	fp, r7
    4596:	f380 8809 	msr	PSP, r0
    459a:	3820      	subs	r0, #32
    459c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

0000459e <SVC_Exit>:
    459e:	2002      	movs	r0, #2
    45a0:	43c0      	mvns	r0, r0
    45a2:	4700      	bx	r0

000045a4 <SVC_User>:
    45a4:	b510      	push	{r4, lr}
    45a6:	4a21      	ldr	r2, [pc, #132]	; (462c <OS_Tick_Handler+0x1a>)
    45a8:	6812      	ldr	r2, [r2, #0]
    45aa:	4291      	cmp	r1, r2
    45ac:	d809      	bhi.n	45c2 <SVC_Done>
    45ae:	4c20      	ldr	r4, [pc, #128]	; (4630 <OS_Tick_Handler+0x1e>)
    45b0:	0089      	lsls	r1, r1, #2
    45b2:	5864      	ldr	r4, [r4, r1]
    45b4:	46a6      	mov	lr, r4
    45b6:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    45b8:	46a4      	mov	ip, r4
    45ba:	47f0      	blx	lr
    45bc:	f3ef 8409 	mrs	r4, PSP
    45c0:	c40f      	stmia	r4!, {r0, r1, r2, r3}

000045c2 <SVC_Done>:
    45c2:	bd10      	pop	{r4, pc}

000045c4 <PendSV_Handler>:
    45c4:	f003 fb36 	bl	7c34 <rt_pop_req>

000045c8 <Sys_Switch>:
    45c8:	4b17      	ldr	r3, [pc, #92]	; (4628 <OS_Tick_Handler+0x16>)
    45ca:	cb06      	ldmia	r3!, {r1, r2}
    45cc:	4291      	cmp	r1, r2
    45ce:	d01a      	beq.n	4606 <Sys_Exit>
    45d0:	3b08      	subs	r3, #8
    45d2:	f3ef 8009 	mrs	r0, PSP
    45d6:	3820      	subs	r0, #32
    45d8:	6288      	str	r0, [r1, #40]	; 0x28
    45da:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    45dc:	4644      	mov	r4, r8
    45de:	464d      	mov	r5, r9
    45e0:	4656      	mov	r6, sl
    45e2:	465f      	mov	r7, fp
    45e4:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    45e6:	b40c      	push	{r2, r3}
    45e8:	f003 fbb4 	bl	7d54 <rt_stk_check>
    45ec:	bc0c      	pop	{r2, r3}
    45ee:	601a      	str	r2, [r3, #0]
    45f0:	6a90      	ldr	r0, [r2, #40]	; 0x28
    45f2:	3010      	adds	r0, #16
    45f4:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    45f6:	46a0      	mov	r8, r4
    45f8:	46a9      	mov	r9, r5
    45fa:	46b2      	mov	sl, r6
    45fc:	46bb      	mov	fp, r7
    45fe:	f380 8809 	msr	PSP, r0
    4602:	3820      	subs	r0, #32
    4604:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004606 <Sys_Exit>:
    4606:	2002      	movs	r0, #2
    4608:	43c0      	mvns	r0, r0
    460a:	4700      	bx	r0

0000460c <SysTick_Handler>:
    460c:	f003 fb84 	bl	7d18 <rt_systick>
    4610:	e7da      	b.n	45c8 <Sys_Switch>

00004612 <OS_Tick_Handler>:
    4612:	f003 fb7f 	bl	7d14 <os_tick_irqack>
    4616:	f003 fb7f 	bl	7d18 <rt_systick>
    461a:	e7d5      	b.n	45c8 <Sys_Switch>
    461c:	000086b4 	.word	0x000086b4
    4620:	00006e51 	.word	0x00006e51
    4624:	00006e91 	.word	0x00006e91
    4628:	2000606c 	.word	0x2000606c
    462c:	00000000 	.word	0x00000000
    4630:	fffffffc 	.word	0xfffffffc

00004634 <__aeabi_uldivmod>:
    4634:	2b00      	cmp	r3, #0
    4636:	d111      	bne.n	465c <__aeabi_uldivmod+0x28>
    4638:	2a00      	cmp	r2, #0
    463a:	d10f      	bne.n	465c <__aeabi_uldivmod+0x28>
    463c:	2900      	cmp	r1, #0
    463e:	d100      	bne.n	4642 <__aeabi_uldivmod+0xe>
    4640:	2800      	cmp	r0, #0
    4642:	d002      	beq.n	464a <__aeabi_uldivmod+0x16>
    4644:	2100      	movs	r1, #0
    4646:	43c9      	mvns	r1, r1
    4648:	1c08      	adds	r0, r1, #0
    464a:	b407      	push	{r0, r1, r2}
    464c:	4802      	ldr	r0, [pc, #8]	; (4658 <__aeabi_uldivmod+0x24>)
    464e:	a102      	add	r1, pc, #8	; (adr r1, 4658 <__aeabi_uldivmod+0x24>)
    4650:	1840      	adds	r0, r0, r1
    4652:	9002      	str	r0, [sp, #8]
    4654:	bd03      	pop	{r0, r1, pc}
    4656:	46c0      	nop			; (mov r8, r8)
    4658:	fffffe85 	.word	0xfffffe85
    465c:	b403      	push	{r0, r1}
    465e:	4668      	mov	r0, sp
    4660:	b501      	push	{r0, lr}
    4662:	9802      	ldr	r0, [sp, #8]
    4664:	f000 f832 	bl	46cc <__udivmoddi4>
    4668:	9b01      	ldr	r3, [sp, #4]
    466a:	469e      	mov	lr, r3
    466c:	b002      	add	sp, #8
    466e:	bc0c      	pop	{r2, r3}
    4670:	4770      	bx	lr
    4672:	46c0      	nop			; (mov r8, r8)

00004674 <__aeabi_lmul>:
    4674:	b5f0      	push	{r4, r5, r6, r7, lr}
    4676:	464f      	mov	r7, r9
    4678:	4646      	mov	r6, r8
    467a:	b4c0      	push	{r6, r7}
    467c:	0416      	lsls	r6, r2, #16
    467e:	0c36      	lsrs	r6, r6, #16
    4680:	4699      	mov	r9, r3
    4682:	0033      	movs	r3, r6
    4684:	0405      	lsls	r5, r0, #16
    4686:	0c2c      	lsrs	r4, r5, #16
    4688:	0c07      	lsrs	r7, r0, #16
    468a:	0c15      	lsrs	r5, r2, #16
    468c:	4363      	muls	r3, r4
    468e:	437e      	muls	r6, r7
    4690:	436f      	muls	r7, r5
    4692:	4365      	muls	r5, r4
    4694:	0c1c      	lsrs	r4, r3, #16
    4696:	19ad      	adds	r5, r5, r6
    4698:	1964      	adds	r4, r4, r5
    469a:	469c      	mov	ip, r3
    469c:	42a6      	cmp	r6, r4
    469e:	d903      	bls.n	46a8 <__aeabi_lmul+0x34>
    46a0:	2380      	movs	r3, #128	; 0x80
    46a2:	025b      	lsls	r3, r3, #9
    46a4:	4698      	mov	r8, r3
    46a6:	4447      	add	r7, r8
    46a8:	4663      	mov	r3, ip
    46aa:	0c25      	lsrs	r5, r4, #16
    46ac:	19ef      	adds	r7, r5, r7
    46ae:	041d      	lsls	r5, r3, #16
    46b0:	464b      	mov	r3, r9
    46b2:	434a      	muls	r2, r1
    46b4:	4343      	muls	r3, r0
    46b6:	0c2d      	lsrs	r5, r5, #16
    46b8:	0424      	lsls	r4, r4, #16
    46ba:	1964      	adds	r4, r4, r5
    46bc:	1899      	adds	r1, r3, r2
    46be:	19c9      	adds	r1, r1, r7
    46c0:	0020      	movs	r0, r4
    46c2:	bc0c      	pop	{r2, r3}
    46c4:	4690      	mov	r8, r2
    46c6:	4699      	mov	r9, r3
    46c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    46ca:	46c0      	nop			; (mov r8, r8)

000046cc <__udivmoddi4>:
    46cc:	b5f0      	push	{r4, r5, r6, r7, lr}
    46ce:	464d      	mov	r5, r9
    46d0:	4656      	mov	r6, sl
    46d2:	4644      	mov	r4, r8
    46d4:	465f      	mov	r7, fp
    46d6:	b4f0      	push	{r4, r5, r6, r7}
    46d8:	4692      	mov	sl, r2
    46da:	b083      	sub	sp, #12
    46dc:	0004      	movs	r4, r0
    46de:	000d      	movs	r5, r1
    46e0:	4699      	mov	r9, r3
    46e2:	428b      	cmp	r3, r1
    46e4:	d82f      	bhi.n	4746 <__udivmoddi4+0x7a>
    46e6:	d02c      	beq.n	4742 <__udivmoddi4+0x76>
    46e8:	4649      	mov	r1, r9
    46ea:	4650      	mov	r0, sl
    46ec:	f000 f8ae 	bl	484c <__clzdi2>
    46f0:	0029      	movs	r1, r5
    46f2:	0006      	movs	r6, r0
    46f4:	0020      	movs	r0, r4
    46f6:	f000 f8a9 	bl	484c <__clzdi2>
    46fa:	1a33      	subs	r3, r6, r0
    46fc:	4698      	mov	r8, r3
    46fe:	3b20      	subs	r3, #32
    4700:	469b      	mov	fp, r3
    4702:	d500      	bpl.n	4706 <__udivmoddi4+0x3a>
    4704:	e074      	b.n	47f0 <__udivmoddi4+0x124>
    4706:	4653      	mov	r3, sl
    4708:	465a      	mov	r2, fp
    470a:	4093      	lsls	r3, r2
    470c:	001f      	movs	r7, r3
    470e:	4653      	mov	r3, sl
    4710:	4642      	mov	r2, r8
    4712:	4093      	lsls	r3, r2
    4714:	001e      	movs	r6, r3
    4716:	42af      	cmp	r7, r5
    4718:	d829      	bhi.n	476e <__udivmoddi4+0xa2>
    471a:	d026      	beq.n	476a <__udivmoddi4+0x9e>
    471c:	465b      	mov	r3, fp
    471e:	1ba4      	subs	r4, r4, r6
    4720:	41bd      	sbcs	r5, r7
    4722:	2b00      	cmp	r3, #0
    4724:	da00      	bge.n	4728 <__udivmoddi4+0x5c>
    4726:	e079      	b.n	481c <__udivmoddi4+0x150>
    4728:	2200      	movs	r2, #0
    472a:	2300      	movs	r3, #0
    472c:	9200      	str	r2, [sp, #0]
    472e:	9301      	str	r3, [sp, #4]
    4730:	2301      	movs	r3, #1
    4732:	465a      	mov	r2, fp
    4734:	4093      	lsls	r3, r2
    4736:	9301      	str	r3, [sp, #4]
    4738:	2301      	movs	r3, #1
    473a:	4642      	mov	r2, r8
    473c:	4093      	lsls	r3, r2
    473e:	9300      	str	r3, [sp, #0]
    4740:	e019      	b.n	4776 <__udivmoddi4+0xaa>
    4742:	4282      	cmp	r2, r0
    4744:	d9d0      	bls.n	46e8 <__udivmoddi4+0x1c>
    4746:	2200      	movs	r2, #0
    4748:	2300      	movs	r3, #0
    474a:	9200      	str	r2, [sp, #0]
    474c:	9301      	str	r3, [sp, #4]
    474e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4750:	2b00      	cmp	r3, #0
    4752:	d001      	beq.n	4758 <__udivmoddi4+0x8c>
    4754:	601c      	str	r4, [r3, #0]
    4756:	605d      	str	r5, [r3, #4]
    4758:	9800      	ldr	r0, [sp, #0]
    475a:	9901      	ldr	r1, [sp, #4]
    475c:	b003      	add	sp, #12
    475e:	bc3c      	pop	{r2, r3, r4, r5}
    4760:	4690      	mov	r8, r2
    4762:	4699      	mov	r9, r3
    4764:	46a2      	mov	sl, r4
    4766:	46ab      	mov	fp, r5
    4768:	bdf0      	pop	{r4, r5, r6, r7, pc}
    476a:	42a3      	cmp	r3, r4
    476c:	d9d6      	bls.n	471c <__udivmoddi4+0x50>
    476e:	2200      	movs	r2, #0
    4770:	2300      	movs	r3, #0
    4772:	9200      	str	r2, [sp, #0]
    4774:	9301      	str	r3, [sp, #4]
    4776:	4643      	mov	r3, r8
    4778:	2b00      	cmp	r3, #0
    477a:	d0e8      	beq.n	474e <__udivmoddi4+0x82>
    477c:	07fb      	lsls	r3, r7, #31
    477e:	0872      	lsrs	r2, r6, #1
    4780:	431a      	orrs	r2, r3
    4782:	4646      	mov	r6, r8
    4784:	087b      	lsrs	r3, r7, #1
    4786:	e00e      	b.n	47a6 <__udivmoddi4+0xda>
    4788:	42ab      	cmp	r3, r5
    478a:	d101      	bne.n	4790 <__udivmoddi4+0xc4>
    478c:	42a2      	cmp	r2, r4
    478e:	d80c      	bhi.n	47aa <__udivmoddi4+0xde>
    4790:	1aa4      	subs	r4, r4, r2
    4792:	419d      	sbcs	r5, r3
    4794:	2001      	movs	r0, #1
    4796:	1924      	adds	r4, r4, r4
    4798:	416d      	adcs	r5, r5
    479a:	2100      	movs	r1, #0
    479c:	3e01      	subs	r6, #1
    479e:	1824      	adds	r4, r4, r0
    47a0:	414d      	adcs	r5, r1
    47a2:	2e00      	cmp	r6, #0
    47a4:	d006      	beq.n	47b4 <__udivmoddi4+0xe8>
    47a6:	42ab      	cmp	r3, r5
    47a8:	d9ee      	bls.n	4788 <__udivmoddi4+0xbc>
    47aa:	3e01      	subs	r6, #1
    47ac:	1924      	adds	r4, r4, r4
    47ae:	416d      	adcs	r5, r5
    47b0:	2e00      	cmp	r6, #0
    47b2:	d1f8      	bne.n	47a6 <__udivmoddi4+0xda>
    47b4:	465b      	mov	r3, fp
    47b6:	9800      	ldr	r0, [sp, #0]
    47b8:	9901      	ldr	r1, [sp, #4]
    47ba:	1900      	adds	r0, r0, r4
    47bc:	4169      	adcs	r1, r5
    47be:	2b00      	cmp	r3, #0
    47c0:	db22      	blt.n	4808 <__udivmoddi4+0x13c>
    47c2:	002b      	movs	r3, r5
    47c4:	465a      	mov	r2, fp
    47c6:	40d3      	lsrs	r3, r2
    47c8:	002a      	movs	r2, r5
    47ca:	4644      	mov	r4, r8
    47cc:	40e2      	lsrs	r2, r4
    47ce:	001c      	movs	r4, r3
    47d0:	465b      	mov	r3, fp
    47d2:	0015      	movs	r5, r2
    47d4:	2b00      	cmp	r3, #0
    47d6:	db2c      	blt.n	4832 <__udivmoddi4+0x166>
    47d8:	0026      	movs	r6, r4
    47da:	409e      	lsls	r6, r3
    47dc:	0033      	movs	r3, r6
    47de:	0026      	movs	r6, r4
    47e0:	4647      	mov	r7, r8
    47e2:	40be      	lsls	r6, r7
    47e4:	0032      	movs	r2, r6
    47e6:	1a80      	subs	r0, r0, r2
    47e8:	4199      	sbcs	r1, r3
    47ea:	9000      	str	r0, [sp, #0]
    47ec:	9101      	str	r1, [sp, #4]
    47ee:	e7ae      	b.n	474e <__udivmoddi4+0x82>
    47f0:	4642      	mov	r2, r8
    47f2:	2320      	movs	r3, #32
    47f4:	1a9b      	subs	r3, r3, r2
    47f6:	4652      	mov	r2, sl
    47f8:	40da      	lsrs	r2, r3
    47fa:	4641      	mov	r1, r8
    47fc:	0013      	movs	r3, r2
    47fe:	464a      	mov	r2, r9
    4800:	408a      	lsls	r2, r1
    4802:	0017      	movs	r7, r2
    4804:	431f      	orrs	r7, r3
    4806:	e782      	b.n	470e <__udivmoddi4+0x42>
    4808:	4642      	mov	r2, r8
    480a:	2320      	movs	r3, #32
    480c:	1a9b      	subs	r3, r3, r2
    480e:	002a      	movs	r2, r5
    4810:	4646      	mov	r6, r8
    4812:	409a      	lsls	r2, r3
    4814:	0023      	movs	r3, r4
    4816:	40f3      	lsrs	r3, r6
    4818:	4313      	orrs	r3, r2
    481a:	e7d5      	b.n	47c8 <__udivmoddi4+0xfc>
    481c:	4642      	mov	r2, r8
    481e:	2320      	movs	r3, #32
    4820:	2100      	movs	r1, #0
    4822:	1a9b      	subs	r3, r3, r2
    4824:	2200      	movs	r2, #0
    4826:	9100      	str	r1, [sp, #0]
    4828:	9201      	str	r2, [sp, #4]
    482a:	2201      	movs	r2, #1
    482c:	40da      	lsrs	r2, r3
    482e:	9201      	str	r2, [sp, #4]
    4830:	e782      	b.n	4738 <__udivmoddi4+0x6c>
    4832:	4642      	mov	r2, r8
    4834:	2320      	movs	r3, #32
    4836:	0026      	movs	r6, r4
    4838:	1a9b      	subs	r3, r3, r2
    483a:	40de      	lsrs	r6, r3
    483c:	002f      	movs	r7, r5
    483e:	46b4      	mov	ip, r6
    4840:	4097      	lsls	r7, r2
    4842:	4666      	mov	r6, ip
    4844:	003b      	movs	r3, r7
    4846:	4333      	orrs	r3, r6
    4848:	e7c9      	b.n	47de <__udivmoddi4+0x112>
    484a:	46c0      	nop			; (mov r8, r8)

0000484c <__clzdi2>:
    484c:	b510      	push	{r4, lr}
    484e:	2900      	cmp	r1, #0
    4850:	d103      	bne.n	485a <__clzdi2+0xe>
    4852:	f000 f807 	bl	4864 <__clzsi2>
    4856:	3020      	adds	r0, #32
    4858:	e002      	b.n	4860 <__clzdi2+0x14>
    485a:	1c08      	adds	r0, r1, #0
    485c:	f000 f802 	bl	4864 <__clzsi2>
    4860:	bd10      	pop	{r4, pc}
    4862:	46c0      	nop			; (mov r8, r8)

00004864 <__clzsi2>:
    4864:	211c      	movs	r1, #28
    4866:	2301      	movs	r3, #1
    4868:	041b      	lsls	r3, r3, #16
    486a:	4298      	cmp	r0, r3
    486c:	d301      	bcc.n	4872 <__clzsi2+0xe>
    486e:	0c00      	lsrs	r0, r0, #16
    4870:	3910      	subs	r1, #16
    4872:	0a1b      	lsrs	r3, r3, #8
    4874:	4298      	cmp	r0, r3
    4876:	d301      	bcc.n	487c <__clzsi2+0x18>
    4878:	0a00      	lsrs	r0, r0, #8
    487a:	3908      	subs	r1, #8
    487c:	091b      	lsrs	r3, r3, #4
    487e:	4298      	cmp	r0, r3
    4880:	d301      	bcc.n	4886 <__clzsi2+0x22>
    4882:	0900      	lsrs	r0, r0, #4
    4884:	3904      	subs	r1, #4
    4886:	a202      	add	r2, pc, #8	; (adr r2, 4890 <__clzsi2+0x2c>)
    4888:	5c10      	ldrb	r0, [r2, r0]
    488a:	1840      	adds	r0, r0, r1
    488c:	4770      	bx	lr
    488e:	46c0      	nop			; (mov r8, r8)
    4890:	02020304 	.word	0x02020304
    4894:	01010101 	.word	0x01010101
	...

000048a0 <atexit>:
    48a0:	b510      	push	{r4, lr}
    48a2:	0001      	movs	r1, r0
    48a4:	2300      	movs	r3, #0
    48a6:	2200      	movs	r2, #0
    48a8:	2000      	movs	r0, #0
    48aa:	f000 f8ed 	bl	4a88 <__register_exitproc>
    48ae:	bd10      	pop	{r4, pc}

000048b0 <exit>:
    48b0:	b510      	push	{r4, lr}
    48b2:	2100      	movs	r1, #0
    48b4:	0004      	movs	r4, r0
    48b6:	f000 f95d 	bl	4b74 <__call_exitprocs>
    48ba:	4b04      	ldr	r3, [pc, #16]	; (48cc <exit+0x1c>)
    48bc:	6818      	ldr	r0, [r3, #0]
    48be:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    48c0:	2b00      	cmp	r3, #0
    48c2:	d000      	beq.n	48c6 <exit+0x16>
    48c4:	4798      	blx	r3
    48c6:	0020      	movs	r0, r4
    48c8:	f7fc f950 	bl	b6c <_exit>
    48cc:	00009134 	.word	0x00009134

000048d0 <__libc_fini_array>:
    48d0:	b570      	push	{r4, r5, r6, lr}
    48d2:	4b09      	ldr	r3, [pc, #36]	; (48f8 <__libc_fini_array+0x28>)
    48d4:	4c09      	ldr	r4, [pc, #36]	; (48fc <__libc_fini_array+0x2c>)
    48d6:	1ae4      	subs	r4, r4, r3
    48d8:	10a4      	asrs	r4, r4, #2
    48da:	d009      	beq.n	48f0 <__libc_fini_array+0x20>
    48dc:	4a08      	ldr	r2, [pc, #32]	; (4900 <__libc_fini_array+0x30>)
    48de:	18a5      	adds	r5, r4, r2
    48e0:	00ad      	lsls	r5, r5, #2
    48e2:	18ed      	adds	r5, r5, r3
    48e4:	682b      	ldr	r3, [r5, #0]
    48e6:	3c01      	subs	r4, #1
    48e8:	4798      	blx	r3
    48ea:	3d04      	subs	r5, #4
    48ec:	2c00      	cmp	r4, #0
    48ee:	d1f9      	bne.n	48e4 <__libc_fini_array+0x14>
    48f0:	f7fc fa88 	bl	e04 <_fini>
    48f4:	bd70      	pop	{r4, r5, r6, pc}
    48f6:	46c0      	nop			; (mov r8, r8)
	...
    4900:	3fffffff 	.word	0x3fffffff

00004904 <__libc_init_array>:
    4904:	b570      	push	{r4, r5, r6, lr}
    4906:	4e0d      	ldr	r6, [pc, #52]	; (493c <__libc_init_array+0x38>)
    4908:	4d0d      	ldr	r5, [pc, #52]	; (4940 <__libc_init_array+0x3c>)
    490a:	2400      	movs	r4, #0
    490c:	1bad      	subs	r5, r5, r6
    490e:	10ad      	asrs	r5, r5, #2
    4910:	d005      	beq.n	491e <__libc_init_array+0x1a>
    4912:	00a3      	lsls	r3, r4, #2
    4914:	58f3      	ldr	r3, [r6, r3]
    4916:	3401      	adds	r4, #1
    4918:	4798      	blx	r3
    491a:	42a5      	cmp	r5, r4
    491c:	d1f9      	bne.n	4912 <__libc_init_array+0xe>
    491e:	f7fc fa6b 	bl	df8 <_init>
    4922:	4e08      	ldr	r6, [pc, #32]	; (4944 <__libc_init_array+0x40>)
    4924:	4d08      	ldr	r5, [pc, #32]	; (4948 <__libc_init_array+0x44>)
    4926:	2400      	movs	r4, #0
    4928:	1bad      	subs	r5, r5, r6
    492a:	10ad      	asrs	r5, r5, #2
    492c:	d005      	beq.n	493a <__libc_init_array+0x36>
    492e:	00a3      	lsls	r3, r4, #2
    4930:	58f3      	ldr	r3, [r6, r3]
    4932:	3401      	adds	r4, #1
    4934:	4798      	blx	r3
    4936:	42a5      	cmp	r5, r4
    4938:	d1f9      	bne.n	492e <__libc_init_array+0x2a>
    493a:	bd70      	pop	{r4, r5, r6, pc}
	...

0000494c <memset>:
    494c:	b570      	push	{r4, r5, r6, lr}
    494e:	0783      	lsls	r3, r0, #30
    4950:	d03f      	beq.n	49d2 <memset+0x86>
    4952:	1e54      	subs	r4, r2, #1
    4954:	2a00      	cmp	r2, #0
    4956:	d03b      	beq.n	49d0 <memset+0x84>
    4958:	b2ce      	uxtb	r6, r1
    495a:	0003      	movs	r3, r0
    495c:	2503      	movs	r5, #3
    495e:	e003      	b.n	4968 <memset+0x1c>
    4960:	1e62      	subs	r2, r4, #1
    4962:	2c00      	cmp	r4, #0
    4964:	d034      	beq.n	49d0 <memset+0x84>
    4966:	0014      	movs	r4, r2
    4968:	3301      	adds	r3, #1
    496a:	1e5a      	subs	r2, r3, #1
    496c:	7016      	strb	r6, [r2, #0]
    496e:	422b      	tst	r3, r5
    4970:	d1f6      	bne.n	4960 <memset+0x14>
    4972:	2c03      	cmp	r4, #3
    4974:	d924      	bls.n	49c0 <memset+0x74>
    4976:	25ff      	movs	r5, #255	; 0xff
    4978:	400d      	ands	r5, r1
    497a:	022a      	lsls	r2, r5, #8
    497c:	4315      	orrs	r5, r2
    497e:	042a      	lsls	r2, r5, #16
    4980:	4315      	orrs	r5, r2
    4982:	2c0f      	cmp	r4, #15
    4984:	d911      	bls.n	49aa <memset+0x5e>
    4986:	0026      	movs	r6, r4
    4988:	3e10      	subs	r6, #16
    498a:	0936      	lsrs	r6, r6, #4
    498c:	3601      	adds	r6, #1
    498e:	0136      	lsls	r6, r6, #4
    4990:	001a      	movs	r2, r3
    4992:	199b      	adds	r3, r3, r6
    4994:	6015      	str	r5, [r2, #0]
    4996:	6055      	str	r5, [r2, #4]
    4998:	6095      	str	r5, [r2, #8]
    499a:	60d5      	str	r5, [r2, #12]
    499c:	3210      	adds	r2, #16
    499e:	4293      	cmp	r3, r2
    49a0:	d1f8      	bne.n	4994 <memset+0x48>
    49a2:	220f      	movs	r2, #15
    49a4:	4014      	ands	r4, r2
    49a6:	2c03      	cmp	r4, #3
    49a8:	d90a      	bls.n	49c0 <memset+0x74>
    49aa:	1f26      	subs	r6, r4, #4
    49ac:	08b6      	lsrs	r6, r6, #2
    49ae:	3601      	adds	r6, #1
    49b0:	00b6      	lsls	r6, r6, #2
    49b2:	001a      	movs	r2, r3
    49b4:	199b      	adds	r3, r3, r6
    49b6:	c220      	stmia	r2!, {r5}
    49b8:	4293      	cmp	r3, r2
    49ba:	d1fc      	bne.n	49b6 <memset+0x6a>
    49bc:	2203      	movs	r2, #3
    49be:	4014      	ands	r4, r2
    49c0:	2c00      	cmp	r4, #0
    49c2:	d005      	beq.n	49d0 <memset+0x84>
    49c4:	b2c9      	uxtb	r1, r1
    49c6:	191c      	adds	r4, r3, r4
    49c8:	7019      	strb	r1, [r3, #0]
    49ca:	3301      	adds	r3, #1
    49cc:	429c      	cmp	r4, r3
    49ce:	d1fb      	bne.n	49c8 <memset+0x7c>
    49d0:	bd70      	pop	{r4, r5, r6, pc}
    49d2:	0014      	movs	r4, r2
    49d4:	0003      	movs	r3, r0
    49d6:	e7cc      	b.n	4972 <memset+0x26>

000049d8 <cleanup_glue>:
    49d8:	b570      	push	{r4, r5, r6, lr}
    49da:	000c      	movs	r4, r1
    49dc:	6809      	ldr	r1, [r1, #0]
    49de:	0005      	movs	r5, r0
    49e0:	2900      	cmp	r1, #0
    49e2:	d001      	beq.n	49e8 <cleanup_glue+0x10>
    49e4:	f7ff fff8 	bl	49d8 <cleanup_glue>
    49e8:	0028      	movs	r0, r5
    49ea:	0021      	movs	r1, r4
    49ec:	f000 f990 	bl	4d10 <_free_r>
    49f0:	bd70      	pop	{r4, r5, r6, pc}
    49f2:	46c0      	nop			; (mov r8, r8)

000049f4 <_reclaim_reent>:
    49f4:	4b23      	ldr	r3, [pc, #140]	; (4a84 <_reclaim_reent+0x90>)
    49f6:	b570      	push	{r4, r5, r6, lr}
    49f8:	681b      	ldr	r3, [r3, #0]
    49fa:	0005      	movs	r5, r0
    49fc:	4283      	cmp	r3, r0
    49fe:	d034      	beq.n	4a6a <_reclaim_reent+0x76>
    4a00:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    4a02:	2b00      	cmp	r3, #0
    4a04:	d011      	beq.n	4a2a <_reclaim_reent+0x36>
    4a06:	2600      	movs	r6, #0
    4a08:	5999      	ldr	r1, [r3, r6]
    4a0a:	2900      	cmp	r1, #0
    4a0c:	d006      	beq.n	4a1c <_reclaim_reent+0x28>
    4a0e:	680c      	ldr	r4, [r1, #0]
    4a10:	0028      	movs	r0, r5
    4a12:	f000 f97d 	bl	4d10 <_free_r>
    4a16:	1e21      	subs	r1, r4, #0
    4a18:	d1f9      	bne.n	4a0e <_reclaim_reent+0x1a>
    4a1a:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    4a1c:	3604      	adds	r6, #4
    4a1e:	2e80      	cmp	r6, #128	; 0x80
    4a20:	d1f2      	bne.n	4a08 <_reclaim_reent+0x14>
    4a22:	0019      	movs	r1, r3
    4a24:	0028      	movs	r0, r5
    4a26:	f000 f973 	bl	4d10 <_free_r>
    4a2a:	6c29      	ldr	r1, [r5, #64]	; 0x40
    4a2c:	2900      	cmp	r1, #0
    4a2e:	d002      	beq.n	4a36 <_reclaim_reent+0x42>
    4a30:	0028      	movs	r0, r5
    4a32:	f000 f96d 	bl	4d10 <_free_r>
    4a36:	23a4      	movs	r3, #164	; 0xa4
    4a38:	005b      	lsls	r3, r3, #1
    4a3a:	58e9      	ldr	r1, [r5, r3]
    4a3c:	2900      	cmp	r1, #0
    4a3e:	d00b      	beq.n	4a58 <_reclaim_reent+0x64>
    4a40:	002e      	movs	r6, r5
    4a42:	364d      	adds	r6, #77	; 0x4d
    4a44:	36ff      	adds	r6, #255	; 0xff
    4a46:	42b1      	cmp	r1, r6
    4a48:	d006      	beq.n	4a58 <_reclaim_reent+0x64>
    4a4a:	680c      	ldr	r4, [r1, #0]
    4a4c:	0028      	movs	r0, r5
    4a4e:	f000 f95f 	bl	4d10 <_free_r>
    4a52:	0021      	movs	r1, r4
    4a54:	42a6      	cmp	r6, r4
    4a56:	d1f8      	bne.n	4a4a <_reclaim_reent+0x56>
    4a58:	6d69      	ldr	r1, [r5, #84]	; 0x54
    4a5a:	2900      	cmp	r1, #0
    4a5c:	d002      	beq.n	4a64 <_reclaim_reent+0x70>
    4a5e:	0028      	movs	r0, r5
    4a60:	f000 f956 	bl	4d10 <_free_r>
    4a64:	6bab      	ldr	r3, [r5, #56]	; 0x38
    4a66:	2b00      	cmp	r3, #0
    4a68:	d100      	bne.n	4a6c <_reclaim_reent+0x78>
    4a6a:	bd70      	pop	{r4, r5, r6, pc}
    4a6c:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    4a6e:	0028      	movs	r0, r5
    4a70:	4798      	blx	r3
    4a72:	23b8      	movs	r3, #184	; 0xb8
    4a74:	009b      	lsls	r3, r3, #2
    4a76:	58e9      	ldr	r1, [r5, r3]
    4a78:	2900      	cmp	r1, #0
    4a7a:	d0f6      	beq.n	4a6a <_reclaim_reent+0x76>
    4a7c:	0028      	movs	r0, r5
    4a7e:	f7ff ffab 	bl	49d8 <cleanup_glue>
    4a82:	e7f2      	b.n	4a6a <_reclaim_reent+0x76>
    4a84:	20000440 	.word	0x20000440

00004a88 <__register_exitproc>:
    4a88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    4a8a:	4644      	mov	r4, r8
    4a8c:	465f      	mov	r7, fp
    4a8e:	4656      	mov	r6, sl
    4a90:	464d      	mov	r5, r9
    4a92:	469b      	mov	fp, r3
    4a94:	4b2f      	ldr	r3, [pc, #188]	; (4b54 <__register_exitproc+0xcc>)
    4a96:	b4f0      	push	{r4, r5, r6, r7}
    4a98:	681c      	ldr	r4, [r3, #0]
    4a9a:	23a4      	movs	r3, #164	; 0xa4
    4a9c:	005b      	lsls	r3, r3, #1
    4a9e:	0005      	movs	r5, r0
    4aa0:	58e0      	ldr	r0, [r4, r3]
    4aa2:	000e      	movs	r6, r1
    4aa4:	4690      	mov	r8, r2
    4aa6:	2800      	cmp	r0, #0
    4aa8:	d04b      	beq.n	4b42 <__register_exitproc+0xba>
    4aaa:	6843      	ldr	r3, [r0, #4]
    4aac:	2b1f      	cmp	r3, #31
    4aae:	dc0d      	bgt.n	4acc <__register_exitproc+0x44>
    4ab0:	1c5c      	adds	r4, r3, #1
    4ab2:	2d00      	cmp	r5, #0
    4ab4:	d121      	bne.n	4afa <__register_exitproc+0x72>
    4ab6:	3302      	adds	r3, #2
    4ab8:	009b      	lsls	r3, r3, #2
    4aba:	6044      	str	r4, [r0, #4]
    4abc:	501e      	str	r6, [r3, r0]
    4abe:	2000      	movs	r0, #0
    4ac0:	bc3c      	pop	{r2, r3, r4, r5}
    4ac2:	4690      	mov	r8, r2
    4ac4:	4699      	mov	r9, r3
    4ac6:	46a2      	mov	sl, r4
    4ac8:	46ab      	mov	fp, r5
    4aca:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    4acc:	4b22      	ldr	r3, [pc, #136]	; (4b58 <__register_exitproc+0xd0>)
    4ace:	2b00      	cmp	r3, #0
    4ad0:	d03c      	beq.n	4b4c <__register_exitproc+0xc4>
    4ad2:	20c8      	movs	r0, #200	; 0xc8
    4ad4:	0040      	lsls	r0, r0, #1
    4ad6:	e000      	b.n	4ada <__register_exitproc+0x52>
    4ad8:	bf00      	nop
    4ada:	2800      	cmp	r0, #0
    4adc:	d036      	beq.n	4b4c <__register_exitproc+0xc4>
    4ade:	22a4      	movs	r2, #164	; 0xa4
    4ae0:	2300      	movs	r3, #0
    4ae2:	0052      	lsls	r2, r2, #1
    4ae4:	58a1      	ldr	r1, [r4, r2]
    4ae6:	6043      	str	r3, [r0, #4]
    4ae8:	6001      	str	r1, [r0, #0]
    4aea:	50a0      	str	r0, [r4, r2]
    4aec:	3240      	adds	r2, #64	; 0x40
    4aee:	5083      	str	r3, [r0, r2]
    4af0:	3204      	adds	r2, #4
    4af2:	5083      	str	r3, [r0, r2]
    4af4:	2401      	movs	r4, #1
    4af6:	2d00      	cmp	r5, #0
    4af8:	d0dd      	beq.n	4ab6 <__register_exitproc+0x2e>
    4afa:	009a      	lsls	r2, r3, #2
    4afc:	4691      	mov	r9, r2
    4afe:	4481      	add	r9, r0
    4b00:	4642      	mov	r2, r8
    4b02:	2188      	movs	r1, #136	; 0x88
    4b04:	464f      	mov	r7, r9
    4b06:	507a      	str	r2, [r7, r1]
    4b08:	22c4      	movs	r2, #196	; 0xc4
    4b0a:	0052      	lsls	r2, r2, #1
    4b0c:	4690      	mov	r8, r2
    4b0e:	4480      	add	r8, r0
    4b10:	4642      	mov	r2, r8
    4b12:	3987      	subs	r1, #135	; 0x87
    4b14:	4099      	lsls	r1, r3
    4b16:	6812      	ldr	r2, [r2, #0]
    4b18:	468a      	mov	sl, r1
    4b1a:	430a      	orrs	r2, r1
    4b1c:	4694      	mov	ip, r2
    4b1e:	4642      	mov	r2, r8
    4b20:	4661      	mov	r1, ip
    4b22:	6011      	str	r1, [r2, #0]
    4b24:	2284      	movs	r2, #132	; 0x84
    4b26:	4649      	mov	r1, r9
    4b28:	465f      	mov	r7, fp
    4b2a:	0052      	lsls	r2, r2, #1
    4b2c:	508f      	str	r7, [r1, r2]
    4b2e:	2d02      	cmp	r5, #2
    4b30:	d1c1      	bne.n	4ab6 <__register_exitproc+0x2e>
    4b32:	0002      	movs	r2, r0
    4b34:	4655      	mov	r5, sl
    4b36:	328d      	adds	r2, #141	; 0x8d
    4b38:	32ff      	adds	r2, #255	; 0xff
    4b3a:	6811      	ldr	r1, [r2, #0]
    4b3c:	430d      	orrs	r5, r1
    4b3e:	6015      	str	r5, [r2, #0]
    4b40:	e7b9      	b.n	4ab6 <__register_exitproc+0x2e>
    4b42:	0020      	movs	r0, r4
    4b44:	304d      	adds	r0, #77	; 0x4d
    4b46:	30ff      	adds	r0, #255	; 0xff
    4b48:	50e0      	str	r0, [r4, r3]
    4b4a:	e7ae      	b.n	4aaa <__register_exitproc+0x22>
    4b4c:	2001      	movs	r0, #1
    4b4e:	4240      	negs	r0, r0
    4b50:	e7b6      	b.n	4ac0 <__register_exitproc+0x38>
    4b52:	46c0      	nop			; (mov r8, r8)
    4b54:	00009134 	.word	0x00009134
    4b58:	00000000 	.word	0x00000000

00004b5c <register_fini>:
    4b5c:	4b03      	ldr	r3, [pc, #12]	; (4b6c <register_fini+0x10>)
    4b5e:	b510      	push	{r4, lr}
    4b60:	2b00      	cmp	r3, #0
    4b62:	d002      	beq.n	4b6a <register_fini+0xe>
    4b64:	4802      	ldr	r0, [pc, #8]	; (4b70 <register_fini+0x14>)
    4b66:	f7ff fe9b 	bl	48a0 <atexit>
    4b6a:	bd10      	pop	{r4, pc}
    4b6c:	00000000 	.word	0x00000000
    4b70:	000048d1 	.word	0x000048d1

00004b74 <__call_exitprocs>:
    4b74:	b5f0      	push	{r4, r5, r6, r7, lr}
    4b76:	465f      	mov	r7, fp
    4b78:	4656      	mov	r6, sl
    4b7a:	464d      	mov	r5, r9
    4b7c:	4644      	mov	r4, r8
    4b7e:	b4f0      	push	{r4, r5, r6, r7}
    4b80:	000f      	movs	r7, r1
    4b82:	4b39      	ldr	r3, [pc, #228]	; (4c68 <__call_exitprocs+0xf4>)
    4b84:	b085      	sub	sp, #20
    4b86:	681b      	ldr	r3, [r3, #0]
    4b88:	9001      	str	r0, [sp, #4]
    4b8a:	9302      	str	r3, [sp, #8]
    4b8c:	3349      	adds	r3, #73	; 0x49
    4b8e:	33ff      	adds	r3, #255	; 0xff
    4b90:	9303      	str	r3, [sp, #12]
    4b92:	22a4      	movs	r2, #164	; 0xa4
    4b94:	9b02      	ldr	r3, [sp, #8]
    4b96:	0052      	lsls	r2, r2, #1
    4b98:	589e      	ldr	r6, [r3, r2]
    4b9a:	2e00      	cmp	r6, #0
    4b9c:	d04e      	beq.n	4c3c <__call_exitprocs+0xc8>
    4b9e:	9b03      	ldr	r3, [sp, #12]
    4ba0:	4699      	mov	r9, r3
    4ba2:	23c4      	movs	r3, #196	; 0xc4
    4ba4:	005b      	lsls	r3, r3, #1
    4ba6:	4698      	mov	r8, r3
    4ba8:	3304      	adds	r3, #4
    4baa:	469a      	mov	sl, r3
    4bac:	6874      	ldr	r4, [r6, #4]
    4bae:	44b0      	add	r8, r6
    4bb0:	00a5      	lsls	r5, r4, #2
    4bb2:	1975      	adds	r5, r6, r5
    4bb4:	44b2      	add	sl, r6
    4bb6:	3c01      	subs	r4, #1
    4bb8:	d508      	bpl.n	4bcc <__call_exitprocs+0x58>
    4bba:	e02d      	b.n	4c18 <__call_exitprocs+0xa4>
    4bbc:	1d6b      	adds	r3, r5, #5
    4bbe:	33ff      	adds	r3, #255	; 0xff
    4bc0:	681b      	ldr	r3, [r3, #0]
    4bc2:	429f      	cmp	r7, r3
    4bc4:	d004      	beq.n	4bd0 <__call_exitprocs+0x5c>
    4bc6:	3d04      	subs	r5, #4
    4bc8:	3c01      	subs	r4, #1
    4bca:	d325      	bcc.n	4c18 <__call_exitprocs+0xa4>
    4bcc:	2f00      	cmp	r7, #0
    4bce:	d1f5      	bne.n	4bbc <__call_exitprocs+0x48>
    4bd0:	6873      	ldr	r3, [r6, #4]
    4bd2:	686a      	ldr	r2, [r5, #4]
    4bd4:	3b01      	subs	r3, #1
    4bd6:	42a3      	cmp	r3, r4
    4bd8:	d039      	beq.n	4c4e <__call_exitprocs+0xda>
    4bda:	2300      	movs	r3, #0
    4bdc:	606b      	str	r3, [r5, #4]
    4bde:	2a00      	cmp	r2, #0
    4be0:	d0f1      	beq.n	4bc6 <__call_exitprocs+0x52>
    4be2:	6873      	ldr	r3, [r6, #4]
    4be4:	4641      	mov	r1, r8
    4be6:	469b      	mov	fp, r3
    4be8:	2301      	movs	r3, #1
    4bea:	40a3      	lsls	r3, r4
    4bec:	6809      	ldr	r1, [r1, #0]
    4bee:	4219      	tst	r1, r3
    4bf0:	d02b      	beq.n	4c4a <__call_exitprocs+0xd6>
    4bf2:	4651      	mov	r1, sl
    4bf4:	6809      	ldr	r1, [r1, #0]
    4bf6:	4219      	tst	r1, r3
    4bf8:	d12b      	bne.n	4c52 <__call_exitprocs+0xde>
    4bfa:	002b      	movs	r3, r5
    4bfc:	3384      	adds	r3, #132	; 0x84
    4bfe:	6819      	ldr	r1, [r3, #0]
    4c00:	9801      	ldr	r0, [sp, #4]
    4c02:	4790      	blx	r2
    4c04:	6873      	ldr	r3, [r6, #4]
    4c06:	455b      	cmp	r3, fp
    4c08:	d1c3      	bne.n	4b92 <__call_exitprocs+0x1e>
    4c0a:	464b      	mov	r3, r9
    4c0c:	681b      	ldr	r3, [r3, #0]
    4c0e:	42b3      	cmp	r3, r6
    4c10:	d1bf      	bne.n	4b92 <__call_exitprocs+0x1e>
    4c12:	3d04      	subs	r5, #4
    4c14:	3c01      	subs	r4, #1
    4c16:	d2d9      	bcs.n	4bcc <__call_exitprocs+0x58>
    4c18:	4b14      	ldr	r3, [pc, #80]	; (4c6c <__call_exitprocs+0xf8>)
    4c1a:	2b00      	cmp	r3, #0
    4c1c:	d00e      	beq.n	4c3c <__call_exitprocs+0xc8>
    4c1e:	6873      	ldr	r3, [r6, #4]
    4c20:	2b00      	cmp	r3, #0
    4c22:	d11b      	bne.n	4c5c <__call_exitprocs+0xe8>
    4c24:	6833      	ldr	r3, [r6, #0]
    4c26:	2b00      	cmp	r3, #0
    4c28:	d01c      	beq.n	4c64 <__call_exitprocs+0xf0>
    4c2a:	464a      	mov	r2, r9
    4c2c:	0030      	movs	r0, r6
    4c2e:	6013      	str	r3, [r2, #0]
    4c30:	e000      	b.n	4c34 <__call_exitprocs+0xc0>
    4c32:	bf00      	nop
    4c34:	464b      	mov	r3, r9
    4c36:	681e      	ldr	r6, [r3, #0]
    4c38:	2e00      	cmp	r6, #0
    4c3a:	d1b2      	bne.n	4ba2 <__call_exitprocs+0x2e>
    4c3c:	b005      	add	sp, #20
    4c3e:	bc3c      	pop	{r2, r3, r4, r5}
    4c40:	4690      	mov	r8, r2
    4c42:	4699      	mov	r9, r3
    4c44:	46a2      	mov	sl, r4
    4c46:	46ab      	mov	fp, r5
    4c48:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4c4a:	4790      	blx	r2
    4c4c:	e7da      	b.n	4c04 <__call_exitprocs+0x90>
    4c4e:	6074      	str	r4, [r6, #4]
    4c50:	e7c5      	b.n	4bde <__call_exitprocs+0x6a>
    4c52:	002b      	movs	r3, r5
    4c54:	3384      	adds	r3, #132	; 0x84
    4c56:	6818      	ldr	r0, [r3, #0]
    4c58:	4790      	blx	r2
    4c5a:	e7d3      	b.n	4c04 <__call_exitprocs+0x90>
    4c5c:	6833      	ldr	r3, [r6, #0]
    4c5e:	46b1      	mov	r9, r6
    4c60:	001e      	movs	r6, r3
    4c62:	e7e9      	b.n	4c38 <__call_exitprocs+0xc4>
    4c64:	2300      	movs	r3, #0
    4c66:	e7fa      	b.n	4c5e <__call_exitprocs+0xea>
    4c68:	00009134 	.word	0x00009134
    4c6c:	00000000 	.word	0x00000000

00004c70 <_malloc_trim_r>:
    4c70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    4c72:	000c      	movs	r4, r1
    4c74:	0006      	movs	r6, r0
    4c76:	f000 fbd7 	bl	5428 <__malloc_lock>
    4c7a:	4f20      	ldr	r7, [pc, #128]	; (4cfc <_malloc_trim_r+0x8c>)
    4c7c:	68bb      	ldr	r3, [r7, #8]
    4c7e:	685d      	ldr	r5, [r3, #4]
    4c80:	2303      	movs	r3, #3
    4c82:	439d      	bics	r5, r3
    4c84:	4b1e      	ldr	r3, [pc, #120]	; (4d00 <_malloc_trim_r+0x90>)
    4c86:	1b2c      	subs	r4, r5, r4
    4c88:	469c      	mov	ip, r3
    4c8a:	4464      	add	r4, ip
    4c8c:	0b24      	lsrs	r4, r4, #12
    4c8e:	4b1d      	ldr	r3, [pc, #116]	; (4d04 <_malloc_trim_r+0x94>)
    4c90:	3c01      	subs	r4, #1
    4c92:	0324      	lsls	r4, r4, #12
    4c94:	429c      	cmp	r4, r3
    4c96:	dd07      	ble.n	4ca8 <_malloc_trim_r+0x38>
    4c98:	2100      	movs	r1, #0
    4c9a:	0030      	movs	r0, r6
    4c9c:	f000 fbc8 	bl	5430 <_sbrk_r>
    4ca0:	68bb      	ldr	r3, [r7, #8]
    4ca2:	195b      	adds	r3, r3, r5
    4ca4:	4298      	cmp	r0, r3
    4ca6:	d004      	beq.n	4cb2 <_malloc_trim_r+0x42>
    4ca8:	0030      	movs	r0, r6
    4caa:	f000 fbbf 	bl	542c <__malloc_unlock>
    4cae:	2000      	movs	r0, #0
    4cb0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    4cb2:	4261      	negs	r1, r4
    4cb4:	0030      	movs	r0, r6
    4cb6:	f000 fbbb 	bl	5430 <_sbrk_r>
    4cba:	1c43      	adds	r3, r0, #1
    4cbc:	d00d      	beq.n	4cda <_malloc_trim_r+0x6a>
    4cbe:	2301      	movs	r3, #1
    4cc0:	1b2d      	subs	r5, r5, r4
    4cc2:	68ba      	ldr	r2, [r7, #8]
    4cc4:	431d      	orrs	r5, r3
    4cc6:	4b10      	ldr	r3, [pc, #64]	; (4d08 <_malloc_trim_r+0x98>)
    4cc8:	6055      	str	r5, [r2, #4]
    4cca:	681a      	ldr	r2, [r3, #0]
    4ccc:	0030      	movs	r0, r6
    4cce:	1b14      	subs	r4, r2, r4
    4cd0:	601c      	str	r4, [r3, #0]
    4cd2:	f000 fbab 	bl	542c <__malloc_unlock>
    4cd6:	2001      	movs	r0, #1
    4cd8:	e7ea      	b.n	4cb0 <_malloc_trim_r+0x40>
    4cda:	2100      	movs	r1, #0
    4cdc:	0030      	movs	r0, r6
    4cde:	f000 fba7 	bl	5430 <_sbrk_r>
    4ce2:	68bb      	ldr	r3, [r7, #8]
    4ce4:	1ac2      	subs	r2, r0, r3
    4ce6:	2a0f      	cmp	r2, #15
    4ce8:	ddde      	ble.n	4ca8 <_malloc_trim_r+0x38>
    4cea:	4908      	ldr	r1, [pc, #32]	; (4d0c <_malloc_trim_r+0x9c>)
    4cec:	6809      	ldr	r1, [r1, #0]
    4cee:	1a40      	subs	r0, r0, r1
    4cf0:	4905      	ldr	r1, [pc, #20]	; (4d08 <_malloc_trim_r+0x98>)
    4cf2:	6008      	str	r0, [r1, #0]
    4cf4:	2101      	movs	r1, #1
    4cf6:	430a      	orrs	r2, r1
    4cf8:	605a      	str	r2, [r3, #4]
    4cfa:	e7d5      	b.n	4ca8 <_malloc_trim_r+0x38>
    4cfc:	20000444 	.word	0x20000444
    4d00:	00000fef 	.word	0x00000fef
    4d04:	00000fff 	.word	0x00000fff
    4d08:	20006000 	.word	0x20006000
    4d0c:	20000850 	.word	0x20000850

00004d10 <_free_r>:
    4d10:	b5f0      	push	{r4, r5, r6, r7, lr}
    4d12:	4647      	mov	r7, r8
    4d14:	0005      	movs	r5, r0
    4d16:	b480      	push	{r7}
    4d18:	1e0c      	subs	r4, r1, #0
    4d1a:	d03e      	beq.n	4d9a <_free_r+0x8a>
    4d1c:	f000 fb84 	bl	5428 <__malloc_lock>
    4d20:	2301      	movs	r3, #1
    4d22:	0021      	movs	r1, r4
    4d24:	4698      	mov	r8, r3
    4d26:	3908      	subs	r1, #8
    4d28:	684e      	ldr	r6, [r1, #4]
    4d2a:	4642      	mov	r2, r8
    4d2c:	0033      	movs	r3, r6
    4d2e:	2003      	movs	r0, #3
    4d30:	4393      	bics	r3, r2
    4d32:	18cc      	adds	r4, r1, r3
    4d34:	6862      	ldr	r2, [r4, #4]
    4d36:	4382      	bics	r2, r0
    4d38:	4860      	ldr	r0, [pc, #384]	; (4ebc <_free_r+0x1ac>)
    4d3a:	6887      	ldr	r7, [r0, #8]
    4d3c:	42bc      	cmp	r4, r7
    4d3e:	d05a      	beq.n	4df6 <_free_r+0xe6>
    4d40:	4647      	mov	r7, r8
    4d42:	6062      	str	r2, [r4, #4]
    4d44:	4237      	tst	r7, r6
    4d46:	d10b      	bne.n	4d60 <_free_r+0x50>
    4d48:	2708      	movs	r7, #8
    4d4a:	46bc      	mov	ip, r7
    4d4c:	680e      	ldr	r6, [r1, #0]
    4d4e:	4484      	add	ip, r0
    4d50:	1b89      	subs	r1, r1, r6
    4d52:	199b      	adds	r3, r3, r6
    4d54:	688e      	ldr	r6, [r1, #8]
    4d56:	4566      	cmp	r6, ip
    4d58:	d066      	beq.n	4e28 <_free_r+0x118>
    4d5a:	68cf      	ldr	r7, [r1, #12]
    4d5c:	60f7      	str	r7, [r6, #12]
    4d5e:	60be      	str	r6, [r7, #8]
    4d60:	2601      	movs	r6, #1
    4d62:	18a7      	adds	r7, r4, r2
    4d64:	687f      	ldr	r7, [r7, #4]
    4d66:	4237      	tst	r7, r6
    4d68:	d036      	beq.n	4dd8 <_free_r+0xc8>
    4d6a:	4a55      	ldr	r2, [pc, #340]	; (4ec0 <_free_r+0x1b0>)
    4d6c:	431e      	orrs	r6, r3
    4d6e:	604e      	str	r6, [r1, #4]
    4d70:	50cb      	str	r3, [r1, r3]
    4d72:	4293      	cmp	r3, r2
    4d74:	d814      	bhi.n	4da0 <_free_r+0x90>
    4d76:	08db      	lsrs	r3, r3, #3
    4d78:	3aff      	subs	r2, #255	; 0xff
    4d7a:	109c      	asrs	r4, r3, #2
    4d7c:	3aff      	subs	r2, #255	; 0xff
    4d7e:	40a2      	lsls	r2, r4
    4d80:	6844      	ldr	r4, [r0, #4]
    4d82:	00db      	lsls	r3, r3, #3
    4d84:	4322      	orrs	r2, r4
    4d86:	6042      	str	r2, [r0, #4]
    4d88:	1818      	adds	r0, r3, r0
    4d8a:	6883      	ldr	r3, [r0, #8]
    4d8c:	60c8      	str	r0, [r1, #12]
    4d8e:	608b      	str	r3, [r1, #8]
    4d90:	6081      	str	r1, [r0, #8]
    4d92:	60d9      	str	r1, [r3, #12]
    4d94:	0028      	movs	r0, r5
    4d96:	f000 fb49 	bl	542c <__malloc_unlock>
    4d9a:	bc04      	pop	{r2}
    4d9c:	4690      	mov	r8, r2
    4d9e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4da0:	0a5a      	lsrs	r2, r3, #9
    4da2:	2a04      	cmp	r2, #4
    4da4:	d84f      	bhi.n	4e46 <_free_r+0x136>
    4da6:	099c      	lsrs	r4, r3, #6
    4da8:	0026      	movs	r6, r4
    4daa:	3439      	adds	r4, #57	; 0x39
    4dac:	3638      	adds	r6, #56	; 0x38
    4dae:	0064      	lsls	r4, r4, #1
    4db0:	00a4      	lsls	r4, r4, #2
    4db2:	1904      	adds	r4, r0, r4
    4db4:	3c08      	subs	r4, #8
    4db6:	68a2      	ldr	r2, [r4, #8]
    4db8:	2703      	movs	r7, #3
    4dba:	4294      	cmp	r4, r2
    4dbc:	d04a      	beq.n	4e54 <_free_r+0x144>
    4dbe:	6850      	ldr	r0, [r2, #4]
    4dc0:	43b8      	bics	r0, r7
    4dc2:	4283      	cmp	r3, r0
    4dc4:	d202      	bcs.n	4dcc <_free_r+0xbc>
    4dc6:	6892      	ldr	r2, [r2, #8]
    4dc8:	4294      	cmp	r4, r2
    4dca:	d1f8      	bne.n	4dbe <_free_r+0xae>
    4dcc:	68d4      	ldr	r4, [r2, #12]
    4dce:	60cc      	str	r4, [r1, #12]
    4dd0:	608a      	str	r2, [r1, #8]
    4dd2:	60a1      	str	r1, [r4, #8]
    4dd4:	60d1      	str	r1, [r2, #12]
    4dd6:	e7dd      	b.n	4d94 <_free_r+0x84>
    4dd8:	189b      	adds	r3, r3, r2
    4dda:	4f3a      	ldr	r7, [pc, #232]	; (4ec4 <_free_r+0x1b4>)
    4ddc:	68a2      	ldr	r2, [r4, #8]
    4dde:	42ba      	cmp	r2, r7
    4de0:	d040      	beq.n	4e64 <_free_r+0x154>
    4de2:	68e4      	ldr	r4, [r4, #12]
    4de4:	431e      	orrs	r6, r3
    4de6:	60d4      	str	r4, [r2, #12]
    4de8:	60a2      	str	r2, [r4, #8]
    4dea:	4a35      	ldr	r2, [pc, #212]	; (4ec0 <_free_r+0x1b0>)
    4dec:	604e      	str	r6, [r1, #4]
    4dee:	50cb      	str	r3, [r1, r3]
    4df0:	4293      	cmp	r3, r2
    4df2:	d8d5      	bhi.n	4da0 <_free_r+0x90>
    4df4:	e7bf      	b.n	4d76 <_free_r+0x66>
    4df6:	189b      	adds	r3, r3, r2
    4df8:	4642      	mov	r2, r8
    4dfa:	4232      	tst	r2, r6
    4dfc:	d106      	bne.n	4e0c <_free_r+0xfc>
    4dfe:	680a      	ldr	r2, [r1, #0]
    4e00:	1a89      	subs	r1, r1, r2
    4e02:	688c      	ldr	r4, [r1, #8]
    4e04:	189b      	adds	r3, r3, r2
    4e06:	68ca      	ldr	r2, [r1, #12]
    4e08:	60e2      	str	r2, [r4, #12]
    4e0a:	6094      	str	r4, [r2, #8]
    4e0c:	2401      	movs	r4, #1
    4e0e:	4a2e      	ldr	r2, [pc, #184]	; (4ec8 <_free_r+0x1b8>)
    4e10:	431c      	orrs	r4, r3
    4e12:	6812      	ldr	r2, [r2, #0]
    4e14:	604c      	str	r4, [r1, #4]
    4e16:	6081      	str	r1, [r0, #8]
    4e18:	4293      	cmp	r3, r2
    4e1a:	d3bb      	bcc.n	4d94 <_free_r+0x84>
    4e1c:	4b2b      	ldr	r3, [pc, #172]	; (4ecc <_free_r+0x1bc>)
    4e1e:	0028      	movs	r0, r5
    4e20:	6819      	ldr	r1, [r3, #0]
    4e22:	f7ff ff25 	bl	4c70 <_malloc_trim_r>
    4e26:	e7b5      	b.n	4d94 <_free_r+0x84>
    4e28:	4646      	mov	r6, r8
    4e2a:	18a0      	adds	r0, r4, r2
    4e2c:	6840      	ldr	r0, [r0, #4]
    4e2e:	4230      	tst	r0, r6
    4e30:	d13e      	bne.n	4eb0 <_free_r+0x1a0>
    4e32:	68a0      	ldr	r0, [r4, #8]
    4e34:	18d3      	adds	r3, r2, r3
    4e36:	68e2      	ldr	r2, [r4, #12]
    4e38:	60c2      	str	r2, [r0, #12]
    4e3a:	6090      	str	r0, [r2, #8]
    4e3c:	4642      	mov	r2, r8
    4e3e:	431a      	orrs	r2, r3
    4e40:	604a      	str	r2, [r1, #4]
    4e42:	50cb      	str	r3, [r1, r3]
    4e44:	e7a6      	b.n	4d94 <_free_r+0x84>
    4e46:	2a14      	cmp	r2, #20
    4e48:	d814      	bhi.n	4e74 <_free_r+0x164>
    4e4a:	0016      	movs	r6, r2
    4e4c:	325c      	adds	r2, #92	; 0x5c
    4e4e:	365b      	adds	r6, #91	; 0x5b
    4e50:	0054      	lsls	r4, r2, #1
    4e52:	e7ad      	b.n	4db0 <_free_r+0xa0>
    4e54:	2301      	movs	r3, #1
    4e56:	10b6      	asrs	r6, r6, #2
    4e58:	40b3      	lsls	r3, r6
    4e5a:	6842      	ldr	r2, [r0, #4]
    4e5c:	4313      	orrs	r3, r2
    4e5e:	6043      	str	r3, [r0, #4]
    4e60:	0022      	movs	r2, r4
    4e62:	e7b4      	b.n	4dce <_free_r+0xbe>
    4e64:	431e      	orrs	r6, r3
    4e66:	60d1      	str	r1, [r2, #12]
    4e68:	6091      	str	r1, [r2, #8]
    4e6a:	60ca      	str	r2, [r1, #12]
    4e6c:	608a      	str	r2, [r1, #8]
    4e6e:	604e      	str	r6, [r1, #4]
    4e70:	50cb      	str	r3, [r1, r3]
    4e72:	e78f      	b.n	4d94 <_free_r+0x84>
    4e74:	2a54      	cmp	r2, #84	; 0x54
    4e76:	d805      	bhi.n	4e84 <_free_r+0x174>
    4e78:	0b1c      	lsrs	r4, r3, #12
    4e7a:	0026      	movs	r6, r4
    4e7c:	346f      	adds	r4, #111	; 0x6f
    4e7e:	366e      	adds	r6, #110	; 0x6e
    4e80:	0064      	lsls	r4, r4, #1
    4e82:	e795      	b.n	4db0 <_free_r+0xa0>
    4e84:	24aa      	movs	r4, #170	; 0xaa
    4e86:	0064      	lsls	r4, r4, #1
    4e88:	42a2      	cmp	r2, r4
    4e8a:	d805      	bhi.n	4e98 <_free_r+0x188>
    4e8c:	0bdc      	lsrs	r4, r3, #15
    4e8e:	0026      	movs	r6, r4
    4e90:	3478      	adds	r4, #120	; 0x78
    4e92:	3677      	adds	r6, #119	; 0x77
    4e94:	0064      	lsls	r4, r4, #1
    4e96:	e78b      	b.n	4db0 <_free_r+0xa0>
    4e98:	4c0d      	ldr	r4, [pc, #52]	; (4ed0 <_free_r+0x1c0>)
    4e9a:	42a2      	cmp	r2, r4
    4e9c:	d805      	bhi.n	4eaa <_free_r+0x19a>
    4e9e:	0c9c      	lsrs	r4, r3, #18
    4ea0:	0026      	movs	r6, r4
    4ea2:	347d      	adds	r4, #125	; 0x7d
    4ea4:	367c      	adds	r6, #124	; 0x7c
    4ea6:	0064      	lsls	r4, r4, #1
    4ea8:	e782      	b.n	4db0 <_free_r+0xa0>
    4eaa:	24fe      	movs	r4, #254	; 0xfe
    4eac:	267e      	movs	r6, #126	; 0x7e
    4eae:	e77f      	b.n	4db0 <_free_r+0xa0>
    4eb0:	4642      	mov	r2, r8
    4eb2:	431a      	orrs	r2, r3
    4eb4:	604a      	str	r2, [r1, #4]
    4eb6:	50cb      	str	r3, [r1, r3]
    4eb8:	e76c      	b.n	4d94 <_free_r+0x84>
    4eba:	46c0      	nop			; (mov r8, r8)
    4ebc:	20000444 	.word	0x20000444
    4ec0:	000001ff 	.word	0x000001ff
    4ec4:	2000044c 	.word	0x2000044c
    4ec8:	2000084c 	.word	0x2000084c
    4ecc:	20005ffc 	.word	0x20005ffc
    4ed0:	00000554 	.word	0x00000554

00004ed4 <_malloc_r>:
    4ed4:	b5f0      	push	{r4, r5, r6, r7, lr}
    4ed6:	465f      	mov	r7, fp
    4ed8:	464d      	mov	r5, r9
    4eda:	4656      	mov	r6, sl
    4edc:	4644      	mov	r4, r8
    4ede:	b4f0      	push	{r4, r5, r6, r7}
    4ee0:	000d      	movs	r5, r1
    4ee2:	350b      	adds	r5, #11
    4ee4:	b083      	sub	sp, #12
    4ee6:	0007      	movs	r7, r0
    4ee8:	2d16      	cmp	r5, #22
    4eea:	d800      	bhi.n	4eee <_malloc_r+0x1a>
    4eec:	e0a8      	b.n	5040 <_malloc_r+0x16c>
    4eee:	2307      	movs	r3, #7
    4ef0:	439d      	bics	r5, r3
    4ef2:	d500      	bpl.n	4ef6 <_malloc_r+0x22>
    4ef4:	e0ce      	b.n	5094 <_malloc_r+0x1c0>
    4ef6:	42a9      	cmp	r1, r5
    4ef8:	d900      	bls.n	4efc <_malloc_r+0x28>
    4efa:	e0cb      	b.n	5094 <_malloc_r+0x1c0>
    4efc:	f000 fa94 	bl	5428 <__malloc_lock>
    4f00:	23f8      	movs	r3, #248	; 0xf8
    4f02:	33ff      	adds	r3, #255	; 0xff
    4f04:	429d      	cmp	r5, r3
    4f06:	d800      	bhi.n	4f0a <_malloc_r+0x36>
    4f08:	e284      	b.n	5414 <_malloc_r+0x540>
    4f0a:	0a6b      	lsrs	r3, r5, #9
    4f0c:	d100      	bne.n	4f10 <_malloc_r+0x3c>
    4f0e:	e0c5      	b.n	509c <_malloc_r+0x1c8>
    4f10:	2b04      	cmp	r3, #4
    4f12:	d900      	bls.n	4f16 <_malloc_r+0x42>
    4f14:	e16c      	b.n	51f0 <_malloc_r+0x31c>
    4f16:	2338      	movs	r3, #56	; 0x38
    4f18:	09a9      	lsrs	r1, r5, #6
    4f1a:	469c      	mov	ip, r3
    4f1c:	3301      	adds	r3, #1
    4f1e:	4698      	mov	r8, r3
    4f20:	4488      	add	r8, r1
    4f22:	4643      	mov	r3, r8
    4f24:	448c      	add	ip, r1
    4f26:	0059      	lsls	r1, r3, #1
    4f28:	4ec9      	ldr	r6, [pc, #804]	; (5250 <_malloc_r+0x37c>)
    4f2a:	0089      	lsls	r1, r1, #2
    4f2c:	1871      	adds	r1, r6, r1
    4f2e:	3908      	subs	r1, #8
    4f30:	68cc      	ldr	r4, [r1, #12]
    4f32:	42a1      	cmp	r1, r4
    4f34:	d017      	beq.n	4f66 <_malloc_r+0x92>
    4f36:	2303      	movs	r3, #3
    4f38:	6862      	ldr	r2, [r4, #4]
    4f3a:	439a      	bics	r2, r3
    4f3c:	0013      	movs	r3, r2
    4f3e:	1b52      	subs	r2, r2, r5
    4f40:	2a0f      	cmp	r2, #15
    4f42:	dd00      	ble.n	4f46 <_malloc_r+0x72>
    4f44:	e0b0      	b.n	50a8 <_malloc_r+0x1d4>
    4f46:	2003      	movs	r0, #3
    4f48:	2a00      	cmp	r2, #0
    4f4a:	db09      	blt.n	4f60 <_malloc_r+0x8c>
    4f4c:	e08d      	b.n	506a <_malloc_r+0x196>
    4f4e:	6863      	ldr	r3, [r4, #4]
    4f50:	4383      	bics	r3, r0
    4f52:	1b5a      	subs	r2, r3, r5
    4f54:	2a0f      	cmp	r2, #15
    4f56:	dd00      	ble.n	4f5a <_malloc_r+0x86>
    4f58:	e0a6      	b.n	50a8 <_malloc_r+0x1d4>
    4f5a:	2a00      	cmp	r2, #0
    4f5c:	db00      	blt.n	4f60 <_malloc_r+0x8c>
    4f5e:	e084      	b.n	506a <_malloc_r+0x196>
    4f60:	68e4      	ldr	r4, [r4, #12]
    4f62:	42a1      	cmp	r1, r4
    4f64:	d1f3      	bne.n	4f4e <_malloc_r+0x7a>
    4f66:	4643      	mov	r3, r8
    4f68:	9300      	str	r3, [sp, #0]
    4f6a:	0032      	movs	r2, r6
    4f6c:	6934      	ldr	r4, [r6, #16]
    4f6e:	3208      	adds	r2, #8
    4f70:	4294      	cmp	r4, r2
    4f72:	d100      	bne.n	4f76 <_malloc_r+0xa2>
    4f74:	e18f      	b.n	5296 <_malloc_r+0x3c2>
    4f76:	2303      	movs	r3, #3
    4f78:	6861      	ldr	r1, [r4, #4]
    4f7a:	4399      	bics	r1, r3
    4f7c:	000b      	movs	r3, r1
    4f7e:	1b48      	subs	r0, r1, r5
    4f80:	280f      	cmp	r0, #15
    4f82:	dd00      	ble.n	4f86 <_malloc_r+0xb2>
    4f84:	e176      	b.n	5274 <_malloc_r+0x3a0>
    4f86:	6172      	str	r2, [r6, #20]
    4f88:	6132      	str	r2, [r6, #16]
    4f8a:	2800      	cmp	r0, #0
    4f8c:	da71      	bge.n	5072 <_malloc_r+0x19e>
    4f8e:	4ab1      	ldr	r2, [pc, #708]	; (5254 <_malloc_r+0x380>)
    4f90:	4291      	cmp	r1, r2
    4f92:	d900      	bls.n	4f96 <_malloc_r+0xc2>
    4f94:	e134      	b.n	5200 <_malloc_r+0x32c>
    4f96:	2301      	movs	r3, #1
    4f98:	08c8      	lsrs	r0, r1, #3
    4f9a:	1082      	asrs	r2, r0, #2
    4f9c:	4093      	lsls	r3, r2
    4f9e:	6872      	ldr	r2, [r6, #4]
    4fa0:	431a      	orrs	r2, r3
    4fa2:	00c3      	lsls	r3, r0, #3
    4fa4:	199b      	adds	r3, r3, r6
    4fa6:	6898      	ldr	r0, [r3, #8]
    4fa8:	6072      	str	r2, [r6, #4]
    4faa:	60e3      	str	r3, [r4, #12]
    4fac:	60a0      	str	r0, [r4, #8]
    4fae:	609c      	str	r4, [r3, #8]
    4fb0:	0013      	movs	r3, r2
    4fb2:	60c4      	str	r4, [r0, #12]
    4fb4:	2001      	movs	r0, #1
    4fb6:	9900      	ldr	r1, [sp, #0]
    4fb8:	108a      	asrs	r2, r1, #2
    4fba:	4090      	lsls	r0, r2
    4fbc:	4298      	cmp	r0, r3
    4fbe:	d900      	bls.n	4fc2 <_malloc_r+0xee>
    4fc0:	e075      	b.n	50ae <_malloc_r+0x1da>
    4fc2:	4203      	tst	r3, r0
    4fc4:	d10c      	bne.n	4fe0 <_malloc_r+0x10c>
    4fc6:	2203      	movs	r2, #3
    4fc8:	4391      	bics	r1, r2
    4fca:	1d0a      	adds	r2, r1, #4
    4fcc:	0040      	lsls	r0, r0, #1
    4fce:	9200      	str	r2, [sp, #0]
    4fd0:	4203      	tst	r3, r0
    4fd2:	d105      	bne.n	4fe0 <_malloc_r+0x10c>
    4fd4:	9a00      	ldr	r2, [sp, #0]
    4fd6:	0040      	lsls	r0, r0, #1
    4fd8:	3204      	adds	r2, #4
    4fda:	9200      	str	r2, [sp, #0]
    4fdc:	4203      	tst	r3, r0
    4fde:	d0f9      	beq.n	4fd4 <_malloc_r+0x100>
    4fe0:	2303      	movs	r3, #3
    4fe2:	4698      	mov	r8, r3
    4fe4:	9a00      	ldr	r2, [sp, #0]
    4fe6:	00d3      	lsls	r3, r2, #3
    4fe8:	4699      	mov	r9, r3
    4fea:	44b1      	add	r9, r6
    4fec:	46cc      	mov	ip, r9
    4fee:	4692      	mov	sl, r2
    4ff0:	4663      	mov	r3, ip
    4ff2:	68dc      	ldr	r4, [r3, #12]
    4ff4:	45a4      	cmp	ip, r4
    4ff6:	d107      	bne.n	5008 <_malloc_r+0x134>
    4ff8:	e14f      	b.n	529a <_malloc_r+0x3c6>
    4ffa:	2a00      	cmp	r2, #0
    4ffc:	db00      	blt.n	5000 <_malloc_r+0x12c>
    4ffe:	e15f      	b.n	52c0 <_malloc_r+0x3ec>
    5000:	68e4      	ldr	r4, [r4, #12]
    5002:	45a4      	cmp	ip, r4
    5004:	d100      	bne.n	5008 <_malloc_r+0x134>
    5006:	e148      	b.n	529a <_malloc_r+0x3c6>
    5008:	4642      	mov	r2, r8
    500a:	6863      	ldr	r3, [r4, #4]
    500c:	4393      	bics	r3, r2
    500e:	1b5a      	subs	r2, r3, r5
    5010:	2a0f      	cmp	r2, #15
    5012:	ddf2      	ble.n	4ffa <_malloc_r+0x126>
    5014:	2101      	movs	r1, #1
    5016:	1963      	adds	r3, r4, r5
    5018:	430d      	orrs	r5, r1
    501a:	6065      	str	r5, [r4, #4]
    501c:	68e0      	ldr	r0, [r4, #12]
    501e:	68a5      	ldr	r5, [r4, #8]
    5020:	3608      	adds	r6, #8
    5022:	60e8      	str	r0, [r5, #12]
    5024:	4311      	orrs	r1, r2
    5026:	6085      	str	r5, [r0, #8]
    5028:	60f3      	str	r3, [r6, #12]
    502a:	60b3      	str	r3, [r6, #8]
    502c:	0038      	movs	r0, r7
    502e:	60de      	str	r6, [r3, #12]
    5030:	609e      	str	r6, [r3, #8]
    5032:	6059      	str	r1, [r3, #4]
    5034:	509a      	str	r2, [r3, r2]
    5036:	f000 f9f9 	bl	542c <__malloc_unlock>
    503a:	0020      	movs	r0, r4
    503c:	3008      	adds	r0, #8
    503e:	e022      	b.n	5086 <_malloc_r+0x1b2>
    5040:	2910      	cmp	r1, #16
    5042:	d827      	bhi.n	5094 <_malloc_r+0x1c0>
    5044:	0038      	movs	r0, r7
    5046:	f000 f9ef 	bl	5428 <__malloc_lock>
    504a:	2510      	movs	r5, #16
    504c:	2306      	movs	r3, #6
    504e:	2102      	movs	r1, #2
    5050:	4e7f      	ldr	r6, [pc, #508]	; (5250 <_malloc_r+0x37c>)
    5052:	009b      	lsls	r3, r3, #2
    5054:	18f3      	adds	r3, r6, r3
    5056:	001a      	movs	r2, r3
    5058:	685c      	ldr	r4, [r3, #4]
    505a:	3a08      	subs	r2, #8
    505c:	4294      	cmp	r4, r2
    505e:	d100      	bne.n	5062 <_malloc_r+0x18e>
    5060:	e127      	b.n	52b2 <_malloc_r+0x3de>
    5062:	2303      	movs	r3, #3
    5064:	6862      	ldr	r2, [r4, #4]
    5066:	439a      	bics	r2, r3
    5068:	0013      	movs	r3, r2
    506a:	68e2      	ldr	r2, [r4, #12]
    506c:	68a1      	ldr	r1, [r4, #8]
    506e:	60ca      	str	r2, [r1, #12]
    5070:	6091      	str	r1, [r2, #8]
    5072:	2201      	movs	r2, #1
    5074:	18e3      	adds	r3, r4, r3
    5076:	6859      	ldr	r1, [r3, #4]
    5078:	0038      	movs	r0, r7
    507a:	430a      	orrs	r2, r1
    507c:	605a      	str	r2, [r3, #4]
    507e:	f000 f9d5 	bl	542c <__malloc_unlock>
    5082:	0020      	movs	r0, r4
    5084:	3008      	adds	r0, #8
    5086:	b003      	add	sp, #12
    5088:	bc3c      	pop	{r2, r3, r4, r5}
    508a:	4690      	mov	r8, r2
    508c:	4699      	mov	r9, r3
    508e:	46a2      	mov	sl, r4
    5090:	46ab      	mov	fp, r5
    5092:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5094:	230c      	movs	r3, #12
    5096:	2000      	movs	r0, #0
    5098:	603b      	str	r3, [r7, #0]
    509a:	e7f4      	b.n	5086 <_malloc_r+0x1b2>
    509c:	2340      	movs	r3, #64	; 0x40
    509e:	4698      	mov	r8, r3
    50a0:	3b01      	subs	r3, #1
    50a2:	2180      	movs	r1, #128	; 0x80
    50a4:	469c      	mov	ip, r3
    50a6:	e73f      	b.n	4f28 <_malloc_r+0x54>
    50a8:	4663      	mov	r3, ip
    50aa:	9300      	str	r3, [sp, #0]
    50ac:	e75d      	b.n	4f6a <_malloc_r+0x96>
    50ae:	2303      	movs	r3, #3
    50b0:	68b4      	ldr	r4, [r6, #8]
    50b2:	6862      	ldr	r2, [r4, #4]
    50b4:	439a      	bics	r2, r3
    50b6:	4690      	mov	r8, r2
    50b8:	42aa      	cmp	r2, r5
    50ba:	d303      	bcc.n	50c4 <_malloc_r+0x1f0>
    50bc:	1b52      	subs	r2, r2, r5
    50be:	2a0f      	cmp	r2, #15
    50c0:	dd00      	ble.n	50c4 <_malloc_r+0x1f0>
    50c2:	e087      	b.n	51d4 <_malloc_r+0x300>
    50c4:	0023      	movs	r3, r4
    50c6:	4443      	add	r3, r8
    50c8:	4a63      	ldr	r2, [pc, #396]	; (5258 <_malloc_r+0x384>)
    50ca:	9301      	str	r3, [sp, #4]
    50cc:	4b63      	ldr	r3, [pc, #396]	; (525c <_malloc_r+0x388>)
    50ce:	4693      	mov	fp, r2
    50d0:	681b      	ldr	r3, [r3, #0]
    50d2:	6812      	ldr	r2, [r2, #0]
    50d4:	18eb      	adds	r3, r5, r3
    50d6:	3201      	adds	r2, #1
    50d8:	d100      	bne.n	50dc <_malloc_r+0x208>
    50da:	e157      	b.n	538c <_malloc_r+0x4b8>
    50dc:	4a60      	ldr	r2, [pc, #384]	; (5260 <_malloc_r+0x38c>)
    50de:	4694      	mov	ip, r2
    50e0:	4463      	add	r3, ip
    50e2:	0b1b      	lsrs	r3, r3, #12
    50e4:	031b      	lsls	r3, r3, #12
    50e6:	9300      	str	r3, [sp, #0]
    50e8:	9900      	ldr	r1, [sp, #0]
    50ea:	0038      	movs	r0, r7
    50ec:	f000 f9a0 	bl	5430 <_sbrk_r>
    50f0:	0003      	movs	r3, r0
    50f2:	4681      	mov	r9, r0
    50f4:	3301      	adds	r3, #1
    50f6:	d061      	beq.n	51bc <_malloc_r+0x2e8>
    50f8:	9b01      	ldr	r3, [sp, #4]
    50fa:	4283      	cmp	r3, r0
    50fc:	d900      	bls.n	5100 <_malloc_r+0x22c>
    50fe:	e0fd      	b.n	52fc <_malloc_r+0x428>
    5100:	4b58      	ldr	r3, [pc, #352]	; (5264 <_malloc_r+0x390>)
    5102:	9a00      	ldr	r2, [sp, #0]
    5104:	469a      	mov	sl, r3
    5106:	681b      	ldr	r3, [r3, #0]
    5108:	469c      	mov	ip, r3
    510a:	4653      	mov	r3, sl
    510c:	4462      	add	r2, ip
    510e:	601a      	str	r2, [r3, #0]
    5110:	9b01      	ldr	r3, [sp, #4]
    5112:	0011      	movs	r1, r2
    5114:	454b      	cmp	r3, r9
    5116:	d100      	bne.n	511a <_malloc_r+0x246>
    5118:	e143      	b.n	53a2 <_malloc_r+0x4ce>
    511a:	465b      	mov	r3, fp
    511c:	681b      	ldr	r3, [r3, #0]
    511e:	3301      	adds	r3, #1
    5120:	d100      	bne.n	5124 <_malloc_r+0x250>
    5122:	e14f      	b.n	53c4 <_malloc_r+0x4f0>
    5124:	464b      	mov	r3, r9
    5126:	9a01      	ldr	r2, [sp, #4]
    5128:	1a9b      	subs	r3, r3, r2
    512a:	1859      	adds	r1, r3, r1
    512c:	4653      	mov	r3, sl
    512e:	6019      	str	r1, [r3, #0]
    5130:	2307      	movs	r3, #7
    5132:	464a      	mov	r2, r9
    5134:	4013      	ands	r3, r2
    5136:	d100      	bne.n	513a <_malloc_r+0x266>
    5138:	e117      	b.n	536a <_malloc_r+0x496>
    513a:	2108      	movs	r1, #8
    513c:	4689      	mov	r9, r1
    513e:	494a      	ldr	r1, [pc, #296]	; (5268 <_malloc_r+0x394>)
    5140:	1ad2      	subs	r2, r2, r3
    5142:	4491      	add	r9, r2
    5144:	1ac9      	subs	r1, r1, r3
    5146:	9b00      	ldr	r3, [sp, #0]
    5148:	0038      	movs	r0, r7
    514a:	444b      	add	r3, r9
    514c:	051b      	lsls	r3, r3, #20
    514e:	0d1b      	lsrs	r3, r3, #20
    5150:	1acb      	subs	r3, r1, r3
    5152:	0019      	movs	r1, r3
    5154:	469b      	mov	fp, r3
    5156:	f000 f96b 	bl	5430 <_sbrk_r>
    515a:	1c43      	adds	r3, r0, #1
    515c:	d100      	bne.n	5160 <_malloc_r+0x28c>
    515e:	e135      	b.n	53cc <_malloc_r+0x4f8>
    5160:	464b      	mov	r3, r9
    5162:	1ac0      	subs	r0, r0, r3
    5164:	2301      	movs	r3, #1
    5166:	4458      	add	r0, fp
    5168:	4318      	orrs	r0, r3
    516a:	4653      	mov	r3, sl
    516c:	681b      	ldr	r3, [r3, #0]
    516e:	445b      	add	r3, fp
    5170:	0019      	movs	r1, r3
    5172:	4653      	mov	r3, sl
    5174:	6019      	str	r1, [r3, #0]
    5176:	464b      	mov	r3, r9
    5178:	60b3      	str	r3, [r6, #8]
    517a:	6058      	str	r0, [r3, #4]
    517c:	42b4      	cmp	r4, r6
    517e:	d013      	beq.n	51a8 <_malloc_r+0x2d4>
    5180:	4643      	mov	r3, r8
    5182:	2b0f      	cmp	r3, #15
    5184:	d800      	bhi.n	5188 <_malloc_r+0x2b4>
    5186:	e0e1      	b.n	534c <_malloc_r+0x478>
    5188:	4643      	mov	r3, r8
    518a:	2207      	movs	r2, #7
    518c:	6860      	ldr	r0, [r4, #4]
    518e:	3b0c      	subs	r3, #12
    5190:	4393      	bics	r3, r2
    5192:	3a06      	subs	r2, #6
    5194:	4002      	ands	r2, r0
    5196:	2005      	movs	r0, #5
    5198:	431a      	orrs	r2, r3
    519a:	6062      	str	r2, [r4, #4]
    519c:	18e2      	adds	r2, r4, r3
    519e:	6050      	str	r0, [r2, #4]
    51a0:	6090      	str	r0, [r2, #8]
    51a2:	2b0f      	cmp	r3, #15
    51a4:	d900      	bls.n	51a8 <_malloc_r+0x2d4>
    51a6:	e115      	b.n	53d4 <_malloc_r+0x500>
    51a8:	4b30      	ldr	r3, [pc, #192]	; (526c <_malloc_r+0x398>)
    51aa:	681a      	ldr	r2, [r3, #0]
    51ac:	4291      	cmp	r1, r2
    51ae:	d900      	bls.n	51b2 <_malloc_r+0x2de>
    51b0:	6019      	str	r1, [r3, #0]
    51b2:	4b2f      	ldr	r3, [pc, #188]	; (5270 <_malloc_r+0x39c>)
    51b4:	681a      	ldr	r2, [r3, #0]
    51b6:	4291      	cmp	r1, r2
    51b8:	d900      	bls.n	51bc <_malloc_r+0x2e8>
    51ba:	6019      	str	r1, [r3, #0]
    51bc:	2303      	movs	r3, #3
    51be:	68b4      	ldr	r4, [r6, #8]
    51c0:	6862      	ldr	r2, [r4, #4]
    51c2:	439a      	bics	r2, r3
    51c4:	0013      	movs	r3, r2
    51c6:	1b52      	subs	r2, r2, r5
    51c8:	429d      	cmp	r5, r3
    51ca:	d900      	bls.n	51ce <_malloc_r+0x2fa>
    51cc:	e0c1      	b.n	5352 <_malloc_r+0x47e>
    51ce:	2a0f      	cmp	r2, #15
    51d0:	dc00      	bgt.n	51d4 <_malloc_r+0x300>
    51d2:	e0be      	b.n	5352 <_malloc_r+0x47e>
    51d4:	2301      	movs	r3, #1
    51d6:	0029      	movs	r1, r5
    51d8:	1965      	adds	r5, r4, r5
    51da:	4319      	orrs	r1, r3
    51dc:	4313      	orrs	r3, r2
    51de:	6061      	str	r1, [r4, #4]
    51e0:	0038      	movs	r0, r7
    51e2:	60b5      	str	r5, [r6, #8]
    51e4:	606b      	str	r3, [r5, #4]
    51e6:	f000 f921 	bl	542c <__malloc_unlock>
    51ea:	0020      	movs	r0, r4
    51ec:	3008      	adds	r0, #8
    51ee:	e74a      	b.n	5086 <_malloc_r+0x1b2>
    51f0:	2b14      	cmp	r3, #20
    51f2:	d974      	bls.n	52de <_malloc_r+0x40a>
    51f4:	2b54      	cmp	r3, #84	; 0x54
    51f6:	d900      	bls.n	51fa <_malloc_r+0x326>
    51f8:	e0b0      	b.n	535c <_malloc_r+0x488>
    51fa:	0b29      	lsrs	r1, r5, #12
    51fc:	236e      	movs	r3, #110	; 0x6e
    51fe:	e68c      	b.n	4f1a <_malloc_r+0x46>
    5200:	0a4a      	lsrs	r2, r1, #9
    5202:	2a04      	cmp	r2, #4
    5204:	d974      	bls.n	52f0 <_malloc_r+0x41c>
    5206:	2a14      	cmp	r2, #20
    5208:	d900      	bls.n	520c <_malloc_r+0x338>
    520a:	e0c2      	b.n	5392 <_malloc_r+0x4be>
    520c:	0010      	movs	r0, r2
    520e:	325c      	adds	r2, #92	; 0x5c
    5210:	305b      	adds	r0, #91	; 0x5b
    5212:	0052      	lsls	r2, r2, #1
    5214:	2108      	movs	r1, #8
    5216:	4249      	negs	r1, r1
    5218:	468c      	mov	ip, r1
    521a:	0092      	lsls	r2, r2, #2
    521c:	18b2      	adds	r2, r6, r2
    521e:	4494      	add	ip, r2
    5220:	4662      	mov	r2, ip
    5222:	6892      	ldr	r2, [r2, #8]
    5224:	310b      	adds	r1, #11
    5226:	4688      	mov	r8, r1
    5228:	4594      	cmp	ip, r2
    522a:	d100      	bne.n	522e <_malloc_r+0x35a>
    522c:	e0a0      	b.n	5370 <_malloc_r+0x49c>
    522e:	4641      	mov	r1, r8
    5230:	6850      	ldr	r0, [r2, #4]
    5232:	4388      	bics	r0, r1
    5234:	4283      	cmp	r3, r0
    5236:	d202      	bcs.n	523e <_malloc_r+0x36a>
    5238:	6892      	ldr	r2, [r2, #8]
    523a:	4594      	cmp	ip, r2
    523c:	d1f7      	bne.n	522e <_malloc_r+0x35a>
    523e:	68d3      	ldr	r3, [r2, #12]
    5240:	469c      	mov	ip, r3
    5242:	6873      	ldr	r3, [r6, #4]
    5244:	4661      	mov	r1, ip
    5246:	60a2      	str	r2, [r4, #8]
    5248:	60e1      	str	r1, [r4, #12]
    524a:	608c      	str	r4, [r1, #8]
    524c:	60d4      	str	r4, [r2, #12]
    524e:	e6b1      	b.n	4fb4 <_malloc_r+0xe0>
    5250:	20000444 	.word	0x20000444
    5254:	000001ff 	.word	0x000001ff
    5258:	20000850 	.word	0x20000850
    525c:	20005ffc 	.word	0x20005ffc
    5260:	0000100f 	.word	0x0000100f
    5264:	20006000 	.word	0x20006000
    5268:	00001008 	.word	0x00001008
    526c:	20005ff8 	.word	0x20005ff8
    5270:	20005ff4 	.word	0x20005ff4
    5274:	2101      	movs	r1, #1
    5276:	1963      	adds	r3, r4, r5
    5278:	430d      	orrs	r5, r1
    527a:	4301      	orrs	r1, r0
    527c:	6065      	str	r5, [r4, #4]
    527e:	6173      	str	r3, [r6, #20]
    5280:	6133      	str	r3, [r6, #16]
    5282:	60da      	str	r2, [r3, #12]
    5284:	609a      	str	r2, [r3, #8]
    5286:	6059      	str	r1, [r3, #4]
    5288:	5018      	str	r0, [r3, r0]
    528a:	0038      	movs	r0, r7
    528c:	f000 f8ce 	bl	542c <__malloc_unlock>
    5290:	0020      	movs	r0, r4
    5292:	3008      	adds	r0, #8
    5294:	e6f7      	b.n	5086 <_malloc_r+0x1b2>
    5296:	6873      	ldr	r3, [r6, #4]
    5298:	e68c      	b.n	4fb4 <_malloc_r+0xe0>
    529a:	2308      	movs	r3, #8
    529c:	469b      	mov	fp, r3
    529e:	3b07      	subs	r3, #7
    52a0:	44dc      	add	ip, fp
    52a2:	469b      	mov	fp, r3
    52a4:	44da      	add	sl, fp
    52a6:	4643      	mov	r3, r8
    52a8:	4652      	mov	r2, sl
    52aa:	4213      	tst	r3, r2
    52ac:	d000      	beq.n	52b0 <_malloc_r+0x3dc>
    52ae:	e69f      	b.n	4ff0 <_malloc_r+0x11c>
    52b0:	e033      	b.n	531a <_malloc_r+0x446>
    52b2:	68dc      	ldr	r4, [r3, #12]
    52b4:	1c8a      	adds	r2, r1, #2
    52b6:	9200      	str	r2, [sp, #0]
    52b8:	42a3      	cmp	r3, r4
    52ba:	d100      	bne.n	52be <_malloc_r+0x3ea>
    52bc:	e655      	b.n	4f6a <_malloc_r+0x96>
    52be:	e6d0      	b.n	5062 <_malloc_r+0x18e>
    52c0:	2201      	movs	r2, #1
    52c2:	18e3      	adds	r3, r4, r3
    52c4:	6859      	ldr	r1, [r3, #4]
    52c6:	0038      	movs	r0, r7
    52c8:	430a      	orrs	r2, r1
    52ca:	605a      	str	r2, [r3, #4]
    52cc:	68e3      	ldr	r3, [r4, #12]
    52ce:	68a2      	ldr	r2, [r4, #8]
    52d0:	60d3      	str	r3, [r2, #12]
    52d2:	609a      	str	r2, [r3, #8]
    52d4:	f000 f8aa 	bl	542c <__malloc_unlock>
    52d8:	0020      	movs	r0, r4
    52da:	3008      	adds	r0, #8
    52dc:	e6d3      	b.n	5086 <_malloc_r+0x1b2>
    52de:	225b      	movs	r2, #91	; 0x5b
    52e0:	4694      	mov	ip, r2
    52e2:	3201      	adds	r2, #1
    52e4:	4690      	mov	r8, r2
    52e6:	4498      	add	r8, r3
    52e8:	449c      	add	ip, r3
    52ea:	4643      	mov	r3, r8
    52ec:	0059      	lsls	r1, r3, #1
    52ee:	e61b      	b.n	4f28 <_malloc_r+0x54>
    52f0:	098a      	lsrs	r2, r1, #6
    52f2:	0010      	movs	r0, r2
    52f4:	3239      	adds	r2, #57	; 0x39
    52f6:	3038      	adds	r0, #56	; 0x38
    52f8:	0052      	lsls	r2, r2, #1
    52fa:	e78b      	b.n	5214 <_malloc_r+0x340>
    52fc:	42b4      	cmp	r4, r6
    52fe:	d000      	beq.n	5302 <_malloc_r+0x42e>
    5300:	e75c      	b.n	51bc <_malloc_r+0x2e8>
    5302:	e6fd      	b.n	5100 <_malloc_r+0x22c>
    5304:	9b00      	ldr	r3, [sp, #0]
    5306:	3b01      	subs	r3, #1
    5308:	9300      	str	r3, [sp, #0]
    530a:	2308      	movs	r3, #8
    530c:	425b      	negs	r3, r3
    530e:	469c      	mov	ip, r3
    5310:	44e1      	add	r9, ip
    5312:	464b      	mov	r3, r9
    5314:	689b      	ldr	r3, [r3, #8]
    5316:	4599      	cmp	r9, r3
    5318:	d17a      	bne.n	5410 <_malloc_r+0x53c>
    531a:	4643      	mov	r3, r8
    531c:	9a00      	ldr	r2, [sp, #0]
    531e:	4213      	tst	r3, r2
    5320:	d1f0      	bne.n	5304 <_malloc_r+0x430>
    5322:	6873      	ldr	r3, [r6, #4]
    5324:	4383      	bics	r3, r0
    5326:	6073      	str	r3, [r6, #4]
    5328:	0040      	lsls	r0, r0, #1
    532a:	4298      	cmp	r0, r3
    532c:	d900      	bls.n	5330 <_malloc_r+0x45c>
    532e:	e6be      	b.n	50ae <_malloc_r+0x1da>
    5330:	2800      	cmp	r0, #0
    5332:	d100      	bne.n	5336 <_malloc_r+0x462>
    5334:	e6bb      	b.n	50ae <_malloc_r+0x1da>
    5336:	4203      	tst	r3, r0
    5338:	d170      	bne.n	541c <_malloc_r+0x548>
    533a:	4652      	mov	r2, sl
    533c:	9200      	str	r2, [sp, #0]
    533e:	9a00      	ldr	r2, [sp, #0]
    5340:	0040      	lsls	r0, r0, #1
    5342:	3204      	adds	r2, #4
    5344:	9200      	str	r2, [sp, #0]
    5346:	4203      	tst	r3, r0
    5348:	d0f9      	beq.n	533e <_malloc_r+0x46a>
    534a:	e64b      	b.n	4fe4 <_malloc_r+0x110>
    534c:	2301      	movs	r3, #1
    534e:	464a      	mov	r2, r9
    5350:	6053      	str	r3, [r2, #4]
    5352:	0038      	movs	r0, r7
    5354:	f000 f86a 	bl	542c <__malloc_unlock>
    5358:	2000      	movs	r0, #0
    535a:	e694      	b.n	5086 <_malloc_r+0x1b2>
    535c:	22aa      	movs	r2, #170	; 0xaa
    535e:	0052      	lsls	r2, r2, #1
    5360:	4293      	cmp	r3, r2
    5362:	d80d      	bhi.n	5380 <_malloc_r+0x4ac>
    5364:	0be9      	lsrs	r1, r5, #15
    5366:	2377      	movs	r3, #119	; 0x77
    5368:	e5d7      	b.n	4f1a <_malloc_r+0x46>
    536a:	2180      	movs	r1, #128	; 0x80
    536c:	0149      	lsls	r1, r1, #5
    536e:	e6ea      	b.n	5146 <_malloc_r+0x272>
    5370:	2301      	movs	r3, #1
    5372:	1080      	asrs	r0, r0, #2
    5374:	4083      	lsls	r3, r0
    5376:	6872      	ldr	r2, [r6, #4]
    5378:	4313      	orrs	r3, r2
    537a:	6073      	str	r3, [r6, #4]
    537c:	4662      	mov	r2, ip
    537e:	e761      	b.n	5244 <_malloc_r+0x370>
    5380:	4a28      	ldr	r2, [pc, #160]	; (5424 <_malloc_r+0x550>)
    5382:	4293      	cmp	r3, r2
    5384:	d818      	bhi.n	53b8 <_malloc_r+0x4e4>
    5386:	0ca9      	lsrs	r1, r5, #18
    5388:	237c      	movs	r3, #124	; 0x7c
    538a:	e5c6      	b.n	4f1a <_malloc_r+0x46>
    538c:	3310      	adds	r3, #16
    538e:	9300      	str	r3, [sp, #0]
    5390:	e6aa      	b.n	50e8 <_malloc_r+0x214>
    5392:	2a54      	cmp	r2, #84	; 0x54
    5394:	d826      	bhi.n	53e4 <_malloc_r+0x510>
    5396:	0b0a      	lsrs	r2, r1, #12
    5398:	0010      	movs	r0, r2
    539a:	326f      	adds	r2, #111	; 0x6f
    539c:	306e      	adds	r0, #110	; 0x6e
    539e:	0052      	lsls	r2, r2, #1
    53a0:	e738      	b.n	5214 <_malloc_r+0x340>
    53a2:	051b      	lsls	r3, r3, #20
    53a4:	d000      	beq.n	53a8 <_malloc_r+0x4d4>
    53a6:	e6b8      	b.n	511a <_malloc_r+0x246>
    53a8:	9b00      	ldr	r3, [sp, #0]
    53aa:	68b2      	ldr	r2, [r6, #8]
    53ac:	4443      	add	r3, r8
    53ae:	0018      	movs	r0, r3
    53b0:	2301      	movs	r3, #1
    53b2:	4303      	orrs	r3, r0
    53b4:	6053      	str	r3, [r2, #4]
    53b6:	e6f7      	b.n	51a8 <_malloc_r+0x2d4>
    53b8:	237f      	movs	r3, #127	; 0x7f
    53ba:	4698      	mov	r8, r3
    53bc:	3b01      	subs	r3, #1
    53be:	21fe      	movs	r1, #254	; 0xfe
    53c0:	469c      	mov	ip, r3
    53c2:	e5b1      	b.n	4f28 <_malloc_r+0x54>
    53c4:	465b      	mov	r3, fp
    53c6:	464a      	mov	r2, r9
    53c8:	601a      	str	r2, [r3, #0]
    53ca:	e6b1      	b.n	5130 <_malloc_r+0x25c>
    53cc:	2300      	movs	r3, #0
    53ce:	2001      	movs	r0, #1
    53d0:	469b      	mov	fp, r3
    53d2:	e6ca      	b.n	516a <_malloc_r+0x296>
    53d4:	0021      	movs	r1, r4
    53d6:	0038      	movs	r0, r7
    53d8:	3108      	adds	r1, #8
    53da:	f7ff fc99 	bl	4d10 <_free_r>
    53de:	4653      	mov	r3, sl
    53e0:	6819      	ldr	r1, [r3, #0]
    53e2:	e6e1      	b.n	51a8 <_malloc_r+0x2d4>
    53e4:	20aa      	movs	r0, #170	; 0xaa
    53e6:	0040      	lsls	r0, r0, #1
    53e8:	4282      	cmp	r2, r0
    53ea:	d805      	bhi.n	53f8 <_malloc_r+0x524>
    53ec:	0bca      	lsrs	r2, r1, #15
    53ee:	0010      	movs	r0, r2
    53f0:	3278      	adds	r2, #120	; 0x78
    53f2:	3077      	adds	r0, #119	; 0x77
    53f4:	0052      	lsls	r2, r2, #1
    53f6:	e70d      	b.n	5214 <_malloc_r+0x340>
    53f8:	480a      	ldr	r0, [pc, #40]	; (5424 <_malloc_r+0x550>)
    53fa:	4282      	cmp	r2, r0
    53fc:	d805      	bhi.n	540a <_malloc_r+0x536>
    53fe:	0c8a      	lsrs	r2, r1, #18
    5400:	0010      	movs	r0, r2
    5402:	327d      	adds	r2, #125	; 0x7d
    5404:	307c      	adds	r0, #124	; 0x7c
    5406:	0052      	lsls	r2, r2, #1
    5408:	e704      	b.n	5214 <_malloc_r+0x340>
    540a:	22fe      	movs	r2, #254	; 0xfe
    540c:	207e      	movs	r0, #126	; 0x7e
    540e:	e701      	b.n	5214 <_malloc_r+0x340>
    5410:	6873      	ldr	r3, [r6, #4]
    5412:	e789      	b.n	5328 <_malloc_r+0x454>
    5414:	08e9      	lsrs	r1, r5, #3
    5416:	1c4b      	adds	r3, r1, #1
    5418:	005b      	lsls	r3, r3, #1
    541a:	e619      	b.n	5050 <_malloc_r+0x17c>
    541c:	4653      	mov	r3, sl
    541e:	9300      	str	r3, [sp, #0]
    5420:	e5e0      	b.n	4fe4 <_malloc_r+0x110>
    5422:	46c0      	nop			; (mov r8, r8)
    5424:	00000554 	.word	0x00000554

00005428 <__malloc_lock>:
    5428:	4770      	bx	lr
    542a:	46c0      	nop			; (mov r8, r8)

0000542c <__malloc_unlock>:
    542c:	4770      	bx	lr
    542e:	46c0      	nop			; (mov r8, r8)

00005430 <_sbrk_r>:
    5430:	2300      	movs	r3, #0
    5432:	b570      	push	{r4, r5, r6, lr}
    5434:	4c06      	ldr	r4, [pc, #24]	; (5450 <_sbrk_r+0x20>)
    5436:	0005      	movs	r5, r0
    5438:	0008      	movs	r0, r1
    543a:	6023      	str	r3, [r4, #0]
    543c:	f7fb fc20 	bl	c80 <_sbrk>
    5440:	1c43      	adds	r3, r0, #1
    5442:	d000      	beq.n	5446 <_sbrk_r+0x16>
    5444:	bd70      	pop	{r4, r5, r6, pc}
    5446:	6823      	ldr	r3, [r4, #0]
    5448:	2b00      	cmp	r3, #0
    544a:	d0fb      	beq.n	5444 <_sbrk_r+0x14>
    544c:	602b      	str	r3, [r5, #0]
    544e:	e7f9      	b.n	5444 <_sbrk_r+0x14>
    5450:	20006028 	.word	0x20006028

00005454 <osThreadExit>:
    5454:	b580      	push	{r7, lr}
    5456:	4f03      	ldr	r7, [pc, #12]	; (5464 <osThreadExit+0x10>)
    5458:	46bc      	mov	ip, r7
    545a:	df00      	svc	0
    545c:	4f02      	ldr	r7, [pc, #8]	; (5468 <osThreadExit+0x14>)
    545e:	46bc      	mov	ip, r7
    5460:	df00      	svc	0
    5462:	e7fe      	b.n	5462 <osThreadExit+0xe>
    5464:	00005895 	.word	0x00005895
    5468:	000058b1 	.word	0x000058b1

0000546c <svcKernelInitialize>:
    546c:	b570      	push	{r4, r5, r6, lr}
    546e:	4c39      	ldr	r4, [pc, #228]	; (5554 <svcKernelInitialize+0xe8>)
    5470:	b084      	sub	sp, #16
    5472:	7823      	ldrb	r3, [r4, #0]
    5474:	2b00      	cmp	r3, #0
    5476:	d00b      	beq.n	5490 <svcKernelInitialize+0x24>
    5478:	22ff      	movs	r2, #255	; 0xff
    547a:	4b37      	ldr	r3, [pc, #220]	; (5558 <svcKernelInitialize+0xec>)
    547c:	681b      	ldr	r3, [r3, #0]
    547e:	709a      	strb	r2, [r3, #2]
    5480:	2301      	movs	r3, #1
    5482:	2200      	movs	r2, #0
    5484:	2000      	movs	r0, #0
    5486:	7023      	strb	r3, [r4, #0]
    5488:	4b34      	ldr	r3, [pc, #208]	; (555c <svcKernelInitialize+0xf0>)
    548a:	701a      	strb	r2, [r3, #0]
    548c:	b004      	add	sp, #16
    548e:	bd70      	pop	{r4, r5, r6, pc}
    5490:	4b33      	ldr	r3, [pc, #204]	; (5560 <svcKernelInitialize+0xf4>)
    5492:	4e34      	ldr	r6, [pc, #208]	; (5564 <svcKernelInitialize+0xf8>)
    5494:	6819      	ldr	r1, [r3, #0]
    5496:	0030      	movs	r0, r6
    5498:	f001 fc60 	bl	6d5c <rt_init_mem>
    549c:	0003      	movs	r3, r0
    549e:	2085      	movs	r0, #133	; 0x85
    54a0:	2b00      	cmp	r3, #0
    54a2:	d1f3      	bne.n	548c <svcKernelInitialize+0x20>
    54a4:	f002 fe70 	bl	8188 <rt_sys_init>
    54a8:	21ff      	movs	r1, #255	; 0xff
    54aa:	4a2b      	ldr	r2, [pc, #172]	; (5558 <svcKernelInitialize+0xec>)
    54ac:	7823      	ldrb	r3, [r4, #0]
    54ae:	6812      	ldr	r2, [r2, #0]
    54b0:	7091      	strb	r1, [r2, #2]
    54b2:	2b00      	cmp	r3, #0
    54b4:	d1e4      	bne.n	5480 <svcKernelInitialize+0x14>
    54b6:	4b2c      	ldr	r3, [pc, #176]	; (5568 <svcKernelInitialize+0xfc>)
    54b8:	681a      	ldr	r2, [r3, #0]
    54ba:	9201      	str	r2, [sp, #4]
    54bc:	2a00      	cmp	r2, #0
    54be:	d047      	beq.n	5550 <svcKernelInitialize+0xe4>
    54c0:	685d      	ldr	r5, [r3, #4]
    54c2:	2d00      	cmp	r5, #0
    54c4:	d044      	beq.n	5550 <svcKernelInitialize+0xe4>
    54c6:	782b      	ldrb	r3, [r5, #0]
    54c8:	2b00      	cmp	r3, #0
    54ca:	d141      	bne.n	5550 <svcKernelInitialize+0xe4>
    54cc:	0011      	movs	r1, r2
    54ce:	3104      	adds	r1, #4
    54d0:	0089      	lsls	r1, r1, #2
    54d2:	b289      	uxth	r1, r1
    54d4:	0028      	movs	r0, r5
    54d6:	f001 feeb 	bl	72b0 <rt_mbx_init>
    54da:	4b24      	ldr	r3, [pc, #144]	; (556c <svcKernelInitialize+0x100>)
    54dc:	601d      	str	r5, [r3, #0]
    54de:	4b24      	ldr	r3, [pc, #144]	; (5570 <svcKernelInitialize+0x104>)
    54e0:	681a      	ldr	r2, [r3, #0]
    54e2:	9201      	str	r2, [sp, #4]
    54e4:	2a00      	cmp	r2, #0
    54e6:	d01e      	beq.n	5526 <svcKernelInitialize+0xba>
    54e8:	685a      	ldr	r2, [r3, #4]
    54ea:	9202      	str	r2, [sp, #8]
    54ec:	3203      	adds	r2, #3
    54ee:	2a06      	cmp	r2, #6
    54f0:	d819      	bhi.n	5526 <svcKernelInitialize+0xba>
    54f2:	68db      	ldr	r3, [r3, #12]
    54f4:	9303      	str	r3, [sp, #12]
    54f6:	2b00      	cmp	r3, #0
    54f8:	d019      	beq.n	552e <svcKernelInitialize+0xc2>
    54fa:	0019      	movs	r1, r3
    54fc:	0030      	movs	r0, r6
    54fe:	f001 fc3b 	bl	6d78 <rt_alloc_mem>
    5502:	1e05      	subs	r5, r0, #0
    5504:	d00f      	beq.n	5526 <svcKernelInitialize+0xba>
    5506:	9b03      	ldr	r3, [sp, #12]
    5508:	9902      	ldr	r1, [sp, #8]
    550a:	021b      	lsls	r3, r3, #8
    550c:	3104      	adds	r1, #4
    550e:	4319      	orrs	r1, r3
    5510:	0002      	movs	r2, r0
    5512:	2300      	movs	r3, #0
    5514:	9801      	ldr	r0, [sp, #4]
    5516:	f002 fcf7 	bl	7f08 <rt_tsk_create>
    551a:	2800      	cmp	r0, #0
    551c:	d110      	bne.n	5540 <svcKernelInitialize+0xd4>
    551e:	0029      	movs	r1, r5
    5520:	0030      	movs	r0, r6
    5522:	f001 fc4b 	bl	6dbc <rt_free_mem>
    5526:	2300      	movs	r3, #0
    5528:	4a12      	ldr	r2, [pc, #72]	; (5574 <svcKernelInitialize+0x108>)
    552a:	6013      	str	r3, [r2, #0]
    552c:	e7a8      	b.n	5480 <svcKernelInitialize+0x14>
    552e:	9902      	ldr	r1, [sp, #8]
    5530:	2300      	movs	r3, #0
    5532:	3104      	adds	r1, #4
    5534:	2200      	movs	r2, #0
    5536:	9801      	ldr	r0, [sp, #4]
    5538:	f002 fce6 	bl	7f08 <rt_tsk_create>
    553c:	2800      	cmp	r0, #0
    553e:	d0f2      	beq.n	5526 <svcKernelInitialize+0xba>
    5540:	3801      	subs	r0, #1
    5542:	4b0d      	ldr	r3, [pc, #52]	; (5578 <svcKernelInitialize+0x10c>)
    5544:	0080      	lsls	r0, r0, #2
    5546:	58c3      	ldr	r3, [r0, r3]
    5548:	490c      	ldr	r1, [pc, #48]	; (557c <svcKernelInitialize+0x110>)
    554a:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    554c:	6351      	str	r1, [r2, #52]	; 0x34
    554e:	e7eb      	b.n	5528 <svcKernelInitialize+0xbc>
    5550:	2500      	movs	r5, #0
    5552:	e7c2      	b.n	54da <svcKernelInitialize+0x6e>
    5554:	2000602c 	.word	0x2000602c
    5558:	2000606c 	.word	0x2000606c
    555c:	2000602d 	.word	0x2000602d
    5560:	000086d0 	.word	0x000086d0
    5564:	20003a00 	.word	0x20003a00
    5568:	000086e8 	.word	0x000086e8
    556c:	20004d18 	.word	0x20004d18
    5570:	000086d8 	.word	0x000086d8
    5574:	20004cf4 	.word	0x20004cf4
    5578:	20004ce4 	.word	0x20004ce4
    557c:	00005455 	.word	0x00005455

00005580 <svcKernelStart>:
    5580:	b570      	push	{r4, r5, r6, lr}
    5582:	4c10      	ldr	r4, [pc, #64]	; (55c4 <svcKernelStart+0x44>)
    5584:	7823      	ldrb	r3, [r4, #0]
    5586:	2b00      	cmp	r3, #0
    5588:	d001      	beq.n	558e <svcKernelStart+0xe>
    558a:	2000      	movs	r0, #0
    558c:	bd70      	pop	{r4, r5, r6, pc}
    558e:	4d0e      	ldr	r5, [pc, #56]	; (55c8 <svcKernelStart+0x48>)
    5590:	3324      	adds	r3, #36	; 0x24
    5592:	682a      	ldr	r2, [r5, #0]
    5594:	2000      	movs	r0, #0
    5596:	5cd1      	ldrb	r1, [r2, r3]
    5598:	f002 fc5a 	bl	7e50 <rt_tsk_prio>
    559c:	682b      	ldr	r3, [r5, #0]
    559e:	78da      	ldrb	r2, [r3, #3]
    55a0:	2aff      	cmp	r2, #255	; 0xff
    55a2:	d007      	beq.n	55b4 <svcKernelStart+0x34>
    55a4:	686a      	ldr	r2, [r5, #4]
    55a6:	2a00      	cmp	r2, #0
    55a8:	d009      	beq.n	55be <svcKernelStart+0x3e>
    55aa:	f002 fe65 	bl	8278 <rt_sys_start>
    55ae:	2301      	movs	r3, #1
    55b0:	7023      	strb	r3, [r4, #0]
    55b2:	e7ea      	b.n	558a <svcKernelStart+0xa>
    55b4:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    55b6:	3220      	adds	r2, #32
    55b8:	f382 8809 	msr	PSP, r2
    55bc:	e7f2      	b.n	55a4 <svcKernelStart+0x24>
    55be:	c50c      	stmia	r5!, {r2, r3}
    55c0:	e7f3      	b.n	55aa <svcKernelStart+0x2a>
    55c2:	46c0      	nop			; (mov r8, r8)
    55c4:	2000602d 	.word	0x2000602d
    55c8:	2000606c 	.word	0x2000606c

000055cc <svcKernelRunning>:
    55cc:	4b01      	ldr	r3, [pc, #4]	; (55d4 <svcKernelRunning+0x8>)
    55ce:	7818      	ldrb	r0, [r3, #0]
    55d0:	4770      	bx	lr
    55d2:	46c0      	nop			; (mov r8, r8)
    55d4:	2000602d 	.word	0x2000602d

000055d8 <svcKernelSysTick>:
    55d8:	b510      	push	{r4, lr}
    55da:	b082      	sub	sp, #8
    55dc:	f002 fb88 	bl	7cf0 <os_tick_val>
    55e0:	0004      	movs	r4, r0
    55e2:	f002 fb8f 	bl	7d04 <os_tick_ovf>
    55e6:	2800      	cmp	r0, #0
    55e8:	d109      	bne.n	55fe <svcKernelSysTick+0x26>
    55ea:	4b0d      	ldr	r3, [pc, #52]	; (5620 <svcKernelSysTick+0x48>)
    55ec:	681b      	ldr	r3, [r3, #0]
    55ee:	1c58      	adds	r0, r3, #1
    55f0:	9301      	str	r3, [sp, #4]
    55f2:	4b0c      	ldr	r3, [pc, #48]	; (5624 <svcKernelSysTick+0x4c>)
    55f4:	681b      	ldr	r3, [r3, #0]
    55f6:	4358      	muls	r0, r3
    55f8:	1900      	adds	r0, r0, r4
    55fa:	b002      	add	sp, #8
    55fc:	bd10      	pop	{r4, pc}
    55fe:	f002 fb77 	bl	7cf0 <os_tick_val>
    5602:	4284      	cmp	r4, r0
    5604:	d809      	bhi.n	561a <svcKernelSysTick+0x42>
    5606:	4b06      	ldr	r3, [pc, #24]	; (5620 <svcKernelSysTick+0x48>)
    5608:	4a06      	ldr	r2, [pc, #24]	; (5624 <svcKernelSysTick+0x4c>)
    560a:	681b      	ldr	r3, [r3, #0]
    560c:	6810      	ldr	r0, [r2, #0]
    560e:	9301      	str	r3, [sp, #4]
    5610:	3001      	adds	r0, #1
    5612:	3301      	adds	r3, #1
    5614:	4358      	muls	r0, r3
    5616:	1900      	adds	r0, r0, r4
    5618:	e7ef      	b.n	55fa <svcKernelSysTick+0x22>
    561a:	0004      	movs	r4, r0
    561c:	e7f3      	b.n	5606 <svcKernelSysTick+0x2e>
    561e:	46c0      	nop			; (mov r8, r8)
    5620:	000086b0 	.word	0x000086b0
    5624:	20006034 	.word	0x20006034

00005628 <osKernelInitialize>:
    5628:	b5f0      	push	{r4, r5, r6, r7, lr}
    562a:	b085      	sub	sp, #20
    562c:	f3ef 8405 	mrs	r4, IPSR
    5630:	2582      	movs	r5, #130	; 0x82
    5632:	2c00      	cmp	r4, #0
    5634:	d002      	beq.n	563c <osKernelInitialize+0x14>
    5636:	0028      	movs	r0, r5
    5638:	b005      	add	sp, #20
    563a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    563c:	f3ef 8414 	mrs	r4, CONTROL
    5640:	07e4      	lsls	r4, r4, #31
    5642:	d504      	bpl.n	564e <osKernelInitialize+0x26>
    5644:	4f45      	ldr	r7, [pc, #276]	; (575c <osKernelInitialize+0x134>)
    5646:	46bc      	mov	ip, r7
    5648:	df00      	svc	0
    564a:	0005      	movs	r5, r0
    564c:	e7f3      	b.n	5636 <osKernelInitialize+0xe>
    564e:	4c38      	ldr	r4, [pc, #224]	; (5730 <osKernelInitialize+0x108>)
    5650:	7823      	ldrb	r3, [r4, #0]
    5652:	2b00      	cmp	r3, #0
    5654:	d00a      	beq.n	566c <osKernelInitialize+0x44>
    5656:	22ff      	movs	r2, #255	; 0xff
    5658:	4b36      	ldr	r3, [pc, #216]	; (5734 <osKernelInitialize+0x10c>)
    565a:	681b      	ldr	r3, [r3, #0]
    565c:	709a      	strb	r2, [r3, #2]
    565e:	2301      	movs	r3, #1
    5660:	2200      	movs	r2, #0
    5662:	7023      	strb	r3, [r4, #0]
    5664:	4b34      	ldr	r3, [pc, #208]	; (5738 <osKernelInitialize+0x110>)
    5666:	2500      	movs	r5, #0
    5668:	701a      	strb	r2, [r3, #0]
    566a:	e7e4      	b.n	5636 <osKernelInitialize+0xe>
    566c:	4e33      	ldr	r6, [pc, #204]	; (573c <osKernelInitialize+0x114>)
    566e:	4b34      	ldr	r3, [pc, #208]	; (5740 <osKernelInitialize+0x118>)
    5670:	0030      	movs	r0, r6
    5672:	6819      	ldr	r1, [r3, #0]
    5674:	f001 fb72 	bl	6d5c <rt_init_mem>
    5678:	3503      	adds	r5, #3
    567a:	2800      	cmp	r0, #0
    567c:	d1db      	bne.n	5636 <osKernelInitialize+0xe>
    567e:	f002 fd83 	bl	8188 <rt_sys_init>
    5682:	21ff      	movs	r1, #255	; 0xff
    5684:	4a2b      	ldr	r2, [pc, #172]	; (5734 <osKernelInitialize+0x10c>)
    5686:	7823      	ldrb	r3, [r4, #0]
    5688:	6812      	ldr	r2, [r2, #0]
    568a:	7091      	strb	r1, [r2, #2]
    568c:	2b00      	cmp	r3, #0
    568e:	d1e6      	bne.n	565e <osKernelInitialize+0x36>
    5690:	4b2c      	ldr	r3, [pc, #176]	; (5744 <osKernelInitialize+0x11c>)
    5692:	681a      	ldr	r2, [r3, #0]
    5694:	9201      	str	r2, [sp, #4]
    5696:	2a00      	cmp	r2, #0
    5698:	d047      	beq.n	572a <osKernelInitialize+0x102>
    569a:	685d      	ldr	r5, [r3, #4]
    569c:	2d00      	cmp	r5, #0
    569e:	d044      	beq.n	572a <osKernelInitialize+0x102>
    56a0:	782b      	ldrb	r3, [r5, #0]
    56a2:	2b00      	cmp	r3, #0
    56a4:	d141      	bne.n	572a <osKernelInitialize+0x102>
    56a6:	0011      	movs	r1, r2
    56a8:	3104      	adds	r1, #4
    56aa:	0089      	lsls	r1, r1, #2
    56ac:	b289      	uxth	r1, r1
    56ae:	0028      	movs	r0, r5
    56b0:	f001 fdfe 	bl	72b0 <rt_mbx_init>
    56b4:	4b24      	ldr	r3, [pc, #144]	; (5748 <osKernelInitialize+0x120>)
    56b6:	601d      	str	r5, [r3, #0]
    56b8:	4b24      	ldr	r3, [pc, #144]	; (574c <osKernelInitialize+0x124>)
    56ba:	681a      	ldr	r2, [r3, #0]
    56bc:	9201      	str	r2, [sp, #4]
    56be:	2a00      	cmp	r2, #0
    56c0:	d01e      	beq.n	5700 <osKernelInitialize+0xd8>
    56c2:	685a      	ldr	r2, [r3, #4]
    56c4:	9202      	str	r2, [sp, #8]
    56c6:	3203      	adds	r2, #3
    56c8:	2a06      	cmp	r2, #6
    56ca:	d819      	bhi.n	5700 <osKernelInitialize+0xd8>
    56cc:	68db      	ldr	r3, [r3, #12]
    56ce:	9303      	str	r3, [sp, #12]
    56d0:	2b00      	cmp	r3, #0
    56d2:	d019      	beq.n	5708 <osKernelInitialize+0xe0>
    56d4:	0019      	movs	r1, r3
    56d6:	0030      	movs	r0, r6
    56d8:	f001 fb4e 	bl	6d78 <rt_alloc_mem>
    56dc:	1e05      	subs	r5, r0, #0
    56de:	d00f      	beq.n	5700 <osKernelInitialize+0xd8>
    56e0:	9902      	ldr	r1, [sp, #8]
    56e2:	9b03      	ldr	r3, [sp, #12]
    56e4:	3104      	adds	r1, #4
    56e6:	021b      	lsls	r3, r3, #8
    56e8:	4319      	orrs	r1, r3
    56ea:	0002      	movs	r2, r0
    56ec:	2300      	movs	r3, #0
    56ee:	9801      	ldr	r0, [sp, #4]
    56f0:	f002 fc0a 	bl	7f08 <rt_tsk_create>
    56f4:	2800      	cmp	r0, #0
    56f6:	d110      	bne.n	571a <osKernelInitialize+0xf2>
    56f8:	0029      	movs	r1, r5
    56fa:	0030      	movs	r0, r6
    56fc:	f001 fb5e 	bl	6dbc <rt_free_mem>
    5700:	2300      	movs	r3, #0
    5702:	4a13      	ldr	r2, [pc, #76]	; (5750 <osKernelInitialize+0x128>)
    5704:	6013      	str	r3, [r2, #0]
    5706:	e7aa      	b.n	565e <osKernelInitialize+0x36>
    5708:	9902      	ldr	r1, [sp, #8]
    570a:	2300      	movs	r3, #0
    570c:	3104      	adds	r1, #4
    570e:	2200      	movs	r2, #0
    5710:	9801      	ldr	r0, [sp, #4]
    5712:	f002 fbf9 	bl	7f08 <rt_tsk_create>
    5716:	2800      	cmp	r0, #0
    5718:	d0f2      	beq.n	5700 <osKernelInitialize+0xd8>
    571a:	3801      	subs	r0, #1
    571c:	4b0d      	ldr	r3, [pc, #52]	; (5754 <osKernelInitialize+0x12c>)
    571e:	0080      	lsls	r0, r0, #2
    5720:	58c3      	ldr	r3, [r0, r3]
    5722:	490d      	ldr	r1, [pc, #52]	; (5758 <osKernelInitialize+0x130>)
    5724:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5726:	6351      	str	r1, [r2, #52]	; 0x34
    5728:	e7eb      	b.n	5702 <osKernelInitialize+0xda>
    572a:	2500      	movs	r5, #0
    572c:	e7c2      	b.n	56b4 <osKernelInitialize+0x8c>
    572e:	46c0      	nop			; (mov r8, r8)
    5730:	2000602c 	.word	0x2000602c
    5734:	2000606c 	.word	0x2000606c
    5738:	2000602d 	.word	0x2000602d
    573c:	20003a00 	.word	0x20003a00
    5740:	000086d0 	.word	0x000086d0
    5744:	000086e8 	.word	0x000086e8
    5748:	20004d18 	.word	0x20004d18
    574c:	000086d8 	.word	0x000086d8
    5750:	20004cf4 	.word	0x20004cf4
    5754:	20004ce4 	.word	0x20004ce4
    5758:	00005455 	.word	0x00005455
    575c:	0000546d 	.word	0x0000546d

00005760 <osKernelStart>:
    5760:	b5b0      	push	{r4, r5, r7, lr}
    5762:	b088      	sub	sp, #32
    5764:	f3ef 8405 	mrs	r4, IPSR
    5768:	2582      	movs	r5, #130	; 0x82
    576a:	2c00      	cmp	r4, #0
    576c:	d002      	beq.n	5774 <osKernelStart+0x14>
    576e:	0028      	movs	r0, r5
    5770:	b008      	add	sp, #32
    5772:	bdb0      	pop	{r4, r5, r7, pc}
    5774:	f3ef 8414 	mrs	r4, CONTROL
    5778:	3d7f      	subs	r5, #127	; 0x7f
    577a:	402c      	ands	r4, r5
    577c:	2c02      	cmp	r4, #2
    577e:	d01c      	beq.n	57ba <osKernelStart+0x5a>
    5780:	2c03      	cmp	r4, #3
    5782:	d014      	beq.n	57ae <osKernelStart+0x4e>
    5784:	2c01      	cmp	r4, #1
    5786:	d020      	beq.n	57ca <osKernelStart+0x6a>
    5788:	ac08      	add	r4, sp, #32
    578a:	f384 8809 	msr	PSP, r4
    578e:	4c10      	ldr	r4, [pc, #64]	; (57d0 <osKernelStart+0x70>)
    5790:	7824      	ldrb	r4, [r4, #0]
    5792:	07e4      	lsls	r4, r4, #31
    5794:	d515      	bpl.n	57c2 <osKernelStart+0x62>
    5796:	2402      	movs	r4, #2
    5798:	f384 8814 	msr	CONTROL, r4
    579c:	f3bf 8f4f 	dsb	sy
    57a0:	f3bf 8f6f 	isb	sy
    57a4:	4f0b      	ldr	r7, [pc, #44]	; (57d4 <osKernelStart+0x74>)
    57a6:	46bc      	mov	ip, r7
    57a8:	df00      	svc	0
    57aa:	0005      	movs	r5, r0
    57ac:	e7df      	b.n	576e <osKernelStart+0xe>
    57ae:	4c08      	ldr	r4, [pc, #32]	; (57d0 <osKernelStart+0x70>)
    57b0:	25ff      	movs	r5, #255	; 0xff
    57b2:	7824      	ldrb	r4, [r4, #0]
    57b4:	07e4      	lsls	r4, r4, #31
    57b6:	d4da      	bmi.n	576e <osKernelStart+0xe>
    57b8:	e7f4      	b.n	57a4 <osKernelStart+0x44>
    57ba:	4c05      	ldr	r4, [pc, #20]	; (57d0 <osKernelStart+0x70>)
    57bc:	7824      	ldrb	r4, [r4, #0]
    57be:	07e4      	lsls	r4, r4, #31
    57c0:	d4f0      	bmi.n	57a4 <osKernelStart+0x44>
    57c2:	2403      	movs	r4, #3
    57c4:	f384 8814 	msr	CONTROL, r4
    57c8:	e7e8      	b.n	579c <osKernelStart+0x3c>
    57ca:	25ff      	movs	r5, #255	; 0xff
    57cc:	e7cf      	b.n	576e <osKernelStart+0xe>
    57ce:	46c0      	nop			; (mov r8, r8)
    57d0:	000086b4 	.word	0x000086b4
    57d4:	00005581 	.word	0x00005581

000057d8 <osKernelRunning>:
    57d8:	b590      	push	{r4, r7, lr}
    57da:	f3ef 8405 	mrs	r4, IPSR
    57de:	2c00      	cmp	r4, #0
    57e0:	d107      	bne.n	57f2 <osKernelRunning+0x1a>
    57e2:	f3ef 8414 	mrs	r4, CONTROL
    57e6:	07e4      	lsls	r4, r4, #31
    57e8:	d503      	bpl.n	57f2 <osKernelRunning+0x1a>
    57ea:	4f04      	ldr	r7, [pc, #16]	; (57fc <osKernelRunning+0x24>)
    57ec:	46bc      	mov	ip, r7
    57ee:	df00      	svc	0
    57f0:	e001      	b.n	57f6 <osKernelRunning+0x1e>
    57f2:	4b01      	ldr	r3, [pc, #4]	; (57f8 <osKernelRunning+0x20>)
    57f4:	7818      	ldrb	r0, [r3, #0]
    57f6:	bd90      	pop	{r4, r7, pc}
    57f8:	2000602d 	.word	0x2000602d
    57fc:	000055cd 	.word	0x000055cd

00005800 <osKernelSysTick>:
    5800:	b5b0      	push	{r4, r5, r7, lr}
    5802:	f3ef 8405 	mrs	r4, IPSR
    5806:	2500      	movs	r5, #0
    5808:	2c00      	cmp	r4, #0
    580a:	d103      	bne.n	5814 <osKernelSysTick+0x14>
    580c:	4f02      	ldr	r7, [pc, #8]	; (5818 <osKernelSysTick+0x18>)
    580e:	46bc      	mov	ip, r7
    5810:	df00      	svc	0
    5812:	0005      	movs	r5, r0
    5814:	0028      	movs	r0, r5
    5816:	bdb0      	pop	{r4, r5, r7, pc}
    5818:	000055d9 	.word	0x000055d9

0000581c <svcThreadCreate>:
    581c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    581e:	0004      	movs	r4, r0
    5820:	000d      	movs	r5, r1
    5822:	2800      	cmp	r0, #0
    5824:	d01f      	beq.n	5866 <svcThreadCreate+0x4a>
    5826:	6800      	ldr	r0, [r0, #0]
    5828:	2800      	cmp	r0, #0
    582a:	d01c      	beq.n	5866 <svcThreadCreate+0x4a>
    582c:	6863      	ldr	r3, [r4, #4]
    582e:	1cda      	adds	r2, r3, #3
    5830:	2a06      	cmp	r2, #6
    5832:	d818      	bhi.n	5866 <svcThreadCreate+0x4a>
    5834:	68e1      	ldr	r1, [r4, #12]
    5836:	2900      	cmp	r1, #0
    5838:	d017      	beq.n	586a <svcThreadCreate+0x4e>
    583a:	4e13      	ldr	r6, [pc, #76]	; (5888 <svcThreadCreate+0x6c>)
    583c:	0030      	movs	r0, r6
    583e:	f001 fa9b 	bl	6d78 <rt_alloc_mem>
    5842:	1e07      	subs	r7, r0, #0
    5844:	d00f      	beq.n	5866 <svcThreadCreate+0x4a>
    5846:	6863      	ldr	r3, [r4, #4]
    5848:	6820      	ldr	r0, [r4, #0]
    584a:	1d19      	adds	r1, r3, #4
    584c:	68e3      	ldr	r3, [r4, #12]
    584e:	003a      	movs	r2, r7
    5850:	021b      	lsls	r3, r3, #8
    5852:	4319      	orrs	r1, r3
    5854:	002b      	movs	r3, r5
    5856:	f002 fb57 	bl	7f08 <rt_tsk_create>
    585a:	2800      	cmp	r0, #0
    585c:	d10c      	bne.n	5878 <svcThreadCreate+0x5c>
    585e:	0039      	movs	r1, r7
    5860:	0030      	movs	r0, r6
    5862:	f001 faab 	bl	6dbc <rt_free_mem>
    5866:	2000      	movs	r0, #0
    5868:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    586a:	1d19      	adds	r1, r3, #4
    586c:	2200      	movs	r2, #0
    586e:	002b      	movs	r3, r5
    5870:	f002 fb4a 	bl	7f08 <rt_tsk_create>
    5874:	2800      	cmp	r0, #0
    5876:	d0f6      	beq.n	5866 <svcThreadCreate+0x4a>
    5878:	4b04      	ldr	r3, [pc, #16]	; (588c <svcThreadCreate+0x70>)
    587a:	3801      	subs	r0, #1
    587c:	0080      	lsls	r0, r0, #2
    587e:	58c0      	ldr	r0, [r0, r3]
    5880:	4a03      	ldr	r2, [pc, #12]	; (5890 <svcThreadCreate+0x74>)
    5882:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5884:	635a      	str	r2, [r3, #52]	; 0x34
    5886:	e7ef      	b.n	5868 <svcThreadCreate+0x4c>
    5888:	20003a00 	.word	0x20003a00
    588c:	20004ce4 	.word	0x20004ce4
    5890:	00005455 	.word	0x00005455

00005894 <svcThreadGetId>:
    5894:	b510      	push	{r4, lr}
    5896:	f002 fad1 	bl	7e3c <rt_tsk_self>
    589a:	2800      	cmp	r0, #0
    589c:	d004      	beq.n	58a8 <svcThreadGetId+0x14>
    589e:	3801      	subs	r0, #1
    58a0:	4b02      	ldr	r3, [pc, #8]	; (58ac <svcThreadGetId+0x18>)
    58a2:	0080      	lsls	r0, r0, #2
    58a4:	58c0      	ldr	r0, [r0, r3]
    58a6:	bd10      	pop	{r4, pc}
    58a8:	2000      	movs	r0, #0
    58aa:	e7fc      	b.n	58a6 <svcThreadGetId+0x12>
    58ac:	20004ce4 	.word	0x20004ce4

000058b0 <svcThreadTerminate>:
    58b0:	0003      	movs	r3, r0
    58b2:	b510      	push	{r4, lr}
    58b4:	2080      	movs	r0, #128	; 0x80
    58b6:	2b00      	cmp	r3, #0
    58b8:	d017      	beq.n	58ea <svcThreadTerminate+0x3a>
    58ba:	079a      	lsls	r2, r3, #30
    58bc:	d115      	bne.n	58ea <svcThreadTerminate+0x3a>
    58be:	781a      	ldrb	r2, [r3, #0]
    58c0:	2a00      	cmp	r2, #0
    58c2:	d112      	bne.n	58ea <svcThreadTerminate+0x3a>
    58c4:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    58c6:	2400      	movs	r4, #0
    58c8:	2a00      	cmp	r2, #0
    58ca:	d000      	beq.n	58ce <svcThreadTerminate+0x1e>
    58cc:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    58ce:	78d8      	ldrb	r0, [r3, #3]
    58d0:	f002 fb94 	bl	7ffc <rt_tsk_delete>
    58d4:	0003      	movs	r3, r0
    58d6:	2081      	movs	r0, #129	; 0x81
    58d8:	2bff      	cmp	r3, #255	; 0xff
    58da:	d006      	beq.n	58ea <svcThreadTerminate+0x3a>
    58dc:	2c00      	cmp	r4, #0
    58de:	d005      	beq.n	58ec <svcThreadTerminate+0x3c>
    58e0:	0021      	movs	r1, r4
    58e2:	4803      	ldr	r0, [pc, #12]	; (58f0 <svcThreadTerminate+0x40>)
    58e4:	f001 fa6a 	bl	6dbc <rt_free_mem>
    58e8:	2000      	movs	r0, #0
    58ea:	bd10      	pop	{r4, pc}
    58ec:	2000      	movs	r0, #0
    58ee:	e7fc      	b.n	58ea <svcThreadTerminate+0x3a>
    58f0:	20003a00 	.word	0x20003a00

000058f4 <svcThreadYield>:
    58f4:	b510      	push	{r4, lr}
    58f6:	f002 fa8b 	bl	7e10 <rt_tsk_pass>
    58fa:	2000      	movs	r0, #0
    58fc:	bd10      	pop	{r4, pc}
    58fe:	46c0      	nop			; (mov r8, r8)

00005900 <svcThreadSetPriority>:
    5900:	0003      	movs	r3, r0
    5902:	b510      	push	{r4, lr}
    5904:	2080      	movs	r0, #128	; 0x80
    5906:	2b00      	cmp	r3, #0
    5908:	d008      	beq.n	591c <svcThreadSetPriority+0x1c>
    590a:	079a      	lsls	r2, r3, #30
    590c:	d106      	bne.n	591c <svcThreadSetPriority+0x1c>
    590e:	781a      	ldrb	r2, [r3, #0]
    5910:	2a00      	cmp	r2, #0
    5912:	d103      	bne.n	591c <svcThreadSetPriority+0x1c>
    5914:	1cca      	adds	r2, r1, #3
    5916:	2086      	movs	r0, #134	; 0x86
    5918:	2a06      	cmp	r2, #6
    591a:	d900      	bls.n	591e <svcThreadSetPriority+0x1e>
    591c:	bd10      	pop	{r4, pc}
    591e:	3104      	adds	r1, #4
    5920:	78d8      	ldrb	r0, [r3, #3]
    5922:	b2c9      	uxtb	r1, r1
    5924:	f002 fa94 	bl	7e50 <rt_tsk_prio>
    5928:	0003      	movs	r3, r0
    592a:	2081      	movs	r0, #129	; 0x81
    592c:	2bff      	cmp	r3, #255	; 0xff
    592e:	d0f5      	beq.n	591c <svcThreadSetPriority+0x1c>
    5930:	2000      	movs	r0, #0
    5932:	e7f3      	b.n	591c <svcThreadSetPriority+0x1c>

00005934 <svcThreadGetPriority>:
    5934:	0003      	movs	r3, r0
    5936:	2084      	movs	r0, #132	; 0x84
    5938:	2b00      	cmp	r3, #0
    593a:	d006      	beq.n	594a <svcThreadGetPriority+0x16>
    593c:	079a      	lsls	r2, r3, #30
    593e:	d104      	bne.n	594a <svcThreadGetPriority+0x16>
    5940:	781a      	ldrb	r2, [r3, #0]
    5942:	2a00      	cmp	r2, #0
    5944:	d101      	bne.n	594a <svcThreadGetPriority+0x16>
    5946:	7898      	ldrb	r0, [r3, #2]
    5948:	3804      	subs	r0, #4
    594a:	4770      	bx	lr

0000594c <osThreadCreate>:
    594c:	b5f0      	push	{r4, r5, r6, r7, lr}
    594e:	4647      	mov	r7, r8
    5950:	0004      	movs	r4, r0
    5952:	b480      	push	{r7}
    5954:	000d      	movs	r5, r1
    5956:	f3ef 8105 	mrs	r1, IPSR
    595a:	2900      	cmp	r1, #0
    595c:	d132      	bne.n	59c4 <osThreadCreate+0x78>
    595e:	f3ef 8114 	mrs	r1, CONTROL
    5962:	07c9      	lsls	r1, r1, #31
    5964:	d507      	bpl.n	5976 <osThreadCreate+0x2a>
    5966:	0020      	movs	r0, r4
    5968:	0029      	movs	r1, r5
    596a:	4f23      	ldr	r7, [pc, #140]	; (59f8 <osThreadCreate+0xac>)
    596c:	46bc      	mov	ip, r7
    596e:	df00      	svc	0
    5970:	bc04      	pop	{r2}
    5972:	4690      	mov	r8, r2
    5974:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5976:	491c      	ldr	r1, [pc, #112]	; (59e8 <osThreadCreate+0x9c>)
    5978:	7809      	ldrb	r1, [r1, #0]
    597a:	2900      	cmp	r1, #0
    597c:	d1f3      	bne.n	5966 <osThreadCreate+0x1a>
    597e:	2800      	cmp	r0, #0
    5980:	d020      	beq.n	59c4 <osThreadCreate+0x78>
    5982:	6800      	ldr	r0, [r0, #0]
    5984:	2800      	cmp	r0, #0
    5986:	d01d      	beq.n	59c4 <osThreadCreate+0x78>
    5988:	6863      	ldr	r3, [r4, #4]
    598a:	1cda      	adds	r2, r3, #3
    598c:	2a06      	cmp	r2, #6
    598e:	d819      	bhi.n	59c4 <osThreadCreate+0x78>
    5990:	68e1      	ldr	r1, [r4, #12]
    5992:	2900      	cmp	r1, #0
    5994:	d018      	beq.n	59c8 <osThreadCreate+0x7c>
    5996:	4e15      	ldr	r6, [pc, #84]	; (59ec <osThreadCreate+0xa0>)
    5998:	0030      	movs	r0, r6
    599a:	f001 f9ed 	bl	6d78 <rt_alloc_mem>
    599e:	4680      	mov	r8, r0
    59a0:	2800      	cmp	r0, #0
    59a2:	d00f      	beq.n	59c4 <osThreadCreate+0x78>
    59a4:	6863      	ldr	r3, [r4, #4]
    59a6:	6820      	ldr	r0, [r4, #0]
    59a8:	1d19      	adds	r1, r3, #4
    59aa:	68e3      	ldr	r3, [r4, #12]
    59ac:	4642      	mov	r2, r8
    59ae:	021b      	lsls	r3, r3, #8
    59b0:	4319      	orrs	r1, r3
    59b2:	002b      	movs	r3, r5
    59b4:	f002 faa8 	bl	7f08 <rt_tsk_create>
    59b8:	2800      	cmp	r0, #0
    59ba:	d10c      	bne.n	59d6 <osThreadCreate+0x8a>
    59bc:	4641      	mov	r1, r8
    59be:	0030      	movs	r0, r6
    59c0:	f001 f9fc 	bl	6dbc <rt_free_mem>
    59c4:	2000      	movs	r0, #0
    59c6:	e7d3      	b.n	5970 <osThreadCreate+0x24>
    59c8:	1d19      	adds	r1, r3, #4
    59ca:	2200      	movs	r2, #0
    59cc:	002b      	movs	r3, r5
    59ce:	f002 fa9b 	bl	7f08 <rt_tsk_create>
    59d2:	2800      	cmp	r0, #0
    59d4:	d0f6      	beq.n	59c4 <osThreadCreate+0x78>
    59d6:	4b06      	ldr	r3, [pc, #24]	; (59f0 <osThreadCreate+0xa4>)
    59d8:	3801      	subs	r0, #1
    59da:	0080      	lsls	r0, r0, #2
    59dc:	58c0      	ldr	r0, [r0, r3]
    59de:	4a05      	ldr	r2, [pc, #20]	; (59f4 <osThreadCreate+0xa8>)
    59e0:	6a83      	ldr	r3, [r0, #40]	; 0x28
    59e2:	635a      	str	r2, [r3, #52]	; 0x34
    59e4:	e7c4      	b.n	5970 <osThreadCreate+0x24>
    59e6:	46c0      	nop			; (mov r8, r8)
    59e8:	2000602d 	.word	0x2000602d
    59ec:	20003a00 	.word	0x20003a00
    59f0:	20004ce4 	.word	0x20004ce4
    59f4:	00005455 	.word	0x00005455
    59f8:	0000581d 	.word	0x0000581d

000059fc <osThreadGetId>:
    59fc:	b590      	push	{r4, r7, lr}
    59fe:	f3ef 8405 	mrs	r4, IPSR
    5a02:	2c00      	cmp	r4, #0
    5a04:	d103      	bne.n	5a0e <osThreadGetId+0x12>
    5a06:	4f03      	ldr	r7, [pc, #12]	; (5a14 <osThreadGetId+0x18>)
    5a08:	46bc      	mov	ip, r7
    5a0a:	df00      	svc	0
    5a0c:	bd90      	pop	{r4, r7, pc}
    5a0e:	2000      	movs	r0, #0
    5a10:	e7fc      	b.n	5a0c <osThreadGetId+0x10>
    5a12:	0000      	.short	0x0000
    5a14:	00005895 	.word	0x00005895

00005a18 <osThreadTerminate>:
    5a18:	b5b0      	push	{r4, r5, r7, lr}
    5a1a:	0005      	movs	r5, r0
    5a1c:	f3ef 8405 	mrs	r4, IPSR
    5a20:	2082      	movs	r0, #130	; 0x82
    5a22:	2c00      	cmp	r4, #0
    5a24:	d000      	beq.n	5a28 <osThreadTerminate+0x10>
    5a26:	bdb0      	pop	{r4, r5, r7, pc}
    5a28:	0028      	movs	r0, r5
    5a2a:	4f02      	ldr	r7, [pc, #8]	; (5a34 <osThreadTerminate+0x1c>)
    5a2c:	46bc      	mov	ip, r7
    5a2e:	df00      	svc	0
    5a30:	e7f9      	b.n	5a26 <osThreadTerminate+0xe>
    5a32:	0000      	.short	0x0000
    5a34:	000058b1 	.word	0x000058b1

00005a38 <osThreadYield>:
    5a38:	b5b0      	push	{r4, r5, r7, lr}
    5a3a:	f3ef 8405 	mrs	r4, IPSR
    5a3e:	2582      	movs	r5, #130	; 0x82
    5a40:	2c00      	cmp	r4, #0
    5a42:	d001      	beq.n	5a48 <osThreadYield+0x10>
    5a44:	0028      	movs	r0, r5
    5a46:	bdb0      	pop	{r4, r5, r7, pc}
    5a48:	4f02      	ldr	r7, [pc, #8]	; (5a54 <osThreadYield+0x1c>)
    5a4a:	46bc      	mov	ip, r7
    5a4c:	df00      	svc	0
    5a4e:	0005      	movs	r5, r0
    5a50:	e7f8      	b.n	5a44 <osThreadYield+0xc>
    5a52:	0000      	.short	0x0000
    5a54:	000058f5 	.word	0x000058f5

00005a58 <osThreadSetPriority>:
    5a58:	b5b0      	push	{r4, r5, r7, lr}
    5a5a:	0005      	movs	r5, r0
    5a5c:	f3ef 8405 	mrs	r4, IPSR
    5a60:	2082      	movs	r0, #130	; 0x82
    5a62:	2c00      	cmp	r4, #0
    5a64:	d000      	beq.n	5a68 <osThreadSetPriority+0x10>
    5a66:	bdb0      	pop	{r4, r5, r7, pc}
    5a68:	0028      	movs	r0, r5
    5a6a:	4f02      	ldr	r7, [pc, #8]	; (5a74 <osThreadSetPriority+0x1c>)
    5a6c:	46bc      	mov	ip, r7
    5a6e:	df00      	svc	0
    5a70:	e7f9      	b.n	5a66 <osThreadSetPriority+0xe>
    5a72:	0000      	.short	0x0000
    5a74:	00005901 	.word	0x00005901

00005a78 <osThreadGetPriority>:
    5a78:	b5b0      	push	{r4, r5, r7, lr}
    5a7a:	0005      	movs	r5, r0
    5a7c:	f3ef 8405 	mrs	r4, IPSR
    5a80:	2084      	movs	r0, #132	; 0x84
    5a82:	2c00      	cmp	r4, #0
    5a84:	d000      	beq.n	5a88 <osThreadGetPriority+0x10>
    5a86:	bdb0      	pop	{r4, r5, r7, pc}
    5a88:	0028      	movs	r0, r5
    5a8a:	4f02      	ldr	r7, [pc, #8]	; (5a94 <osThreadGetPriority+0x1c>)
    5a8c:	46bc      	mov	ip, r7
    5a8e:	df00      	svc	0
    5a90:	e7f9      	b.n	5a86 <osThreadGetPriority+0xe>
    5a92:	0000      	.short	0x0000
    5a94:	00005935 	.word	0x00005935

00005a98 <svcDelay>:
    5a98:	b500      	push	{lr}
    5a9a:	b083      	sub	sp, #12
    5a9c:	2800      	cmp	r0, #0
    5a9e:	d019      	beq.n	5ad4 <svcDelay+0x3c>
    5aa0:	1c43      	adds	r3, r0, #1
    5aa2:	d01c      	beq.n	5ade <svcDelay+0x46>
    5aa4:	4b10      	ldr	r3, [pc, #64]	; (5ae8 <svcDelay+0x50>)
    5aa6:	4298      	cmp	r0, r3
    5aa8:	d817      	bhi.n	5ada <svcDelay+0x42>
    5aaa:	4b10      	ldr	r3, [pc, #64]	; (5aec <svcDelay+0x54>)
    5aac:	681b      	ldr	r3, [r3, #0]
    5aae:	9301      	str	r3, [sp, #4]
    5ab0:	23fa      	movs	r3, #250	; 0xfa
    5ab2:	009b      	lsls	r3, r3, #2
    5ab4:	4358      	muls	r0, r3
    5ab6:	9b01      	ldr	r3, [sp, #4]
    5ab8:	9901      	ldr	r1, [sp, #4]
    5aba:	3b01      	subs	r3, #1
    5abc:	18c0      	adds	r0, r0, r3
    5abe:	f7fe fc83 	bl	43c8 <__aeabi_uidiv>
    5ac2:	4b0b      	ldr	r3, [pc, #44]	; (5af0 <svcDelay+0x58>)
    5ac4:	0002      	movs	r2, r0
    5ac6:	0018      	movs	r0, r3
    5ac8:	429a      	cmp	r2, r3
    5aca:	d90a      	bls.n	5ae2 <svcDelay+0x4a>
    5acc:	f001 fb34 	bl	7138 <rt_dly_wait>
    5ad0:	2040      	movs	r0, #64	; 0x40
    5ad2:	e000      	b.n	5ad6 <svcDelay+0x3e>
    5ad4:	2000      	movs	r0, #0
    5ad6:	b003      	add	sp, #12
    5ad8:	bd00      	pop	{pc}
    5ada:	4805      	ldr	r0, [pc, #20]	; (5af0 <svcDelay+0x58>)
    5adc:	e7f6      	b.n	5acc <svcDelay+0x34>
    5ade:	4805      	ldr	r0, [pc, #20]	; (5af4 <svcDelay+0x5c>)
    5ae0:	e7f4      	b.n	5acc <svcDelay+0x34>
    5ae2:	b290      	uxth	r0, r2
    5ae4:	e7f2      	b.n	5acc <svcDelay+0x34>
    5ae6:	46c0      	nop			; (mov r8, r8)
    5ae8:	003d0900 	.word	0x003d0900
    5aec:	000086c0 	.word	0x000086c0
    5af0:	0000fffe 	.word	0x0000fffe
    5af4:	0000ffff 	.word	0x0000ffff

00005af8 <osDelay>:
    5af8:	b5b0      	push	{r4, r5, r7, lr}
    5afa:	0005      	movs	r5, r0
    5afc:	f3ef 8405 	mrs	r4, IPSR
    5b00:	2082      	movs	r0, #130	; 0x82
    5b02:	2c00      	cmp	r4, #0
    5b04:	d000      	beq.n	5b08 <osDelay+0x10>
    5b06:	bdb0      	pop	{r4, r5, r7, pc}
    5b08:	0028      	movs	r0, r5
    5b0a:	4f02      	ldr	r7, [pc, #8]	; (5b14 <osDelay+0x1c>)
    5b0c:	46bc      	mov	ip, r7
    5b0e:	df00      	svc	0
    5b10:	e7f9      	b.n	5b06 <osDelay+0xe>
    5b12:	0000      	.short	0x0000
    5b14:	00005a99 	.word	0x00005a99

00005b18 <osWait>:
    5b18:	23ff      	movs	r3, #255	; 0xff
    5b1a:	6003      	str	r3, [r0, #0]
    5b1c:	4770      	bx	lr
    5b1e:	46c0      	nop			; (mov r8, r8)

00005b20 <svcTimerCreate>:
    5b20:	b510      	push	{r4, lr}
    5b22:	2800      	cmp	r0, #0
    5b24:	d016      	beq.n	5b54 <svcTimerCreate+0x34>
    5b26:	6803      	ldr	r3, [r0, #0]
    5b28:	2b00      	cmp	r3, #0
    5b2a:	d013      	beq.n	5b54 <svcTimerCreate+0x34>
    5b2c:	6843      	ldr	r3, [r0, #4]
    5b2e:	2b00      	cmp	r3, #0
    5b30:	d010      	beq.n	5b54 <svcTimerCreate+0x34>
    5b32:	2901      	cmp	r1, #1
    5b34:	d80e      	bhi.n	5b54 <svcTimerCreate+0x34>
    5b36:	4c08      	ldr	r4, [pc, #32]	; (5b58 <svcTimerCreate+0x38>)
    5b38:	6824      	ldr	r4, [r4, #0]
    5b3a:	2c00      	cmp	r4, #0
    5b3c:	d00a      	beq.n	5b54 <svcTimerCreate+0x34>
    5b3e:	791c      	ldrb	r4, [r3, #4]
    5b40:	2c00      	cmp	r4, #0
    5b42:	d107      	bne.n	5b54 <svcTimerCreate+0x34>
    5b44:	6158      	str	r0, [r3, #20]
    5b46:	0018      	movs	r0, r3
    5b48:	601c      	str	r4, [r3, #0]
    5b4a:	3401      	adds	r4, #1
    5b4c:	711c      	strb	r4, [r3, #4]
    5b4e:	7159      	strb	r1, [r3, #5]
    5b50:	611a      	str	r2, [r3, #16]
    5b52:	bd10      	pop	{r4, pc}
    5b54:	2000      	movs	r0, #0
    5b56:	e7fc      	b.n	5b52 <svcTimerCreate+0x32>
    5b58:	20004cf4 	.word	0x20004cf4

00005b5c <svcTimerStart>:
    5b5c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5b5e:	0004      	movs	r4, r0
    5b60:	2080      	movs	r0, #128	; 0x80
    5b62:	07a3      	lsls	r3, r4, #30
    5b64:	d104      	bne.n	5b70 <svcTimerStart+0x14>
    5b66:	2c00      	cmp	r4, #0
    5b68:	d002      	beq.n	5b70 <svcTimerStart+0x14>
    5b6a:	3006      	adds	r0, #6
    5b6c:	2900      	cmp	r1, #0
    5b6e:	d100      	bne.n	5b72 <svcTimerStart+0x16>
    5b70:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5b72:	22fa      	movs	r2, #250	; 0xfa
    5b74:	4b2f      	ldr	r3, [pc, #188]	; (5c34 <svcTimerStart+0xd8>)
    5b76:	0092      	lsls	r2, r2, #2
    5b78:	681e      	ldr	r6, [r3, #0]
    5b7a:	0008      	movs	r0, r1
    5b7c:	2300      	movs	r3, #0
    5b7e:	2100      	movs	r1, #0
    5b80:	f7fe fd78 	bl	4674 <__aeabi_lmul>
    5b84:	2700      	movs	r7, #0
    5b86:	0002      	movs	r2, r0
    5b88:	000b      	movs	r3, r1
    5b8a:	2001      	movs	r0, #1
    5b8c:	4240      	negs	r0, r0
    5b8e:	17c1      	asrs	r1, r0, #31
    5b90:	1980      	adds	r0, r0, r6
    5b92:	4179      	adcs	r1, r7
    5b94:	1880      	adds	r0, r0, r2
    5b96:	4159      	adcs	r1, r3
    5b98:	003b      	movs	r3, r7
    5b9a:	0032      	movs	r2, r6
    5b9c:	f7fe fd4a 	bl	4634 <__aeabi_uldivmod>
    5ba0:	7923      	ldrb	r3, [r4, #4]
    5ba2:	2b01      	cmp	r3, #1
    5ba4:	d011      	beq.n	5bca <svcTimerStart+0x6e>
    5ba6:	2b02      	cmp	r3, #2
    5ba8:	d10d      	bne.n	5bc6 <svcTimerStart+0x6a>
    5baa:	4d23      	ldr	r5, [pc, #140]	; (5c38 <svcTimerStart+0xdc>)
    5bac:	6829      	ldr	r1, [r5, #0]
    5bae:	2900      	cmp	r1, #0
    5bb0:	d009      	beq.n	5bc6 <svcTimerStart+0x6a>
    5bb2:	428c      	cmp	r4, r1
    5bb4:	d03a      	beq.n	5c2c <svcTimerStart+0xd0>
    5bb6:	000a      	movs	r2, r1
    5bb8:	e002      	b.n	5bc0 <svcTimerStart+0x64>
    5bba:	429c      	cmp	r4, r3
    5bbc:	d028      	beq.n	5c10 <svcTimerStart+0xb4>
    5bbe:	001a      	movs	r2, r3
    5bc0:	6813      	ldr	r3, [r2, #0]
    5bc2:	2b00      	cmp	r3, #0
    5bc4:	d1f9      	bne.n	5bba <svcTimerStart+0x5e>
    5bc6:	2081      	movs	r0, #129	; 0x81
    5bc8:	e7d2      	b.n	5b70 <svcTimerStart+0x14>
    5bca:	2302      	movs	r3, #2
    5bcc:	4d1a      	ldr	r5, [pc, #104]	; (5c38 <svcTimerStart+0xdc>)
    5bce:	7123      	strb	r3, [r4, #4]
    5bd0:	6829      	ldr	r1, [r5, #0]
    5bd2:	60e0      	str	r0, [r4, #12]
    5bd4:	2900      	cmp	r1, #0
    5bd6:	d00b      	beq.n	5bf0 <svcTimerStart+0x94>
    5bd8:	688a      	ldr	r2, [r1, #8]
    5bda:	4290      	cmp	r0, r2
    5bdc:	d204      	bcs.n	5be8 <svcTimerStart+0x8c>
    5bde:	e00f      	b.n	5c00 <svcTimerStart+0xa4>
    5be0:	689a      	ldr	r2, [r3, #8]
    5be2:	4282      	cmp	r2, r0
    5be4:	d80e      	bhi.n	5c04 <svcTimerStart+0xa8>
    5be6:	0019      	movs	r1, r3
    5be8:	680b      	ldr	r3, [r1, #0]
    5bea:	1a80      	subs	r0, r0, r2
    5bec:	2b00      	cmp	r3, #0
    5bee:	d1f7      	bne.n	5be0 <svcTimerStart+0x84>
    5bf0:	2300      	movs	r3, #0
    5bf2:	60a0      	str	r0, [r4, #8]
    5bf4:	6023      	str	r3, [r4, #0]
    5bf6:	2900      	cmp	r1, #0
    5bf8:	d015      	beq.n	5c26 <svcTimerStart+0xca>
    5bfa:	600c      	str	r4, [r1, #0]
    5bfc:	2000      	movs	r0, #0
    5bfe:	e7b7      	b.n	5b70 <svcTimerStart+0x14>
    5c00:	000b      	movs	r3, r1
    5c02:	2100      	movs	r1, #0
    5c04:	60a0      	str	r0, [r4, #8]
    5c06:	689a      	ldr	r2, [r3, #8]
    5c08:	6023      	str	r3, [r4, #0]
    5c0a:	1a10      	subs	r0, r2, r0
    5c0c:	6098      	str	r0, [r3, #8]
    5c0e:	e7f2      	b.n	5bf6 <svcTimerStart+0x9a>
    5c10:	6823      	ldr	r3, [r4, #0]
    5c12:	6013      	str	r3, [r2, #0]
    5c14:	6823      	ldr	r3, [r4, #0]
    5c16:	2b00      	cmp	r3, #0
    5c18:	d0dc      	beq.n	5bd4 <svcTimerStart+0x78>
    5c1a:	68a6      	ldr	r6, [r4, #8]
    5c1c:	689a      	ldr	r2, [r3, #8]
    5c1e:	46b4      	mov	ip, r6
    5c20:	4462      	add	r2, ip
    5c22:	609a      	str	r2, [r3, #8]
    5c24:	e7d6      	b.n	5bd4 <svcTimerStart+0x78>
    5c26:	602c      	str	r4, [r5, #0]
    5c28:	2000      	movs	r0, #0
    5c2a:	e7a1      	b.n	5b70 <svcTimerStart+0x14>
    5c2c:	6823      	ldr	r3, [r4, #0]
    5c2e:	602b      	str	r3, [r5, #0]
    5c30:	0019      	movs	r1, r3
    5c32:	e7f0      	b.n	5c16 <svcTimerStart+0xba>
    5c34:	000086c0 	.word	0x000086c0
    5c38:	20006030 	.word	0x20006030

00005c3c <svcTimerStop>:
    5c3c:	0003      	movs	r3, r0
    5c3e:	2080      	movs	r0, #128	; 0x80
    5c40:	079a      	lsls	r2, r3, #30
    5c42:	d105      	bne.n	5c50 <svcTimerStop+0x14>
    5c44:	2b00      	cmp	r3, #0
    5c46:	d003      	beq.n	5c50 <svcTimerStop+0x14>
    5c48:	791a      	ldrb	r2, [r3, #4]
    5c4a:	2a02      	cmp	r2, #2
    5c4c:	d001      	beq.n	5c52 <svcTimerStop+0x16>
    5c4e:	2081      	movs	r0, #129	; 0x81
    5c50:	4770      	bx	lr
    5c52:	2201      	movs	r2, #1
    5c54:	480e      	ldr	r0, [pc, #56]	; (5c90 <svcTimerStop+0x54>)
    5c56:	711a      	strb	r2, [r3, #4]
    5c58:	6801      	ldr	r1, [r0, #0]
    5c5a:	2900      	cmp	r1, #0
    5c5c:	d0f7      	beq.n	5c4e <svcTimerStop+0x12>
    5c5e:	428b      	cmp	r3, r1
    5c60:	d105      	bne.n	5c6e <svcTimerStop+0x32>
    5c62:	681a      	ldr	r2, [r3, #0]
    5c64:	6002      	str	r2, [r0, #0]
    5c66:	e009      	b.n	5c7c <svcTimerStop+0x40>
    5c68:	4293      	cmp	r3, r2
    5c6a:	d004      	beq.n	5c76 <svcTimerStop+0x3a>
    5c6c:	0011      	movs	r1, r2
    5c6e:	680a      	ldr	r2, [r1, #0]
    5c70:	2a00      	cmp	r2, #0
    5c72:	d1f9      	bne.n	5c68 <svcTimerStop+0x2c>
    5c74:	e7eb      	b.n	5c4e <svcTimerStop+0x12>
    5c76:	681a      	ldr	r2, [r3, #0]
    5c78:	600a      	str	r2, [r1, #0]
    5c7a:	681a      	ldr	r2, [r3, #0]
    5c7c:	2a00      	cmp	r2, #0
    5c7e:	d004      	beq.n	5c8a <svcTimerStop+0x4e>
    5c80:	6891      	ldr	r1, [r2, #8]
    5c82:	689b      	ldr	r3, [r3, #8]
    5c84:	468c      	mov	ip, r1
    5c86:	4463      	add	r3, ip
    5c88:	6093      	str	r3, [r2, #8]
    5c8a:	2000      	movs	r0, #0
    5c8c:	e7e0      	b.n	5c50 <svcTimerStop+0x14>
    5c8e:	46c0      	nop			; (mov r8, r8)
    5c90:	20006030 	.word	0x20006030

00005c94 <svcTimerDelete>:
    5c94:	0002      	movs	r2, r0
    5c96:	2080      	movs	r0, #128	; 0x80
    5c98:	0793      	lsls	r3, r2, #30
    5c9a:	d117      	bne.n	5ccc <svcTimerDelete+0x38>
    5c9c:	2a00      	cmp	r2, #0
    5c9e:	d015      	beq.n	5ccc <svcTimerDelete+0x38>
    5ca0:	7913      	ldrb	r3, [r2, #4]
    5ca2:	2b01      	cmp	r3, #1
    5ca4:	d00f      	beq.n	5cc6 <svcTimerDelete+0x32>
    5ca6:	2081      	movs	r0, #129	; 0x81
    5ca8:	2b02      	cmp	r3, #2
    5caa:	d10f      	bne.n	5ccc <svcTimerDelete+0x38>
    5cac:	4810      	ldr	r0, [pc, #64]	; (5cf0 <svcTimerDelete+0x5c>)
    5cae:	6801      	ldr	r1, [r0, #0]
    5cb0:	2900      	cmp	r1, #0
    5cb2:	d008      	beq.n	5cc6 <svcTimerDelete+0x32>
    5cb4:	428a      	cmp	r2, r1
    5cb6:	d103      	bne.n	5cc0 <svcTimerDelete+0x2c>
    5cb8:	e017      	b.n	5cea <svcTimerDelete+0x56>
    5cba:	429a      	cmp	r2, r3
    5cbc:	d007      	beq.n	5cce <svcTimerDelete+0x3a>
    5cbe:	0019      	movs	r1, r3
    5cc0:	680b      	ldr	r3, [r1, #0]
    5cc2:	2b00      	cmp	r3, #0
    5cc4:	d1f9      	bne.n	5cba <svcTimerDelete+0x26>
    5cc6:	2300      	movs	r3, #0
    5cc8:	2000      	movs	r0, #0
    5cca:	7113      	strb	r3, [r2, #4]
    5ccc:	4770      	bx	lr
    5cce:	6813      	ldr	r3, [r2, #0]
    5cd0:	600b      	str	r3, [r1, #0]
    5cd2:	6813      	ldr	r3, [r2, #0]
    5cd4:	2b00      	cmp	r3, #0
    5cd6:	d0f6      	beq.n	5cc6 <svcTimerDelete+0x32>
    5cd8:	6890      	ldr	r0, [r2, #8]
    5cda:	6899      	ldr	r1, [r3, #8]
    5cdc:	4684      	mov	ip, r0
    5cde:	4461      	add	r1, ip
    5ce0:	6099      	str	r1, [r3, #8]
    5ce2:	2300      	movs	r3, #0
    5ce4:	2000      	movs	r0, #0
    5ce6:	7113      	strb	r3, [r2, #4]
    5ce8:	e7f0      	b.n	5ccc <svcTimerDelete+0x38>
    5cea:	6813      	ldr	r3, [r2, #0]
    5cec:	6003      	str	r3, [r0, #0]
    5cee:	e7f1      	b.n	5cd4 <svcTimerDelete+0x40>
    5cf0:	20006030 	.word	0x20006030

00005cf4 <svcTimerCall>:
    5cf4:	0003      	movs	r3, r0
    5cf6:	0782      	lsls	r2, r0, #30
    5cf8:	d105      	bne.n	5d06 <svcTimerCall+0x12>
    5cfa:	2800      	cmp	r0, #0
    5cfc:	d006      	beq.n	5d0c <svcTimerCall+0x18>
    5cfe:	6942      	ldr	r2, [r0, #20]
    5d00:	6919      	ldr	r1, [r3, #16]
    5d02:	6810      	ldr	r0, [r2, #0]
    5d04:	4770      	bx	lr
    5d06:	2000      	movs	r0, #0
    5d08:	2100      	movs	r1, #0
    5d0a:	e7fb      	b.n	5d04 <svcTimerCall+0x10>
    5d0c:	2000      	movs	r0, #0
    5d0e:	0001      	movs	r1, r0
    5d10:	e7f8      	b.n	5d04 <svcTimerCall+0x10>
    5d12:	46c0      	nop			; (mov r8, r8)

00005d14 <sysTimerTick>:
    5d14:	b5f0      	push	{r4, r5, r6, r7, lr}
    5d16:	464e      	mov	r6, r9
    5d18:	4657      	mov	r7, sl
    5d1a:	4645      	mov	r5, r8
    5d1c:	b4e0      	push	{r5, r6, r7}
    5d1e:	4e2a      	ldr	r6, [pc, #168]	; (5dc8 <sysTimerTick+0xb4>)
    5d20:	6834      	ldr	r4, [r6, #0]
    5d22:	2c00      	cmp	r4, #0
    5d24:	d028      	beq.n	5d78 <sysTimerTick+0x64>
    5d26:	2200      	movs	r2, #0
    5d28:	68a3      	ldr	r3, [r4, #8]
    5d2a:	4f28      	ldr	r7, [pc, #160]	; (5dcc <sysTimerTick+0xb8>)
    5d2c:	3b01      	subs	r3, #1
    5d2e:	60a3      	str	r3, [r4, #8]
    5d30:	4690      	mov	r8, r2
    5d32:	2b00      	cmp	r3, #0
    5d34:	d120      	bne.n	5d78 <sysTimerTick+0x64>
    5d36:	6825      	ldr	r5, [r4, #0]
    5d38:	683b      	ldr	r3, [r7, #0]
    5d3a:	6035      	str	r5, [r6, #0]
    5d3c:	4699      	mov	r9, r3
    5d3e:	2b00      	cmp	r3, #0
    5d40:	d003      	beq.n	5d4a <sysTimerTick+0x36>
    5d42:	781b      	ldrb	r3, [r3, #0]
    5d44:	469a      	mov	sl, r3
    5d46:	2b01      	cmp	r3, #1
    5d48:	d002      	beq.n	5d50 <sysTimerTick+0x3c>
    5d4a:	2004      	movs	r0, #4
    5d4c:	f7fb fe6c 	bl	1a28 <os_error>
    5d50:	4648      	mov	r0, r9
    5d52:	f001 fb63 	bl	741c <rt_mbx_check>
    5d56:	2800      	cmp	r0, #0
    5d58:	d0f7      	beq.n	5d4a <sysTimerTick+0x36>
    5d5a:	0021      	movs	r1, r4
    5d5c:	4648      	mov	r0, r9
    5d5e:	f001 fb61 	bl	7424 <isr_mbx_send>
    5d62:	7963      	ldrb	r3, [r4, #5]
    5d64:	2b01      	cmp	r3, #1
    5d66:	d00c      	beq.n	5d82 <sysTimerTick+0x6e>
    5d68:	4653      	mov	r3, sl
    5d6a:	7123      	strb	r3, [r4, #4]
    5d6c:	2d00      	cmp	r5, #0
    5d6e:	d003      	beq.n	5d78 <sysTimerTick+0x64>
    5d70:	68ab      	ldr	r3, [r5, #8]
    5d72:	002c      	movs	r4, r5
    5d74:	2b00      	cmp	r3, #0
    5d76:	d0de      	beq.n	5d36 <sysTimerTick+0x22>
    5d78:	bc1c      	pop	{r2, r3, r4}
    5d7a:	4690      	mov	r8, r2
    5d7c:	4699      	mov	r9, r3
    5d7e:	46a2      	mov	sl, r4
    5d80:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5d82:	6830      	ldr	r0, [r6, #0]
    5d84:	68e2      	ldr	r2, [r4, #12]
    5d86:	2800      	cmp	r0, #0
    5d88:	d00b      	beq.n	5da2 <sysTimerTick+0x8e>
    5d8a:	6881      	ldr	r1, [r0, #8]
    5d8c:	4291      	cmp	r1, r2
    5d8e:	d904      	bls.n	5d9a <sysTimerTick+0x86>
    5d90:	e00e      	b.n	5db0 <sysTimerTick+0x9c>
    5d92:	6899      	ldr	r1, [r3, #8]
    5d94:	4291      	cmp	r1, r2
    5d96:	d80d      	bhi.n	5db4 <sysTimerTick+0xa0>
    5d98:	0018      	movs	r0, r3
    5d9a:	6803      	ldr	r3, [r0, #0]
    5d9c:	1a52      	subs	r2, r2, r1
    5d9e:	2b00      	cmp	r3, #0
    5da0:	d1f7      	bne.n	5d92 <sysTimerTick+0x7e>
    5da2:	4643      	mov	r3, r8
    5da4:	60a2      	str	r2, [r4, #8]
    5da6:	6023      	str	r3, [r4, #0]
    5da8:	2800      	cmp	r0, #0
    5daa:	d00a      	beq.n	5dc2 <sysTimerTick+0xae>
    5dac:	6004      	str	r4, [r0, #0]
    5dae:	e7dd      	b.n	5d6c <sysTimerTick+0x58>
    5db0:	0003      	movs	r3, r0
    5db2:	2000      	movs	r0, #0
    5db4:	60a2      	str	r2, [r4, #8]
    5db6:	6899      	ldr	r1, [r3, #8]
    5db8:	6023      	str	r3, [r4, #0]
    5dba:	1a8a      	subs	r2, r1, r2
    5dbc:	609a      	str	r2, [r3, #8]
    5dbe:	2800      	cmp	r0, #0
    5dc0:	d1f4      	bne.n	5dac <sysTimerTick+0x98>
    5dc2:	6034      	str	r4, [r6, #0]
    5dc4:	e7d2      	b.n	5d6c <sysTimerTick+0x58>
    5dc6:	46c0      	nop			; (mov r8, r8)
    5dc8:	20006030 	.word	0x20006030
    5dcc:	20004d18 	.word	0x20004d18

00005dd0 <sysUserTimerWakeupTime>:
    5dd0:	4b04      	ldr	r3, [pc, #16]	; (5de4 <sysUserTimerWakeupTime+0x14>)
    5dd2:	681b      	ldr	r3, [r3, #0]
    5dd4:	2b00      	cmp	r3, #0
    5dd6:	d001      	beq.n	5ddc <sysUserTimerWakeupTime+0xc>
    5dd8:	6898      	ldr	r0, [r3, #8]
    5dda:	4770      	bx	lr
    5ddc:	2001      	movs	r0, #1
    5dde:	4240      	negs	r0, r0
    5de0:	e7fb      	b.n	5dda <sysUserTimerWakeupTime+0xa>
    5de2:	46c0      	nop			; (mov r8, r8)
    5de4:	20006030 	.word	0x20006030

00005de8 <sysUserTimerUpdate>:
    5de8:	b570      	push	{r4, r5, r6, lr}
    5dea:	4d0e      	ldr	r5, [pc, #56]	; (5e24 <sysUserTimerUpdate+0x3c>)
    5dec:	0004      	movs	r4, r0
    5dee:	682b      	ldr	r3, [r5, #0]
    5df0:	2b00      	cmp	r3, #0
    5df2:	d012      	beq.n	5e1a <sysUserTimerUpdate+0x32>
    5df4:	2800      	cmp	r0, #0
    5df6:	d010      	beq.n	5e1a <sysUserTimerUpdate+0x32>
    5df8:	689a      	ldr	r2, [r3, #8]
    5dfa:	2601      	movs	r6, #1
    5dfc:	4290      	cmp	r0, r2
    5dfe:	d205      	bcs.n	5e0c <sysUserTimerUpdate+0x24>
    5e00:	e00c      	b.n	5e1c <sysUserTimerUpdate+0x34>
    5e02:	2c00      	cmp	r4, #0
    5e04:	d009      	beq.n	5e1a <sysUserTimerUpdate+0x32>
    5e06:	689a      	ldr	r2, [r3, #8]
    5e08:	42a2      	cmp	r2, r4
    5e0a:	d807      	bhi.n	5e1c <sysUserTimerUpdate+0x34>
    5e0c:	609e      	str	r6, [r3, #8]
    5e0e:	1aa4      	subs	r4, r4, r2
    5e10:	f7ff ff80 	bl	5d14 <sysTimerTick>
    5e14:	682b      	ldr	r3, [r5, #0]
    5e16:	2b00      	cmp	r3, #0
    5e18:	d1f3      	bne.n	5e02 <sysUserTimerUpdate+0x1a>
    5e1a:	bd70      	pop	{r4, r5, r6, pc}
    5e1c:	1b14      	subs	r4, r2, r4
    5e1e:	609c      	str	r4, [r3, #8]
    5e20:	e7fb      	b.n	5e1a <sysUserTimerUpdate+0x32>
    5e22:	46c0      	nop			; (mov r8, r8)
    5e24:	20006030 	.word	0x20006030

00005e28 <osTimerCreate>:
    5e28:	b5b0      	push	{r4, r5, r7, lr}
    5e2a:	f3ef 8405 	mrs	r4, IPSR
    5e2e:	2c00      	cmp	r4, #0
    5e30:	d124      	bne.n	5e7c <osTimerCreate+0x54>
    5e32:	f3ef 8414 	mrs	r4, CONTROL
    5e36:	2501      	movs	r5, #1
    5e38:	4225      	tst	r5, r4
    5e3a:	d003      	beq.n	5e44 <osTimerCreate+0x1c>
    5e3c:	4f12      	ldr	r7, [pc, #72]	; (5e88 <osTimerCreate+0x60>)
    5e3e:	46bc      	mov	ip, r7
    5e40:	df00      	svc	0
    5e42:	bdb0      	pop	{r4, r5, r7, pc}
    5e44:	4c0e      	ldr	r4, [pc, #56]	; (5e80 <osTimerCreate+0x58>)
    5e46:	7824      	ldrb	r4, [r4, #0]
    5e48:	2c00      	cmp	r4, #0
    5e4a:	d1f7      	bne.n	5e3c <osTimerCreate+0x14>
    5e4c:	2800      	cmp	r0, #0
    5e4e:	d015      	beq.n	5e7c <osTimerCreate+0x54>
    5e50:	6803      	ldr	r3, [r0, #0]
    5e52:	2b00      	cmp	r3, #0
    5e54:	d012      	beq.n	5e7c <osTimerCreate+0x54>
    5e56:	6843      	ldr	r3, [r0, #4]
    5e58:	2b00      	cmp	r3, #0
    5e5a:	d00f      	beq.n	5e7c <osTimerCreate+0x54>
    5e5c:	2901      	cmp	r1, #1
    5e5e:	d80d      	bhi.n	5e7c <osTimerCreate+0x54>
    5e60:	4c08      	ldr	r4, [pc, #32]	; (5e84 <osTimerCreate+0x5c>)
    5e62:	6824      	ldr	r4, [r4, #0]
    5e64:	2c00      	cmp	r4, #0
    5e66:	d009      	beq.n	5e7c <osTimerCreate+0x54>
    5e68:	791c      	ldrb	r4, [r3, #4]
    5e6a:	2c00      	cmp	r4, #0
    5e6c:	d106      	bne.n	5e7c <osTimerCreate+0x54>
    5e6e:	6158      	str	r0, [r3, #20]
    5e70:	601c      	str	r4, [r3, #0]
    5e72:	711d      	strb	r5, [r3, #4]
    5e74:	7159      	strb	r1, [r3, #5]
    5e76:	611a      	str	r2, [r3, #16]
    5e78:	0018      	movs	r0, r3
    5e7a:	e7e2      	b.n	5e42 <osTimerCreate+0x1a>
    5e7c:	2000      	movs	r0, #0
    5e7e:	e7e0      	b.n	5e42 <osTimerCreate+0x1a>
    5e80:	2000602d 	.word	0x2000602d
    5e84:	20004cf4 	.word	0x20004cf4
    5e88:	00005b21 	.word	0x00005b21

00005e8c <osTimerStart>:
    5e8c:	b5b0      	push	{r4, r5, r7, lr}
    5e8e:	0005      	movs	r5, r0
    5e90:	f3ef 8405 	mrs	r4, IPSR
    5e94:	2082      	movs	r0, #130	; 0x82
    5e96:	2c00      	cmp	r4, #0
    5e98:	d000      	beq.n	5e9c <osTimerStart+0x10>
    5e9a:	bdb0      	pop	{r4, r5, r7, pc}
    5e9c:	0028      	movs	r0, r5
    5e9e:	4f02      	ldr	r7, [pc, #8]	; (5ea8 <osTimerStart+0x1c>)
    5ea0:	46bc      	mov	ip, r7
    5ea2:	df00      	svc	0
    5ea4:	e7f9      	b.n	5e9a <osTimerStart+0xe>
    5ea6:	0000      	.short	0x0000
    5ea8:	00005b5d 	.word	0x00005b5d

00005eac <osTimerStop>:
    5eac:	b5b0      	push	{r4, r5, r7, lr}
    5eae:	0005      	movs	r5, r0
    5eb0:	f3ef 8405 	mrs	r4, IPSR
    5eb4:	2082      	movs	r0, #130	; 0x82
    5eb6:	2c00      	cmp	r4, #0
    5eb8:	d000      	beq.n	5ebc <osTimerStop+0x10>
    5eba:	bdb0      	pop	{r4, r5, r7, pc}
    5ebc:	0028      	movs	r0, r5
    5ebe:	4f02      	ldr	r7, [pc, #8]	; (5ec8 <osTimerStop+0x1c>)
    5ec0:	46bc      	mov	ip, r7
    5ec2:	df00      	svc	0
    5ec4:	e7f9      	b.n	5eba <osTimerStop+0xe>
    5ec6:	0000      	.short	0x0000
    5ec8:	00005c3d 	.word	0x00005c3d

00005ecc <osTimerDelete>:
    5ecc:	b5b0      	push	{r4, r5, r7, lr}
    5ece:	0005      	movs	r5, r0
    5ed0:	f3ef 8405 	mrs	r4, IPSR
    5ed4:	2082      	movs	r0, #130	; 0x82
    5ed6:	2c00      	cmp	r4, #0
    5ed8:	d000      	beq.n	5edc <osTimerDelete+0x10>
    5eda:	bdb0      	pop	{r4, r5, r7, pc}
    5edc:	0028      	movs	r0, r5
    5ede:	4f02      	ldr	r7, [pc, #8]	; (5ee8 <osTimerDelete+0x1c>)
    5ee0:	46bc      	mov	ip, r7
    5ee2:	df00      	svc	0
    5ee4:	e7f9      	b.n	5eda <osTimerDelete+0xe>
    5ee6:	0000      	.short	0x0000
    5ee8:	00005c95 	.word	0x00005c95

00005eec <osTimerCall>:
    5eec:	b590      	push	{r4, r7, lr}
    5eee:	0004      	movs	r4, r0
    5ef0:	0008      	movs	r0, r1
    5ef2:	4f03      	ldr	r7, [pc, #12]	; (5f00 <osTimerCall+0x14>)
    5ef4:	46bc      	mov	ip, r7
    5ef6:	df00      	svc	0
    5ef8:	6020      	str	r0, [r4, #0]
    5efa:	6061      	str	r1, [r4, #4]
    5efc:	0020      	movs	r0, r4
    5efe:	bd90      	pop	{r4, r7, pc}
    5f00:	00005cf5 	.word	0x00005cf5

00005f04 <osTimerThread>:
    5f04:	b5b0      	push	{r4, r5, r7, lr}
    5f06:	4d0a      	ldr	r5, [pc, #40]	; (5f30 <osTimerThread+0x2c>)
    5f08:	6828      	ldr	r0, [r5, #0]
    5f0a:	f3ef 8105 	mrs	r1, IPSR
    5f0e:	2900      	cmp	r1, #0
    5f10:	d1fb      	bne.n	5f0a <osTimerThread+0x6>
    5f12:	3901      	subs	r1, #1
    5f14:	4f07      	ldr	r7, [pc, #28]	; (5f34 <osTimerThread+0x30>)
    5f16:	46bc      	mov	ip, r7
    5f18:	df00      	svc	0
    5f1a:	2810      	cmp	r0, #16
    5f1c:	d1f4      	bne.n	5f08 <osTimerThread+0x4>
    5f1e:	0008      	movs	r0, r1
    5f20:	4f05      	ldr	r7, [pc, #20]	; (5f38 <osTimerThread+0x34>)
    5f22:	46bc      	mov	ip, r7
    5f24:	df00      	svc	0
    5f26:	1e04      	subs	r4, r0, #0
    5f28:	d0ee      	beq.n	5f08 <osTimerThread+0x4>
    5f2a:	0008      	movs	r0, r1
    5f2c:	47a0      	blx	r4
    5f2e:	e7eb      	b.n	5f08 <osTimerThread+0x4>
    5f30:	20004d18 	.word	0x20004d18
    5f34:	000066e5 	.word	0x000066e5
    5f38:	00005cf5 	.word	0x00005cf5

00005f3c <svcSignalSet>:
    5f3c:	b510      	push	{r4, lr}
    5f3e:	2800      	cmp	r0, #0
    5f40:	d00e      	beq.n	5f60 <svcSignalSet+0x24>
    5f42:	0783      	lsls	r3, r0, #30
    5f44:	d10c      	bne.n	5f60 <svcSignalSet+0x24>
    5f46:	7803      	ldrb	r3, [r0, #0]
    5f48:	2b00      	cmp	r3, #0
    5f4a:	d109      	bne.n	5f60 <svcSignalSet+0x24>
    5f4c:	0c0b      	lsrs	r3, r1, #16
    5f4e:	d107      	bne.n	5f60 <svcSignalSet+0x24>
    5f50:	78c3      	ldrb	r3, [r0, #3]
    5f52:	8b04      	ldrh	r4, [r0, #24]
    5f54:	b288      	uxth	r0, r1
    5f56:	0019      	movs	r1, r3
    5f58:	f001 fcbe 	bl	78d8 <rt_evt_set>
    5f5c:	0020      	movs	r0, r4
    5f5e:	e001      	b.n	5f64 <svcSignalSet+0x28>
    5f60:	2080      	movs	r0, #128	; 0x80
    5f62:	0600      	lsls	r0, r0, #24
    5f64:	bd10      	pop	{r4, pc}
    5f66:	46c0      	nop			; (mov r8, r8)

00005f68 <svcSignalClear>:
    5f68:	b510      	push	{r4, lr}
    5f6a:	2800      	cmp	r0, #0
    5f6c:	d00e      	beq.n	5f8c <svcSignalClear+0x24>
    5f6e:	0783      	lsls	r3, r0, #30
    5f70:	d10c      	bne.n	5f8c <svcSignalClear+0x24>
    5f72:	7803      	ldrb	r3, [r0, #0]
    5f74:	2b00      	cmp	r3, #0
    5f76:	d109      	bne.n	5f8c <svcSignalClear+0x24>
    5f78:	0c0b      	lsrs	r3, r1, #16
    5f7a:	d107      	bne.n	5f8c <svcSignalClear+0x24>
    5f7c:	78c3      	ldrb	r3, [r0, #3]
    5f7e:	8b04      	ldrh	r4, [r0, #24]
    5f80:	b288      	uxth	r0, r1
    5f82:	0019      	movs	r1, r3
    5f84:	f001 fcd4 	bl	7930 <rt_evt_clr>
    5f88:	0020      	movs	r0, r4
    5f8a:	e001      	b.n	5f90 <svcSignalClear+0x28>
    5f8c:	2080      	movs	r0, #128	; 0x80
    5f8e:	0600      	lsls	r0, r0, #24
    5f90:	bd10      	pop	{r4, pc}
    5f92:	46c0      	nop			; (mov r8, r8)

00005f94 <svcSignalWait>:
    5f94:	b5f0      	push	{r4, r5, r6, r7, lr}
    5f96:	0c04      	lsrs	r4, r0, #16
    5f98:	b083      	sub	sp, #12
    5f9a:	0006      	movs	r6, r0
    5f9c:	000d      	movs	r5, r1
    5f9e:	0424      	lsls	r4, r4, #16
    5fa0:	d149      	bne.n	6036 <svcSignalWait+0xa2>
    5fa2:	2800      	cmp	r0, #0
    5fa4:	d026      	beq.n	5ff4 <svcSignalWait+0x60>
    5fa6:	b287      	uxth	r7, r0
    5fa8:	2100      	movs	r1, #0
    5faa:	2d00      	cmp	r5, #0
    5fac:	d013      	beq.n	5fd6 <svcSignalWait+0x42>
    5fae:	1c6b      	adds	r3, r5, #1
    5fb0:	d05c      	beq.n	606c <svcSignalWait+0xd8>
    5fb2:	4b2f      	ldr	r3, [pc, #188]	; (6070 <svcSignalWait+0xdc>)
    5fb4:	429d      	cmp	r5, r3
    5fb6:	d84f      	bhi.n	6058 <svcSignalWait+0xc4>
    5fb8:	20fa      	movs	r0, #250	; 0xfa
    5fba:	4b2e      	ldr	r3, [pc, #184]	; (6074 <svcSignalWait+0xe0>)
    5fbc:	0080      	lsls	r0, r0, #2
    5fbe:	4368      	muls	r0, r5
    5fc0:	681b      	ldr	r3, [r3, #0]
    5fc2:	9301      	str	r3, [sp, #4]
    5fc4:	3b01      	subs	r3, #1
    5fc6:	18c0      	adds	r0, r0, r3
    5fc8:	9901      	ldr	r1, [sp, #4]
    5fca:	f7fe f9fd 	bl	43c8 <__aeabi_uidiv>
    5fce:	4b2a      	ldr	r3, [pc, #168]	; (6078 <svcSignalWait+0xe4>)
    5fd0:	0019      	movs	r1, r3
    5fd2:	4298      	cmp	r0, r3
    5fd4:	d946      	bls.n	6064 <svcSignalWait+0xd0>
    5fd6:	2201      	movs	r2, #1
    5fd8:	0038      	movs	r0, r7
    5fda:	f001 fc59 	bl	7890 <rt_evt_wait>
    5fde:	2802      	cmp	r0, #2
    5fe0:	d035      	beq.n	604e <svcSignalWait+0xba>
    5fe2:	0028      	movs	r0, r5
    5fe4:	1e45      	subs	r5, r0, #1
    5fe6:	41a8      	sbcs	r0, r5
    5fe8:	0180      	lsls	r0, r0, #6
    5fea:	0021      	movs	r1, r4
    5fec:	2200      	movs	r2, #0
    5fee:	2300      	movs	r3, #0
    5ff0:	b003      	add	sp, #12
    5ff2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5ff4:	2900      	cmp	r1, #0
    5ff6:	d021      	beq.n	603c <svcSignalWait+0xa8>
    5ff8:	1c4b      	adds	r3, r1, #1
    5ffa:	d035      	beq.n	6068 <svcSignalWait+0xd4>
    5ffc:	4b1c      	ldr	r3, [pc, #112]	; (6070 <svcSignalWait+0xdc>)
    5ffe:	4299      	cmp	r1, r3
    6000:	d82c      	bhi.n	605c <svcSignalWait+0xc8>
    6002:	20fa      	movs	r0, #250	; 0xfa
    6004:	4b1b      	ldr	r3, [pc, #108]	; (6074 <svcSignalWait+0xe0>)
    6006:	0080      	lsls	r0, r0, #2
    6008:	4348      	muls	r0, r1
    600a:	681b      	ldr	r3, [r3, #0]
    600c:	9301      	str	r3, [sp, #4]
    600e:	3b01      	subs	r3, #1
    6010:	18c0      	adds	r0, r0, r3
    6012:	9901      	ldr	r1, [sp, #4]
    6014:	f7fe f9d8 	bl	43c8 <__aeabi_uidiv>
    6018:	4b17      	ldr	r3, [pc, #92]	; (6078 <svcSignalWait+0xe4>)
    601a:	0019      	movs	r1, r3
    601c:	4298      	cmp	r0, r3
    601e:	d91f      	bls.n	6060 <svcSignalWait+0xcc>
    6020:	2200      	movs	r2, #0
    6022:	4816      	ldr	r0, [pc, #88]	; (607c <svcSignalWait+0xe8>)
    6024:	f001 fc34 	bl	7890 <rt_evt_wait>
    6028:	2802      	cmp	r0, #2
    602a:	d113      	bne.n	6054 <svcSignalWait+0xc0>
    602c:	4b14      	ldr	r3, [pc, #80]	; (6080 <svcSignalWait+0xec>)
    602e:	2008      	movs	r0, #8
    6030:	681b      	ldr	r3, [r3, #0]
    6032:	8b5c      	ldrh	r4, [r3, #26]
    6034:	e7d9      	b.n	5fea <svcSignalWait+0x56>
    6036:	2086      	movs	r0, #134	; 0x86
    6038:	2100      	movs	r1, #0
    603a:	e7d7      	b.n	5fec <svcSignalWait+0x58>
    603c:	2200      	movs	r2, #0
    603e:	2100      	movs	r1, #0
    6040:	480e      	ldr	r0, [pc, #56]	; (607c <svcSignalWait+0xe8>)
    6042:	f001 fc25 	bl	7890 <rt_evt_wait>
    6046:	2802      	cmp	r0, #2
    6048:	d0f0      	beq.n	602c <svcSignalWait+0x98>
    604a:	2000      	movs	r0, #0
    604c:	e7cd      	b.n	5fea <svcSignalWait+0x56>
    604e:	0034      	movs	r4, r6
    6050:	2008      	movs	r0, #8
    6052:	e7ca      	b.n	5fea <svcSignalWait+0x56>
    6054:	2040      	movs	r0, #64	; 0x40
    6056:	e7c8      	b.n	5fea <svcSignalWait+0x56>
    6058:	4907      	ldr	r1, [pc, #28]	; (6078 <svcSignalWait+0xe4>)
    605a:	e7bc      	b.n	5fd6 <svcSignalWait+0x42>
    605c:	4906      	ldr	r1, [pc, #24]	; (6078 <svcSignalWait+0xe4>)
    605e:	e7df      	b.n	6020 <svcSignalWait+0x8c>
    6060:	b281      	uxth	r1, r0
    6062:	e7dd      	b.n	6020 <svcSignalWait+0x8c>
    6064:	b281      	uxth	r1, r0
    6066:	e7b6      	b.n	5fd6 <svcSignalWait+0x42>
    6068:	4904      	ldr	r1, [pc, #16]	; (607c <svcSignalWait+0xe8>)
    606a:	e7d9      	b.n	6020 <svcSignalWait+0x8c>
    606c:	4903      	ldr	r1, [pc, #12]	; (607c <svcSignalWait+0xe8>)
    606e:	e7b2      	b.n	5fd6 <svcSignalWait+0x42>
    6070:	003d0900 	.word	0x003d0900
    6074:	000086c0 	.word	0x000086c0
    6078:	0000fffe 	.word	0x0000fffe
    607c:	0000ffff 	.word	0x0000ffff
    6080:	2000606c 	.word	0x2000606c

00006084 <isrSignalSet>:
    6084:	b510      	push	{r4, lr}
    6086:	2800      	cmp	r0, #0
    6088:	d00e      	beq.n	60a8 <isrSignalSet+0x24>
    608a:	0783      	lsls	r3, r0, #30
    608c:	d10c      	bne.n	60a8 <isrSignalSet+0x24>
    608e:	7803      	ldrb	r3, [r0, #0]
    6090:	2b00      	cmp	r3, #0
    6092:	d109      	bne.n	60a8 <isrSignalSet+0x24>
    6094:	0c0b      	lsrs	r3, r1, #16
    6096:	d107      	bne.n	60a8 <isrSignalSet+0x24>
    6098:	78c3      	ldrb	r3, [r0, #3]
    609a:	8b04      	ldrh	r4, [r0, #24]
    609c:	b288      	uxth	r0, r1
    609e:	0019      	movs	r1, r3
    60a0:	f001 fc52 	bl	7948 <isr_evt_set>
    60a4:	0020      	movs	r0, r4
    60a6:	e001      	b.n	60ac <isrSignalSet+0x28>
    60a8:	2080      	movs	r0, #128	; 0x80
    60aa:	0600      	lsls	r0, r0, #24
    60ac:	bd10      	pop	{r4, pc}
    60ae:	46c0      	nop			; (mov r8, r8)

000060b0 <osSignalSet>:
    60b0:	b5b0      	push	{r4, r5, r7, lr}
    60b2:	f3ef 8405 	mrs	r4, IPSR
    60b6:	2c00      	cmp	r4, #0
    60b8:	d103      	bne.n	60c2 <osSignalSet+0x12>
    60ba:	4f0c      	ldr	r7, [pc, #48]	; (60ec <osSignalSet+0x3c>)
    60bc:	46bc      	mov	ip, r7
    60be:	df00      	svc	0
    60c0:	bdb0      	pop	{r4, r5, r7, pc}
    60c2:	2800      	cmp	r0, #0
    60c4:	d00e      	beq.n	60e4 <osSignalSet+0x34>
    60c6:	0783      	lsls	r3, r0, #30
    60c8:	d10c      	bne.n	60e4 <osSignalSet+0x34>
    60ca:	7803      	ldrb	r3, [r0, #0]
    60cc:	2b00      	cmp	r3, #0
    60ce:	d109      	bne.n	60e4 <osSignalSet+0x34>
    60d0:	0c0b      	lsrs	r3, r1, #16
    60d2:	d107      	bne.n	60e4 <osSignalSet+0x34>
    60d4:	78c3      	ldrb	r3, [r0, #3]
    60d6:	8b04      	ldrh	r4, [r0, #24]
    60d8:	b288      	uxth	r0, r1
    60da:	0019      	movs	r1, r3
    60dc:	f001 fc34 	bl	7948 <isr_evt_set>
    60e0:	0020      	movs	r0, r4
    60e2:	e7ed      	b.n	60c0 <osSignalSet+0x10>
    60e4:	2080      	movs	r0, #128	; 0x80
    60e6:	0600      	lsls	r0, r0, #24
    60e8:	e7ea      	b.n	60c0 <osSignalSet+0x10>
    60ea:	0000      	.short	0x0000
    60ec:	00005f3d 	.word	0x00005f3d

000060f0 <osSignalClear>:
    60f0:	b590      	push	{r4, r7, lr}
    60f2:	f3ef 8405 	mrs	r4, IPSR
    60f6:	2c00      	cmp	r4, #0
    60f8:	d103      	bne.n	6102 <osSignalClear+0x12>
    60fa:	4f03      	ldr	r7, [pc, #12]	; (6108 <osSignalClear+0x18>)
    60fc:	46bc      	mov	ip, r7
    60fe:	df00      	svc	0
    6100:	bd90      	pop	{r4, r7, pc}
    6102:	2080      	movs	r0, #128	; 0x80
    6104:	0600      	lsls	r0, r0, #24
    6106:	e7fb      	b.n	6100 <osSignalClear+0x10>
    6108:	00005f69 	.word	0x00005f69

0000610c <osSignalWait>:
    610c:	b5f0      	push	{r4, r5, r6, r7, lr}
    610e:	0004      	movs	r4, r0
    6110:	f3ef 8505 	mrs	r5, IPSR
    6114:	2d00      	cmp	r5, #0
    6116:	d109      	bne.n	612c <osSignalWait+0x20>
    6118:	0008      	movs	r0, r1
    611a:	0011      	movs	r1, r2
    611c:	4f05      	ldr	r7, [pc, #20]	; (6134 <osSignalWait+0x28>)
    611e:	46bc      	mov	ip, r7
    6120:	df00      	svc	0
    6122:	6020      	str	r0, [r4, #0]
    6124:	6061      	str	r1, [r4, #4]
    6126:	60a2      	str	r2, [r4, #8]
    6128:	0020      	movs	r0, r4
    612a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    612c:	2382      	movs	r3, #130	; 0x82
    612e:	6003      	str	r3, [r0, #0]
    6130:	e7fa      	b.n	6128 <osSignalWait+0x1c>
    6132:	0000      	.short	0x0000
    6134:	00005f95 	.word	0x00005f95

00006138 <svcMutexCreate>:
    6138:	b510      	push	{r4, lr}
    613a:	2800      	cmp	r0, #0
    613c:	d00a      	beq.n	6154 <svcMutexCreate+0x1c>
    613e:	6804      	ldr	r4, [r0, #0]
    6140:	2c00      	cmp	r4, #0
    6142:	d007      	beq.n	6154 <svcMutexCreate+0x1c>
    6144:	7823      	ldrb	r3, [r4, #0]
    6146:	2b00      	cmp	r3, #0
    6148:	d104      	bne.n	6154 <svcMutexCreate+0x1c>
    614a:	0020      	movs	r0, r4
    614c:	f000 feb4 	bl	6eb8 <rt_mut_init>
    6150:	0020      	movs	r0, r4
    6152:	bd10      	pop	{r4, pc}
    6154:	2000      	movs	r0, #0
    6156:	e7fc      	b.n	6152 <svcMutexCreate+0x1a>

00006158 <svcMutexWait>:
    6158:	b510      	push	{r4, lr}
    615a:	0004      	movs	r4, r0
    615c:	b082      	sub	sp, #8
    615e:	2080      	movs	r0, #128	; 0x80
    6160:	07a3      	lsls	r3, r4, #30
    6162:	d104      	bne.n	616e <svcMutexWait+0x16>
    6164:	2c00      	cmp	r4, #0
    6166:	d002      	beq.n	616e <svcMutexWait+0x16>
    6168:	7823      	ldrb	r3, [r4, #0]
    616a:	2b03      	cmp	r3, #3
    616c:	d001      	beq.n	6172 <svcMutexWait+0x1a>
    616e:	b002      	add	sp, #8
    6170:	bd10      	pop	{r4, pc}
    6172:	2900      	cmp	r1, #0
    6174:	d01b      	beq.n	61ae <svcMutexWait+0x56>
    6176:	1c4b      	adds	r3, r1, #1
    6178:	d025      	beq.n	61c6 <svcMutexWait+0x6e>
    617a:	4b16      	ldr	r3, [pc, #88]	; (61d4 <svcMutexWait+0x7c>)
    617c:	4299      	cmp	r1, r3
    617e:	d824      	bhi.n	61ca <svcMutexWait+0x72>
    6180:	20fa      	movs	r0, #250	; 0xfa
    6182:	4b15      	ldr	r3, [pc, #84]	; (61d8 <svcMutexWait+0x80>)
    6184:	0080      	lsls	r0, r0, #2
    6186:	4341      	muls	r1, r0
    6188:	681b      	ldr	r3, [r3, #0]
    618a:	9301      	str	r3, [sp, #4]
    618c:	3b01      	subs	r3, #1
    618e:	1858      	adds	r0, r3, r1
    6190:	9901      	ldr	r1, [sp, #4]
    6192:	f7fe f919 	bl	43c8 <__aeabi_uidiv>
    6196:	4b11      	ldr	r3, [pc, #68]	; (61dc <svcMutexWait+0x84>)
    6198:	0019      	movs	r1, r3
    619a:	4298      	cmp	r0, r3
    619c:	d917      	bls.n	61ce <svcMutexWait+0x76>
    619e:	0020      	movs	r0, r4
    61a0:	f000 ff86 	bl	70b0 <rt_mut_wait>
    61a4:	0003      	movs	r3, r0
    61a6:	2801      	cmp	r0, #1
    61a8:	d108      	bne.n	61bc <svcMutexWait+0x64>
    61aa:	20c1      	movs	r0, #193	; 0xc1
    61ac:	e7df      	b.n	616e <svcMutexWait+0x16>
    61ae:	2100      	movs	r1, #0
    61b0:	0020      	movs	r0, r4
    61b2:	f000 ff7d 	bl	70b0 <rt_mut_wait>
    61b6:	0003      	movs	r3, r0
    61b8:	2801      	cmp	r0, #1
    61ba:	d002      	beq.n	61c2 <svcMutexWait+0x6a>
    61bc:	2000      	movs	r0, #0
    61be:	2bff      	cmp	r3, #255	; 0xff
    61c0:	d1d5      	bne.n	616e <svcMutexWait+0x16>
    61c2:	2081      	movs	r0, #129	; 0x81
    61c4:	e7d3      	b.n	616e <svcMutexWait+0x16>
    61c6:	4906      	ldr	r1, [pc, #24]	; (61e0 <svcMutexWait+0x88>)
    61c8:	e7e9      	b.n	619e <svcMutexWait+0x46>
    61ca:	4904      	ldr	r1, [pc, #16]	; (61dc <svcMutexWait+0x84>)
    61cc:	e7e7      	b.n	619e <svcMutexWait+0x46>
    61ce:	b281      	uxth	r1, r0
    61d0:	e7e5      	b.n	619e <svcMutexWait+0x46>
    61d2:	46c0      	nop			; (mov r8, r8)
    61d4:	003d0900 	.word	0x003d0900
    61d8:	000086c0 	.word	0x000086c0
    61dc:	0000fffe 	.word	0x0000fffe
    61e0:	0000ffff 	.word	0x0000ffff

000061e4 <svcMutexRelease>:
    61e4:	b510      	push	{r4, lr}
    61e6:	2380      	movs	r3, #128	; 0x80
    61e8:	0782      	lsls	r2, r0, #30
    61ea:	d104      	bne.n	61f6 <svcMutexRelease+0x12>
    61ec:	2800      	cmp	r0, #0
    61ee:	d002      	beq.n	61f6 <svcMutexRelease+0x12>
    61f0:	7802      	ldrb	r2, [r0, #0]
    61f2:	2a03      	cmp	r2, #3
    61f4:	d001      	beq.n	61fa <svcMutexRelease+0x16>
    61f6:	0018      	movs	r0, r3
    61f8:	bd10      	pop	{r4, pc}
    61fa:	f000 fed5 	bl	6fa8 <rt_mut_release>
    61fe:	2381      	movs	r3, #129	; 0x81
    6200:	28ff      	cmp	r0, #255	; 0xff
    6202:	d0f8      	beq.n	61f6 <svcMutexRelease+0x12>
    6204:	2300      	movs	r3, #0
    6206:	e7f6      	b.n	61f6 <svcMutexRelease+0x12>

00006208 <svcMutexDelete>:
    6208:	b510      	push	{r4, lr}
    620a:	2380      	movs	r3, #128	; 0x80
    620c:	0782      	lsls	r2, r0, #30
    620e:	d104      	bne.n	621a <svcMutexDelete+0x12>
    6210:	2800      	cmp	r0, #0
    6212:	d002      	beq.n	621a <svcMutexDelete+0x12>
    6214:	7802      	ldrb	r2, [r0, #0]
    6216:	2a03      	cmp	r2, #3
    6218:	d001      	beq.n	621e <svcMutexDelete+0x16>
    621a:	0018      	movs	r0, r3
    621c:	bd10      	pop	{r4, pc}
    621e:	f000 fe53 	bl	6ec8 <rt_mut_delete>
    6222:	2300      	movs	r3, #0
    6224:	e7f9      	b.n	621a <svcMutexDelete+0x12>
    6226:	46c0      	nop			; (mov r8, r8)

00006228 <osMutexCreate>:
    6228:	b5b0      	push	{r4, r5, r7, lr}
    622a:	f3ef 8405 	mrs	r4, IPSR
    622e:	2c00      	cmp	r4, #0
    6230:	d119      	bne.n	6266 <osMutexCreate+0x3e>
    6232:	f3ef 8414 	mrs	r4, CONTROL
    6236:	07e4      	lsls	r4, r4, #31
    6238:	d411      	bmi.n	625e <osMutexCreate+0x36>
    623a:	4c0c      	ldr	r4, [pc, #48]	; (626c <osMutexCreate+0x44>)
    623c:	7824      	ldrb	r4, [r4, #0]
    623e:	2c00      	cmp	r4, #0
    6240:	d10d      	bne.n	625e <osMutexCreate+0x36>
    6242:	2800      	cmp	r0, #0
    6244:	d00f      	beq.n	6266 <osMutexCreate+0x3e>
    6246:	6804      	ldr	r4, [r0, #0]
    6248:	2c00      	cmp	r4, #0
    624a:	d00c      	beq.n	6266 <osMutexCreate+0x3e>
    624c:	7823      	ldrb	r3, [r4, #0]
    624e:	2000      	movs	r0, #0
    6250:	2b00      	cmp	r3, #0
    6252:	d107      	bne.n	6264 <osMutexCreate+0x3c>
    6254:	0020      	movs	r0, r4
    6256:	f000 fe2f 	bl	6eb8 <rt_mut_init>
    625a:	0020      	movs	r0, r4
    625c:	e002      	b.n	6264 <osMutexCreate+0x3c>
    625e:	4f04      	ldr	r7, [pc, #16]	; (6270 <osMutexCreate+0x48>)
    6260:	46bc      	mov	ip, r7
    6262:	df00      	svc	0
    6264:	bdb0      	pop	{r4, r5, r7, pc}
    6266:	2000      	movs	r0, #0
    6268:	e7fc      	b.n	6264 <osMutexCreate+0x3c>
    626a:	46c0      	nop			; (mov r8, r8)
    626c:	2000602d 	.word	0x2000602d
    6270:	00006139 	.word	0x00006139

00006274 <osMutexWait>:
    6274:	b5b0      	push	{r4, r5, r7, lr}
    6276:	0005      	movs	r5, r0
    6278:	f3ef 8405 	mrs	r4, IPSR
    627c:	2082      	movs	r0, #130	; 0x82
    627e:	2c00      	cmp	r4, #0
    6280:	d000      	beq.n	6284 <osMutexWait+0x10>
    6282:	bdb0      	pop	{r4, r5, r7, pc}
    6284:	0028      	movs	r0, r5
    6286:	4f02      	ldr	r7, [pc, #8]	; (6290 <osMutexWait+0x1c>)
    6288:	46bc      	mov	ip, r7
    628a:	df00      	svc	0
    628c:	e7f9      	b.n	6282 <osMutexWait+0xe>
    628e:	0000      	.short	0x0000
    6290:	00006159 	.word	0x00006159

00006294 <osMutexRelease>:
    6294:	b5b0      	push	{r4, r5, r7, lr}
    6296:	0005      	movs	r5, r0
    6298:	f3ef 8405 	mrs	r4, IPSR
    629c:	2082      	movs	r0, #130	; 0x82
    629e:	2c00      	cmp	r4, #0
    62a0:	d000      	beq.n	62a4 <osMutexRelease+0x10>
    62a2:	bdb0      	pop	{r4, r5, r7, pc}
    62a4:	0028      	movs	r0, r5
    62a6:	4f02      	ldr	r7, [pc, #8]	; (62b0 <osMutexRelease+0x1c>)
    62a8:	46bc      	mov	ip, r7
    62aa:	df00      	svc	0
    62ac:	e7f9      	b.n	62a2 <osMutexRelease+0xe>
    62ae:	0000      	.short	0x0000
    62b0:	000061e5 	.word	0x000061e5

000062b4 <osMutexDelete>:
    62b4:	b5b0      	push	{r4, r5, r7, lr}
    62b6:	0005      	movs	r5, r0
    62b8:	f3ef 8405 	mrs	r4, IPSR
    62bc:	2082      	movs	r0, #130	; 0x82
    62be:	2c00      	cmp	r4, #0
    62c0:	d000      	beq.n	62c4 <osMutexDelete+0x10>
    62c2:	bdb0      	pop	{r4, r5, r7, pc}
    62c4:	0028      	movs	r0, r5
    62c6:	4f02      	ldr	r7, [pc, #8]	; (62d0 <osMutexDelete+0x1c>)
    62c8:	46bc      	mov	ip, r7
    62ca:	df00      	svc	0
    62cc:	e7f9      	b.n	62c2 <osMutexDelete+0xe>
    62ce:	0000      	.short	0x0000
    62d0:	00006209 	.word	0x00006209

000062d4 <svcSemaphoreCreate>:
    62d4:	b510      	push	{r4, lr}
    62d6:	2800      	cmp	r0, #0
    62d8:	d00e      	beq.n	62f8 <svcSemaphoreCreate+0x24>
    62da:	6804      	ldr	r4, [r0, #0]
    62dc:	2c00      	cmp	r4, #0
    62de:	d00b      	beq.n	62f8 <svcSemaphoreCreate+0x24>
    62e0:	7823      	ldrb	r3, [r4, #0]
    62e2:	2b00      	cmp	r3, #0
    62e4:	d108      	bne.n	62f8 <svcSemaphoreCreate+0x24>
    62e6:	4b05      	ldr	r3, [pc, #20]	; (62fc <svcSemaphoreCreate+0x28>)
    62e8:	4299      	cmp	r1, r3
    62ea:	dc05      	bgt.n	62f8 <svcSemaphoreCreate+0x24>
    62ec:	0020      	movs	r0, r4
    62ee:	b289      	uxth	r1, r1
    62f0:	f000 ff4a 	bl	7188 <rt_sem_init>
    62f4:	0020      	movs	r0, r4
    62f6:	bd10      	pop	{r4, pc}
    62f8:	2000      	movs	r0, #0
    62fa:	e7fc      	b.n	62f6 <svcSemaphoreCreate+0x22>
    62fc:	0000ffff 	.word	0x0000ffff

00006300 <svcSemaphoreWait>:
    6300:	b510      	push	{r4, lr}
    6302:	0004      	movs	r4, r0
    6304:	b082      	sub	sp, #8
    6306:	0783      	lsls	r3, r0, #30
    6308:	d111      	bne.n	632e <svcSemaphoreWait+0x2e>
    630a:	2800      	cmp	r0, #0
    630c:	d00f      	beq.n	632e <svcSemaphoreWait+0x2e>
    630e:	7803      	ldrb	r3, [r0, #0]
    6310:	2b02      	cmp	r3, #2
    6312:	d10c      	bne.n	632e <svcSemaphoreWait+0x2e>
    6314:	2300      	movs	r3, #0
    6316:	2900      	cmp	r1, #0
    6318:	d10c      	bne.n	6334 <svcSemaphoreWait+0x34>
    631a:	0019      	movs	r1, r3
    631c:	0020      	movs	r0, r4
    631e:	f000 ff83 	bl	7228 <rt_sem_wait>
    6322:	2801      	cmp	r0, #1
    6324:	d023      	beq.n	636e <svcSemaphoreWait+0x6e>
    6326:	8860      	ldrh	r0, [r4, #2]
    6328:	3001      	adds	r0, #1
    632a:	b002      	add	sp, #8
    632c:	bd10      	pop	{r4, pc}
    632e:	2001      	movs	r0, #1
    6330:	4240      	negs	r0, r0
    6332:	e7fa      	b.n	632a <svcSemaphoreWait+0x2a>
    6334:	1c4b      	adds	r3, r1, #1
    6336:	d01c      	beq.n	6372 <svcSemaphoreWait+0x72>
    6338:	4b0f      	ldr	r3, [pc, #60]	; (6378 <svcSemaphoreWait+0x78>)
    633a:	4299      	cmp	r1, r3
    633c:	d810      	bhi.n	6360 <svcSemaphoreWait+0x60>
    633e:	20fa      	movs	r0, #250	; 0xfa
    6340:	4b0e      	ldr	r3, [pc, #56]	; (637c <svcSemaphoreWait+0x7c>)
    6342:	0080      	lsls	r0, r0, #2
    6344:	4341      	muls	r1, r0
    6346:	681b      	ldr	r3, [r3, #0]
    6348:	9301      	str	r3, [sp, #4]
    634a:	3b01      	subs	r3, #1
    634c:	1858      	adds	r0, r3, r1
    634e:	9901      	ldr	r1, [sp, #4]
    6350:	f7fe f83a 	bl	43c8 <__aeabi_uidiv>
    6354:	4a0a      	ldr	r2, [pc, #40]	; (6380 <svcSemaphoreWait+0x80>)
    6356:	0013      	movs	r3, r2
    6358:	4290      	cmp	r0, r2
    635a:	d8de      	bhi.n	631a <svcSemaphoreWait+0x1a>
    635c:	b283      	uxth	r3, r0
    635e:	e7dc      	b.n	631a <svcSemaphoreWait+0x1a>
    6360:	4b07      	ldr	r3, [pc, #28]	; (6380 <svcSemaphoreWait+0x80>)
    6362:	0020      	movs	r0, r4
    6364:	0019      	movs	r1, r3
    6366:	f000 ff5f 	bl	7228 <rt_sem_wait>
    636a:	2801      	cmp	r0, #1
    636c:	d1db      	bne.n	6326 <svcSemaphoreWait+0x26>
    636e:	2000      	movs	r0, #0
    6370:	e7db      	b.n	632a <svcSemaphoreWait+0x2a>
    6372:	4b04      	ldr	r3, [pc, #16]	; (6384 <svcSemaphoreWait+0x84>)
    6374:	e7d1      	b.n	631a <svcSemaphoreWait+0x1a>
    6376:	46c0      	nop			; (mov r8, r8)
    6378:	003d0900 	.word	0x003d0900
    637c:	000086c0 	.word	0x000086c0
    6380:	0000fffe 	.word	0x0000fffe
    6384:	0000ffff 	.word	0x0000ffff

00006388 <svcSemaphoreRelease>:
    6388:	b510      	push	{r4, lr}
    638a:	2380      	movs	r3, #128	; 0x80
    638c:	0782      	lsls	r2, r0, #30
    638e:	d104      	bne.n	639a <svcSemaphoreRelease+0x12>
    6390:	2800      	cmp	r0, #0
    6392:	d002      	beq.n	639a <svcSemaphoreRelease+0x12>
    6394:	7802      	ldrb	r2, [r0, #0]
    6396:	2a02      	cmp	r2, #2
    6398:	d001      	beq.n	639e <svcSemaphoreRelease+0x16>
    639a:	0018      	movs	r0, r3
    639c:	bd10      	pop	{r4, pc}
    639e:	8841      	ldrh	r1, [r0, #2]
    63a0:	4a03      	ldr	r2, [pc, #12]	; (63b0 <svcSemaphoreRelease+0x28>)
    63a2:	3301      	adds	r3, #1
    63a4:	4291      	cmp	r1, r2
    63a6:	d0f8      	beq.n	639a <svcSemaphoreRelease+0x12>
    63a8:	f000 ff28 	bl	71fc <rt_sem_send>
    63ac:	2300      	movs	r3, #0
    63ae:	e7f4      	b.n	639a <svcSemaphoreRelease+0x12>
    63b0:	0000ffff 	.word	0x0000ffff

000063b4 <svcSemaphoreDelete>:
    63b4:	b510      	push	{r4, lr}
    63b6:	2380      	movs	r3, #128	; 0x80
    63b8:	0782      	lsls	r2, r0, #30
    63ba:	d104      	bne.n	63c6 <svcSemaphoreDelete+0x12>
    63bc:	2800      	cmp	r0, #0
    63be:	d002      	beq.n	63c6 <svcSemaphoreDelete+0x12>
    63c0:	7802      	ldrb	r2, [r0, #0]
    63c2:	2a02      	cmp	r2, #2
    63c4:	d001      	beq.n	63ca <svcSemaphoreDelete+0x16>
    63c6:	0018      	movs	r0, r3
    63c8:	bd10      	pop	{r4, pc}
    63ca:	f000 fee3 	bl	7194 <rt_sem_delete>
    63ce:	2300      	movs	r3, #0
    63d0:	e7f9      	b.n	63c6 <svcSemaphoreDelete+0x12>
    63d2:	46c0      	nop			; (mov r8, r8)

000063d4 <isrSemaphoreRelease>:
    63d4:	b510      	push	{r4, lr}
    63d6:	2380      	movs	r3, #128	; 0x80
    63d8:	0782      	lsls	r2, r0, #30
    63da:	d104      	bne.n	63e6 <isrSemaphoreRelease+0x12>
    63dc:	2800      	cmp	r0, #0
    63de:	d002      	beq.n	63e6 <isrSemaphoreRelease+0x12>
    63e0:	7802      	ldrb	r2, [r0, #0]
    63e2:	2a02      	cmp	r2, #2
    63e4:	d001      	beq.n	63ea <isrSemaphoreRelease+0x16>
    63e6:	0018      	movs	r0, r3
    63e8:	bd10      	pop	{r4, pc}
    63ea:	8841      	ldrh	r1, [r0, #2]
    63ec:	4a03      	ldr	r2, [pc, #12]	; (63fc <isrSemaphoreRelease+0x28>)
    63ee:	3301      	adds	r3, #1
    63f0:	4291      	cmp	r1, r2
    63f2:	d0f8      	beq.n	63e6 <isrSemaphoreRelease+0x12>
    63f4:	f000 ff3a 	bl	726c <isr_sem_send>
    63f8:	2300      	movs	r3, #0
    63fa:	e7f4      	b.n	63e6 <isrSemaphoreRelease+0x12>
    63fc:	0000ffff 	.word	0x0000ffff

00006400 <osSemaphoreCreate>:
    6400:	b5b0      	push	{r4, r5, r7, lr}
    6402:	f3ef 8405 	mrs	r4, IPSR
    6406:	2c00      	cmp	r4, #0
    6408:	d11c      	bne.n	6444 <osSemaphoreCreate+0x44>
    640a:	f3ef 8414 	mrs	r4, CONTROL
    640e:	07e4      	lsls	r4, r4, #31
    6410:	d503      	bpl.n	641a <osSemaphoreCreate+0x1a>
    6412:	4f0f      	ldr	r7, [pc, #60]	; (6450 <osSemaphoreCreate+0x50>)
    6414:	46bc      	mov	ip, r7
    6416:	df00      	svc	0
    6418:	bdb0      	pop	{r4, r5, r7, pc}
    641a:	4c0b      	ldr	r4, [pc, #44]	; (6448 <osSemaphoreCreate+0x48>)
    641c:	7824      	ldrb	r4, [r4, #0]
    641e:	2c00      	cmp	r4, #0
    6420:	d1f7      	bne.n	6412 <osSemaphoreCreate+0x12>
    6422:	2800      	cmp	r0, #0
    6424:	d00e      	beq.n	6444 <osSemaphoreCreate+0x44>
    6426:	6804      	ldr	r4, [r0, #0]
    6428:	2c00      	cmp	r4, #0
    642a:	d00b      	beq.n	6444 <osSemaphoreCreate+0x44>
    642c:	7823      	ldrb	r3, [r4, #0]
    642e:	2b00      	cmp	r3, #0
    6430:	d108      	bne.n	6444 <osSemaphoreCreate+0x44>
    6432:	4b06      	ldr	r3, [pc, #24]	; (644c <osSemaphoreCreate+0x4c>)
    6434:	4299      	cmp	r1, r3
    6436:	dc05      	bgt.n	6444 <osSemaphoreCreate+0x44>
    6438:	0020      	movs	r0, r4
    643a:	b289      	uxth	r1, r1
    643c:	f000 fea4 	bl	7188 <rt_sem_init>
    6440:	0020      	movs	r0, r4
    6442:	e7e9      	b.n	6418 <osSemaphoreCreate+0x18>
    6444:	2000      	movs	r0, #0
    6446:	e7e7      	b.n	6418 <osSemaphoreCreate+0x18>
    6448:	2000602d 	.word	0x2000602d
    644c:	0000ffff 	.word	0x0000ffff
    6450:	000062d5 	.word	0x000062d5

00006454 <osSemaphoreWait>:
    6454:	b590      	push	{r4, r7, lr}
    6456:	f3ef 8405 	mrs	r4, IPSR
    645a:	2c00      	cmp	r4, #0
    645c:	d103      	bne.n	6466 <osSemaphoreWait+0x12>
    645e:	4f03      	ldr	r7, [pc, #12]	; (646c <osSemaphoreWait+0x18>)
    6460:	46bc      	mov	ip, r7
    6462:	df00      	svc	0
    6464:	bd90      	pop	{r4, r7, pc}
    6466:	2001      	movs	r0, #1
    6468:	4240      	negs	r0, r0
    646a:	e7fb      	b.n	6464 <osSemaphoreWait+0x10>
    646c:	00006301 	.word	0x00006301

00006470 <osSemaphoreRelease>:
    6470:	b5b0      	push	{r4, r5, r7, lr}
    6472:	f3ef 8405 	mrs	r4, IPSR
    6476:	2c00      	cmp	r4, #0
    6478:	d105      	bne.n	6486 <osSemaphoreRelease+0x16>
    647a:	4f0c      	ldr	r7, [pc, #48]	; (64ac <osSemaphoreRelease+0x3c>)
    647c:	46bc      	mov	ip, r7
    647e:	df00      	svc	0
    6480:	0003      	movs	r3, r0
    6482:	0018      	movs	r0, r3
    6484:	bdb0      	pop	{r4, r5, r7, pc}
    6486:	2380      	movs	r3, #128	; 0x80
    6488:	0782      	lsls	r2, r0, #30
    648a:	d1fa      	bne.n	6482 <osSemaphoreRelease+0x12>
    648c:	2800      	cmp	r0, #0
    648e:	d0f8      	beq.n	6482 <osSemaphoreRelease+0x12>
    6490:	7802      	ldrb	r2, [r0, #0]
    6492:	2a02      	cmp	r2, #2
    6494:	d1f5      	bne.n	6482 <osSemaphoreRelease+0x12>
    6496:	8841      	ldrh	r1, [r0, #2]
    6498:	4a03      	ldr	r2, [pc, #12]	; (64a8 <osSemaphoreRelease+0x38>)
    649a:	3301      	adds	r3, #1
    649c:	4291      	cmp	r1, r2
    649e:	d0f0      	beq.n	6482 <osSemaphoreRelease+0x12>
    64a0:	f000 fee4 	bl	726c <isr_sem_send>
    64a4:	2300      	movs	r3, #0
    64a6:	e7ec      	b.n	6482 <osSemaphoreRelease+0x12>
    64a8:	0000ffff 	.word	0x0000ffff
    64ac:	00006389 	.word	0x00006389

000064b0 <osSemaphoreDelete>:
    64b0:	b5b0      	push	{r4, r5, r7, lr}
    64b2:	0005      	movs	r5, r0
    64b4:	f3ef 8405 	mrs	r4, IPSR
    64b8:	2082      	movs	r0, #130	; 0x82
    64ba:	2c00      	cmp	r4, #0
    64bc:	d000      	beq.n	64c0 <osSemaphoreDelete+0x10>
    64be:	bdb0      	pop	{r4, r5, r7, pc}
    64c0:	0028      	movs	r0, r5
    64c2:	4f02      	ldr	r7, [pc, #8]	; (64cc <osSemaphoreDelete+0x1c>)
    64c4:	46bc      	mov	ip, r7
    64c6:	df00      	svc	0
    64c8:	e7f9      	b.n	64be <osSemaphoreDelete+0xe>
    64ca:	0000      	.short	0x0000
    64cc:	000063b5 	.word	0x000063b5

000064d0 <svcPoolCreate>:
    64d0:	b510      	push	{r4, lr}
    64d2:	1e04      	subs	r4, r0, #0
    64d4:	d011      	beq.n	64fa <svcPoolCreate+0x2a>
    64d6:	6801      	ldr	r1, [r0, #0]
    64d8:	2900      	cmp	r1, #0
    64da:	d00e      	beq.n	64fa <svcPoolCreate+0x2a>
    64dc:	6842      	ldr	r2, [r0, #4]
    64de:	2a00      	cmp	r2, #0
    64e0:	d00b      	beq.n	64fa <svcPoolCreate+0x2a>
    64e2:	6880      	ldr	r0, [r0, #8]
    64e4:	2800      	cmp	r0, #0
    64e6:	d008      	beq.n	64fa <svcPoolCreate+0x2a>
    64e8:	2303      	movs	r3, #3
    64ea:	3203      	adds	r2, #3
    64ec:	439a      	bics	r2, r3
    64ee:	4351      	muls	r1, r2
    64f0:	310c      	adds	r1, #12
    64f2:	f000 fc81 	bl	6df8 <_init_box>
    64f6:	68a0      	ldr	r0, [r4, #8]
    64f8:	bd10      	pop	{r4, pc}
    64fa:	2000      	movs	r0, #0
    64fc:	e7fc      	b.n	64f8 <svcPoolCreate+0x28>
    64fe:	46c0      	nop			; (mov r8, r8)

00006500 <sysPoolAlloc>:
    6500:	b510      	push	{r4, lr}
    6502:	2800      	cmp	r0, #0
    6504:	d002      	beq.n	650c <sysPoolAlloc+0xc>
    6506:	f000 fca3 	bl	6e50 <rt_alloc_box>
    650a:	bd10      	pop	{r4, pc}
    650c:	2000      	movs	r0, #0
    650e:	e7fc      	b.n	650a <sysPoolAlloc+0xa>

00006510 <sysPoolFree>:
    6510:	b510      	push	{r4, lr}
    6512:	2380      	movs	r3, #128	; 0x80
    6514:	2800      	cmp	r0, #0
    6516:	d006      	beq.n	6526 <sysPoolFree+0x16>
    6518:	f000 fcba 	bl	6e90 <rt_free_box>
    651c:	1e42      	subs	r2, r0, #1
    651e:	4190      	sbcs	r0, r2
    6520:	2386      	movs	r3, #134	; 0x86
    6522:	4240      	negs	r0, r0
    6524:	4003      	ands	r3, r0
    6526:	0018      	movs	r0, r3
    6528:	bd10      	pop	{r4, pc}
    652a:	46c0      	nop			; (mov r8, r8)

0000652c <osPoolCreate>:
    652c:	b5b0      	push	{r4, r5, r7, lr}
    652e:	0004      	movs	r4, r0
    6530:	f3ef 8005 	mrs	r0, IPSR
    6534:	2800      	cmp	r0, #0
    6536:	d120      	bne.n	657a <osPoolCreate+0x4e>
    6538:	f3ef 8014 	mrs	r0, CONTROL
    653c:	07c0      	lsls	r0, r0, #31
    653e:	d504      	bpl.n	654a <osPoolCreate+0x1e>
    6540:	0020      	movs	r0, r4
    6542:	4f10      	ldr	r7, [pc, #64]	; (6584 <osPoolCreate+0x58>)
    6544:	46bc      	mov	ip, r7
    6546:	df00      	svc	0
    6548:	bdb0      	pop	{r4, r5, r7, pc}
    654a:	480d      	ldr	r0, [pc, #52]	; (6580 <osPoolCreate+0x54>)
    654c:	7800      	ldrb	r0, [r0, #0]
    654e:	2800      	cmp	r0, #0
    6550:	d1f6      	bne.n	6540 <osPoolCreate+0x14>
    6552:	2c00      	cmp	r4, #0
    6554:	d011      	beq.n	657a <osPoolCreate+0x4e>
    6556:	6821      	ldr	r1, [r4, #0]
    6558:	2900      	cmp	r1, #0
    655a:	d00e      	beq.n	657a <osPoolCreate+0x4e>
    655c:	6862      	ldr	r2, [r4, #4]
    655e:	2a00      	cmp	r2, #0
    6560:	d00b      	beq.n	657a <osPoolCreate+0x4e>
    6562:	68a0      	ldr	r0, [r4, #8]
    6564:	2800      	cmp	r0, #0
    6566:	d008      	beq.n	657a <osPoolCreate+0x4e>
    6568:	2303      	movs	r3, #3
    656a:	3203      	adds	r2, #3
    656c:	439a      	bics	r2, r3
    656e:	4351      	muls	r1, r2
    6570:	310c      	adds	r1, #12
    6572:	f000 fc41 	bl	6df8 <_init_box>
    6576:	68a0      	ldr	r0, [r4, #8]
    6578:	e7e6      	b.n	6548 <osPoolCreate+0x1c>
    657a:	2000      	movs	r0, #0
    657c:	e7e4      	b.n	6548 <osPoolCreate+0x1c>
    657e:	46c0      	nop			; (mov r8, r8)
    6580:	2000602d 	.word	0x2000602d
    6584:	000064d1 	.word	0x000064d1

00006588 <osPoolAlloc>:
    6588:	b5b0      	push	{r4, r5, r7, lr}
    658a:	f3ef 8405 	mrs	r4, IPSR
    658e:	2c00      	cmp	r4, #0
    6590:	d103      	bne.n	659a <osPoolAlloc+0x12>
    6592:	f3ef 8414 	mrs	r4, CONTROL
    6596:	07e4      	lsls	r4, r4, #31
    6598:	d404      	bmi.n	65a4 <osPoolAlloc+0x1c>
    659a:	2800      	cmp	r0, #0
    659c:	d006      	beq.n	65ac <osPoolAlloc+0x24>
    659e:	f000 fc57 	bl	6e50 <rt_alloc_box>
    65a2:	bdb0      	pop	{r4, r5, r7, pc}
    65a4:	4f02      	ldr	r7, [pc, #8]	; (65b0 <osPoolAlloc+0x28>)
    65a6:	46bc      	mov	ip, r7
    65a8:	df00      	svc	0
    65aa:	e7fa      	b.n	65a2 <osPoolAlloc+0x1a>
    65ac:	2000      	movs	r0, #0
    65ae:	e7f8      	b.n	65a2 <osPoolAlloc+0x1a>
    65b0:	00006501 	.word	0x00006501

000065b4 <osPoolCAlloc>:
    65b4:	b5b0      	push	{r4, r5, r7, lr}
    65b6:	0004      	movs	r4, r0
    65b8:	f3ef 8005 	mrs	r0, IPSR
    65bc:	2800      	cmp	r0, #0
    65be:	d103      	bne.n	65c8 <osPoolCAlloc+0x14>
    65c0:	f3ef 8014 	mrs	r0, CONTROL
    65c4:	07c0      	lsls	r0, r0, #31
    65c6:	d410      	bmi.n	65ea <osPoolCAlloc+0x36>
    65c8:	2c00      	cmp	r4, #0
    65ca:	d015      	beq.n	65f8 <osPoolCAlloc+0x44>
    65cc:	0020      	movs	r0, r4
    65ce:	f000 fc3f 	bl	6e50 <rt_alloc_box>
    65d2:	2800      	cmp	r0, #0
    65d4:	d010      	beq.n	65f8 <osPoolCAlloc+0x44>
    65d6:	68a3      	ldr	r3, [r4, #8]
    65d8:	2b00      	cmp	r3, #0
    65da:	d005      	beq.n	65e8 <osPoolCAlloc+0x34>
    65dc:	0002      	movs	r2, r0
    65de:	2100      	movs	r1, #0
    65e0:	3b04      	subs	r3, #4
    65e2:	c202      	stmia	r2!, {r1}
    65e4:	2b00      	cmp	r3, #0
    65e6:	d1fb      	bne.n	65e0 <osPoolCAlloc+0x2c>
    65e8:	bdb0      	pop	{r4, r5, r7, pc}
    65ea:	0020      	movs	r0, r4
    65ec:	4f03      	ldr	r7, [pc, #12]	; (65fc <osPoolCAlloc+0x48>)
    65ee:	46bc      	mov	ip, r7
    65f0:	df00      	svc	0
    65f2:	2c00      	cmp	r4, #0
    65f4:	d1ed      	bne.n	65d2 <osPoolCAlloc+0x1e>
    65f6:	e7f7      	b.n	65e8 <osPoolCAlloc+0x34>
    65f8:	2000      	movs	r0, #0
    65fa:	e7f5      	b.n	65e8 <osPoolCAlloc+0x34>
    65fc:	00006501 	.word	0x00006501

00006600 <osPoolFree>:
    6600:	b5b0      	push	{r4, r5, r7, lr}
    6602:	f3ef 8405 	mrs	r4, IPSR
    6606:	2c00      	cmp	r4, #0
    6608:	d103      	bne.n	6612 <osPoolFree+0x12>
    660a:	f3ef 8414 	mrs	r4, CONTROL
    660e:	07e4      	lsls	r4, r4, #31
    6610:	d40a      	bmi.n	6628 <osPoolFree+0x28>
    6612:	2800      	cmp	r0, #0
    6614:	d00c      	beq.n	6630 <osPoolFree+0x30>
    6616:	f000 fc3b 	bl	6e90 <rt_free_box>
    661a:	0003      	movs	r3, r0
    661c:	1e5a      	subs	r2, r3, #1
    661e:	4193      	sbcs	r3, r2
    6620:	2086      	movs	r0, #134	; 0x86
    6622:	425b      	negs	r3, r3
    6624:	4018      	ands	r0, r3
    6626:	bdb0      	pop	{r4, r5, r7, pc}
    6628:	4f02      	ldr	r7, [pc, #8]	; (6634 <osPoolFree+0x34>)
    662a:	46bc      	mov	ip, r7
    662c:	df00      	svc	0
    662e:	e7fa      	b.n	6626 <osPoolFree+0x26>
    6630:	2080      	movs	r0, #128	; 0x80
    6632:	e7f8      	b.n	6626 <osPoolFree+0x26>
    6634:	00006511 	.word	0x00006511

00006638 <svcMessageCreate>:
    6638:	b510      	push	{r4, lr}
    663a:	1e04      	subs	r4, r0, #0
    663c:	d00f      	beq.n	665e <svcMessageCreate+0x26>
    663e:	6801      	ldr	r1, [r0, #0]
    6640:	2900      	cmp	r1, #0
    6642:	d00c      	beq.n	665e <svcMessageCreate+0x26>
    6644:	6840      	ldr	r0, [r0, #4]
    6646:	2800      	cmp	r0, #0
    6648:	d009      	beq.n	665e <svcMessageCreate+0x26>
    664a:	7803      	ldrb	r3, [r0, #0]
    664c:	2b00      	cmp	r3, #0
    664e:	d106      	bne.n	665e <svcMessageCreate+0x26>
    6650:	3104      	adds	r1, #4
    6652:	0089      	lsls	r1, r1, #2
    6654:	b289      	uxth	r1, r1
    6656:	f000 fe2b 	bl	72b0 <rt_mbx_init>
    665a:	6860      	ldr	r0, [r4, #4]
    665c:	bd10      	pop	{r4, pc}
    665e:	2000      	movs	r0, #0
    6660:	e7fc      	b.n	665c <svcMessageCreate+0x24>
    6662:	46c0      	nop			; (mov r8, r8)

00006664 <svcMessagePut>:
    6664:	b570      	push	{r4, r5, r6, lr}
    6666:	0004      	movs	r4, r0
    6668:	b082      	sub	sp, #8
    666a:	000e      	movs	r6, r1
    666c:	0015      	movs	r5, r2
    666e:	2800      	cmp	r0, #0
    6670:	d005      	beq.n	667e <svcMessagePut+0x1a>
    6672:	7803      	ldrb	r3, [r0, #0]
    6674:	2080      	movs	r0, #128	; 0x80
    6676:	2b01      	cmp	r3, #1
    6678:	d003      	beq.n	6682 <svcMessagePut+0x1e>
    667a:	b002      	add	sp, #8
    667c:	bd70      	pop	{r4, r5, r6, pc}
    667e:	2080      	movs	r0, #128	; 0x80
    6680:	e7fb      	b.n	667a <svcMessagePut+0x16>
    6682:	2200      	movs	r2, #0
    6684:	2d00      	cmp	r5, #0
    6686:	d014      	beq.n	66b2 <svcMessagePut+0x4e>
    6688:	1c6b      	adds	r3, r5, #1
    668a:	d01f      	beq.n	66cc <svcMessagePut+0x68>
    668c:	4b11      	ldr	r3, [pc, #68]	; (66d4 <svcMessagePut+0x70>)
    668e:	429d      	cmp	r5, r3
    6690:	d81e      	bhi.n	66d0 <svcMessagePut+0x6c>
    6692:	20fa      	movs	r0, #250	; 0xfa
    6694:	4b10      	ldr	r3, [pc, #64]	; (66d8 <svcMessagePut+0x74>)
    6696:	0080      	lsls	r0, r0, #2
    6698:	4368      	muls	r0, r5
    669a:	681b      	ldr	r3, [r3, #0]
    669c:	9301      	str	r3, [sp, #4]
    669e:	3b01      	subs	r3, #1
    66a0:	18c0      	adds	r0, r0, r3
    66a2:	9901      	ldr	r1, [sp, #4]
    66a4:	f7fd fe90 	bl	43c8 <__aeabi_uidiv>
    66a8:	4b0c      	ldr	r3, [pc, #48]	; (66dc <svcMessagePut+0x78>)
    66aa:	001a      	movs	r2, r3
    66ac:	4298      	cmp	r0, r3
    66ae:	d800      	bhi.n	66b2 <svcMessagePut+0x4e>
    66b0:	b282      	uxth	r2, r0
    66b2:	0031      	movs	r1, r6
    66b4:	0020      	movs	r0, r4
    66b6:	f000 fe09 	bl	72cc <rt_mbx_send>
    66ba:	0003      	movs	r3, r0
    66bc:	2000      	movs	r0, #0
    66be:	2b01      	cmp	r3, #1
    66c0:	d1db      	bne.n	667a <svcMessagePut+0x16>
    66c2:	30c1      	adds	r0, #193	; 0xc1
    66c4:	2d00      	cmp	r5, #0
    66c6:	d1d8      	bne.n	667a <svcMessagePut+0x16>
    66c8:	3840      	subs	r0, #64	; 0x40
    66ca:	e7d6      	b.n	667a <svcMessagePut+0x16>
    66cc:	4a04      	ldr	r2, [pc, #16]	; (66e0 <svcMessagePut+0x7c>)
    66ce:	e7f0      	b.n	66b2 <svcMessagePut+0x4e>
    66d0:	4a02      	ldr	r2, [pc, #8]	; (66dc <svcMessagePut+0x78>)
    66d2:	e7ee      	b.n	66b2 <svcMessagePut+0x4e>
    66d4:	003d0900 	.word	0x003d0900
    66d8:	000086c0 	.word	0x000086c0
    66dc:	0000fffe 	.word	0x0000fffe
    66e0:	0000ffff 	.word	0x0000ffff

000066e4 <svcMessageGet>:
    66e4:	b510      	push	{r4, lr}
    66e6:	0004      	movs	r4, r0
    66e8:	b086      	sub	sp, #24
    66ea:	2800      	cmp	r0, #0
    66ec:	d002      	beq.n	66f4 <svcMessageGet+0x10>
    66ee:	7803      	ldrb	r3, [r0, #0]
    66f0:	2b01      	cmp	r3, #1
    66f2:	d005      	beq.n	6700 <svcMessageGet+0x1c>
    66f4:	2080      	movs	r0, #128	; 0x80
    66f6:	2100      	movs	r1, #0
    66f8:	2200      	movs	r2, #0
    66fa:	2300      	movs	r3, #0
    66fc:	b006      	add	sp, #24
    66fe:	bd10      	pop	{r4, pc}
    6700:	2900      	cmp	r1, #0
    6702:	d01c      	beq.n	673e <svcMessageGet+0x5a>
    6704:	1c4b      	adds	r3, r1, #1
    6706:	d02a      	beq.n	675e <svcMessageGet+0x7a>
    6708:	4b16      	ldr	r3, [pc, #88]	; (6764 <svcMessageGet+0x80>)
    670a:	4299      	cmp	r1, r3
    670c:	d820      	bhi.n	6750 <svcMessageGet+0x6c>
    670e:	20fa      	movs	r0, #250	; 0xfa
    6710:	4b15      	ldr	r3, [pc, #84]	; (6768 <svcMessageGet+0x84>)
    6712:	0080      	lsls	r0, r0, #2
    6714:	4341      	muls	r1, r0
    6716:	681b      	ldr	r3, [r3, #0]
    6718:	9301      	str	r3, [sp, #4]
    671a:	3b01      	subs	r3, #1
    671c:	1858      	adds	r0, r3, r1
    671e:	9901      	ldr	r1, [sp, #4]
    6720:	f7fd fe52 	bl	43c8 <__aeabi_uidiv>
    6724:	4b11      	ldr	r3, [pc, #68]	; (676c <svcMessageGet+0x88>)
    6726:	001a      	movs	r2, r3
    6728:	4298      	cmp	r0, r3
    672a:	d916      	bls.n	675a <svcMessageGet+0x76>
    672c:	a904      	add	r1, sp, #16
    672e:	0020      	movs	r0, r4
    6730:	f000 fe18 	bl	7364 <rt_mbx_wait>
    6734:	2801      	cmp	r0, #1
    6736:	d00d      	beq.n	6754 <svcMessageGet+0x70>
    6738:	2010      	movs	r0, #16
    673a:	9904      	ldr	r1, [sp, #16]
    673c:	e7dc      	b.n	66f8 <svcMessageGet+0x14>
    673e:	2200      	movs	r2, #0
    6740:	a904      	add	r1, sp, #16
    6742:	f000 fe0f 	bl	7364 <rt_mbx_wait>
    6746:	2801      	cmp	r0, #1
    6748:	d1f6      	bne.n	6738 <svcMessageGet+0x54>
    674a:	2000      	movs	r0, #0
    674c:	9904      	ldr	r1, [sp, #16]
    674e:	e7d3      	b.n	66f8 <svcMessageGet+0x14>
    6750:	4a06      	ldr	r2, [pc, #24]	; (676c <svcMessageGet+0x88>)
    6752:	e7eb      	b.n	672c <svcMessageGet+0x48>
    6754:	2040      	movs	r0, #64	; 0x40
    6756:	9904      	ldr	r1, [sp, #16]
    6758:	e7ce      	b.n	66f8 <svcMessageGet+0x14>
    675a:	b282      	uxth	r2, r0
    675c:	e7e6      	b.n	672c <svcMessageGet+0x48>
    675e:	4a04      	ldr	r2, [pc, #16]	; (6770 <svcMessageGet+0x8c>)
    6760:	e7e4      	b.n	672c <svcMessageGet+0x48>
    6762:	46c0      	nop			; (mov r8, r8)
    6764:	003d0900 	.word	0x003d0900
    6768:	000086c0 	.word	0x000086c0
    676c:	0000fffe 	.word	0x0000fffe
    6770:	0000ffff 	.word	0x0000ffff

00006774 <isrMessagePut>:
    6774:	b570      	push	{r4, r5, r6, lr}
    6776:	0004      	movs	r4, r0
    6778:	000d      	movs	r5, r1
    677a:	2080      	movs	r0, #128	; 0x80
    677c:	2c00      	cmp	r4, #0
    677e:	d001      	beq.n	6784 <isrMessagePut+0x10>
    6780:	2a00      	cmp	r2, #0
    6782:	d000      	beq.n	6786 <isrMessagePut+0x12>
    6784:	bd70      	pop	{r4, r5, r6, pc}
    6786:	7823      	ldrb	r3, [r4, #0]
    6788:	2b01      	cmp	r3, #1
    678a:	d1fb      	bne.n	6784 <isrMessagePut+0x10>
    678c:	0020      	movs	r0, r4
    678e:	f000 fe45 	bl	741c <rt_mbx_check>
    6792:	0003      	movs	r3, r0
    6794:	2081      	movs	r0, #129	; 0x81
    6796:	2b00      	cmp	r3, #0
    6798:	d0f4      	beq.n	6784 <isrMessagePut+0x10>
    679a:	0020      	movs	r0, r4
    679c:	0029      	movs	r1, r5
    679e:	f000 fe41 	bl	7424 <isr_mbx_send>
    67a2:	2000      	movs	r0, #0
    67a4:	e7ee      	b.n	6784 <isrMessagePut+0x10>
    67a6:	46c0      	nop			; (mov r8, r8)

000067a8 <isrMessageGet>:
    67a8:	b570      	push	{r4, r5, r6, lr}
    67aa:	0004      	movs	r4, r0
    67ac:	b084      	sub	sp, #16
    67ae:	0008      	movs	r0, r1
    67b0:	0015      	movs	r5, r2
    67b2:	2900      	cmp	r1, #0
    67b4:	d004      	beq.n	67c0 <isrMessageGet+0x18>
    67b6:	2a00      	cmp	r2, #0
    67b8:	d102      	bne.n	67c0 <isrMessageGet+0x18>
    67ba:	780b      	ldrb	r3, [r1, #0]
    67bc:	2b01      	cmp	r3, #1
    67be:	d004      	beq.n	67ca <isrMessageGet+0x22>
    67c0:	2380      	movs	r3, #128	; 0x80
    67c2:	6023      	str	r3, [r4, #0]
    67c4:	0020      	movs	r0, r4
    67c6:	b004      	add	sp, #16
    67c8:	bd70      	pop	{r4, r5, r6, pc}
    67ca:	a902      	add	r1, sp, #8
    67cc:	ae01      	add	r6, sp, #4
    67ce:	f000 fe2f 	bl	7430 <isr_mbx_receive>
    67d2:	2804      	cmp	r0, #4
    67d4:	d004      	beq.n	67e0 <isrMessageGet+0x38>
    67d6:	0023      	movs	r3, r4
    67d8:	9501      	str	r5, [sp, #4]
    67da:	ce07      	ldmia	r6!, {r0, r1, r2}
    67dc:	c307      	stmia	r3!, {r0, r1, r2}
    67de:	e7f1      	b.n	67c4 <isrMessageGet+0x1c>
    67e0:	2310      	movs	r3, #16
    67e2:	9301      	str	r3, [sp, #4]
    67e4:	0023      	movs	r3, r4
    67e6:	ce07      	ldmia	r6!, {r0, r1, r2}
    67e8:	c307      	stmia	r3!, {r0, r1, r2}
    67ea:	e7eb      	b.n	67c4 <isrMessageGet+0x1c>

000067ec <osMessageCreate>:
    67ec:	b5b0      	push	{r4, r5, r7, lr}
    67ee:	0004      	movs	r4, r0
    67f0:	f3ef 8005 	mrs	r0, IPSR
    67f4:	2800      	cmp	r0, #0
    67f6:	d11e      	bne.n	6836 <osMessageCreate+0x4a>
    67f8:	f3ef 8014 	mrs	r0, CONTROL
    67fc:	07c0      	lsls	r0, r0, #31
    67fe:	d504      	bpl.n	680a <osMessageCreate+0x1e>
    6800:	0020      	movs	r0, r4
    6802:	4f0f      	ldr	r7, [pc, #60]	; (6840 <osMessageCreate+0x54>)
    6804:	46bc      	mov	ip, r7
    6806:	df00      	svc	0
    6808:	bdb0      	pop	{r4, r5, r7, pc}
    680a:	480c      	ldr	r0, [pc, #48]	; (683c <osMessageCreate+0x50>)
    680c:	7800      	ldrb	r0, [r0, #0]
    680e:	2800      	cmp	r0, #0
    6810:	d1f6      	bne.n	6800 <osMessageCreate+0x14>
    6812:	2c00      	cmp	r4, #0
    6814:	d00f      	beq.n	6836 <osMessageCreate+0x4a>
    6816:	6823      	ldr	r3, [r4, #0]
    6818:	2b00      	cmp	r3, #0
    681a:	d00c      	beq.n	6836 <osMessageCreate+0x4a>
    681c:	6860      	ldr	r0, [r4, #4]
    681e:	2800      	cmp	r0, #0
    6820:	d009      	beq.n	6836 <osMessageCreate+0x4a>
    6822:	7802      	ldrb	r2, [r0, #0]
    6824:	2a00      	cmp	r2, #0
    6826:	d106      	bne.n	6836 <osMessageCreate+0x4a>
    6828:	1d19      	adds	r1, r3, #4
    682a:	008b      	lsls	r3, r1, #2
    682c:	b299      	uxth	r1, r3
    682e:	f000 fd3f 	bl	72b0 <rt_mbx_init>
    6832:	6860      	ldr	r0, [r4, #4]
    6834:	e7e8      	b.n	6808 <osMessageCreate+0x1c>
    6836:	2000      	movs	r0, #0
    6838:	e7e6      	b.n	6808 <osMessageCreate+0x1c>
    683a:	46c0      	nop			; (mov r8, r8)
    683c:	2000602d 	.word	0x2000602d
    6840:	00006639 	.word	0x00006639

00006844 <osMessagePut>:
    6844:	b5b0      	push	{r4, r5, r7, lr}
    6846:	0004      	movs	r4, r0
    6848:	000d      	movs	r5, r1
    684a:	f3ef 8105 	mrs	r1, IPSR
    684e:	2900      	cmp	r1, #0
    6850:	d008      	beq.n	6864 <osMessagePut+0x20>
    6852:	2080      	movs	r0, #128	; 0x80
    6854:	2c00      	cmp	r4, #0
    6856:	d004      	beq.n	6862 <osMessagePut+0x1e>
    6858:	2a00      	cmp	r2, #0
    685a:	d102      	bne.n	6862 <osMessagePut+0x1e>
    685c:	7823      	ldrb	r3, [r4, #0]
    685e:	2b01      	cmp	r3, #1
    6860:	d005      	beq.n	686e <osMessagePut+0x2a>
    6862:	bdb0      	pop	{r4, r5, r7, pc}
    6864:	0029      	movs	r1, r5
    6866:	4f08      	ldr	r7, [pc, #32]	; (6888 <osMessagePut+0x44>)
    6868:	46bc      	mov	ip, r7
    686a:	df00      	svc	0
    686c:	e7f9      	b.n	6862 <osMessagePut+0x1e>
    686e:	0020      	movs	r0, r4
    6870:	f000 fdd4 	bl	741c <rt_mbx_check>
    6874:	0003      	movs	r3, r0
    6876:	2081      	movs	r0, #129	; 0x81
    6878:	2b00      	cmp	r3, #0
    687a:	d0f2      	beq.n	6862 <osMessagePut+0x1e>
    687c:	0020      	movs	r0, r4
    687e:	0029      	movs	r1, r5
    6880:	f000 fdd0 	bl	7424 <isr_mbx_send>
    6884:	2000      	movs	r0, #0
    6886:	e7ec      	b.n	6862 <osMessagePut+0x1e>
    6888:	00006665 	.word	0x00006665

0000688c <osMessageGet>:
    688c:	b5f0      	push	{r4, r5, r6, r7, lr}
    688e:	0004      	movs	r4, r0
    6890:	b085      	sub	sp, #20
    6892:	0008      	movs	r0, r1
    6894:	0015      	movs	r5, r2
    6896:	f3ef 8105 	mrs	r1, IPSR
    689a:	2900      	cmp	r1, #0
    689c:	d109      	bne.n	68b2 <osMessageGet+0x26>
    689e:	0011      	movs	r1, r2
    68a0:	4f11      	ldr	r7, [pc, #68]	; (68e8 <osMessageGet+0x5c>)
    68a2:	46bc      	mov	ip, r7
    68a4:	df00      	svc	0
    68a6:	6020      	str	r0, [r4, #0]
    68a8:	6061      	str	r1, [r4, #4]
    68aa:	60a2      	str	r2, [r4, #8]
    68ac:	0020      	movs	r0, r4
    68ae:	b005      	add	sp, #20
    68b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    68b2:	2800      	cmp	r0, #0
    68b4:	d004      	beq.n	68c0 <osMessageGet+0x34>
    68b6:	2a00      	cmp	r2, #0
    68b8:	d102      	bne.n	68c0 <osMessageGet+0x34>
    68ba:	7803      	ldrb	r3, [r0, #0]
    68bc:	2b01      	cmp	r3, #1
    68be:	d002      	beq.n	68c6 <osMessageGet+0x3a>
    68c0:	2380      	movs	r3, #128	; 0x80
    68c2:	6023      	str	r3, [r4, #0]
    68c4:	e7f2      	b.n	68ac <osMessageGet+0x20>
    68c6:	a902      	add	r1, sp, #8
    68c8:	ae01      	add	r6, sp, #4
    68ca:	f000 fdb1 	bl	7430 <isr_mbx_receive>
    68ce:	2804      	cmp	r0, #4
    68d0:	d004      	beq.n	68dc <osMessageGet+0x50>
    68d2:	0023      	movs	r3, r4
    68d4:	9501      	str	r5, [sp, #4]
    68d6:	ce07      	ldmia	r6!, {r0, r1, r2}
    68d8:	c307      	stmia	r3!, {r0, r1, r2}
    68da:	e7e7      	b.n	68ac <osMessageGet+0x20>
    68dc:	2310      	movs	r3, #16
    68de:	9301      	str	r3, [sp, #4]
    68e0:	0023      	movs	r3, r4
    68e2:	ce07      	ldmia	r6!, {r0, r1, r2}
    68e4:	c307      	stmia	r3!, {r0, r1, r2}
    68e6:	e7e1      	b.n	68ac <osMessageGet+0x20>
    68e8:	000066e5 	.word	0x000066e5

000068ec <svcMailCreate>:
    68ec:	b570      	push	{r4, r5, r6, lr}
    68ee:	1e04      	subs	r4, r0, #0
    68f0:	d021      	beq.n	6936 <svcMailCreate+0x4a>
    68f2:	6801      	ldr	r1, [r0, #0]
    68f4:	2900      	cmp	r1, #0
    68f6:	d01e      	beq.n	6936 <svcMailCreate+0x4a>
    68f8:	6842      	ldr	r2, [r0, #4]
    68fa:	2a00      	cmp	r2, #0
    68fc:	d01b      	beq.n	6936 <svcMailCreate+0x4a>
    68fe:	6883      	ldr	r3, [r0, #8]
    6900:	2b00      	cmp	r3, #0
    6902:	d018      	beq.n	6936 <svcMailCreate+0x4a>
    6904:	6858      	ldr	r0, [r3, #4]
    6906:	681d      	ldr	r5, [r3, #0]
    6908:	2800      	cmp	r0, #0
    690a:	d014      	beq.n	6936 <svcMailCreate+0x4a>
    690c:	2d00      	cmp	r5, #0
    690e:	d012      	beq.n	6936 <svcMailCreate+0x4a>
    6910:	782b      	ldrb	r3, [r5, #0]
    6912:	2b00      	cmp	r3, #0
    6914:	d10f      	bne.n	6936 <svcMailCreate+0x4a>
    6916:	3303      	adds	r3, #3
    6918:	3203      	adds	r2, #3
    691a:	439a      	bics	r2, r3
    691c:	4351      	muls	r1, r2
    691e:	310c      	adds	r1, #12
    6920:	f000 fa6a 	bl	6df8 <_init_box>
    6924:	6823      	ldr	r3, [r4, #0]
    6926:	0028      	movs	r0, r5
    6928:	1d19      	adds	r1, r3, #4
    692a:	0089      	lsls	r1, r1, #2
    692c:	b289      	uxth	r1, r1
    692e:	f000 fcbf 	bl	72b0 <rt_mbx_init>
    6932:	68a0      	ldr	r0, [r4, #8]
    6934:	bd70      	pop	{r4, r5, r6, pc}
    6936:	2000      	movs	r0, #0
    6938:	e7fc      	b.n	6934 <svcMailCreate+0x48>
    693a:	46c0      	nop			; (mov r8, r8)

0000693c <sysMailAlloc>:
    693c:	b530      	push	{r4, r5, lr}
    693e:	000d      	movs	r5, r1
    6940:	b083      	sub	sp, #12
    6942:	2800      	cmp	r0, #0
    6944:	d035      	beq.n	69b2 <sysMailAlloc+0x76>
    6946:	6804      	ldr	r4, [r0, #0]
    6948:	6840      	ldr	r0, [r0, #4]
    694a:	2800      	cmp	r0, #0
    694c:	d031      	beq.n	69b2 <sysMailAlloc+0x76>
    694e:	2c00      	cmp	r4, #0
    6950:	d02f      	beq.n	69b2 <sysMailAlloc+0x76>
    6952:	2a00      	cmp	r2, #0
    6954:	d007      	beq.n	6966 <sysMailAlloc+0x2a>
    6956:	2900      	cmp	r1, #0
    6958:	d12b      	bne.n	69b2 <sysMailAlloc+0x76>
    695a:	f000 fa79 	bl	6e50 <rt_alloc_box>
    695e:	2800      	cmp	r0, #0
    6960:	d027      	beq.n	69b2 <sysMailAlloc+0x76>
    6962:	b003      	add	sp, #12
    6964:	bd30      	pop	{r4, r5, pc}
    6966:	f000 fa73 	bl	6e50 <rt_alloc_box>
    696a:	2800      	cmp	r0, #0
    696c:	d1f9      	bne.n	6962 <sysMailAlloc+0x26>
    696e:	2d00      	cmp	r5, #0
    6970:	d01f      	beq.n	69b2 <sysMailAlloc+0x76>
    6972:	6863      	ldr	r3, [r4, #4]
    6974:	2b00      	cmp	r3, #0
    6976:	d020      	beq.n	69ba <sysMailAlloc+0x7e>
    6978:	4b16      	ldr	r3, [pc, #88]	; (69d4 <sysMailAlloc+0x98>)
    697a:	0020      	movs	r0, r4
    697c:	6819      	ldr	r1, [r3, #0]
    697e:	f000 fdf1 	bl	7564 <rt_put_prio>
    6982:	1c6b      	adds	r3, r5, #1
    6984:	d021      	beq.n	69ca <sysMailAlloc+0x8e>
    6986:	4b14      	ldr	r3, [pc, #80]	; (69d8 <sysMailAlloc+0x9c>)
    6988:	429d      	cmp	r5, r3
    698a:	d814      	bhi.n	69b6 <sysMailAlloc+0x7a>
    698c:	20fa      	movs	r0, #250	; 0xfa
    698e:	4b13      	ldr	r3, [pc, #76]	; (69dc <sysMailAlloc+0xa0>)
    6990:	0080      	lsls	r0, r0, #2
    6992:	4368      	muls	r0, r5
    6994:	681b      	ldr	r3, [r3, #0]
    6996:	9301      	str	r3, [sp, #4]
    6998:	3b01      	subs	r3, #1
    699a:	18c0      	adds	r0, r0, r3
    699c:	9901      	ldr	r1, [sp, #4]
    699e:	f7fd fd13 	bl	43c8 <__aeabi_uidiv>
    69a2:	4b0f      	ldr	r3, [pc, #60]	; (69e0 <sysMailAlloc+0xa4>)
    69a4:	0002      	movs	r2, r0
    69a6:	0018      	movs	r0, r3
    69a8:	429a      	cmp	r2, r3
    69aa:	d910      	bls.n	69ce <sysMailAlloc+0x92>
    69ac:	2108      	movs	r1, #8
    69ae:	f001 fa13 	bl	7dd8 <rt_block>
    69b2:	2000      	movs	r0, #0
    69b4:	e7d5      	b.n	6962 <sysMailAlloc+0x26>
    69b6:	480a      	ldr	r0, [pc, #40]	; (69e0 <sysMailAlloc+0xa4>)
    69b8:	e7f8      	b.n	69ac <sysMailAlloc+0x70>
    69ba:	4a06      	ldr	r2, [pc, #24]	; (69d4 <sysMailAlloc+0x98>)
    69bc:	6812      	ldr	r2, [r2, #0]
    69be:	6062      	str	r2, [r4, #4]
    69c0:	6053      	str	r3, [r2, #4]
    69c2:	2303      	movs	r3, #3
    69c4:	6094      	str	r4, [r2, #8]
    69c6:	7063      	strb	r3, [r4, #1]
    69c8:	e7db      	b.n	6982 <sysMailAlloc+0x46>
    69ca:	4806      	ldr	r0, [pc, #24]	; (69e4 <sysMailAlloc+0xa8>)
    69cc:	e7ee      	b.n	69ac <sysMailAlloc+0x70>
    69ce:	b290      	uxth	r0, r2
    69d0:	e7ec      	b.n	69ac <sysMailAlloc+0x70>
    69d2:	46c0      	nop			; (mov r8, r8)
    69d4:	2000606c 	.word	0x2000606c
    69d8:	003d0900 	.word	0x003d0900
    69dc:	000086c0 	.word	0x000086c0
    69e0:	0000fffe 	.word	0x0000fffe
    69e4:	0000ffff 	.word	0x0000ffff

000069e8 <sysMailFree>:
    69e8:	b570      	push	{r4, r5, r6, lr}
    69ea:	0016      	movs	r6, r2
    69ec:	2800      	cmp	r0, #0
    69ee:	d00e      	beq.n	6a0e <sysMailFree+0x26>
    69f0:	6804      	ldr	r4, [r0, #0]
    69f2:	2c00      	cmp	r4, #0
    69f4:	d00b      	beq.n	6a0e <sysMailFree+0x26>
    69f6:	6845      	ldr	r5, [r0, #4]
    69f8:	2080      	movs	r0, #128	; 0x80
    69fa:	2d00      	cmp	r5, #0
    69fc:	d006      	beq.n	6a0c <sysMailFree+0x24>
    69fe:	0028      	movs	r0, r5
    6a00:	f000 fa46 	bl	6e90 <rt_free_box>
    6a04:	0003      	movs	r3, r0
    6a06:	2086      	movs	r0, #134	; 0x86
    6a08:	2b00      	cmp	r3, #0
    6a0a:	d002      	beq.n	6a12 <sysMailFree+0x2a>
    6a0c:	bd70      	pop	{r4, r5, r6, pc}
    6a0e:	2080      	movs	r0, #128	; 0x80
    6a10:	e7fc      	b.n	6a0c <sysMailFree+0x24>
    6a12:	6863      	ldr	r3, [r4, #4]
    6a14:	2b00      	cmp	r3, #0
    6a16:	d002      	beq.n	6a1e <sysMailFree+0x36>
    6a18:	7863      	ldrb	r3, [r4, #1]
    6a1a:	2b03      	cmp	r3, #3
    6a1c:	d001      	beq.n	6a22 <sysMailFree+0x3a>
    6a1e:	2000      	movs	r0, #0
    6a20:	e7f4      	b.n	6a0c <sysMailFree+0x24>
    6a22:	2e00      	cmp	r6, #0
    6a24:	d113      	bne.n	6a4e <sysMailFree+0x66>
    6a26:	0028      	movs	r0, r5
    6a28:	f000 fa12 	bl	6e50 <rt_alloc_box>
    6a2c:	1e05      	subs	r5, r0, #0
    6a2e:	d0f6      	beq.n	6a1e <sysMailFree+0x36>
    6a30:	0020      	movs	r0, r4
    6a32:	f000 fdbd 	bl	75b0 <rt_get_first>
    6a36:	0004      	movs	r4, r0
    6a38:	0029      	movs	r1, r5
    6a3a:	f000 f987 	bl	6d4c <rt_ret_val>
    6a3e:	0020      	movs	r0, r4
    6a40:	f000 feee 	bl	7820 <rt_rmv_dly>
    6a44:	0020      	movs	r0, r4
    6a46:	f001 f9a1 	bl	7d8c <rt_dispatch>
    6a4a:	2000      	movs	r0, #0
    6a4c:	e7de      	b.n	6a0c <sysMailFree+0x24>
    6a4e:	0020      	movs	r0, r4
    6a50:	0029      	movs	r1, r5
    6a52:	f000 fefb 	bl	784c <rt_psq_enq>
    6a56:	f001 f8dd 	bl	7c14 <rt_psh_req>
    6a5a:	2000      	movs	r0, #0
    6a5c:	e7d6      	b.n	6a0c <sysMailFree+0x24>
    6a5e:	46c0      	nop			; (mov r8, r8)

00006a60 <osMailCreate>:
    6a60:	b5b0      	push	{r4, r5, r7, lr}
    6a62:	0004      	movs	r4, r0
    6a64:	f3ef 8005 	mrs	r0, IPSR
    6a68:	2800      	cmp	r0, #0
    6a6a:	d130      	bne.n	6ace <osMailCreate+0x6e>
    6a6c:	f3ef 8014 	mrs	r0, CONTROL
    6a70:	07c0      	lsls	r0, r0, #31
    6a72:	d504      	bpl.n	6a7e <osMailCreate+0x1e>
    6a74:	0020      	movs	r0, r4
    6a76:	4f18      	ldr	r7, [pc, #96]	; (6ad8 <osMailCreate+0x78>)
    6a78:	46bc      	mov	ip, r7
    6a7a:	df00      	svc	0
    6a7c:	bdb0      	pop	{r4, r5, r7, pc}
    6a7e:	4815      	ldr	r0, [pc, #84]	; (6ad4 <osMailCreate+0x74>)
    6a80:	7800      	ldrb	r0, [r0, #0]
    6a82:	2800      	cmp	r0, #0
    6a84:	d1f6      	bne.n	6a74 <osMailCreate+0x14>
    6a86:	2c00      	cmp	r4, #0
    6a88:	d021      	beq.n	6ace <osMailCreate+0x6e>
    6a8a:	6821      	ldr	r1, [r4, #0]
    6a8c:	2900      	cmp	r1, #0
    6a8e:	d01e      	beq.n	6ace <osMailCreate+0x6e>
    6a90:	6862      	ldr	r2, [r4, #4]
    6a92:	2a00      	cmp	r2, #0
    6a94:	d01b      	beq.n	6ace <osMailCreate+0x6e>
    6a96:	68a3      	ldr	r3, [r4, #8]
    6a98:	2b00      	cmp	r3, #0
    6a9a:	d018      	beq.n	6ace <osMailCreate+0x6e>
    6a9c:	6858      	ldr	r0, [r3, #4]
    6a9e:	681d      	ldr	r5, [r3, #0]
    6aa0:	2800      	cmp	r0, #0
    6aa2:	d014      	beq.n	6ace <osMailCreate+0x6e>
    6aa4:	2d00      	cmp	r5, #0
    6aa6:	d012      	beq.n	6ace <osMailCreate+0x6e>
    6aa8:	782b      	ldrb	r3, [r5, #0]
    6aaa:	2b00      	cmp	r3, #0
    6aac:	d10f      	bne.n	6ace <osMailCreate+0x6e>
    6aae:	3303      	adds	r3, #3
    6ab0:	3203      	adds	r2, #3
    6ab2:	439a      	bics	r2, r3
    6ab4:	4351      	muls	r1, r2
    6ab6:	310c      	adds	r1, #12
    6ab8:	f000 f99e 	bl	6df8 <_init_box>
    6abc:	6823      	ldr	r3, [r4, #0]
    6abe:	0028      	movs	r0, r5
    6ac0:	1d19      	adds	r1, r3, #4
    6ac2:	0089      	lsls	r1, r1, #2
    6ac4:	b289      	uxth	r1, r1
    6ac6:	f000 fbf3 	bl	72b0 <rt_mbx_init>
    6aca:	68a0      	ldr	r0, [r4, #8]
    6acc:	e7d6      	b.n	6a7c <osMailCreate+0x1c>
    6ace:	2000      	movs	r0, #0
    6ad0:	e7d4      	b.n	6a7c <osMailCreate+0x1c>
    6ad2:	46c0      	nop			; (mov r8, r8)
    6ad4:	2000602d 	.word	0x2000602d
    6ad8:	000068ed 	.word	0x000068ed

00006adc <osMailAlloc>:
    6adc:	b580      	push	{r7, lr}
    6ade:	f3ef 8205 	mrs	r2, IPSR
    6ae2:	2a00      	cmp	r2, #0
    6ae4:	d104      	bne.n	6af0 <osMailAlloc+0x14>
    6ae6:	2200      	movs	r2, #0
    6ae8:	4f09      	ldr	r7, [pc, #36]	; (6b10 <osMailAlloc+0x34>)
    6aea:	46bc      	mov	ip, r7
    6aec:	df00      	svc	0
    6aee:	bd80      	pop	{r7, pc}
    6af0:	2800      	cmp	r0, #0
    6af2:	d00a      	beq.n	6b0a <osMailAlloc+0x2e>
    6af4:	6803      	ldr	r3, [r0, #0]
    6af6:	6840      	ldr	r0, [r0, #4]
    6af8:	2800      	cmp	r0, #0
    6afa:	d006      	beq.n	6b0a <osMailAlloc+0x2e>
    6afc:	2b00      	cmp	r3, #0
    6afe:	d004      	beq.n	6b0a <osMailAlloc+0x2e>
    6b00:	2900      	cmp	r1, #0
    6b02:	d102      	bne.n	6b0a <osMailAlloc+0x2e>
    6b04:	f000 f9a4 	bl	6e50 <rt_alloc_box>
    6b08:	e7f1      	b.n	6aee <osMailAlloc+0x12>
    6b0a:	2000      	movs	r0, #0
    6b0c:	e7ef      	b.n	6aee <osMailAlloc+0x12>
    6b0e:	0000      	.short	0x0000
    6b10:	0000693d 	.word	0x0000693d

00006b14 <osMailCAlloc>:
    6b14:	b5b0      	push	{r4, r5, r7, lr}
    6b16:	0004      	movs	r4, r0
    6b18:	f3ef 8205 	mrs	r2, IPSR
    6b1c:	2a00      	cmp	r2, #0
    6b1e:	d112      	bne.n	6b46 <osMailCAlloc+0x32>
    6b20:	2200      	movs	r2, #0
    6b22:	4f13      	ldr	r7, [pc, #76]	; (6b70 <osMailCAlloc+0x5c>)
    6b24:	46bc      	mov	ip, r7
    6b26:	df00      	svc	0
    6b28:	6863      	ldr	r3, [r4, #4]
    6b2a:	2b00      	cmp	r3, #0
    6b2c:	d00a      	beq.n	6b44 <osMailCAlloc+0x30>
    6b2e:	2800      	cmp	r0, #0
    6b30:	d01b      	beq.n	6b6a <osMailCAlloc+0x56>
    6b32:	689b      	ldr	r3, [r3, #8]
    6b34:	2b00      	cmp	r3, #0
    6b36:	d005      	beq.n	6b44 <osMailCAlloc+0x30>
    6b38:	0002      	movs	r2, r0
    6b3a:	2100      	movs	r1, #0
    6b3c:	3b04      	subs	r3, #4
    6b3e:	c202      	stmia	r2!, {r1}
    6b40:	2b00      	cmp	r3, #0
    6b42:	d1fb      	bne.n	6b3c <osMailCAlloc+0x28>
    6b44:	bdb0      	pop	{r4, r5, r7, pc}
    6b46:	2800      	cmp	r0, #0
    6b48:	d00f      	beq.n	6b6a <osMailCAlloc+0x56>
    6b4a:	6803      	ldr	r3, [r0, #0]
    6b4c:	6840      	ldr	r0, [r0, #4]
    6b4e:	2800      	cmp	r0, #0
    6b50:	d00b      	beq.n	6b6a <osMailCAlloc+0x56>
    6b52:	2b00      	cmp	r3, #0
    6b54:	d009      	beq.n	6b6a <osMailCAlloc+0x56>
    6b56:	2900      	cmp	r1, #0
    6b58:	d107      	bne.n	6b6a <osMailCAlloc+0x56>
    6b5a:	f000 f979 	bl	6e50 <rt_alloc_box>
    6b5e:	2800      	cmp	r0, #0
    6b60:	d003      	beq.n	6b6a <osMailCAlloc+0x56>
    6b62:	6863      	ldr	r3, [r4, #4]
    6b64:	2b00      	cmp	r3, #0
    6b66:	d1e4      	bne.n	6b32 <osMailCAlloc+0x1e>
    6b68:	e7ec      	b.n	6b44 <osMailCAlloc+0x30>
    6b6a:	2000      	movs	r0, #0
    6b6c:	e7ea      	b.n	6b44 <osMailCAlloc+0x30>
    6b6e:	0000      	.short	0x0000
    6b70:	0000693d 	.word	0x0000693d

00006b74 <osMailFree>:
    6b74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6b76:	f3ef 8205 	mrs	r2, IPSR
    6b7a:	2a00      	cmp	r2, #0
    6b7c:	d106      	bne.n	6b8c <osMailFree+0x18>
    6b7e:	2200      	movs	r2, #0
    6b80:	4f13      	ldr	r7, [pc, #76]	; (6bd0 <osMailFree+0x5c>)
    6b82:	46bc      	mov	ip, r7
    6b84:	df00      	svc	0
    6b86:	0004      	movs	r4, r0
    6b88:	0020      	movs	r0, r4
    6b8a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6b8c:	2800      	cmp	r0, #0
    6b8e:	d01a      	beq.n	6bc6 <osMailFree+0x52>
    6b90:	6805      	ldr	r5, [r0, #0]
    6b92:	2d00      	cmp	r5, #0
    6b94:	d017      	beq.n	6bc6 <osMailFree+0x52>
    6b96:	6846      	ldr	r6, [r0, #4]
    6b98:	2480      	movs	r4, #128	; 0x80
    6b9a:	2e00      	cmp	r6, #0
    6b9c:	d0f4      	beq.n	6b88 <osMailFree+0x14>
    6b9e:	0030      	movs	r0, r6
    6ba0:	f000 f976 	bl	6e90 <rt_free_box>
    6ba4:	3406      	adds	r4, #6
    6ba6:	2800      	cmp	r0, #0
    6ba8:	d1ee      	bne.n	6b88 <osMailFree+0x14>
    6baa:	686b      	ldr	r3, [r5, #4]
    6bac:	2b00      	cmp	r3, #0
    6bae:	d00c      	beq.n	6bca <osMailFree+0x56>
    6bb0:	786b      	ldrb	r3, [r5, #1]
    6bb2:	2400      	movs	r4, #0
    6bb4:	2b03      	cmp	r3, #3
    6bb6:	d1e7      	bne.n	6b88 <osMailFree+0x14>
    6bb8:	0031      	movs	r1, r6
    6bba:	0028      	movs	r0, r5
    6bbc:	f000 fe46 	bl	784c <rt_psq_enq>
    6bc0:	f001 f828 	bl	7c14 <rt_psh_req>
    6bc4:	e7e0      	b.n	6b88 <osMailFree+0x14>
    6bc6:	2480      	movs	r4, #128	; 0x80
    6bc8:	e7de      	b.n	6b88 <osMailFree+0x14>
    6bca:	2400      	movs	r4, #0
    6bcc:	e7dc      	b.n	6b88 <osMailFree+0x14>
    6bce:	0000      	.short	0x0000
    6bd0:	000069e9 	.word	0x000069e9

00006bd4 <osMailPut>:
    6bd4:	b5b0      	push	{r4, r5, r7, lr}
    6bd6:	0002      	movs	r2, r0
    6bd8:	000c      	movs	r4, r1
    6bda:	2800      	cmp	r0, #0
    6bdc:	d00e      	beq.n	6bfc <osMailPut+0x28>
    6bde:	2086      	movs	r0, #134	; 0x86
    6be0:	2900      	cmp	r1, #0
    6be2:	d00a      	beq.n	6bfa <osMailPut+0x26>
    6be4:	6815      	ldr	r5, [r2, #0]
    6be6:	f3ef 8205 	mrs	r2, IPSR
    6bea:	2a00      	cmp	r2, #0
    6bec:	d008      	beq.n	6c00 <osMailPut+0x2c>
    6bee:	2d00      	cmp	r5, #0
    6bf0:	d004      	beq.n	6bfc <osMailPut+0x28>
    6bf2:	782b      	ldrb	r3, [r5, #0]
    6bf4:	3806      	subs	r0, #6
    6bf6:	2b01      	cmp	r3, #1
    6bf8:	d008      	beq.n	6c0c <osMailPut+0x38>
    6bfa:	bdb0      	pop	{r4, r5, r7, pc}
    6bfc:	2080      	movs	r0, #128	; 0x80
    6bfe:	e7fc      	b.n	6bfa <osMailPut+0x26>
    6c00:	0028      	movs	r0, r5
    6c02:	2200      	movs	r2, #0
    6c04:	4f08      	ldr	r7, [pc, #32]	; (6c28 <osMailPut+0x54>)
    6c06:	46bc      	mov	ip, r7
    6c08:	df00      	svc	0
    6c0a:	e7f6      	b.n	6bfa <osMailPut+0x26>
    6c0c:	0028      	movs	r0, r5
    6c0e:	f000 fc05 	bl	741c <rt_mbx_check>
    6c12:	0003      	movs	r3, r0
    6c14:	2081      	movs	r0, #129	; 0x81
    6c16:	2b00      	cmp	r3, #0
    6c18:	d0ef      	beq.n	6bfa <osMailPut+0x26>
    6c1a:	0028      	movs	r0, r5
    6c1c:	0021      	movs	r1, r4
    6c1e:	f000 fc01 	bl	7424 <isr_mbx_send>
    6c22:	2000      	movs	r0, #0
    6c24:	e7e9      	b.n	6bfa <osMailPut+0x26>
    6c26:	0000      	.short	0x0000
    6c28:	00006665 	.word	0x00006665

00006c2c <osMailGet>:
    6c2c:	b5b0      	push	{r4, r5, r7, lr}
    6c2e:	0004      	movs	r4, r0
    6c30:	b084      	sub	sp, #16
    6c32:	2900      	cmp	r1, #0
    6c34:	d012      	beq.n	6c5c <osMailGet+0x30>
    6c36:	6808      	ldr	r0, [r1, #0]
    6c38:	f3ef 8105 	mrs	r1, IPSR
    6c3c:	2900      	cmp	r1, #0
    6c3e:	d113      	bne.n	6c68 <osMailGet+0x3c>
    6c40:	0011      	movs	r1, r2
    6c42:	4f0d      	ldr	r7, [pc, #52]	; (6c78 <osMailGet+0x4c>)
    6c44:	46bc      	mov	ip, r7
    6c46:	df00      	svc	0
    6c48:	2810      	cmp	r0, #16
    6c4a:	d005      	beq.n	6c58 <osMailGet+0x2c>
    6c4c:	6020      	str	r0, [r4, #0]
    6c4e:	6061      	str	r1, [r4, #4]
    6c50:	60a2      	str	r2, [r4, #8]
    6c52:	0020      	movs	r0, r4
    6c54:	b004      	add	sp, #16
    6c56:	bdb0      	pop	{r4, r5, r7, pc}
    6c58:	3010      	adds	r0, #16
    6c5a:	e7f7      	b.n	6c4c <osMailGet+0x20>
    6c5c:	2380      	movs	r3, #128	; 0x80
    6c5e:	6003      	str	r3, [r0, #0]
    6c60:	2300      	movs	r3, #0
    6c62:	6043      	str	r3, [r0, #4]
    6c64:	6083      	str	r3, [r0, #8]
    6c66:	e7f4      	b.n	6c52 <osMailGet+0x26>
    6c68:	0001      	movs	r1, r0
    6c6a:	a801      	add	r0, sp, #4
    6c6c:	f7ff fd9c 	bl	67a8 <isrMessageGet>
    6c70:	9801      	ldr	r0, [sp, #4]
    6c72:	9902      	ldr	r1, [sp, #8]
    6c74:	9a03      	ldr	r2, [sp, #12]
    6c76:	e7e7      	b.n	6c48 <osMailGet+0x1c>
    6c78:	000066e5 	.word	0x000066e5

00006c7c <os_suspend>:
    6c7c:	b580      	push	{r7, lr}
    6c7e:	4f02      	ldr	r7, [pc, #8]	; (6c88 <os_suspend+0xc>)
    6c80:	46bc      	mov	ip, r7
    6c82:	df00      	svc	0
    6c84:	bd80      	pop	{r7, pc}
    6c86:	0000      	.short	0x0000
    6c88:	000079c5 	.word	0x000079c5

00006c8c <os_resume>:
    6c8c:	b580      	push	{r7, lr}
    6c8e:	4f02      	ldr	r7, [pc, #8]	; (6c98 <os_resume+0xc>)
    6c90:	46bc      	mov	ip, r7
    6c92:	df00      	svc	0
    6c94:	bd80      	pop	{r7, pc}
    6c96:	0000      	.short	0x0000
    6c98:	00007a55 	.word	0x00007a55

00006c9c <rt_init_stack>:
    6c9c:	b5f0      	push	{r4, r5, r6, r7, lr}
    6c9e:	464e      	mov	r6, r9
    6ca0:	4645      	mov	r5, r8
    6ca2:	4657      	mov	r7, sl
    6ca4:	b4e0      	push	{r5, r6, r7}
    6ca6:	4b26      	ldr	r3, [pc, #152]	; (6d40 <rt_init_stack+0xa4>)
    6ca8:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    6caa:	b082      	sub	sp, #8
    6cac:	4680      	mov	r8, r0
    6cae:	4689      	mov	r9, r1
    6cb0:	08a4      	lsrs	r4, r4, #2
    6cb2:	681b      	ldr	r3, [r3, #0]
    6cb4:	d104      	bne.n	6cc0 <rt_init_stack+0x24>
    6cb6:	9301      	str	r3, [sp, #4]
    6cb8:	466b      	mov	r3, sp
    6cba:	889c      	ldrh	r4, [r3, #4]
    6cbc:	9b01      	ldr	r3, [sp, #4]
    6cbe:	08a4      	lsrs	r4, r4, #2
    6cc0:	469a      	mov	sl, r3
    6cc2:	4643      	mov	r3, r8
    6cc4:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    6cc6:	00a5      	lsls	r5, r4, #2
    6cc8:	197d      	adds	r5, r7, r5
    6cca:	076b      	lsls	r3, r5, #29
    6ccc:	d500      	bpl.n	6cd0 <rt_init_stack+0x34>
    6cce:	3d04      	subs	r5, #4
    6cd0:	2280      	movs	r2, #128	; 0x80
    6cd2:	1f2b      	subs	r3, r5, #4
    6cd4:	002e      	movs	r6, r5
    6cd6:	0452      	lsls	r2, r2, #17
    6cd8:	601a      	str	r2, [r3, #0]
    6cda:	464a      	mov	r2, r9
    6cdc:	3b04      	subs	r3, #4
    6cde:	3e40      	subs	r6, #64	; 0x40
    6ce0:	601a      	str	r2, [r3, #0]
    6ce2:	2100      	movs	r1, #0
    6ce4:	2238      	movs	r2, #56	; 0x38
    6ce6:	0030      	movs	r0, r6
    6ce8:	f7fd fe30 	bl	494c <memset>
    6cec:	4643      	mov	r3, r8
    6cee:	69db      	ldr	r3, [r3, #28]
    6cf0:	3d20      	subs	r5, #32
    6cf2:	602b      	str	r3, [r5, #0]
    6cf4:	464a      	mov	r2, r9
    6cf6:	4643      	mov	r3, r8
    6cf8:	629e      	str	r6, [r3, #40]	; 0x28
    6cfa:	631a      	str	r2, [r3, #48]	; 0x30
    6cfc:	4653      	mov	r3, sl
    6cfe:	00db      	lsls	r3, r3, #3
    6d00:	d516      	bpl.n	6d30 <rt_init_stack+0x94>
    6d02:	2c11      	cmp	r4, #17
    6d04:	d914      	bls.n	6d30 <rt_init_stack+0x94>
    6d06:	3c10      	subs	r4, #16
    6d08:	0864      	lsrs	r4, r4, #1
    6d0a:	1e62      	subs	r2, r4, #1
    6d0c:	2a00      	cmp	r2, #0
    6d0e:	d00a      	beq.n	6d26 <rt_init_stack+0x8a>
    6d10:	0033      	movs	r3, r6
    6d12:	490c      	ldr	r1, [pc, #48]	; (6d44 <rt_init_stack+0xa8>)
    6d14:	3b08      	subs	r3, #8
    6d16:	3a01      	subs	r2, #1
    6d18:	6059      	str	r1, [r3, #4]
    6d1a:	6019      	str	r1, [r3, #0]
    6d1c:	2a00      	cmp	r2, #0
    6d1e:	d1f9      	bne.n	6d14 <rt_init_stack+0x78>
    6d20:	00e4      	lsls	r4, r4, #3
    6d22:	1b36      	subs	r6, r6, r4
    6d24:	3608      	adds	r6, #8
    6d26:	3e04      	subs	r6, #4
    6d28:	42b7      	cmp	r7, r6
    6d2a:	d201      	bcs.n	6d30 <rt_init_stack+0x94>
    6d2c:	4b05      	ldr	r3, [pc, #20]	; (6d44 <rt_init_stack+0xa8>)
    6d2e:	6033      	str	r3, [r6, #0]
    6d30:	4b05      	ldr	r3, [pc, #20]	; (6d48 <rt_init_stack+0xac>)
    6d32:	603b      	str	r3, [r7, #0]
    6d34:	b002      	add	sp, #8
    6d36:	bc1c      	pop	{r2, r3, r4}
    6d38:	4690      	mov	r8, r2
    6d3a:	4699      	mov	r9, r3
    6d3c:	46a2      	mov	sl, r4
    6d3e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6d40:	000086a0 	.word	0x000086a0
    6d44:	cccccccc 	.word	0xcccccccc
    6d48:	e25a2ea5 	.word	0xe25a2ea5

00006d4c <rt_ret_val>:
    6d4c:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6d4e:	6219      	str	r1, [r3, #32]
    6d50:	4770      	bx	lr
    6d52:	46c0      	nop			; (mov r8, r8)

00006d54 <rt_ret_val2>:
    6d54:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6d56:	6219      	str	r1, [r3, #32]
    6d58:	625a      	str	r2, [r3, #36]	; 0x24
    6d5a:	4770      	bx	lr

00006d5c <rt_init_mem>:
    6d5c:	0003      	movs	r3, r0
    6d5e:	2001      	movs	r0, #1
    6d60:	2b00      	cmp	r3, #0
    6d62:	d008      	beq.n	6d76 <rt_init_mem+0x1a>
    6d64:	2907      	cmp	r1, #7
    6d66:	d906      	bls.n	6d76 <rt_init_mem+0x1a>
    6d68:	2200      	movs	r2, #0
    6d6a:	2000      	movs	r0, #0
    6d6c:	3904      	subs	r1, #4
    6d6e:	1859      	adds	r1, r3, r1
    6d70:	6019      	str	r1, [r3, #0]
    6d72:	600a      	str	r2, [r1, #0]
    6d74:	605a      	str	r2, [r3, #4]
    6d76:	4770      	bx	lr

00006d78 <rt_alloc_mem>:
    6d78:	b510      	push	{r4, lr}
    6d7a:	2800      	cmp	r0, #0
    6d7c:	d018      	beq.n	6db0 <rt_alloc_mem+0x38>
    6d7e:	2900      	cmp	r1, #0
    6d80:	d016      	beq.n	6db0 <rt_alloc_mem+0x38>
    6d82:	2303      	movs	r3, #3
    6d84:	310b      	adds	r1, #11
    6d86:	4399      	bics	r1, r3
    6d88:	6802      	ldr	r2, [r0, #0]
    6d8a:	e003      	b.n	6d94 <rt_alloc_mem+0x1c>
    6d8c:	0010      	movs	r0, r2
    6d8e:	6812      	ldr	r2, [r2, #0]
    6d90:	2a00      	cmp	r2, #0
    6d92:	d00d      	beq.n	6db0 <rt_alloc_mem+0x38>
    6d94:	6844      	ldr	r4, [r0, #4]
    6d96:	1a13      	subs	r3, r2, r0
    6d98:	1b1b      	subs	r3, r3, r4
    6d9a:	4299      	cmp	r1, r3
    6d9c:	d8f6      	bhi.n	6d8c <rt_alloc_mem+0x14>
    6d9e:	2c00      	cmp	r4, #0
    6da0:	d008      	beq.n	6db4 <rt_alloc_mem+0x3c>
    6da2:	1904      	adds	r4, r0, r4
    6da4:	6022      	str	r2, [r4, #0]
    6da6:	6061      	str	r1, [r4, #4]
    6da8:	6004      	str	r4, [r0, #0]
    6daa:	0020      	movs	r0, r4
    6dac:	3008      	adds	r0, #8
    6dae:	e000      	b.n	6db2 <rt_alloc_mem+0x3a>
    6db0:	2000      	movs	r0, #0
    6db2:	bd10      	pop	{r4, pc}
    6db4:	6041      	str	r1, [r0, #4]
    6db6:	3008      	adds	r0, #8
    6db8:	e7fb      	b.n	6db2 <rt_alloc_mem+0x3a>
    6dba:	46c0      	nop			; (mov r8, r8)

00006dbc <rt_free_mem>:
    6dbc:	2800      	cmp	r0, #0
    6dbe:	d015      	beq.n	6dec <rt_free_mem+0x30>
    6dc0:	2900      	cmp	r1, #0
    6dc2:	d013      	beq.n	6dec <rt_free_mem+0x30>
    6dc4:	3908      	subs	r1, #8
    6dc6:	4288      	cmp	r0, r1
    6dc8:	d012      	beq.n	6df0 <rt_free_mem+0x34>
    6dca:	6803      	ldr	r3, [r0, #0]
    6dcc:	2b00      	cmp	r3, #0
    6dce:	d105      	bne.n	6ddc <rt_free_mem+0x20>
    6dd0:	e00c      	b.n	6dec <rt_free_mem+0x30>
    6dd2:	681a      	ldr	r2, [r3, #0]
    6dd4:	0018      	movs	r0, r3
    6dd6:	2a00      	cmp	r2, #0
    6dd8:	d008      	beq.n	6dec <rt_free_mem+0x30>
    6dda:	0013      	movs	r3, r2
    6ddc:	4299      	cmp	r1, r3
    6dde:	d1f8      	bne.n	6dd2 <rt_free_mem+0x16>
    6de0:	2800      	cmp	r0, #0
    6de2:	d005      	beq.n	6df0 <rt_free_mem+0x34>
    6de4:	680b      	ldr	r3, [r1, #0]
    6de6:	6003      	str	r3, [r0, #0]
    6de8:	2000      	movs	r0, #0
    6dea:	e000      	b.n	6dee <rt_free_mem+0x32>
    6dec:	2001      	movs	r0, #1
    6dee:	4770      	bx	lr
    6df0:	2300      	movs	r3, #0
    6df2:	2000      	movs	r0, #0
    6df4:	604b      	str	r3, [r1, #4]
    6df6:	e7fa      	b.n	6dee <rt_free_mem+0x32>

00006df8 <_init_box>:
    6df8:	b530      	push	{r4, r5, lr}
    6dfa:	2a00      	cmp	r2, #0
    6dfc:	db1e      	blt.n	6e3c <_init_box+0x44>
    6dfe:	2303      	movs	r3, #3
    6e00:	3203      	adds	r2, #3
    6e02:	439a      	bics	r2, r3
    6e04:	3309      	adds	r3, #9
    6e06:	2401      	movs	r4, #1
    6e08:	2a00      	cmp	r2, #0
    6e0a:	d015      	beq.n	6e38 <_init_box+0x40>
    6e0c:	18d5      	adds	r5, r2, r3
    6e0e:	428d      	cmp	r5, r1
    6e10:	d812      	bhi.n	6e38 <_init_box+0x40>
    6e12:	1841      	adds	r1, r0, r1
    6e14:	18c3      	adds	r3, r0, r3
    6e16:	6041      	str	r1, [r0, #4]
    6e18:	6003      	str	r3, [r0, #0]
    6e1a:	6082      	str	r2, [r0, #8]
    6e1c:	1898      	adds	r0, r3, r2
    6e1e:	1a89      	subs	r1, r1, r2
    6e20:	4281      	cmp	r1, r0
    6e22:	d201      	bcs.n	6e28 <_init_box+0x30>
    6e24:	e011      	b.n	6e4a <_init_box+0x52>
    6e26:	0020      	movs	r0, r4
    6e28:	1884      	adds	r4, r0, r2
    6e2a:	6018      	str	r0, [r3, #0]
    6e2c:	189b      	adds	r3, r3, r2
    6e2e:	42a1      	cmp	r1, r4
    6e30:	d2f9      	bcs.n	6e26 <_init_box+0x2e>
    6e32:	2300      	movs	r3, #0
    6e34:	2400      	movs	r4, #0
    6e36:	6003      	str	r3, [r0, #0]
    6e38:	0020      	movs	r0, r4
    6e3a:	bd30      	pop	{r4, r5, pc}
    6e3c:	2307      	movs	r3, #7
    6e3e:	0052      	lsls	r2, r2, #1
    6e40:	0852      	lsrs	r2, r2, #1
    6e42:	3207      	adds	r2, #7
    6e44:	439a      	bics	r2, r3
    6e46:	3309      	adds	r3, #9
    6e48:	e7dd      	b.n	6e06 <_init_box+0xe>
    6e4a:	0018      	movs	r0, r3
    6e4c:	e7f1      	b.n	6e32 <_init_box+0x3a>
    6e4e:	46c0      	nop			; (mov r8, r8)

00006e50 <rt_alloc_box>:
    6e50:	f3ef 8310 	mrs	r3, PRIMASK
    6e54:	b672      	cpsid	i
    6e56:	2201      	movs	r2, #1
    6e58:	4013      	ands	r3, r2
    6e5a:	6802      	ldr	r2, [r0, #0]
    6e5c:	2a00      	cmp	r2, #0
    6e5e:	d001      	beq.n	6e64 <rt_alloc_box+0x14>
    6e60:	6811      	ldr	r1, [r2, #0]
    6e62:	6001      	str	r1, [r0, #0]
    6e64:	2b00      	cmp	r3, #0
    6e66:	d100      	bne.n	6e6a <rt_alloc_box+0x1a>
    6e68:	b662      	cpsie	i
    6e6a:	0010      	movs	r0, r2
    6e6c:	4770      	bx	lr
    6e6e:	46c0      	nop			; (mov r8, r8)

00006e70 <_calloc_box>:
    6e70:	b510      	push	{r4, lr}
    6e72:	0004      	movs	r4, r0
    6e74:	f7fd fb49 	bl	450a <_alloc_box>
    6e78:	2800      	cmp	r0, #0
    6e7a:	d008      	beq.n	6e8e <_calloc_box+0x1e>
    6e7c:	68a3      	ldr	r3, [r4, #8]
    6e7e:	2b00      	cmp	r3, #0
    6e80:	d005      	beq.n	6e8e <_calloc_box+0x1e>
    6e82:	0002      	movs	r2, r0
    6e84:	2100      	movs	r1, #0
    6e86:	3b04      	subs	r3, #4
    6e88:	c202      	stmia	r2!, {r1}
    6e8a:	2b00      	cmp	r3, #0
    6e8c:	d1fb      	bne.n	6e86 <_calloc_box+0x16>
    6e8e:	bd10      	pop	{r4, pc}

00006e90 <rt_free_box>:
    6e90:	0003      	movs	r3, r0
    6e92:	2001      	movs	r0, #1
    6e94:	4299      	cmp	r1, r3
    6e96:	d30b      	bcc.n	6eb0 <rt_free_box+0x20>
    6e98:	685a      	ldr	r2, [r3, #4]
    6e9a:	4291      	cmp	r1, r2
    6e9c:	d208      	bcs.n	6eb0 <rt_free_box+0x20>
    6e9e:	f3ef 8210 	mrs	r2, PRIMASK
    6ea2:	b672      	cpsid	i
    6ea4:	4010      	ands	r0, r2
    6ea6:	681a      	ldr	r2, [r3, #0]
    6ea8:	600a      	str	r2, [r1, #0]
    6eaa:	6019      	str	r1, [r3, #0]
    6eac:	d101      	bne.n	6eb2 <rt_free_box+0x22>
    6eae:	b662      	cpsie	i
    6eb0:	4770      	bx	lr
    6eb2:	2000      	movs	r0, #0
    6eb4:	e7fc      	b.n	6eb0 <rt_free_box+0x20>
    6eb6:	46c0      	nop			; (mov r8, r8)

00006eb8 <rt_mut_init>:
    6eb8:	2303      	movs	r3, #3
    6eba:	7003      	strb	r3, [r0, #0]
    6ebc:	2300      	movs	r3, #0
    6ebe:	8043      	strh	r3, [r0, #2]
    6ec0:	6043      	str	r3, [r0, #4]
    6ec2:	6083      	str	r3, [r0, #8]
    6ec4:	60c3      	str	r3, [r0, #12]
    6ec6:	4770      	bx	lr

00006ec8 <rt_mut_delete>:
    6ec8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6eca:	8843      	ldrh	r3, [r0, #2]
    6ecc:	0005      	movs	r5, r0
    6ece:	2b00      	cmp	r3, #0
    6ed0:	d02c      	beq.n	6f2c <rt_mut_delete+0x64>
    6ed2:	6880      	ldr	r0, [r0, #8]
    6ed4:	6a04      	ldr	r4, [r0, #32]
    6ed6:	42a5      	cmp	r5, r4
    6ed8:	d05a      	beq.n	6f90 <rt_mut_delete+0xc8>
    6eda:	2c00      	cmp	r4, #0
    6edc:	d01a      	beq.n	6f14 <rt_mut_delete+0x4c>
    6ede:	68e3      	ldr	r3, [r4, #12]
    6ee0:	429d      	cmp	r5, r3
    6ee2:	d050      	beq.n	6f86 <rt_mut_delete+0xbe>
    6ee4:	001a      	movs	r2, r3
    6ee6:	e003      	b.n	6ef0 <rt_mut_delete+0x28>
    6ee8:	68d1      	ldr	r1, [r2, #12]
    6eea:	428d      	cmp	r5, r1
    6eec:	d04c      	beq.n	6f88 <rt_mut_delete+0xc0>
    6eee:	000a      	movs	r2, r1
    6ef0:	2a00      	cmp	r2, #0
    6ef2:	d1f9      	bne.n	6ee8 <rt_mut_delete+0x20>
    6ef4:	2224      	movs	r2, #36	; 0x24
    6ef6:	5c81      	ldrb	r1, [r0, r2]
    6ef8:	6862      	ldr	r2, [r4, #4]
    6efa:	2a00      	cmp	r2, #0
    6efc:	d005      	beq.n	6f0a <rt_mut_delete+0x42>
    6efe:	7892      	ldrb	r2, [r2, #2]
    6f00:	1c14      	adds	r4, r2, #0
    6f02:	428a      	cmp	r2, r1
    6f04:	d200      	bcs.n	6f08 <rt_mut_delete+0x40>
    6f06:	1c0c      	adds	r4, r1, #0
    6f08:	b2e1      	uxtb	r1, r4
    6f0a:	2b00      	cmp	r3, #0
    6f0c:	d004      	beq.n	6f18 <rt_mut_delete+0x50>
    6f0e:	001c      	movs	r4, r3
    6f10:	68db      	ldr	r3, [r3, #12]
    6f12:	e7f1      	b.n	6ef8 <rt_mut_delete+0x30>
    6f14:	2324      	movs	r3, #36	; 0x24
    6f16:	5cc1      	ldrb	r1, [r0, r3]
    6f18:	7883      	ldrb	r3, [r0, #2]
    6f1a:	428b      	cmp	r3, r1
    6f1c:	d006      	beq.n	6f2c <rt_mut_delete+0x64>
    6f1e:	4b20      	ldr	r3, [pc, #128]	; (6fa0 <rt_mut_delete+0xd8>)
    6f20:	7081      	strb	r1, [r0, #2]
    6f22:	681b      	ldr	r3, [r3, #0]
    6f24:	4298      	cmp	r0, r3
    6f26:	d001      	beq.n	6f2c <rt_mut_delete+0x64>
    6f28:	f000 fb72 	bl	7610 <rt_resort_prio>
    6f2c:	686b      	ldr	r3, [r5, #4]
    6f2e:	4e1d      	ldr	r6, [pc, #116]	; (6fa4 <rt_mut_delete+0xdc>)
    6f30:	2b00      	cmp	r3, #0
    6f32:	d012      	beq.n	6f5a <rt_mut_delete+0x92>
    6f34:	2701      	movs	r7, #1
    6f36:	0028      	movs	r0, r5
    6f38:	f000 fb3a 	bl	75b0 <rt_get_first>
    6f3c:	0004      	movs	r4, r0
    6f3e:	2100      	movs	r1, #0
    6f40:	f7ff ff04 	bl	6d4c <rt_ret_val>
    6f44:	0020      	movs	r0, r4
    6f46:	f000 fc6b 	bl	7820 <rt_rmv_dly>
    6f4a:	7067      	strb	r7, [r4, #1]
    6f4c:	0021      	movs	r1, r4
    6f4e:	0030      	movs	r0, r6
    6f50:	f000 fb08 	bl	7564 <rt_put_prio>
    6f54:	686b      	ldr	r3, [r5, #4]
    6f56:	2b00      	cmp	r3, #0
    6f58:	d1ed      	bne.n	6f36 <rt_mut_delete+0x6e>
    6f5a:	6873      	ldr	r3, [r6, #4]
    6f5c:	2b00      	cmp	r3, #0
    6f5e:	d00e      	beq.n	6f7e <rt_mut_delete+0xb6>
    6f60:	4c0f      	ldr	r4, [pc, #60]	; (6fa0 <rt_mut_delete+0xd8>)
    6f62:	789a      	ldrb	r2, [r3, #2]
    6f64:	6821      	ldr	r1, [r4, #0]
    6f66:	788b      	ldrb	r3, [r1, #2]
    6f68:	429a      	cmp	r2, r3
    6f6a:	d908      	bls.n	6f7e <rt_mut_delete+0xb6>
    6f6c:	0030      	movs	r0, r6
    6f6e:	f000 faf9 	bl	7564 <rt_put_prio>
    6f72:	2201      	movs	r2, #1
    6f74:	6823      	ldr	r3, [r4, #0]
    6f76:	2000      	movs	r0, #0
    6f78:	705a      	strb	r2, [r3, #1]
    6f7a:	f000 ff07 	bl	7d8c <rt_dispatch>
    6f7e:	2300      	movs	r3, #0
    6f80:	2000      	movs	r0, #0
    6f82:	702b      	strb	r3, [r5, #0]
    6f84:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6f86:	0022      	movs	r2, r4
    6f88:	68eb      	ldr	r3, [r5, #12]
    6f8a:	60d3      	str	r3, [r2, #12]
    6f8c:	68e3      	ldr	r3, [r4, #12]
    6f8e:	e7b1      	b.n	6ef4 <rt_mut_delete+0x2c>
    6f90:	2324      	movs	r3, #36	; 0x24
    6f92:	68ec      	ldr	r4, [r5, #12]
    6f94:	6204      	str	r4, [r0, #32]
    6f96:	5cc1      	ldrb	r1, [r0, r3]
    6f98:	2c00      	cmp	r4, #0
    6f9a:	d0bd      	beq.n	6f18 <rt_mut_delete+0x50>
    6f9c:	68e3      	ldr	r3, [r4, #12]
    6f9e:	e7ab      	b.n	6ef8 <rt_mut_delete+0x30>
    6fa0:	2000606c 	.word	0x2000606c
    6fa4:	20006038 	.word	0x20006038

00006fa8 <rt_mut_release>:
    6fa8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6faa:	8843      	ldrh	r3, [r0, #2]
    6fac:	0004      	movs	r4, r0
    6fae:	20ff      	movs	r0, #255	; 0xff
    6fb0:	2b00      	cmp	r3, #0
    6fb2:	d100      	bne.n	6fb6 <rt_mut_release+0xe>
    6fb4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6fb6:	4d3c      	ldr	r5, [pc, #240]	; (70a8 <rt_mut_release+0x100>)
    6fb8:	68a1      	ldr	r1, [r4, #8]
    6fba:	682a      	ldr	r2, [r5, #0]
    6fbc:	4291      	cmp	r1, r2
    6fbe:	d1f9      	bne.n	6fb4 <rt_mut_release+0xc>
    6fc0:	3b01      	subs	r3, #1
    6fc2:	b29b      	uxth	r3, r3
    6fc4:	8063      	strh	r3, [r4, #2]
    6fc6:	2b00      	cmp	r3, #0
    6fc8:	d140      	bne.n	704c <rt_mut_release+0xa4>
    6fca:	6a0e      	ldr	r6, [r1, #32]
    6fcc:	42b4      	cmp	r4, r6
    6fce:	d062      	beq.n	7096 <rt_mut_release+0xee>
    6fd0:	2e00      	cmp	r6, #0
    6fd2:	d01a      	beq.n	700a <rt_mut_release+0x62>
    6fd4:	68f3      	ldr	r3, [r6, #12]
    6fd6:	429c      	cmp	r4, r3
    6fd8:	d03a      	beq.n	7050 <rt_mut_release+0xa8>
    6fda:	001a      	movs	r2, r3
    6fdc:	e003      	b.n	6fe6 <rt_mut_release+0x3e>
    6fde:	68d0      	ldr	r0, [r2, #12]
    6fe0:	4284      	cmp	r4, r0
    6fe2:	d036      	beq.n	7052 <rt_mut_release+0xaa>
    6fe4:	0002      	movs	r2, r0
    6fe6:	2a00      	cmp	r2, #0
    6fe8:	d1f9      	bne.n	6fde <rt_mut_release+0x36>
    6fea:	2224      	movs	r2, #36	; 0x24
    6fec:	5c8f      	ldrb	r7, [r1, r2]
    6fee:	6872      	ldr	r2, [r6, #4]
    6ff0:	2a00      	cmp	r2, #0
    6ff2:	d005      	beq.n	7000 <rt_mut_release+0x58>
    6ff4:	7892      	ldrb	r2, [r2, #2]
    6ff6:	1c10      	adds	r0, r2, #0
    6ff8:	42ba      	cmp	r2, r7
    6ffa:	d200      	bcs.n	6ffe <rt_mut_release+0x56>
    6ffc:	1c38      	adds	r0, r7, #0
    6ffe:	b2c7      	uxtb	r7, r0
    7000:	2b00      	cmp	r3, #0
    7002:	d004      	beq.n	700e <rt_mut_release+0x66>
    7004:	001e      	movs	r6, r3
    7006:	68db      	ldr	r3, [r3, #12]
    7008:	e7f1      	b.n	6fee <rt_mut_release+0x46>
    700a:	2324      	movs	r3, #36	; 0x24
    700c:	5ccf      	ldrb	r7, [r1, r3]
    700e:	708f      	strb	r7, [r1, #2]
    7010:	6863      	ldr	r3, [r4, #4]
    7012:	2b00      	cmp	r3, #0
    7014:	d030      	beq.n	7078 <rt_mut_release+0xd0>
    7016:	0020      	movs	r0, r4
    7018:	f000 faca 	bl	75b0 <rt_get_first>
    701c:	0006      	movs	r6, r0
    701e:	2100      	movs	r1, #0
    7020:	f7ff fe94 	bl	6d4c <rt_ret_val>
    7024:	0030      	movs	r0, r6
    7026:	f000 fbfb 	bl	7820 <rt_rmv_dly>
    702a:	2301      	movs	r3, #1
    702c:	8063      	strh	r3, [r4, #2]
    702e:	6a33      	ldr	r3, [r6, #32]
    7030:	60a6      	str	r6, [r4, #8]
    7032:	60e3      	str	r3, [r4, #12]
    7034:	6234      	str	r4, [r6, #32]
    7036:	4c1d      	ldr	r4, [pc, #116]	; (70ac <rt_mut_release+0x104>)
    7038:	6829      	ldr	r1, [r5, #0]
    703a:	6863      	ldr	r3, [r4, #4]
    703c:	788a      	ldrb	r2, [r1, #2]
    703e:	789b      	ldrb	r3, [r3, #2]
    7040:	2701      	movs	r7, #1
    7042:	429a      	cmp	r2, r3
    7044:	d309      	bcc.n	705a <rt_mut_release+0xb2>
    7046:	0030      	movs	r0, r6
    7048:	f000 fea0 	bl	7d8c <rt_dispatch>
    704c:	2000      	movs	r0, #0
    704e:	e7b1      	b.n	6fb4 <rt_mut_release+0xc>
    7050:	0032      	movs	r2, r6
    7052:	68e3      	ldr	r3, [r4, #12]
    7054:	60d3      	str	r3, [r2, #12]
    7056:	68f3      	ldr	r3, [r6, #12]
    7058:	e7c7      	b.n	6fea <rt_mut_release+0x42>
    705a:	0020      	movs	r0, r4
    705c:	f000 fa82 	bl	7564 <rt_put_prio>
    7060:	0031      	movs	r1, r6
    7062:	0020      	movs	r0, r4
    7064:	f000 fa7e 	bl	7564 <rt_put_prio>
    7068:	682b      	ldr	r3, [r5, #0]
    706a:	2000      	movs	r0, #0
    706c:	705f      	strb	r7, [r3, #1]
    706e:	7077      	strb	r7, [r6, #1]
    7070:	f000 fe8c 	bl	7d8c <rt_dispatch>
    7074:	2000      	movs	r0, #0
    7076:	e79d      	b.n	6fb4 <rt_mut_release+0xc>
    7078:	480c      	ldr	r0, [pc, #48]	; (70ac <rt_mut_release+0x104>)
    707a:	6843      	ldr	r3, [r0, #4]
    707c:	789b      	ldrb	r3, [r3, #2]
    707e:	42bb      	cmp	r3, r7
    7080:	d9e4      	bls.n	704c <rt_mut_release+0xa4>
    7082:	f000 fa6f 	bl	7564 <rt_put_prio>
    7086:	2201      	movs	r2, #1
    7088:	682b      	ldr	r3, [r5, #0]
    708a:	2000      	movs	r0, #0
    708c:	705a      	strb	r2, [r3, #1]
    708e:	f000 fe7d 	bl	7d8c <rt_dispatch>
    7092:	2000      	movs	r0, #0
    7094:	e78e      	b.n	6fb4 <rt_mut_release+0xc>
    7096:	2324      	movs	r3, #36	; 0x24
    7098:	68e6      	ldr	r6, [r4, #12]
    709a:	620e      	str	r6, [r1, #32]
    709c:	5ccf      	ldrb	r7, [r1, r3]
    709e:	2e00      	cmp	r6, #0
    70a0:	d0b5      	beq.n	700e <rt_mut_release+0x66>
    70a2:	68f3      	ldr	r3, [r6, #12]
    70a4:	e7a3      	b.n	6fee <rt_mut_release+0x46>
    70a6:	46c0      	nop			; (mov r8, r8)
    70a8:	2000606c 	.word	0x2000606c
    70ac:	20006038 	.word	0x20006038

000070b0 <rt_mut_wait>:
    70b0:	b570      	push	{r4, r5, r6, lr}
    70b2:	8843      	ldrh	r3, [r0, #2]
    70b4:	0004      	movs	r4, r0
    70b6:	000d      	movs	r5, r1
    70b8:	2b00      	cmp	r3, #0
    70ba:	d017      	beq.n	70ec <rt_mut_wait+0x3c>
    70bc:	4e19      	ldr	r6, [pc, #100]	; (7124 <rt_mut_wait+0x74>)
    70be:	6882      	ldr	r2, [r0, #8]
    70c0:	6831      	ldr	r1, [r6, #0]
    70c2:	428a      	cmp	r2, r1
    70c4:	d026      	beq.n	7114 <rt_mut_wait+0x64>
    70c6:	2001      	movs	r0, #1
    70c8:	2d00      	cmp	r5, #0
    70ca:	d00e      	beq.n	70ea <rt_mut_wait+0x3a>
    70cc:	788b      	ldrb	r3, [r1, #2]
    70ce:	7890      	ldrb	r0, [r2, #2]
    70d0:	4298      	cmp	r0, r3
    70d2:	d319      	bcc.n	7108 <rt_mut_wait+0x58>
    70d4:	6863      	ldr	r3, [r4, #4]
    70d6:	2b00      	cmp	r3, #0
    70d8:	d012      	beq.n	7100 <rt_mut_wait+0x50>
    70da:	0020      	movs	r0, r4
    70dc:	f000 fa42 	bl	7564 <rt_put_prio>
    70e0:	0028      	movs	r0, r5
    70e2:	2109      	movs	r1, #9
    70e4:	f000 fe78 	bl	7dd8 <rt_block>
    70e8:	2001      	movs	r0, #1
    70ea:	bd70      	pop	{r4, r5, r6, pc}
    70ec:	4b0d      	ldr	r3, [pc, #52]	; (7124 <rt_mut_wait+0x74>)
    70ee:	681b      	ldr	r3, [r3, #0]
    70f0:	6a1a      	ldr	r2, [r3, #32]
    70f2:	6083      	str	r3, [r0, #8]
    70f4:	60c2      	str	r2, [r0, #12]
    70f6:	6218      	str	r0, [r3, #32]
    70f8:	2301      	movs	r3, #1
    70fa:	8043      	strh	r3, [r0, #2]
    70fc:	2000      	movs	r0, #0
    70fe:	e7f4      	b.n	70ea <rt_mut_wait+0x3a>
    7100:	6061      	str	r1, [r4, #4]
    7102:	604b      	str	r3, [r1, #4]
    7104:	608c      	str	r4, [r1, #8]
    7106:	e7eb      	b.n	70e0 <rt_mut_wait+0x30>
    7108:	7093      	strb	r3, [r2, #2]
    710a:	68a0      	ldr	r0, [r4, #8]
    710c:	f000 fa80 	bl	7610 <rt_resort_prio>
    7110:	6831      	ldr	r1, [r6, #0]
    7112:	e7df      	b.n	70d4 <rt_mut_wait+0x24>
    7114:	4a04      	ldr	r2, [pc, #16]	; (7128 <rt_mut_wait+0x78>)
    7116:	20ff      	movs	r0, #255	; 0xff
    7118:	4293      	cmp	r3, r2
    711a:	d0e6      	beq.n	70ea <rt_mut_wait+0x3a>
    711c:	3301      	adds	r3, #1
    711e:	8063      	strh	r3, [r4, #2]
    7120:	2000      	movs	r0, #0
    7122:	e7e2      	b.n	70ea <rt_mut_wait+0x3a>
    7124:	2000606c 	.word	0x2000606c
    7128:	0000ffff 	.word	0x0000ffff

0000712c <rt_time_get>:
    712c:	4b01      	ldr	r3, [pc, #4]	; (7134 <rt_time_get+0x8>)
    712e:	6818      	ldr	r0, [r3, #0]
    7130:	4770      	bx	lr
    7132:	46c0      	nop			; (mov r8, r8)
    7134:	20006034 	.word	0x20006034

00007138 <rt_dly_wait>:
    7138:	b510      	push	{r4, lr}
    713a:	2103      	movs	r1, #3
    713c:	f000 fe4c 	bl	7dd8 <rt_block>
    7140:	bd10      	pop	{r4, pc}
    7142:	46c0      	nop			; (mov r8, r8)

00007144 <rt_itv_set>:
    7144:	4b03      	ldr	r3, [pc, #12]	; (7154 <rt_itv_set+0x10>)
    7146:	681a      	ldr	r2, [r3, #0]
    7148:	4b03      	ldr	r3, [pc, #12]	; (7158 <rt_itv_set+0x14>)
    714a:	82d0      	strh	r0, [r2, #22]
    714c:	681b      	ldr	r3, [r3, #0]
    714e:	18c0      	adds	r0, r0, r3
    7150:	8290      	strh	r0, [r2, #20]
    7152:	4770      	bx	lr
    7154:	2000606c 	.word	0x2000606c
    7158:	20006034 	.word	0x20006034

0000715c <rt_itv_wait>:
    715c:	b510      	push	{r4, lr}
    715e:	4b08      	ldr	r3, [pc, #32]	; (7180 <rt_itv_wait+0x24>)
    7160:	681a      	ldr	r2, [r3, #0]
    7162:	4b08      	ldr	r3, [pc, #32]	; (7184 <rt_itv_wait+0x28>)
    7164:	8a90      	ldrh	r0, [r2, #20]
    7166:	681b      	ldr	r3, [r3, #0]
    7168:	8ad1      	ldrh	r1, [r2, #22]
    716a:	1ac3      	subs	r3, r0, r3
    716c:	1841      	adds	r1, r0, r1
    716e:	8291      	strh	r1, [r2, #20]
    7170:	b298      	uxth	r0, r3
    7172:	041b      	lsls	r3, r3, #16
    7174:	d402      	bmi.n	717c <rt_itv_wait+0x20>
    7176:	2104      	movs	r1, #4
    7178:	f000 fe2e 	bl	7dd8 <rt_block>
    717c:	bd10      	pop	{r4, pc}
    717e:	46c0      	nop			; (mov r8, r8)
    7180:	2000606c 	.word	0x2000606c
    7184:	20006034 	.word	0x20006034

00007188 <rt_sem_init>:
    7188:	2302      	movs	r3, #2
    718a:	7003      	strb	r3, [r0, #0]
    718c:	2300      	movs	r3, #0
    718e:	8041      	strh	r1, [r0, #2]
    7190:	6043      	str	r3, [r0, #4]
    7192:	4770      	bx	lr

00007194 <rt_sem_delete>:
    7194:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7196:	6843      	ldr	r3, [r0, #4]
    7198:	0005      	movs	r5, r0
    719a:	4e16      	ldr	r6, [pc, #88]	; (71f4 <rt_sem_delete+0x60>)
    719c:	2b00      	cmp	r3, #0
    719e:	d012      	beq.n	71c6 <rt_sem_delete+0x32>
    71a0:	2701      	movs	r7, #1
    71a2:	0028      	movs	r0, r5
    71a4:	f000 fa04 	bl	75b0 <rt_get_first>
    71a8:	0004      	movs	r4, r0
    71aa:	2100      	movs	r1, #0
    71ac:	f7ff fdce 	bl	6d4c <rt_ret_val>
    71b0:	0020      	movs	r0, r4
    71b2:	f000 fb35 	bl	7820 <rt_rmv_dly>
    71b6:	7067      	strb	r7, [r4, #1]
    71b8:	0021      	movs	r1, r4
    71ba:	0030      	movs	r0, r6
    71bc:	f000 f9d2 	bl	7564 <rt_put_prio>
    71c0:	686b      	ldr	r3, [r5, #4]
    71c2:	2b00      	cmp	r3, #0
    71c4:	d1ed      	bne.n	71a2 <rt_sem_delete+0xe>
    71c6:	6873      	ldr	r3, [r6, #4]
    71c8:	2b00      	cmp	r3, #0
    71ca:	d00e      	beq.n	71ea <rt_sem_delete+0x56>
    71cc:	4c0a      	ldr	r4, [pc, #40]	; (71f8 <rt_sem_delete+0x64>)
    71ce:	789a      	ldrb	r2, [r3, #2]
    71d0:	6821      	ldr	r1, [r4, #0]
    71d2:	788b      	ldrb	r3, [r1, #2]
    71d4:	429a      	cmp	r2, r3
    71d6:	d908      	bls.n	71ea <rt_sem_delete+0x56>
    71d8:	0030      	movs	r0, r6
    71da:	f000 f9c3 	bl	7564 <rt_put_prio>
    71de:	2201      	movs	r2, #1
    71e0:	6823      	ldr	r3, [r4, #0]
    71e2:	2000      	movs	r0, #0
    71e4:	705a      	strb	r2, [r3, #1]
    71e6:	f000 fdd1 	bl	7d8c <rt_dispatch>
    71ea:	2300      	movs	r3, #0
    71ec:	2000      	movs	r0, #0
    71ee:	702b      	strb	r3, [r5, #0]
    71f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    71f2:	46c0      	nop			; (mov r8, r8)
    71f4:	20006038 	.word	0x20006038
    71f8:	2000606c 	.word	0x2000606c

000071fc <rt_sem_send>:
    71fc:	6843      	ldr	r3, [r0, #4]
    71fe:	b510      	push	{r4, lr}
    7200:	2b00      	cmp	r3, #0
    7202:	d00d      	beq.n	7220 <rt_sem_send+0x24>
    7204:	f000 f9d4 	bl	75b0 <rt_get_first>
    7208:	0004      	movs	r4, r0
    720a:	2101      	movs	r1, #1
    720c:	f7ff fd9e 	bl	6d4c <rt_ret_val>
    7210:	0020      	movs	r0, r4
    7212:	f000 fb05 	bl	7820 <rt_rmv_dly>
    7216:	0020      	movs	r0, r4
    7218:	f000 fdb8 	bl	7d8c <rt_dispatch>
    721c:	2000      	movs	r0, #0
    721e:	bd10      	pop	{r4, pc}
    7220:	8843      	ldrh	r3, [r0, #2]
    7222:	3301      	adds	r3, #1
    7224:	8043      	strh	r3, [r0, #2]
    7226:	e7f9      	b.n	721c <rt_sem_send+0x20>

00007228 <rt_sem_wait>:
    7228:	b510      	push	{r4, lr}
    722a:	8843      	ldrh	r3, [r0, #2]
    722c:	000c      	movs	r4, r1
    722e:	2b00      	cmp	r3, #0
    7230:	d110      	bne.n	7254 <rt_sem_wait+0x2c>
    7232:	2301      	movs	r3, #1
    7234:	2900      	cmp	r1, #0
    7236:	d00b      	beq.n	7250 <rt_sem_wait+0x28>
    7238:	6843      	ldr	r3, [r0, #4]
    723a:	2b00      	cmp	r3, #0
    723c:	d00e      	beq.n	725c <rt_sem_wait+0x34>
    723e:	4b0a      	ldr	r3, [pc, #40]	; (7268 <rt_sem_wait+0x40>)
    7240:	6819      	ldr	r1, [r3, #0]
    7242:	f000 f98f 	bl	7564 <rt_put_prio>
    7246:	2107      	movs	r1, #7
    7248:	0020      	movs	r0, r4
    724a:	f000 fdc5 	bl	7dd8 <rt_block>
    724e:	2301      	movs	r3, #1
    7250:	0018      	movs	r0, r3
    7252:	bd10      	pop	{r4, pc}
    7254:	3b01      	subs	r3, #1
    7256:	8043      	strh	r3, [r0, #2]
    7258:	2300      	movs	r3, #0
    725a:	e7f9      	b.n	7250 <rt_sem_wait+0x28>
    725c:	4a02      	ldr	r2, [pc, #8]	; (7268 <rt_sem_wait+0x40>)
    725e:	6812      	ldr	r2, [r2, #0]
    7260:	6042      	str	r2, [r0, #4]
    7262:	6053      	str	r3, [r2, #4]
    7264:	6090      	str	r0, [r2, #8]
    7266:	e7ee      	b.n	7246 <rt_sem_wait+0x1e>
    7268:	2000606c 	.word	0x2000606c

0000726c <isr_sem_send>:
    726c:	b510      	push	{r4, lr}
    726e:	2100      	movs	r1, #0
    7270:	f000 faec 	bl	784c <rt_psq_enq>
    7274:	f000 fcce 	bl	7c14 <rt_psh_req>
    7278:	bd10      	pop	{r4, pc}
    727a:	46c0      	nop			; (mov r8, r8)

0000727c <rt_sem_psh>:
    727c:	6843      	ldr	r3, [r0, #4]
    727e:	b510      	push	{r4, lr}
    7280:	2b00      	cmp	r3, #0
    7282:	d00f      	beq.n	72a4 <rt_sem_psh+0x28>
    7284:	f000 f994 	bl	75b0 <rt_get_first>
    7288:	0004      	movs	r4, r0
    728a:	f000 fac9 	bl	7820 <rt_rmv_dly>
    728e:	2301      	movs	r3, #1
    7290:	2101      	movs	r1, #1
    7292:	0020      	movs	r0, r4
    7294:	7063      	strb	r3, [r4, #1]
    7296:	f7ff fd59 	bl	6d4c <rt_ret_val>
    729a:	0021      	movs	r1, r4
    729c:	4803      	ldr	r0, [pc, #12]	; (72ac <rt_sem_psh+0x30>)
    729e:	f000 f961 	bl	7564 <rt_put_prio>
    72a2:	bd10      	pop	{r4, pc}
    72a4:	8843      	ldrh	r3, [r0, #2]
    72a6:	3301      	adds	r3, #1
    72a8:	8043      	strh	r3, [r0, #2]
    72aa:	e7fa      	b.n	72a2 <rt_sem_psh+0x26>
    72ac:	20006038 	.word	0x20006038

000072b0 <rt_mbx_init>:
    72b0:	2301      	movs	r3, #1
    72b2:	7003      	strb	r3, [r0, #0]
    72b4:	2300      	movs	r3, #0
    72b6:	3910      	subs	r1, #16
    72b8:	0889      	lsrs	r1, r1, #2
    72ba:	7043      	strb	r3, [r0, #1]
    72bc:	7083      	strb	r3, [r0, #2]
    72be:	6043      	str	r3, [r0, #4]
    72c0:	8103      	strh	r3, [r0, #8]
    72c2:	8143      	strh	r3, [r0, #10]
    72c4:	8183      	strh	r3, [r0, #12]
    72c6:	81c1      	strh	r1, [r0, #14]
    72c8:	4770      	bx	lr
    72ca:	46c0      	nop			; (mov r8, r8)

000072cc <rt_mbx_send>:
    72cc:	6843      	ldr	r3, [r0, #4]
    72ce:	b570      	push	{r4, r5, r6, lr}
    72d0:	000d      	movs	r5, r1
    72d2:	0016      	movs	r6, r2
    72d4:	2b00      	cmp	r3, #0
    72d6:	d002      	beq.n	72de <rt_mbx_send+0x12>
    72d8:	7842      	ldrb	r2, [r0, #1]
    72da:	2a01      	cmp	r2, #1
    72dc:	d028      	beq.n	7330 <rt_mbx_send+0x64>
    72de:	8982      	ldrh	r2, [r0, #12]
    72e0:	89c4      	ldrh	r4, [r0, #14]
    72e2:	42a2      	cmp	r2, r4
    72e4:	d013      	beq.n	730e <rt_mbx_send+0x42>
    72e6:	8903      	ldrh	r3, [r0, #8]
    72e8:	1d19      	adds	r1, r3, #4
    72ea:	0089      	lsls	r1, r1, #2
    72ec:	500d      	str	r5, [r1, r0]
    72ee:	f3ef 8110 	mrs	r1, PRIMASK
    72f2:	b672      	cpsid	i
    72f4:	3201      	adds	r2, #1
    72f6:	8182      	strh	r2, [r0, #12]
    72f8:	b662      	cpsie	i
    72fa:	3301      	adds	r3, #1
    72fc:	b29b      	uxth	r3, r3
    72fe:	429c      	cmp	r4, r3
    7300:	d003      	beq.n	730a <rt_mbx_send+0x3e>
    7302:	2200      	movs	r2, #0
    7304:	8103      	strh	r3, [r0, #8]
    7306:	0010      	movs	r0, r2
    7308:	bd70      	pop	{r4, r5, r6, pc}
    730a:	2300      	movs	r3, #0
    730c:	e7f9      	b.n	7302 <rt_mbx_send+0x36>
    730e:	2201      	movs	r2, #1
    7310:	2e00      	cmp	r6, #0
    7312:	d0f8      	beq.n	7306 <rt_mbx_send+0x3a>
    7314:	2b00      	cmp	r3, #0
    7316:	d01a      	beq.n	734e <rt_mbx_send+0x82>
    7318:	4c11      	ldr	r4, [pc, #68]	; (7360 <rt_mbx_send+0x94>)
    731a:	6821      	ldr	r1, [r4, #0]
    731c:	f000 f922 	bl	7564 <rt_put_prio>
    7320:	6822      	ldr	r2, [r4, #0]
    7322:	61d5      	str	r5, [r2, #28]
    7324:	2108      	movs	r1, #8
    7326:	0030      	movs	r0, r6
    7328:	f000 fd56 	bl	7dd8 <rt_block>
    732c:	2201      	movs	r2, #1
    732e:	e7ea      	b.n	7306 <rt_mbx_send+0x3a>
    7330:	f000 f93e 	bl	75b0 <rt_get_first>
    7334:	0004      	movs	r4, r0
    7336:	002a      	movs	r2, r5
    7338:	2110      	movs	r1, #16
    733a:	f7ff fd0b 	bl	6d54 <rt_ret_val2>
    733e:	0020      	movs	r0, r4
    7340:	f000 fa6e 	bl	7820 <rt_rmv_dly>
    7344:	0020      	movs	r0, r4
    7346:	f000 fd21 	bl	7d8c <rt_dispatch>
    734a:	2200      	movs	r2, #0
    734c:	e7db      	b.n	7306 <rt_mbx_send+0x3a>
    734e:	4a04      	ldr	r2, [pc, #16]	; (7360 <rt_mbx_send+0x94>)
    7350:	6812      	ldr	r2, [r2, #0]
    7352:	6042      	str	r2, [r0, #4]
    7354:	6053      	str	r3, [r2, #4]
    7356:	2302      	movs	r3, #2
    7358:	6090      	str	r0, [r2, #8]
    735a:	7043      	strb	r3, [r0, #1]
    735c:	e7e1      	b.n	7322 <rt_mbx_send+0x56>
    735e:	46c0      	nop			; (mov r8, r8)
    7360:	2000606c 	.word	0x2000606c

00007364 <rt_mbx_wait>:
    7364:	b570      	push	{r4, r5, r6, lr}
    7366:	0015      	movs	r5, r2
    7368:	8982      	ldrh	r2, [r0, #12]
    736a:	0004      	movs	r4, r0
    736c:	2a00      	cmp	r2, #0
    736e:	d018      	beq.n	73a2 <rt_mbx_wait+0x3e>
    7370:	8943      	ldrh	r3, [r0, #10]
    7372:	1d18      	adds	r0, r3, #4
    7374:	0080      	lsls	r0, r0, #2
    7376:	5900      	ldr	r0, [r0, r4]
    7378:	3301      	adds	r3, #1
    737a:	6008      	str	r0, [r1, #0]
    737c:	89e1      	ldrh	r1, [r4, #14]
    737e:	b29b      	uxth	r3, r3
    7380:	8163      	strh	r3, [r4, #10]
    7382:	4299      	cmp	r1, r3
    7384:	d01e      	beq.n	73c4 <rt_mbx_wait+0x60>
    7386:	6863      	ldr	r3, [r4, #4]
    7388:	2b00      	cmp	r3, #0
    738a:	d002      	beq.n	7392 <rt_mbx_wait+0x2e>
    738c:	7863      	ldrb	r3, [r4, #1]
    738e:	2b02      	cmp	r3, #2
    7390:	d025      	beq.n	73de <rt_mbx_wait+0x7a>
    7392:	f3ef 8310 	mrs	r3, PRIMASK
    7396:	b672      	cpsid	i
    7398:	3a01      	subs	r2, #1
    739a:	81a2      	strh	r2, [r4, #12]
    739c:	b662      	cpsie	i
    739e:	2000      	movs	r0, #0
    73a0:	bd70      	pop	{r4, r5, r6, pc}
    73a2:	2001      	movs	r0, #1
    73a4:	2d00      	cmp	r5, #0
    73a6:	d0fb      	beq.n	73a0 <rt_mbx_wait+0x3c>
    73a8:	6863      	ldr	r3, [r4, #4]
    73aa:	2b00      	cmp	r3, #0
    73ac:	d010      	beq.n	73d0 <rt_mbx_wait+0x6c>
    73ae:	4b1a      	ldr	r3, [pc, #104]	; (7418 <rt_mbx_wait+0xb4>)
    73b0:	0020      	movs	r0, r4
    73b2:	6819      	ldr	r1, [r3, #0]
    73b4:	f000 f8d6 	bl	7564 <rt_put_prio>
    73b8:	0028      	movs	r0, r5
    73ba:	2108      	movs	r1, #8
    73bc:	f000 fd0c 	bl	7dd8 <rt_block>
    73c0:	2001      	movs	r0, #1
    73c2:	e7ed      	b.n	73a0 <rt_mbx_wait+0x3c>
    73c4:	2300      	movs	r3, #0
    73c6:	8163      	strh	r3, [r4, #10]
    73c8:	6863      	ldr	r3, [r4, #4]
    73ca:	2b00      	cmp	r3, #0
    73cc:	d1de      	bne.n	738c <rt_mbx_wait+0x28>
    73ce:	e7e0      	b.n	7392 <rt_mbx_wait+0x2e>
    73d0:	4a11      	ldr	r2, [pc, #68]	; (7418 <rt_mbx_wait+0xb4>)
    73d2:	6812      	ldr	r2, [r2, #0]
    73d4:	6062      	str	r2, [r4, #4]
    73d6:	6053      	str	r3, [r2, #4]
    73d8:	6094      	str	r4, [r2, #8]
    73da:	7060      	strb	r0, [r4, #1]
    73dc:	e7ec      	b.n	73b8 <rt_mbx_wait+0x54>
    73de:	0020      	movs	r0, r4
    73e0:	f000 f8e6 	bl	75b0 <rt_get_first>
    73e4:	0005      	movs	r5, r0
    73e6:	2100      	movs	r1, #0
    73e8:	f7ff fcb0 	bl	6d4c <rt_ret_val>
    73ec:	8923      	ldrh	r3, [r4, #8]
    73ee:	69e9      	ldr	r1, [r5, #28]
    73f0:	1d1a      	adds	r2, r3, #4
    73f2:	0092      	lsls	r2, r2, #2
    73f4:	5111      	str	r1, [r2, r4]
    73f6:	3301      	adds	r3, #1
    73f8:	89e2      	ldrh	r2, [r4, #14]
    73fa:	b29b      	uxth	r3, r3
    73fc:	8123      	strh	r3, [r4, #8]
    73fe:	429a      	cmp	r2, r3
    7400:	d101      	bne.n	7406 <rt_mbx_wait+0xa2>
    7402:	2300      	movs	r3, #0
    7404:	8123      	strh	r3, [r4, #8]
    7406:	0028      	movs	r0, r5
    7408:	f000 fa0a 	bl	7820 <rt_rmv_dly>
    740c:	0028      	movs	r0, r5
    740e:	f000 fcbd 	bl	7d8c <rt_dispatch>
    7412:	2000      	movs	r0, #0
    7414:	e7c4      	b.n	73a0 <rt_mbx_wait+0x3c>
    7416:	46c0      	nop			; (mov r8, r8)
    7418:	2000606c 	.word	0x2000606c

0000741c <rt_mbx_check>:
    741c:	89c3      	ldrh	r3, [r0, #14]
    741e:	8980      	ldrh	r0, [r0, #12]
    7420:	1a18      	subs	r0, r3, r0
    7422:	4770      	bx	lr

00007424 <isr_mbx_send>:
    7424:	b510      	push	{r4, lr}
    7426:	f000 fa11 	bl	784c <rt_psq_enq>
    742a:	f000 fbf3 	bl	7c14 <rt_psh_req>
    742e:	bd10      	pop	{r4, pc}

00007430 <isr_mbx_receive>:
    7430:	b510      	push	{r4, lr}
    7432:	8982      	ldrh	r2, [r0, #12]
    7434:	0004      	movs	r4, r0
    7436:	2000      	movs	r0, #0
    7438:	2a00      	cmp	r2, #0
    743a:	d017      	beq.n	746c <isr_mbx_receive+0x3c>
    743c:	8963      	ldrh	r3, [r4, #10]
    743e:	1d18      	adds	r0, r3, #4
    7440:	0080      	lsls	r0, r0, #2
    7442:	5900      	ldr	r0, [r0, r4]
    7444:	6008      	str	r0, [r1, #0]
    7446:	6861      	ldr	r1, [r4, #4]
    7448:	2900      	cmp	r1, #0
    744a:	d002      	beq.n	7452 <isr_mbx_receive+0x22>
    744c:	7861      	ldrb	r1, [r4, #1]
    744e:	2902      	cmp	r1, #2
    7450:	d010      	beq.n	7474 <isr_mbx_receive+0x44>
    7452:	f3ef 8110 	mrs	r1, PRIMASK
    7456:	b672      	cpsid	i
    7458:	3a01      	subs	r2, #1
    745a:	81a2      	strh	r2, [r4, #12]
    745c:	b662      	cpsie	i
    745e:	3301      	adds	r3, #1
    7460:	89e2      	ldrh	r2, [r4, #14]
    7462:	b29b      	uxth	r3, r3
    7464:	8163      	strh	r3, [r4, #10]
    7466:	2004      	movs	r0, #4
    7468:	429a      	cmp	r2, r3
    746a:	d000      	beq.n	746e <isr_mbx_receive+0x3e>
    746c:	bd10      	pop	{r4, pc}
    746e:	2300      	movs	r3, #0
    7470:	8163      	strh	r3, [r4, #10]
    7472:	e7fb      	b.n	746c <isr_mbx_receive+0x3c>
    7474:	2100      	movs	r1, #0
    7476:	0020      	movs	r0, r4
    7478:	f000 f9e8 	bl	784c <rt_psq_enq>
    747c:	f000 fbca 	bl	7c14 <rt_psh_req>
    7480:	89a2      	ldrh	r2, [r4, #12]
    7482:	8963      	ldrh	r3, [r4, #10]
    7484:	e7e5      	b.n	7452 <isr_mbx_receive+0x22>
    7486:	46c0      	nop			; (mov r8, r8)

00007488 <rt_mbx_psh>:
    7488:	6843      	ldr	r3, [r0, #4]
    748a:	b570      	push	{r4, r5, r6, lr}
    748c:	0004      	movs	r4, r0
    748e:	000e      	movs	r6, r1
    7490:	2b00      	cmp	r3, #0
    7492:	d04b      	beq.n	752c <rt_mbx_psh+0xa4>
    7494:	7845      	ldrb	r5, [r0, #1]
    7496:	2d02      	cmp	r5, #2
    7498:	d023      	beq.n	74e2 <rt_mbx_psh+0x5a>
    749a:	2d03      	cmp	r5, #3
    749c:	d002      	beq.n	74a4 <rt_mbx_psh+0x1c>
    749e:	2d01      	cmp	r5, #1
    74a0:	d00f      	beq.n	74c2 <rt_mbx_psh+0x3a>
    74a2:	bd70      	pop	{r4, r5, r6, pc}
    74a4:	0008      	movs	r0, r1
    74a6:	f7ff fcd3 	bl	6e50 <rt_alloc_box>
    74aa:	1e05      	subs	r5, r0, #0
    74ac:	d0f9      	beq.n	74a2 <rt_mbx_psh+0x1a>
    74ae:	0020      	movs	r0, r4
    74b0:	f000 f87e 	bl	75b0 <rt_get_first>
    74b4:	0029      	movs	r1, r5
    74b6:	0004      	movs	r4, r0
    74b8:	f7ff fc48 	bl	6d4c <rt_ret_val>
    74bc:	2301      	movs	r3, #1
    74be:	7063      	strb	r3, [r4, #1]
    74c0:	e007      	b.n	74d2 <rt_mbx_psh+0x4a>
    74c2:	f000 f875 	bl	75b0 <rt_get_first>
    74c6:	0004      	movs	r4, r0
    74c8:	0032      	movs	r2, r6
    74ca:	2110      	movs	r1, #16
    74cc:	f7ff fc42 	bl	6d54 <rt_ret_val2>
    74d0:	7065      	strb	r5, [r4, #1]
    74d2:	0020      	movs	r0, r4
    74d4:	f000 f9a4 	bl	7820 <rt_rmv_dly>
    74d8:	0021      	movs	r1, r4
    74da:	4821      	ldr	r0, [pc, #132]	; (7560 <rt_mbx_psh+0xd8>)
    74dc:	f000 f842 	bl	7564 <rt_put_prio>
    74e0:	e7df      	b.n	74a2 <rt_mbx_psh+0x1a>
    74e2:	f000 f865 	bl	75b0 <rt_get_first>
    74e6:	0005      	movs	r5, r0
    74e8:	2100      	movs	r1, #0
    74ea:	f7ff fc2f 	bl	6d4c <rt_ret_val>
    74ee:	8923      	ldrh	r3, [r4, #8]
    74f0:	69e9      	ldr	r1, [r5, #28]
    74f2:	1d1a      	adds	r2, r3, #4
    74f4:	0092      	lsls	r2, r2, #2
    74f6:	5111      	str	r1, [r2, r4]
    74f8:	f3ef 8210 	mrs	r2, PRIMASK
    74fc:	b672      	cpsid	i
    74fe:	89a2      	ldrh	r2, [r4, #12]
    7500:	3201      	adds	r2, #1
    7502:	81a2      	strh	r2, [r4, #12]
    7504:	b662      	cpsie	i
    7506:	3301      	adds	r3, #1
    7508:	89e2      	ldrh	r2, [r4, #14]
    750a:	b29b      	uxth	r3, r3
    750c:	8123      	strh	r3, [r4, #8]
    750e:	429a      	cmp	r2, r3
    7510:	d009      	beq.n	7526 <rt_mbx_psh+0x9e>
    7512:	2301      	movs	r3, #1
    7514:	0028      	movs	r0, r5
    7516:	706b      	strb	r3, [r5, #1]
    7518:	f000 f982 	bl	7820 <rt_rmv_dly>
    751c:	0029      	movs	r1, r5
    751e:	4810      	ldr	r0, [pc, #64]	; (7560 <rt_mbx_psh+0xd8>)
    7520:	f000 f820 	bl	7564 <rt_put_prio>
    7524:	e7bd      	b.n	74a2 <rt_mbx_psh+0x1a>
    7526:	2300      	movs	r3, #0
    7528:	8123      	strh	r3, [r4, #8]
    752a:	e7f2      	b.n	7512 <rt_mbx_psh+0x8a>
    752c:	8981      	ldrh	r1, [r0, #12]
    752e:	89c5      	ldrh	r5, [r0, #14]
    7530:	42a9      	cmp	r1, r5
    7532:	d20f      	bcs.n	7554 <rt_mbx_psh+0xcc>
    7534:	8902      	ldrh	r2, [r0, #8]
    7536:	1d10      	adds	r0, r2, #4
    7538:	0080      	lsls	r0, r0, #2
    753a:	5106      	str	r6, [r0, r4]
    753c:	f3ef 8010 	mrs	r0, PRIMASK
    7540:	b672      	cpsid	i
    7542:	3101      	adds	r1, #1
    7544:	81a1      	strh	r1, [r4, #12]
    7546:	b662      	cpsie	i
    7548:	3201      	adds	r2, #1
    754a:	b292      	uxth	r2, r2
    754c:	4295      	cmp	r5, r2
    754e:	d005      	beq.n	755c <rt_mbx_psh+0xd4>
    7550:	8122      	strh	r2, [r4, #8]
    7552:	e7a6      	b.n	74a2 <rt_mbx_psh+0x1a>
    7554:	2003      	movs	r0, #3
    7556:	f7fa fa67 	bl	1a28 <os_error>
    755a:	e7a2      	b.n	74a2 <rt_mbx_psh+0x1a>
    755c:	8123      	strh	r3, [r4, #8]
    755e:	e7a0      	b.n	74a2 <rt_mbx_psh+0x1a>
    7560:	20006038 	.word	0x20006038

00007564 <rt_put_prio>:
    7564:	b530      	push	{r4, r5, lr}
    7566:	7805      	ldrb	r5, [r0, #0]
    7568:	6842      	ldr	r2, [r0, #4]
    756a:	3d01      	subs	r5, #1
    756c:	b2ed      	uxtb	r5, r5
    756e:	788c      	ldrb	r4, [r1, #2]
    7570:	2a00      	cmp	r2, #0
    7572:	d01a      	beq.n	75aa <rt_put_prio+0x46>
    7574:	7893      	ldrb	r3, [r2, #2]
    7576:	42a3      	cmp	r3, r4
    7578:	d204      	bcs.n	7584 <rt_put_prio+0x20>
    757a:	e00e      	b.n	759a <rt_put_prio+0x36>
    757c:	7898      	ldrb	r0, [r3, #2]
    757e:	4284      	cmp	r4, r0
    7580:	d80d      	bhi.n	759e <rt_put_prio+0x3a>
    7582:	001a      	movs	r2, r3
    7584:	6853      	ldr	r3, [r2, #4]
    7586:	2b00      	cmp	r3, #0
    7588:	d1f8      	bne.n	757c <rt_put_prio+0x18>
    758a:	2300      	movs	r3, #0
    758c:	604b      	str	r3, [r1, #4]
    758e:	6051      	str	r1, [r2, #4]
    7590:	2d02      	cmp	r5, #2
    7592:	d900      	bls.n	7596 <rt_put_prio+0x32>
    7594:	2200      	movs	r2, #0
    7596:	608a      	str	r2, [r1, #8]
    7598:	bd30      	pop	{r4, r5, pc}
    759a:	0013      	movs	r3, r2
    759c:	0002      	movs	r2, r0
    759e:	604b      	str	r3, [r1, #4]
    75a0:	6051      	str	r1, [r2, #4]
    75a2:	2d02      	cmp	r5, #2
    75a4:	d8f6      	bhi.n	7594 <rt_put_prio+0x30>
    75a6:	6099      	str	r1, [r3, #8]
    75a8:	e7f5      	b.n	7596 <rt_put_prio+0x32>
    75aa:	0002      	movs	r2, r0
    75ac:	e7ed      	b.n	758a <rt_put_prio+0x26>
    75ae:	46c0      	nop			; (mov r8, r8)

000075b0 <rt_get_first>:
    75b0:	6843      	ldr	r3, [r0, #4]
    75b2:	7802      	ldrb	r2, [r0, #0]
    75b4:	6859      	ldr	r1, [r3, #4]
    75b6:	3a01      	subs	r2, #1
    75b8:	6041      	str	r1, [r0, #4]
    75ba:	2a02      	cmp	r2, #2
    75bc:	d808      	bhi.n	75d0 <rt_get_first+0x20>
    75be:	2900      	cmp	r1, #0
    75c0:	d002      	beq.n	75c8 <rt_get_first+0x18>
    75c2:	2200      	movs	r2, #0
    75c4:	6088      	str	r0, [r1, #8]
    75c6:	605a      	str	r2, [r3, #4]
    75c8:	2200      	movs	r2, #0
    75ca:	609a      	str	r2, [r3, #8]
    75cc:	0018      	movs	r0, r3
    75ce:	4770      	bx	lr
    75d0:	2200      	movs	r2, #0
    75d2:	605a      	str	r2, [r3, #4]
    75d4:	e7fa      	b.n	75cc <rt_get_first+0x1c>
    75d6:	46c0      	nop			; (mov r8, r8)

000075d8 <rt_put_rdy_first>:
    75d8:	4b03      	ldr	r3, [pc, #12]	; (75e8 <rt_put_rdy_first+0x10>)
    75da:	685a      	ldr	r2, [r3, #4]
    75dc:	6042      	str	r2, [r0, #4]
    75de:	2200      	movs	r2, #0
    75e0:	6058      	str	r0, [r3, #4]
    75e2:	6082      	str	r2, [r0, #8]
    75e4:	4770      	bx	lr
    75e6:	46c0      	nop			; (mov r8, r8)
    75e8:	20006038 	.word	0x20006038

000075ec <rt_get_same_rdy_prio>:
    75ec:	4b06      	ldr	r3, [pc, #24]	; (7608 <rt_get_same_rdy_prio+0x1c>)
    75ee:	4a07      	ldr	r2, [pc, #28]	; (760c <rt_get_same_rdy_prio+0x20>)
    75f0:	6858      	ldr	r0, [r3, #4]
    75f2:	6812      	ldr	r2, [r2, #0]
    75f4:	7881      	ldrb	r1, [r0, #2]
    75f6:	7892      	ldrb	r2, [r2, #2]
    75f8:	4291      	cmp	r1, r2
    75fa:	d102      	bne.n	7602 <rt_get_same_rdy_prio+0x16>
    75fc:	6842      	ldr	r2, [r0, #4]
    75fe:	605a      	str	r2, [r3, #4]
    7600:	4770      	bx	lr
    7602:	2000      	movs	r0, #0
    7604:	e7fc      	b.n	7600 <rt_get_same_rdy_prio+0x14>
    7606:	46c0      	nop			; (mov r8, r8)
    7608:	20006038 	.word	0x20006038
    760c:	2000606c 	.word	0x2000606c

00007610 <rt_resort_prio>:
    7610:	6881      	ldr	r1, [r0, #8]
    7612:	b530      	push	{r4, r5, lr}
    7614:	2900      	cmp	r1, #0
    7616:	d030      	beq.n	767a <rt_resort_prio+0x6a>
    7618:	780b      	ldrb	r3, [r1, #0]
    761a:	000a      	movs	r2, r1
    761c:	2b00      	cmp	r3, #0
    761e:	d103      	bne.n	7628 <rt_resort_prio+0x18>
    7620:	6892      	ldr	r2, [r2, #8]
    7622:	7813      	ldrb	r3, [r2, #0]
    7624:	2b00      	cmp	r3, #0
    7626:	d0fb      	beq.n	7620 <rt_resort_prio+0x10>
    7628:	6843      	ldr	r3, [r0, #4]
    762a:	604b      	str	r3, [r1, #4]
    762c:	6843      	ldr	r3, [r0, #4]
    762e:	2b00      	cmp	r3, #0
    7630:	d000      	beq.n	7634 <rt_resort_prio+0x24>
    7632:	6099      	str	r1, [r3, #8]
    7634:	7815      	ldrb	r5, [r2, #0]
    7636:	6851      	ldr	r1, [r2, #4]
    7638:	3d01      	subs	r5, #1
    763a:	b2ed      	uxtb	r5, r5
    763c:	7884      	ldrb	r4, [r0, #2]
    763e:	2900      	cmp	r1, #0
    7640:	d029      	beq.n	7696 <rt_resort_prio+0x86>
    7642:	788b      	ldrb	r3, [r1, #2]
    7644:	42a3      	cmp	r3, r4
    7646:	d204      	bcs.n	7652 <rt_resort_prio+0x42>
    7648:	e00e      	b.n	7668 <rt_resort_prio+0x58>
    764a:	789a      	ldrb	r2, [r3, #2]
    764c:	4294      	cmp	r4, r2
    764e:	d80d      	bhi.n	766c <rt_resort_prio+0x5c>
    7650:	0019      	movs	r1, r3
    7652:	684b      	ldr	r3, [r1, #4]
    7654:	2b00      	cmp	r3, #0
    7656:	d1f8      	bne.n	764a <rt_resort_prio+0x3a>
    7658:	2300      	movs	r3, #0
    765a:	6043      	str	r3, [r0, #4]
    765c:	6048      	str	r0, [r1, #4]
    765e:	2d02      	cmp	r5, #2
    7660:	d909      	bls.n	7676 <rt_resort_prio+0x66>
    7662:	2300      	movs	r3, #0
    7664:	6083      	str	r3, [r0, #8]
    7666:	bd30      	pop	{r4, r5, pc}
    7668:	000b      	movs	r3, r1
    766a:	0011      	movs	r1, r2
    766c:	6043      	str	r3, [r0, #4]
    766e:	6048      	str	r0, [r1, #4]
    7670:	2d02      	cmp	r5, #2
    7672:	d8f6      	bhi.n	7662 <rt_resort_prio+0x52>
    7674:	6098      	str	r0, [r3, #8]
    7676:	6081      	str	r1, [r0, #8]
    7678:	e7f5      	b.n	7666 <rt_resort_prio+0x56>
    767a:	7843      	ldrb	r3, [r0, #1]
    767c:	2b01      	cmp	r3, #1
    767e:	d1f2      	bne.n	7666 <rt_resort_prio+0x56>
    7680:	4a06      	ldr	r2, [pc, #24]	; (769c <rt_resort_prio+0x8c>)
    7682:	0013      	movs	r3, r2
    7684:	e001      	b.n	768a <rt_resort_prio+0x7a>
    7686:	1e0b      	subs	r3, r1, #0
    7688:	d0d4      	beq.n	7634 <rt_resort_prio+0x24>
    768a:	6859      	ldr	r1, [r3, #4]
    768c:	4288      	cmp	r0, r1
    768e:	d1fa      	bne.n	7686 <rt_resort_prio+0x76>
    7690:	6841      	ldr	r1, [r0, #4]
    7692:	6059      	str	r1, [r3, #4]
    7694:	e7ce      	b.n	7634 <rt_resort_prio+0x24>
    7696:	0011      	movs	r1, r2
    7698:	e7de      	b.n	7658 <rt_resort_prio+0x48>
    769a:	46c0      	nop			; (mov r8, r8)
    769c:	20006038 	.word	0x20006038

000076a0 <rt_put_dly>:
    76a0:	b530      	push	{r4, r5, lr}
    76a2:	4c17      	ldr	r4, [pc, #92]	; (7700 <rt_put_dly+0x60>)
    76a4:	68e2      	ldr	r2, [r4, #12]
    76a6:	2a00      	cmp	r2, #0
    76a8:	d023      	beq.n	76f2 <rt_put_dly+0x52>
    76aa:	8aa3      	ldrh	r3, [r4, #20]
    76ac:	4299      	cmp	r1, r3
    76ae:	d804      	bhi.n	76ba <rt_put_dly+0x1a>
    76b0:	e022      	b.n	76f8 <rt_put_dly+0x58>
    76b2:	68d4      	ldr	r4, [r2, #12]
    76b4:	2c00      	cmp	r4, #0
    76b6:	d013      	beq.n	76e0 <rt_put_dly+0x40>
    76b8:	0022      	movs	r2, r4
    76ba:	8a94      	ldrh	r4, [r2, #20]
    76bc:	191b      	adds	r3, r3, r4
    76be:	4299      	cmp	r1, r3
    76c0:	d8f7      	bhi.n	76b2 <rt_put_dly+0x12>
    76c2:	68d5      	ldr	r5, [r2, #12]
    76c4:	60c5      	str	r5, [r0, #12]
    76c6:	60d0      	str	r0, [r2, #12]
    76c8:	68c4      	ldr	r4, [r0, #12]
    76ca:	6102      	str	r2, [r0, #16]
    76cc:	2c00      	cmp	r4, #0
    76ce:	d000      	beq.n	76d2 <rt_put_dly+0x32>
    76d0:	6120      	str	r0, [r4, #16]
    76d2:	1a5b      	subs	r3, r3, r1
    76d4:	b29b      	uxth	r3, r3
    76d6:	8283      	strh	r3, [r0, #20]
    76d8:	8a91      	ldrh	r1, [r2, #20]
    76da:	1acb      	subs	r3, r1, r3
    76dc:	8293      	strh	r3, [r2, #20]
    76de:	bd30      	pop	{r4, r5, pc}
    76e0:	b29b      	uxth	r3, r3
    76e2:	2400      	movs	r4, #0
    76e4:	1acb      	subs	r3, r1, r3
    76e6:	60c4      	str	r4, [r0, #12]
    76e8:	60d0      	str	r0, [r2, #12]
    76ea:	6102      	str	r2, [r0, #16]
    76ec:	8293      	strh	r3, [r2, #20]
    76ee:	8284      	strh	r4, [r0, #20]
    76f0:	e7f5      	b.n	76de <rt_put_dly+0x3e>
    76f2:	2300      	movs	r3, #0
    76f4:	0022      	movs	r2, r4
    76f6:	e7f4      	b.n	76e2 <rt_put_dly+0x42>
    76f8:	0015      	movs	r5, r2
    76fa:	0022      	movs	r2, r4
    76fc:	e7e2      	b.n	76c4 <rt_put_dly+0x24>
    76fe:	46c0      	nop			; (mov r8, r8)
    7700:	20006050 	.word	0x20006050

00007704 <rt_dec_dly>:
    7704:	b5f0      	push	{r4, r5, r6, r7, lr}
    7706:	464e      	mov	r6, r9
    7708:	4657      	mov	r7, sl
    770a:	4645      	mov	r5, r8
    770c:	b4e0      	push	{r5, r6, r7}
    770e:	4e36      	ldr	r6, [pc, #216]	; (77e8 <rt_dec_dly+0xe4>)
    7710:	68f0      	ldr	r0, [r6, #12]
    7712:	2800      	cmp	r0, #0
    7714:	d059      	beq.n	77ca <rt_dec_dly+0xc6>
    7716:	8ab3      	ldrh	r3, [r6, #20]
    7718:	3b01      	subs	r3, #1
    771a:	b29b      	uxth	r3, r3
    771c:	82b3      	strh	r3, [r6, #20]
    771e:	2b00      	cmp	r3, #0
    7720:	d153      	bne.n	77ca <rt_dec_dly+0xc6>
    7722:	4b32      	ldr	r3, [pc, #200]	; (77ec <rt_dec_dly+0xe8>)
    7724:	2500      	movs	r5, #0
    7726:	469c      	mov	ip, r3
    7728:	781f      	ldrb	r7, [r3, #0]
    772a:	4b31      	ldr	r3, [pc, #196]	; (77f0 <rt_dec_dly+0xec>)
    772c:	46e2      	mov	sl, ip
    772e:	881b      	ldrh	r3, [r3, #0]
    7730:	3f01      	subs	r7, #1
    7732:	4699      	mov	r9, r3
    7734:	2301      	movs	r3, #1
    7736:	4698      	mov	r8, r3
    7738:	b2ff      	uxtb	r7, r7
    773a:	6883      	ldr	r3, [r0, #8]
    773c:	2b00      	cmp	r3, #0
    773e:	d007      	beq.n	7750 <rt_dec_dly+0x4c>
    7740:	6842      	ldr	r2, [r0, #4]
    7742:	605a      	str	r2, [r3, #4]
    7744:	6842      	ldr	r2, [r0, #4]
    7746:	2a00      	cmp	r2, #0
    7748:	d001      	beq.n	774e <rt_dec_dly+0x4a>
    774a:	6093      	str	r3, [r2, #8]
    774c:	6045      	str	r5, [r0, #4]
    774e:	6085      	str	r5, [r0, #8]
    7750:	4663      	mov	r3, ip
    7752:	685a      	ldr	r2, [r3, #4]
    7754:	7884      	ldrb	r4, [r0, #2]
    7756:	2a00      	cmp	r2, #0
    7758:	d03c      	beq.n	77d4 <rt_dec_dly+0xd0>
    775a:	7893      	ldrb	r3, [r2, #2]
    775c:	42a3      	cmp	r3, r4
    775e:	d204      	bcs.n	776a <rt_dec_dly+0x66>
    7760:	e01c      	b.n	779c <rt_dec_dly+0x98>
    7762:	7899      	ldrb	r1, [r3, #2]
    7764:	428c      	cmp	r4, r1
    7766:	d81b      	bhi.n	77a0 <rt_dec_dly+0x9c>
    7768:	001a      	movs	r2, r3
    776a:	6853      	ldr	r3, [r2, #4]
    776c:	2b00      	cmp	r3, #0
    776e:	d1f8      	bne.n	7762 <rt_dec_dly+0x5e>
    7770:	6045      	str	r5, [r0, #4]
    7772:	6050      	str	r0, [r2, #4]
    7774:	2f02      	cmp	r7, #2
    7776:	d900      	bls.n	777a <rt_dec_dly+0x76>
    7778:	2200      	movs	r2, #0
    777a:	7843      	ldrb	r3, [r0, #1]
    777c:	6082      	str	r2, [r0, #8]
    777e:	8a82      	ldrh	r2, [r0, #20]
    7780:	2b04      	cmp	r3, #4
    7782:	d017      	beq.n	77b4 <rt_dec_dly+0xb0>
    7784:	4643      	mov	r3, r8
    7786:	7043      	strb	r3, [r0, #1]
    7788:	68c3      	ldr	r3, [r0, #12]
    778a:	2b00      	cmp	r3, #0
    778c:	d01a      	beq.n	77c4 <rt_dec_dly+0xc0>
    778e:	611e      	str	r6, [r3, #16]
    7790:	60c5      	str	r5, [r0, #12]
    7792:	6105      	str	r5, [r0, #16]
    7794:	2a00      	cmp	r2, #0
    7796:	d123      	bne.n	77e0 <rt_dec_dly+0xdc>
    7798:	0018      	movs	r0, r3
    779a:	e7ce      	b.n	773a <rt_dec_dly+0x36>
    779c:	0013      	movs	r3, r2
    779e:	4652      	mov	r2, sl
    77a0:	6043      	str	r3, [r0, #4]
    77a2:	6050      	str	r0, [r2, #4]
    77a4:	2f02      	cmp	r7, #2
    77a6:	d8e7      	bhi.n	7778 <rt_dec_dly+0x74>
    77a8:	6098      	str	r0, [r3, #8]
    77aa:	7843      	ldrb	r3, [r0, #1]
    77ac:	6082      	str	r2, [r0, #8]
    77ae:	8a82      	ldrh	r2, [r0, #20]
    77b0:	2b04      	cmp	r3, #4
    77b2:	d1e7      	bne.n	7784 <rt_dec_dly+0x80>
    77b4:	8ac3      	ldrh	r3, [r0, #22]
    77b6:	444b      	add	r3, r9
    77b8:	8283      	strh	r3, [r0, #20]
    77ba:	4643      	mov	r3, r8
    77bc:	7043      	strb	r3, [r0, #1]
    77be:	68c3      	ldr	r3, [r0, #12]
    77c0:	2b00      	cmp	r3, #0
    77c2:	d1e4      	bne.n	778e <rt_dec_dly+0x8a>
    77c4:	82b2      	strh	r2, [r6, #20]
    77c6:	60f3      	str	r3, [r6, #12]
    77c8:	6103      	str	r3, [r0, #16]
    77ca:	bc1c      	pop	{r2, r3, r4}
    77cc:	4690      	mov	r8, r2
    77ce:	4699      	mov	r9, r3
    77d0:	46a2      	mov	sl, r4
    77d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    77d4:	4652      	mov	r2, sl
    77d6:	6045      	str	r5, [r0, #4]
    77d8:	6050      	str	r0, [r2, #4]
    77da:	2f02      	cmp	r7, #2
    77dc:	d8cc      	bhi.n	7778 <rt_dec_dly+0x74>
    77de:	e7cc      	b.n	777a <rt_dec_dly+0x76>
    77e0:	82b2      	strh	r2, [r6, #20]
    77e2:	60f3      	str	r3, [r6, #12]
    77e4:	e7f1      	b.n	77ca <rt_dec_dly+0xc6>
    77e6:	46c0      	nop			; (mov r8, r8)
    77e8:	20006050 	.word	0x20006050
    77ec:	20006038 	.word	0x20006038
    77f0:	20006034 	.word	0x20006034

000077f4 <rt_rmv_list>:
    77f4:	6883      	ldr	r3, [r0, #8]
    77f6:	2b00      	cmp	r3, #0
    77f8:	d006      	beq.n	7808 <rt_rmv_list+0x14>
    77fa:	6842      	ldr	r2, [r0, #4]
    77fc:	605a      	str	r2, [r3, #4]
    77fe:	6842      	ldr	r2, [r0, #4]
    7800:	2a00      	cmp	r2, #0
    7802:	d000      	beq.n	7806 <rt_rmv_list+0x12>
    7804:	6093      	str	r3, [r2, #8]
    7806:	4770      	bx	lr
    7808:	4b04      	ldr	r3, [pc, #16]	; (781c <rt_rmv_list+0x28>)
    780a:	e001      	b.n	7810 <rt_rmv_list+0x1c>
    780c:	1e13      	subs	r3, r2, #0
    780e:	d0fa      	beq.n	7806 <rt_rmv_list+0x12>
    7810:	685a      	ldr	r2, [r3, #4]
    7812:	4290      	cmp	r0, r2
    7814:	d1fa      	bne.n	780c <rt_rmv_list+0x18>
    7816:	6842      	ldr	r2, [r0, #4]
    7818:	605a      	str	r2, [r3, #4]
    781a:	e7f4      	b.n	7806 <rt_rmv_list+0x12>
    781c:	20006038 	.word	0x20006038

00007820 <rt_rmv_dly>:
    7820:	6903      	ldr	r3, [r0, #16]
    7822:	b510      	push	{r4, lr}
    7824:	2b00      	cmp	r3, #0
    7826:	d00d      	beq.n	7844 <rt_rmv_dly+0x24>
    7828:	68c2      	ldr	r2, [r0, #12]
    782a:	60da      	str	r2, [r3, #12]
    782c:	68c1      	ldr	r1, [r0, #12]
    782e:	2900      	cmp	r1, #0
    7830:	d009      	beq.n	7846 <rt_rmv_dly+0x26>
    7832:	8a9c      	ldrh	r4, [r3, #20]
    7834:	8a82      	ldrh	r2, [r0, #20]
    7836:	18a2      	adds	r2, r4, r2
    7838:	829a      	strh	r2, [r3, #20]
    783a:	610b      	str	r3, [r1, #16]
    783c:	2300      	movs	r3, #0
    783e:	60c3      	str	r3, [r0, #12]
    7840:	2300      	movs	r3, #0
    7842:	6103      	str	r3, [r0, #16]
    7844:	bd10      	pop	{r4, pc}
    7846:	8299      	strh	r1, [r3, #20]
    7848:	e7fa      	b.n	7840 <rt_rmv_dly+0x20>
    784a:	46c0      	nop			; (mov r8, r8)

0000784c <rt_psq_enq>:
    784c:	b570      	push	{r4, r5, r6, lr}
    784e:	4c0f      	ldr	r4, [pc, #60]	; (788c <rt_psq_enq+0x40>)
    7850:	78e5      	ldrb	r5, [r4, #3]
    7852:	f3ef 8310 	mrs	r3, PRIMASK
    7856:	b672      	cpsid	i
    7858:	78a3      	ldrb	r3, [r4, #2]
    785a:	429d      	cmp	r5, r3
    785c:	d907      	bls.n	786e <rt_psq_enq+0x22>
    785e:	1c5a      	adds	r2, r3, #1
    7860:	7823      	ldrb	r3, [r4, #0]
    7862:	70a2      	strb	r2, [r4, #2]
    7864:	1c5a      	adds	r2, r3, #1
    7866:	4295      	cmp	r5, r2
    7868:	d00d      	beq.n	7886 <rt_psq_enq+0x3a>
    786a:	b2d2      	uxtb	r2, r2
    786c:	7022      	strb	r2, [r4, #0]
    786e:	b662      	cpsie	i
    7870:	429d      	cmp	r5, r3
    7872:	d904      	bls.n	787e <rt_psq_enq+0x32>
    7874:	00db      	lsls	r3, r3, #3
    7876:	18e3      	adds	r3, r4, r3
    7878:	6058      	str	r0, [r3, #4]
    787a:	6099      	str	r1, [r3, #8]
    787c:	bd70      	pop	{r4, r5, r6, pc}
    787e:	2002      	movs	r0, #2
    7880:	f7fa f8d2 	bl	1a28 <os_error>
    7884:	e7fa      	b.n	787c <rt_psq_enq+0x30>
    7886:	2200      	movs	r2, #0
    7888:	7022      	strb	r2, [r4, #0]
    788a:	e7f0      	b.n	786e <rt_psq_enq+0x22>
    788c:	20004c60 	.word	0x20004c60

00007890 <rt_evt_wait>:
    7890:	4b10      	ldr	r3, [pc, #64]	; (78d4 <rt_evt_wait+0x44>)
    7892:	b570      	push	{r4, r5, r6, lr}
    7894:	681b      	ldr	r3, [r3, #0]
    7896:	000c      	movs	r4, r1
    7898:	2a00      	cmp	r2, #0
    789a:	d00b      	beq.n	78b4 <rt_evt_wait+0x24>
    789c:	0005      	movs	r5, r0
    789e:	8b1a      	ldrh	r2, [r3, #24]
    78a0:	2106      	movs	r1, #6
    78a2:	4015      	ands	r5, r2
    78a4:	42a8      	cmp	r0, r5
    78a6:	d00a      	beq.n	78be <rt_evt_wait+0x2e>
    78a8:	8358      	strh	r0, [r3, #26]
    78aa:	0020      	movs	r0, r4
    78ac:	f000 fa94 	bl	7dd8 <rt_block>
    78b0:	2001      	movs	r0, #1
    78b2:	e007      	b.n	78c4 <rt_evt_wait+0x34>
    78b4:	8b1a      	ldrh	r2, [r3, #24]
    78b6:	0011      	movs	r1, r2
    78b8:	4001      	ands	r1, r0
    78ba:	d004      	beq.n	78c6 <rt_evt_wait+0x36>
    78bc:	8359      	strh	r1, [r3, #26]
    78be:	4382      	bics	r2, r0
    78c0:	2002      	movs	r0, #2
    78c2:	831a      	strh	r2, [r3, #24]
    78c4:	bd70      	pop	{r4, r5, r6, pc}
    78c6:	8358      	strh	r0, [r3, #26]
    78c8:	2105      	movs	r1, #5
    78ca:	0020      	movs	r0, r4
    78cc:	f000 fa84 	bl	7dd8 <rt_block>
    78d0:	2001      	movs	r0, #1
    78d2:	e7f7      	b.n	78c4 <rt_evt_wait+0x34>
    78d4:	2000606c 	.word	0x2000606c

000078d8 <rt_evt_set>:
    78d8:	3901      	subs	r1, #1
    78da:	4b14      	ldr	r3, [pc, #80]	; (792c <rt_evt_set+0x54>)
    78dc:	0089      	lsls	r1, r1, #2
    78de:	b510      	push	{r4, lr}
    78e0:	58cc      	ldr	r4, [r1, r3]
    78e2:	2c00      	cmp	r4, #0
    78e4:	d008      	beq.n	78f8 <rt_evt_set+0x20>
    78e6:	8b23      	ldrh	r3, [r4, #24]
    78e8:	8b62      	ldrh	r2, [r4, #26]
    78ea:	4318      	orrs	r0, r3
    78ec:	7863      	ldrb	r3, [r4, #1]
    78ee:	8320      	strh	r0, [r4, #24]
    78f0:	2b06      	cmp	r3, #6
    78f2:	d016      	beq.n	7922 <rt_evt_set+0x4a>
    78f4:	2b05      	cmp	r3, #5
    78f6:	d000      	beq.n	78fa <rt_evt_set+0x22>
    78f8:	bd10      	pop	{r4, pc}
    78fa:	0013      	movs	r3, r2
    78fc:	4003      	ands	r3, r0
    78fe:	d0fb      	beq.n	78f8 <rt_evt_set+0x20>
    7900:	8363      	strh	r3, [r4, #26]
    7902:	4390      	bics	r0, r2
    7904:	8320      	strh	r0, [r4, #24]
    7906:	0020      	movs	r0, r4
    7908:	f7ff ff8a 	bl	7820 <rt_rmv_dly>
    790c:	2301      	movs	r3, #1
    790e:	0020      	movs	r0, r4
    7910:	7063      	strb	r3, [r4, #1]
    7912:	8b62      	ldrh	r2, [r4, #26]
    7914:	2108      	movs	r1, #8
    7916:	f7ff fa1d 	bl	6d54 <rt_ret_val2>
    791a:	0020      	movs	r0, r4
    791c:	f000 fa36 	bl	7d8c <rt_dispatch>
    7920:	e7ea      	b.n	78f8 <rt_evt_set+0x20>
    7922:	0013      	movs	r3, r2
    7924:	4003      	ands	r3, r0
    7926:	429a      	cmp	r2, r3
    7928:	d1e6      	bne.n	78f8 <rt_evt_set+0x20>
    792a:	e7ea      	b.n	7902 <rt_evt_set+0x2a>
    792c:	20004ce4 	.word	0x20004ce4

00007930 <rt_evt_clr>:
    7930:	3901      	subs	r1, #1
    7932:	4b04      	ldr	r3, [pc, #16]	; (7944 <rt_evt_clr+0x14>)
    7934:	0089      	lsls	r1, r1, #2
    7936:	58cb      	ldr	r3, [r1, r3]
    7938:	2b00      	cmp	r3, #0
    793a:	d002      	beq.n	7942 <rt_evt_clr+0x12>
    793c:	8b1a      	ldrh	r2, [r3, #24]
    793e:	4382      	bics	r2, r0
    7940:	831a      	strh	r2, [r3, #24]
    7942:	4770      	bx	lr
    7944:	20004ce4 	.word	0x20004ce4

00007948 <isr_evt_set>:
    7948:	3901      	subs	r1, #1
    794a:	4b06      	ldr	r3, [pc, #24]	; (7964 <isr_evt_set+0x1c>)
    794c:	0089      	lsls	r1, r1, #2
    794e:	58cb      	ldr	r3, [r1, r3]
    7950:	b510      	push	{r4, lr}
    7952:	2b00      	cmp	r3, #0
    7954:	d005      	beq.n	7962 <isr_evt_set+0x1a>
    7956:	0001      	movs	r1, r0
    7958:	0018      	movs	r0, r3
    795a:	f7ff ff77 	bl	784c <rt_psq_enq>
    795e:	f000 f959 	bl	7c14 <rt_psh_req>
    7962:	bd10      	pop	{r4, pc}
    7964:	20004ce4 	.word	0x20004ce4

00007968 <rt_evt_get>:
    7968:	4b01      	ldr	r3, [pc, #4]	; (7970 <rt_evt_get+0x8>)
    796a:	681b      	ldr	r3, [r3, #0]
    796c:	8b58      	ldrh	r0, [r3, #26]
    796e:	4770      	bx	lr
    7970:	2000606c 	.word	0x2000606c

00007974 <rt_evt_psh>:
    7974:	b510      	push	{r4, lr}
    7976:	8b03      	ldrh	r3, [r0, #24]
    7978:	0004      	movs	r4, r0
    797a:	4319      	orrs	r1, r3
    797c:	7843      	ldrb	r3, [r0, #1]
    797e:	8301      	strh	r1, [r0, #24]
    7980:	8b42      	ldrh	r2, [r0, #26]
    7982:	2b06      	cmp	r3, #6
    7984:	d017      	beq.n	79b6 <rt_evt_psh+0x42>
    7986:	2b05      	cmp	r3, #5
    7988:	d000      	beq.n	798c <rt_evt_psh+0x18>
    798a:	bd10      	pop	{r4, pc}
    798c:	0013      	movs	r3, r2
    798e:	400b      	ands	r3, r1
    7990:	d0fb      	beq.n	798a <rt_evt_psh+0x16>
    7992:	8343      	strh	r3, [r0, #26]
    7994:	4391      	bics	r1, r2
    7996:	8321      	strh	r1, [r4, #24]
    7998:	0020      	movs	r0, r4
    799a:	f7ff ff41 	bl	7820 <rt_rmv_dly>
    799e:	2301      	movs	r3, #1
    79a0:	0020      	movs	r0, r4
    79a2:	7063      	strb	r3, [r4, #1]
    79a4:	8b62      	ldrh	r2, [r4, #26]
    79a6:	2108      	movs	r1, #8
    79a8:	f7ff f9d4 	bl	6d54 <rt_ret_val2>
    79ac:	0021      	movs	r1, r4
    79ae:	4804      	ldr	r0, [pc, #16]	; (79c0 <rt_evt_psh+0x4c>)
    79b0:	f7ff fdd8 	bl	7564 <rt_put_prio>
    79b4:	e7e9      	b.n	798a <rt_evt_psh+0x16>
    79b6:	0013      	movs	r3, r2
    79b8:	400b      	ands	r3, r1
    79ba:	429a      	cmp	r2, r3
    79bc:	d1e5      	bne.n	798a <rt_evt_psh+0x16>
    79be:	e7e9      	b.n	7994 <rt_evt_psh+0x20>
    79c0:	20006038 	.word	0x20006038

000079c4 <rt_suspend>:
    79c4:	4b1c      	ldr	r3, [pc, #112]	; (7a38 <rt_suspend+0x74>)
    79c6:	b510      	push	{r4, lr}
    79c8:	681b      	ldr	r3, [r3, #0]
    79ca:	2b00      	cmp	r3, #0
    79cc:	db20      	blt.n	7a10 <rt_suspend+0x4c>
    79ce:	491b      	ldr	r1, [pc, #108]	; (7a3c <rt_suspend+0x78>)
    79d0:	095a      	lsrs	r2, r3, #5
    79d2:	468c      	mov	ip, r1
    79d4:	211f      	movs	r1, #31
    79d6:	400b      	ands	r3, r1
    79d8:	391e      	subs	r1, #30
    79da:	0008      	movs	r0, r1
    79dc:	4098      	lsls	r0, r3
    79de:	0092      	lsls	r2, r2, #2
    79e0:	4462      	add	r2, ip
    79e2:	6010      	str	r0, [r2, #0]
    79e4:	4816      	ldr	r0, [pc, #88]	; (7a40 <rt_suspend+0x7c>)
    79e6:	4a17      	ldr	r2, [pc, #92]	; (7a44 <rt_suspend+0x80>)
    79e8:	7001      	strb	r1, [r0, #0]
    79ea:	6813      	ldr	r3, [r2, #0]
    79ec:	0f1b      	lsrs	r3, r3, #28
    79ee:	400b      	ands	r3, r1
    79f0:	7043      	strb	r3, [r0, #1]
    79f2:	06db      	lsls	r3, r3, #27
    79f4:	6013      	str	r3, [r2, #0]
    79f6:	4b14      	ldr	r3, [pc, #80]	; (7a48 <rt_suspend+0x84>)
    79f8:	68da      	ldr	r2, [r3, #12]
    79fa:	2a00      	cmp	r2, #0
    79fc:	d019      	beq.n	7a32 <rt_suspend+0x6e>
    79fe:	8a9c      	ldrh	r4, [r3, #20]
    7a00:	f7fe f9e6 	bl	5dd0 <sysUserTimerWakeupTime>
    7a04:	0003      	movs	r3, r0
    7a06:	0020      	movs	r0, r4
    7a08:	429c      	cmp	r4, r3
    7a0a:	d900      	bls.n	7a0e <rt_suspend+0x4a>
    7a0c:	0018      	movs	r0, r3
    7a0e:	bd10      	pop	{r4, pc}
    7a10:	2005      	movs	r0, #5
    7a12:	4b0e      	ldr	r3, [pc, #56]	; (7a4c <rt_suspend+0x88>)
    7a14:	490a      	ldr	r1, [pc, #40]	; (7a40 <rt_suspend+0x7c>)
    7a16:	6018      	str	r0, [r3, #0]
    7a18:	2301      	movs	r3, #1
    7a1a:	4a0a      	ldr	r2, [pc, #40]	; (7a44 <rt_suspend+0x80>)
    7a1c:	700b      	strb	r3, [r1, #0]
    7a1e:	6813      	ldr	r3, [r2, #0]
    7a20:	0e9b      	lsrs	r3, r3, #26
    7a22:	4003      	ands	r3, r0
    7a24:	704b      	strb	r3, [r1, #1]
    7a26:	065b      	lsls	r3, r3, #25
    7a28:	6013      	str	r3, [r2, #0]
    7a2a:	4b07      	ldr	r3, [pc, #28]	; (7a48 <rt_suspend+0x84>)
    7a2c:	68da      	ldr	r2, [r3, #12]
    7a2e:	2a00      	cmp	r2, #0
    7a30:	d1e5      	bne.n	79fe <rt_suspend+0x3a>
    7a32:	4c07      	ldr	r4, [pc, #28]	; (7a50 <rt_suspend+0x8c>)
    7a34:	e7e4      	b.n	7a00 <rt_suspend+0x3c>
    7a36:	46c0      	nop			; (mov r8, r8)
    7a38:	20006068 	.word	0x20006068
    7a3c:	e000e180 	.word	0xe000e180
    7a40:	20005ff0 	.word	0x20005ff0
    7a44:	e000ed04 	.word	0xe000ed04
    7a48:	20006050 	.word	0x20006050
    7a4c:	e000e010 	.word	0xe000e010
    7a50:	0000ffff 	.word	0x0000ffff

00007a54 <rt_resume>:
    7a54:	b5f0      	push	{r4, r5, r6, r7, lr}
    7a56:	4647      	mov	r7, r8
    7a58:	4b32      	ldr	r3, [pc, #200]	; (7b24 <rt_resume+0xd0>)
    7a5a:	b480      	push	{r7}
    7a5c:	0007      	movs	r7, r0
    7a5e:	6818      	ldr	r0, [r3, #0]
    7a60:	2301      	movs	r3, #1
    7a62:	7043      	strb	r3, [r0, #1]
    7a64:	4698      	mov	r8, r3
    7a66:	f7ff fdb7 	bl	75d8 <rt_put_rdy_first>
    7a6a:	2200      	movs	r2, #0
    7a6c:	4b2e      	ldr	r3, [pc, #184]	; (7b28 <rt_resume+0xd4>)
    7a6e:	4e2f      	ldr	r6, [pc, #188]	; (7b2c <rt_resume+0xd8>)
    7a70:	601a      	str	r2, [r3, #0]
    7a72:	68f3      	ldr	r3, [r6, #12]
    7a74:	2b00      	cmp	r3, #0
    7a76:	d04f      	beq.n	7b18 <rt_resume+0xc4>
    7a78:	8ab3      	ldrh	r3, [r6, #20]
    7a7a:	429f      	cmp	r7, r3
    7a7c:	d336      	bcc.n	7aec <rt_resume+0x98>
    7a7e:	4d2c      	ldr	r5, [pc, #176]	; (7b30 <rt_resume+0xdc>)
    7a80:	1afc      	subs	r4, r7, r3
    7a82:	682a      	ldr	r2, [r5, #0]
    7a84:	4694      	mov	ip, r2
    7a86:	4463      	add	r3, ip
    7a88:	602b      	str	r3, [r5, #0]
    7a8a:	4643      	mov	r3, r8
    7a8c:	82b3      	strh	r3, [r6, #20]
    7a8e:	e006      	b.n	7a9e <rt_resume+0x4a>
    7a90:	682b      	ldr	r3, [r5, #0]
    7a92:	3c01      	subs	r4, #1
    7a94:	3301      	adds	r3, #1
    7a96:	602b      	str	r3, [r5, #0]
    7a98:	68f3      	ldr	r3, [r6, #12]
    7a9a:	2b00      	cmp	r3, #0
    7a9c:	d003      	beq.n	7aa6 <rt_resume+0x52>
    7a9e:	f7ff fe31 	bl	7704 <rt_dec_dly>
    7aa2:	2c00      	cmp	r4, #0
    7aa4:	d1f4      	bne.n	7a90 <rt_resume+0x3c>
    7aa6:	0038      	movs	r0, r7
    7aa8:	f7fe f99e 	bl	5de8 <sysUserTimerUpdate>
    7aac:	4821      	ldr	r0, [pc, #132]	; (7b34 <rt_resume+0xe0>)
    7aae:	f7ff fd7f 	bl	75b0 <rt_get_first>
    7ab2:	f000 f963 	bl	7d7c <rt_switch_req>
    7ab6:	4b20      	ldr	r3, [pc, #128]	; (7b38 <rt_resume+0xe4>)
    7ab8:	681b      	ldr	r3, [r3, #0]
    7aba:	2b00      	cmp	r3, #0
    7abc:	db1d      	blt.n	7afa <rt_resume+0xa6>
    7abe:	491f      	ldr	r1, [pc, #124]	; (7b3c <rt_resume+0xe8>)
    7ac0:	095a      	lsrs	r2, r3, #5
    7ac2:	468c      	mov	ip, r1
    7ac4:	211f      	movs	r1, #31
    7ac6:	400b      	ands	r3, r1
    7ac8:	391e      	subs	r1, #30
    7aca:	4099      	lsls	r1, r3
    7acc:	0092      	lsls	r2, r2, #2
    7ace:	4462      	add	r2, ip
    7ad0:	6011      	str	r1, [r2, #0]
    7ad2:	2100      	movs	r1, #0
    7ad4:	4a1a      	ldr	r2, [pc, #104]	; (7b40 <rt_resume+0xec>)
    7ad6:	7011      	strb	r1, [r2, #0]
    7ad8:	7890      	ldrb	r0, [r2, #2]
    7ada:	7853      	ldrb	r3, [r2, #1]
    7adc:	4303      	orrs	r3, r0
    7ade:	4819      	ldr	r0, [pc, #100]	; (7b44 <rt_resume+0xf0>)
    7ae0:	071b      	lsls	r3, r3, #28
    7ae2:	6003      	str	r3, [r0, #0]
    7ae4:	7091      	strb	r1, [r2, #2]
    7ae6:	bc04      	pop	{r2}
    7ae8:	4690      	mov	r8, r2
    7aea:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7aec:	4910      	ldr	r1, [pc, #64]	; (7b30 <rt_resume+0xdc>)
    7aee:	1bdb      	subs	r3, r3, r7
    7af0:	680a      	ldr	r2, [r1, #0]
    7af2:	82b3      	strh	r3, [r6, #20]
    7af4:	19d2      	adds	r2, r2, r7
    7af6:	600a      	str	r2, [r1, #0]
    7af8:	e7d5      	b.n	7aa6 <rt_resume+0x52>
    7afa:	2207      	movs	r2, #7
    7afc:	2000      	movs	r0, #0
    7afe:	4910      	ldr	r1, [pc, #64]	; (7b40 <rt_resume+0xec>)
    7b00:	4b11      	ldr	r3, [pc, #68]	; (7b48 <rt_resume+0xf4>)
    7b02:	601a      	str	r2, [r3, #0]
    7b04:	7008      	strb	r0, [r1, #0]
    7b06:	788b      	ldrb	r3, [r1, #2]
    7b08:	784a      	ldrb	r2, [r1, #1]
    7b0a:	009b      	lsls	r3, r3, #2
    7b0c:	4313      	orrs	r3, r2
    7b0e:	4a0d      	ldr	r2, [pc, #52]	; (7b44 <rt_resume+0xf0>)
    7b10:	069b      	lsls	r3, r3, #26
    7b12:	6013      	str	r3, [r2, #0]
    7b14:	7088      	strb	r0, [r1, #2]
    7b16:	e7e6      	b.n	7ae6 <rt_resume+0x92>
    7b18:	4a05      	ldr	r2, [pc, #20]	; (7b30 <rt_resume+0xdc>)
    7b1a:	6813      	ldr	r3, [r2, #0]
    7b1c:	19db      	adds	r3, r3, r7
    7b1e:	6013      	str	r3, [r2, #0]
    7b20:	e7c1      	b.n	7aa6 <rt_resume+0x52>
    7b22:	46c0      	nop			; (mov r8, r8)
    7b24:	2000606c 	.word	0x2000606c
    7b28:	200060a8 	.word	0x200060a8
    7b2c:	20006050 	.word	0x20006050
    7b30:	20006034 	.word	0x20006034
    7b34:	20006038 	.word	0x20006038
    7b38:	20006068 	.word	0x20006068
    7b3c:	e000e100 	.word	0xe000e100
    7b40:	20005ff0 	.word	0x20005ff0
    7b44:	e000ed04 	.word	0xe000ed04
    7b48:	e000e010 	.word	0xe000e010

00007b4c <rt_tsk_lock>:
    7b4c:	4b13      	ldr	r3, [pc, #76]	; (7b9c <rt_tsk_lock+0x50>)
    7b4e:	681b      	ldr	r3, [r3, #0]
    7b50:	2b00      	cmp	r3, #0
    7b52:	db14      	blt.n	7b7e <rt_tsk_lock+0x32>
    7b54:	4912      	ldr	r1, [pc, #72]	; (7ba0 <rt_tsk_lock+0x54>)
    7b56:	095a      	lsrs	r2, r3, #5
    7b58:	468c      	mov	ip, r1
    7b5a:	211f      	movs	r1, #31
    7b5c:	400b      	ands	r3, r1
    7b5e:	391e      	subs	r1, #30
    7b60:	0008      	movs	r0, r1
    7b62:	4098      	lsls	r0, r3
    7b64:	0092      	lsls	r2, r2, #2
    7b66:	4462      	add	r2, ip
    7b68:	6010      	str	r0, [r2, #0]
    7b6a:	480e      	ldr	r0, [pc, #56]	; (7ba4 <rt_tsk_lock+0x58>)
    7b6c:	4a0e      	ldr	r2, [pc, #56]	; (7ba8 <rt_tsk_lock+0x5c>)
    7b6e:	7001      	strb	r1, [r0, #0]
    7b70:	6813      	ldr	r3, [r2, #0]
    7b72:	0f1b      	lsrs	r3, r3, #28
    7b74:	400b      	ands	r3, r1
    7b76:	7043      	strb	r3, [r0, #1]
    7b78:	06db      	lsls	r3, r3, #27
    7b7a:	6013      	str	r3, [r2, #0]
    7b7c:	4770      	bx	lr
    7b7e:	2005      	movs	r0, #5
    7b80:	4b0a      	ldr	r3, [pc, #40]	; (7bac <rt_tsk_lock+0x60>)
    7b82:	4908      	ldr	r1, [pc, #32]	; (7ba4 <rt_tsk_lock+0x58>)
    7b84:	6018      	str	r0, [r3, #0]
    7b86:	2301      	movs	r3, #1
    7b88:	4a07      	ldr	r2, [pc, #28]	; (7ba8 <rt_tsk_lock+0x5c>)
    7b8a:	700b      	strb	r3, [r1, #0]
    7b8c:	6813      	ldr	r3, [r2, #0]
    7b8e:	0e9b      	lsrs	r3, r3, #26
    7b90:	4003      	ands	r3, r0
    7b92:	704b      	strb	r3, [r1, #1]
    7b94:	065b      	lsls	r3, r3, #25
    7b96:	6013      	str	r3, [r2, #0]
    7b98:	e7f0      	b.n	7b7c <rt_tsk_lock+0x30>
    7b9a:	46c0      	nop			; (mov r8, r8)
    7b9c:	20006068 	.word	0x20006068
    7ba0:	e000e180 	.word	0xe000e180
    7ba4:	20005ff0 	.word	0x20005ff0
    7ba8:	e000ed04 	.word	0xe000ed04
    7bac:	e000e010 	.word	0xe000e010

00007bb0 <rt_tsk_unlock>:
    7bb0:	4b13      	ldr	r3, [pc, #76]	; (7c00 <rt_tsk_unlock+0x50>)
    7bb2:	681b      	ldr	r3, [r3, #0]
    7bb4:	2b00      	cmp	r3, #0
    7bb6:	db14      	blt.n	7be2 <rt_tsk_unlock+0x32>
    7bb8:	4912      	ldr	r1, [pc, #72]	; (7c04 <rt_tsk_unlock+0x54>)
    7bba:	095a      	lsrs	r2, r3, #5
    7bbc:	468c      	mov	ip, r1
    7bbe:	211f      	movs	r1, #31
    7bc0:	400b      	ands	r3, r1
    7bc2:	391e      	subs	r1, #30
    7bc4:	4099      	lsls	r1, r3
    7bc6:	0092      	lsls	r2, r2, #2
    7bc8:	4462      	add	r2, ip
    7bca:	6011      	str	r1, [r2, #0]
    7bcc:	2100      	movs	r1, #0
    7bce:	4a0e      	ldr	r2, [pc, #56]	; (7c08 <rt_tsk_unlock+0x58>)
    7bd0:	7011      	strb	r1, [r2, #0]
    7bd2:	7890      	ldrb	r0, [r2, #2]
    7bd4:	7853      	ldrb	r3, [r2, #1]
    7bd6:	4303      	orrs	r3, r0
    7bd8:	480c      	ldr	r0, [pc, #48]	; (7c0c <rt_tsk_unlock+0x5c>)
    7bda:	071b      	lsls	r3, r3, #28
    7bdc:	6003      	str	r3, [r0, #0]
    7bde:	7091      	strb	r1, [r2, #2]
    7be0:	4770      	bx	lr
    7be2:	2207      	movs	r2, #7
    7be4:	2000      	movs	r0, #0
    7be6:	4908      	ldr	r1, [pc, #32]	; (7c08 <rt_tsk_unlock+0x58>)
    7be8:	4b09      	ldr	r3, [pc, #36]	; (7c10 <rt_tsk_unlock+0x60>)
    7bea:	601a      	str	r2, [r3, #0]
    7bec:	7008      	strb	r0, [r1, #0]
    7bee:	788b      	ldrb	r3, [r1, #2]
    7bf0:	784a      	ldrb	r2, [r1, #1]
    7bf2:	009b      	lsls	r3, r3, #2
    7bf4:	4313      	orrs	r3, r2
    7bf6:	4a05      	ldr	r2, [pc, #20]	; (7c0c <rt_tsk_unlock+0x5c>)
    7bf8:	069b      	lsls	r3, r3, #26
    7bfa:	6013      	str	r3, [r2, #0]
    7bfc:	7088      	strb	r0, [r1, #2]
    7bfe:	e7ef      	b.n	7be0 <rt_tsk_unlock+0x30>
    7c00:	20006068 	.word	0x20006068
    7c04:	e000e100 	.word	0xe000e100
    7c08:	20005ff0 	.word	0x20005ff0
    7c0c:	e000ed04 	.word	0xe000ed04
    7c10:	e000e010 	.word	0xe000e010

00007c14 <rt_psh_req>:
    7c14:	4b05      	ldr	r3, [pc, #20]	; (7c2c <rt_psh_req+0x18>)
    7c16:	781a      	ldrb	r2, [r3, #0]
    7c18:	2a00      	cmp	r2, #0
    7c1a:	d002      	beq.n	7c22 <rt_psh_req+0xe>
    7c1c:	2201      	movs	r2, #1
    7c1e:	709a      	strb	r2, [r3, #2]
    7c20:	4770      	bx	lr
    7c22:	2280      	movs	r2, #128	; 0x80
    7c24:	4b02      	ldr	r3, [pc, #8]	; (7c30 <rt_psh_req+0x1c>)
    7c26:	0552      	lsls	r2, r2, #21
    7c28:	601a      	str	r2, [r3, #0]
    7c2a:	e7f9      	b.n	7c20 <rt_psh_req+0xc>
    7c2c:	20005ff0 	.word	0x20005ff0
    7c30:	e000ed04 	.word	0xe000ed04

00007c34 <rt_pop_req>:
    7c34:	4b1c      	ldr	r3, [pc, #112]	; (7ca8 <rt_pop_req+0x74>)
    7c36:	b570      	push	{r4, r5, r6, lr}
    7c38:	6818      	ldr	r0, [r3, #0]
    7c3a:	2301      	movs	r3, #1
    7c3c:	7043      	strb	r3, [r0, #1]
    7c3e:	f7ff fccb 	bl	75d8 <rt_put_rdy_first>
    7c42:	4d1a      	ldr	r5, [pc, #104]	; (7cac <rt_pop_req+0x78>)
    7c44:	78ab      	ldrb	r3, [r5, #2]
    7c46:	786c      	ldrb	r4, [r5, #1]
    7c48:	2b00      	cmp	r3, #0
    7c4a:	d112      	bne.n	7c72 <rt_pop_req+0x3e>
    7c4c:	e024      	b.n	7c98 <rt_pop_req+0x64>
    7c4e:	2a01      	cmp	r2, #1
    7c50:	d01e      	beq.n	7c90 <rt_pop_req+0x5c>
    7c52:	f7ff fb13 	bl	727c <rt_sem_psh>
    7c56:	78eb      	ldrb	r3, [r5, #3]
    7c58:	3401      	adds	r4, #1
    7c5a:	429c      	cmp	r4, r3
    7c5c:	d016      	beq.n	7c8c <rt_pop_req+0x58>
    7c5e:	f3ef 8310 	mrs	r3, PRIMASK
    7c62:	b672      	cpsid	i
    7c64:	78ab      	ldrb	r3, [r5, #2]
    7c66:	3b01      	subs	r3, #1
    7c68:	b2db      	uxtb	r3, r3
    7c6a:	70ab      	strb	r3, [r5, #2]
    7c6c:	b662      	cpsie	i
    7c6e:	2b00      	cmp	r3, #0
    7c70:	d012      	beq.n	7c98 <rt_pop_req+0x64>
    7c72:	00e3      	lsls	r3, r4, #3
    7c74:	18eb      	adds	r3, r5, r3
    7c76:	6858      	ldr	r0, [r3, #4]
    7c78:	7802      	ldrb	r2, [r0, #0]
    7c7a:	2a00      	cmp	r2, #0
    7c7c:	d1e7      	bne.n	7c4e <rt_pop_req+0x1a>
    7c7e:	8919      	ldrh	r1, [r3, #8]
    7c80:	f7ff fe78 	bl	7974 <rt_evt_psh>
    7c84:	78eb      	ldrb	r3, [r5, #3]
    7c86:	3401      	adds	r4, #1
    7c88:	429c      	cmp	r4, r3
    7c8a:	d1e8      	bne.n	7c5e <rt_pop_req+0x2a>
    7c8c:	2400      	movs	r4, #0
    7c8e:	e7e6      	b.n	7c5e <rt_pop_req+0x2a>
    7c90:	6899      	ldr	r1, [r3, #8]
    7c92:	f7ff fbf9 	bl	7488 <rt_mbx_psh>
    7c96:	e7de      	b.n	7c56 <rt_pop_req+0x22>
    7c98:	706c      	strb	r4, [r5, #1]
    7c9a:	4805      	ldr	r0, [pc, #20]	; (7cb0 <rt_pop_req+0x7c>)
    7c9c:	f7ff fc88 	bl	75b0 <rt_get_first>
    7ca0:	f000 f86c 	bl	7d7c <rt_switch_req>
    7ca4:	bd70      	pop	{r4, r5, r6, pc}
    7ca6:	46c0      	nop			; (mov r8, r8)
    7ca8:	2000606c 	.word	0x2000606c
    7cac:	20004c60 	.word	0x20004c60
    7cb0:	20006038 	.word	0x20006038

00007cb4 <os_tick_init>:
    7cb4:	4b09      	ldr	r3, [pc, #36]	; (7cdc <os_tick_init+0x28>)
    7cb6:	21ff      	movs	r1, #255	; 0xff
    7cb8:	681a      	ldr	r2, [r3, #0]
    7cba:	4b09      	ldr	r3, [pc, #36]	; (7ce0 <os_tick_init+0x2c>)
    7cbc:	2001      	movs	r0, #1
    7cbe:	601a      	str	r2, [r3, #0]
    7cc0:	2200      	movs	r2, #0
    7cc2:	4b08      	ldr	r3, [pc, #32]	; (7ce4 <os_tick_init+0x30>)
    7cc4:	0609      	lsls	r1, r1, #24
    7cc6:	601a      	str	r2, [r3, #0]
    7cc8:	4b07      	ldr	r3, [pc, #28]	; (7ce8 <os_tick_init+0x34>)
    7cca:	3207      	adds	r2, #7
    7ccc:	601a      	str	r2, [r3, #0]
    7cce:	4a07      	ldr	r2, [pc, #28]	; (7cec <os_tick_init+0x38>)
    7cd0:	4240      	negs	r0, r0
    7cd2:	6813      	ldr	r3, [r2, #0]
    7cd4:	430b      	orrs	r3, r1
    7cd6:	6013      	str	r3, [r2, #0]
    7cd8:	4770      	bx	lr
    7cda:	46c0      	nop			; (mov r8, r8)
    7cdc:	000086b0 	.word	0x000086b0
    7ce0:	e000e014 	.word	0xe000e014
    7ce4:	e000e018 	.word	0xe000e018
    7ce8:	e000e010 	.word	0xe000e010
    7cec:	e000ed20 	.word	0xe000ed20

00007cf0 <os_tick_val>:
    7cf0:	4b02      	ldr	r3, [pc, #8]	; (7cfc <os_tick_val+0xc>)
    7cf2:	6818      	ldr	r0, [r3, #0]
    7cf4:	4b02      	ldr	r3, [pc, #8]	; (7d00 <os_tick_val+0x10>)
    7cf6:	681b      	ldr	r3, [r3, #0]
    7cf8:	1a18      	subs	r0, r3, r0
    7cfa:	4770      	bx	lr
    7cfc:	e000e018 	.word	0xe000e018
    7d00:	000086b0 	.word	0x000086b0

00007d04 <os_tick_ovf>:
    7d04:	4b02      	ldr	r3, [pc, #8]	; (7d10 <os_tick_ovf+0xc>)
    7d06:	6818      	ldr	r0, [r3, #0]
    7d08:	0140      	lsls	r0, r0, #5
    7d0a:	0fc0      	lsrs	r0, r0, #31
    7d0c:	4770      	bx	lr
    7d0e:	46c0      	nop			; (mov r8, r8)
    7d10:	e000ed04 	.word	0xe000ed04

00007d14 <os_tick_irqack>:
    7d14:	4770      	bx	lr
    7d16:	46c0      	nop			; (mov r8, r8)

00007d18 <rt_systick>:
    7d18:	4b0b      	ldr	r3, [pc, #44]	; (7d48 <rt_systick+0x30>)
    7d1a:	b510      	push	{r4, lr}
    7d1c:	6818      	ldr	r0, [r3, #0]
    7d1e:	2301      	movs	r3, #1
    7d20:	7043      	strb	r3, [r0, #1]
    7d22:	f7ff fc59 	bl	75d8 <rt_put_rdy_first>
    7d26:	f000 faeb 	bl	8300 <rt_chk_robin>
    7d2a:	4a08      	ldr	r2, [pc, #32]	; (7d4c <rt_systick+0x34>)
    7d2c:	6813      	ldr	r3, [r2, #0]
    7d2e:	3301      	adds	r3, #1
    7d30:	6013      	str	r3, [r2, #0]
    7d32:	f7ff fce7 	bl	7704 <rt_dec_dly>
    7d36:	f7fd ffed 	bl	5d14 <sysTimerTick>
    7d3a:	4805      	ldr	r0, [pc, #20]	; (7d50 <rt_systick+0x38>)
    7d3c:	f7ff fc38 	bl	75b0 <rt_get_first>
    7d40:	f000 f81c 	bl	7d7c <rt_switch_req>
    7d44:	bd10      	pop	{r4, pc}
    7d46:	46c0      	nop			; (mov r8, r8)
    7d48:	2000606c 	.word	0x2000606c
    7d4c:	20006034 	.word	0x20006034
    7d50:	20006038 	.word	0x20006038

00007d54 <rt_stk_check>:
    7d54:	4b07      	ldr	r3, [pc, #28]	; (7d74 <rt_stk_check+0x20>)
    7d56:	b510      	push	{r4, lr}
    7d58:	681b      	ldr	r3, [r3, #0]
    7d5a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    7d5c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    7d5e:	429a      	cmp	r2, r3
    7d60:	d803      	bhi.n	7d6a <rt_stk_check+0x16>
    7d62:	4b05      	ldr	r3, [pc, #20]	; (7d78 <rt_stk_check+0x24>)
    7d64:	6812      	ldr	r2, [r2, #0]
    7d66:	429a      	cmp	r2, r3
    7d68:	d002      	beq.n	7d70 <rt_stk_check+0x1c>
    7d6a:	2001      	movs	r0, #1
    7d6c:	f7f9 fe5c 	bl	1a28 <os_error>
    7d70:	bd10      	pop	{r4, pc}
    7d72:	46c0      	nop			; (mov r8, r8)
    7d74:	2000606c 	.word	0x2000606c
    7d78:	e25a2ea5 	.word	0xe25a2ea5

00007d7c <rt_switch_req>:
    7d7c:	4b02      	ldr	r3, [pc, #8]	; (7d88 <rt_switch_req+0xc>)
    7d7e:	6058      	str	r0, [r3, #4]
    7d80:	2302      	movs	r3, #2
    7d82:	7043      	strb	r3, [r0, #1]
    7d84:	4770      	bx	lr
    7d86:	46c0      	nop			; (mov r8, r8)
    7d88:	2000606c 	.word	0x2000606c

00007d8c <rt_dispatch>:
    7d8c:	b570      	push	{r4, r5, r6, lr}
    7d8e:	1e04      	subs	r4, r0, #0
    7d90:	d015      	beq.n	7dbe <rt_dispatch+0x32>
    7d92:	4d0f      	ldr	r5, [pc, #60]	; (7dd0 <rt_dispatch+0x44>)
    7d94:	78a2      	ldrb	r2, [r4, #2]
    7d96:	6828      	ldr	r0, [r5, #0]
    7d98:	7883      	ldrb	r3, [r0, #2]
    7d9a:	429a      	cmp	r2, r3
    7d9c:	d806      	bhi.n	7dac <rt_dispatch+0x20>
    7d9e:	2301      	movs	r3, #1
    7da0:	0021      	movs	r1, r4
    7da2:	7063      	strb	r3, [r4, #1]
    7da4:	480b      	ldr	r0, [pc, #44]	; (7dd4 <rt_dispatch+0x48>)
    7da6:	f7ff fbdd 	bl	7564 <rt_put_prio>
    7daa:	bd70      	pop	{r4, r5, r6, pc}
    7dac:	f7ff fc14 	bl	75d8 <rt_put_rdy_first>
    7db0:	2301      	movs	r3, #1
    7db2:	682a      	ldr	r2, [r5, #0]
    7db4:	7053      	strb	r3, [r2, #1]
    7db6:	3301      	adds	r3, #1
    7db8:	606c      	str	r4, [r5, #4]
    7dba:	7063      	strb	r3, [r4, #1]
    7dbc:	e7f5      	b.n	7daa <rt_dispatch+0x1e>
    7dbe:	4805      	ldr	r0, [pc, #20]	; (7dd4 <rt_dispatch+0x48>)
    7dc0:	f7ff fbf6 	bl	75b0 <rt_get_first>
    7dc4:	4b02      	ldr	r3, [pc, #8]	; (7dd0 <rt_dispatch+0x44>)
    7dc6:	6058      	str	r0, [r3, #4]
    7dc8:	2302      	movs	r3, #2
    7dca:	7043      	strb	r3, [r0, #1]
    7dcc:	e7ed      	b.n	7daa <rt_dispatch+0x1e>
    7dce:	46c0      	nop			; (mov r8, r8)
    7dd0:	2000606c 	.word	0x2000606c
    7dd4:	20006038 	.word	0x20006038

00007dd8 <rt_block>:
    7dd8:	b570      	push	{r4, r5, r6, lr}
    7dda:	000d      	movs	r5, r1
    7ddc:	2800      	cmp	r0, #0
    7dde:	d00f      	beq.n	7e00 <rt_block+0x28>
    7de0:	4b08      	ldr	r3, [pc, #32]	; (7e04 <rt_block+0x2c>)
    7de2:	4c09      	ldr	r4, [pc, #36]	; (7e08 <rt_block+0x30>)
    7de4:	4298      	cmp	r0, r3
    7de6:	d003      	beq.n	7df0 <rt_block+0x18>
    7de8:	0001      	movs	r1, r0
    7dea:	6820      	ldr	r0, [r4, #0]
    7dec:	f7ff fc58 	bl	76a0 <rt_put_dly>
    7df0:	6823      	ldr	r3, [r4, #0]
    7df2:	4806      	ldr	r0, [pc, #24]	; (7e0c <rt_block+0x34>)
    7df4:	705d      	strb	r5, [r3, #1]
    7df6:	f7ff fbdb 	bl	75b0 <rt_get_first>
    7dfa:	2302      	movs	r3, #2
    7dfc:	6060      	str	r0, [r4, #4]
    7dfe:	7043      	strb	r3, [r0, #1]
    7e00:	bd70      	pop	{r4, r5, r6, pc}
    7e02:	46c0      	nop			; (mov r8, r8)
    7e04:	0000ffff 	.word	0x0000ffff
    7e08:	2000606c 	.word	0x2000606c
    7e0c:	20006038 	.word	0x20006038

00007e10 <rt_tsk_pass>:
    7e10:	b570      	push	{r4, r5, r6, lr}
    7e12:	f7ff fbeb 	bl	75ec <rt_get_same_rdy_prio>
    7e16:	1e04      	subs	r4, r0, #0
    7e18:	d00a      	beq.n	7e30 <rt_tsk_pass+0x20>
    7e1a:	4d06      	ldr	r5, [pc, #24]	; (7e34 <rt_tsk_pass+0x24>)
    7e1c:	4806      	ldr	r0, [pc, #24]	; (7e38 <rt_tsk_pass+0x28>)
    7e1e:	6829      	ldr	r1, [r5, #0]
    7e20:	f7ff fba0 	bl	7564 <rt_put_prio>
    7e24:	2301      	movs	r3, #1
    7e26:	682a      	ldr	r2, [r5, #0]
    7e28:	7053      	strb	r3, [r2, #1]
    7e2a:	3301      	adds	r3, #1
    7e2c:	606c      	str	r4, [r5, #4]
    7e2e:	7063      	strb	r3, [r4, #1]
    7e30:	bd70      	pop	{r4, r5, r6, pc}
    7e32:	46c0      	nop			; (mov r8, r8)
    7e34:	2000606c 	.word	0x2000606c
    7e38:	20006038 	.word	0x20006038

00007e3c <rt_tsk_self>:
    7e3c:	4b03      	ldr	r3, [pc, #12]	; (7e4c <rt_tsk_self+0x10>)
    7e3e:	681b      	ldr	r3, [r3, #0]
    7e40:	2b00      	cmp	r3, #0
    7e42:	d001      	beq.n	7e48 <rt_tsk_self+0xc>
    7e44:	78d8      	ldrb	r0, [r3, #3]
    7e46:	4770      	bx	lr
    7e48:	2000      	movs	r0, #0
    7e4a:	e7fc      	b.n	7e46 <rt_tsk_self+0xa>
    7e4c:	2000606c 	.word	0x2000606c

00007e50 <rt_tsk_prio>:
    7e50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7e52:	2800      	cmp	r0, #0
    7e54:	d10c      	bne.n	7e70 <rt_tsk_prio+0x20>
    7e56:	2224      	movs	r2, #36	; 0x24
    7e58:	4c27      	ldr	r4, [pc, #156]	; (7ef8 <rt_tsk_prio+0xa8>)
    7e5a:	6823      	ldr	r3, [r4, #0]
    7e5c:	7099      	strb	r1, [r3, #2]
    7e5e:	5499      	strb	r1, [r3, r2]
    7e60:	4d26      	ldr	r5, [pc, #152]	; (7efc <rt_tsk_prio+0xac>)
    7e62:	686a      	ldr	r2, [r5, #4]
    7e64:	7892      	ldrb	r2, [r2, #2]
    7e66:	428a      	cmp	r2, r1
    7e68:	d82c      	bhi.n	7ec4 <rt_tsk_prio+0x74>
    7e6a:	2200      	movs	r2, #0
    7e6c:	0010      	movs	r0, r2
    7e6e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7e70:	4b23      	ldr	r3, [pc, #140]	; (7f00 <rt_tsk_prio+0xb0>)
    7e72:	22ff      	movs	r2, #255	; 0xff
    7e74:	881b      	ldrh	r3, [r3, #0]
    7e76:	4298      	cmp	r0, r3
    7e78:	d8f8      	bhi.n	7e6c <rt_tsk_prio+0x1c>
    7e7a:	1e43      	subs	r3, r0, #1
    7e7c:	4821      	ldr	r0, [pc, #132]	; (7f04 <rt_tsk_prio+0xb4>)
    7e7e:	009b      	lsls	r3, r3, #2
    7e80:	581d      	ldr	r5, [r3, r0]
    7e82:	2d00      	cmp	r5, #0
    7e84:	d0f2      	beq.n	7e6c <rt_tsk_prio+0x1c>
    7e86:	2324      	movs	r3, #36	; 0x24
    7e88:	4c1b      	ldr	r4, [pc, #108]	; (7ef8 <rt_tsk_prio+0xa8>)
    7e8a:	70a9      	strb	r1, [r5, #2]
    7e8c:	54e9      	strb	r1, [r5, r3]
    7e8e:	6823      	ldr	r3, [r4, #0]
    7e90:	429d      	cmp	r5, r3
    7e92:	d0e5      	beq.n	7e60 <rt_tsk_prio+0x10>
    7e94:	0028      	movs	r0, r5
    7e96:	f7ff fbbb 	bl	7610 <rt_resort_prio>
    7e9a:	786d      	ldrb	r5, [r5, #1]
    7e9c:	2d01      	cmp	r5, #1
    7e9e:	d1e4      	bne.n	7e6a <rt_tsk_prio+0x1a>
    7ea0:	4f16      	ldr	r7, [pc, #88]	; (7efc <rt_tsk_prio+0xac>)
    7ea2:	0038      	movs	r0, r7
    7ea4:	f7ff fb84 	bl	75b0 <rt_get_first>
    7ea8:	1e06      	subs	r6, r0, #0
    7eaa:	d023      	beq.n	7ef4 <rt_tsk_prio+0xa4>
    7eac:	6820      	ldr	r0, [r4, #0]
    7eae:	78b2      	ldrb	r2, [r6, #2]
    7eb0:	7883      	ldrb	r3, [r0, #2]
    7eb2:	429a      	cmp	r2, r3
    7eb4:	d815      	bhi.n	7ee2 <rt_tsk_prio+0x92>
    7eb6:	7075      	strb	r5, [r6, #1]
    7eb8:	0031      	movs	r1, r6
    7eba:	0038      	movs	r0, r7
    7ebc:	f7ff fb52 	bl	7564 <rt_put_prio>
    7ec0:	2200      	movs	r2, #0
    7ec2:	e7d3      	b.n	7e6c <rt_tsk_prio+0x1c>
    7ec4:	0019      	movs	r1, r3
    7ec6:	0028      	movs	r0, r5
    7ec8:	f7ff fb4c 	bl	7564 <rt_put_prio>
    7ecc:	2301      	movs	r3, #1
    7ece:	0028      	movs	r0, r5
    7ed0:	6822      	ldr	r2, [r4, #0]
    7ed2:	7053      	strb	r3, [r2, #1]
    7ed4:	f7ff fb6c 	bl	75b0 <rt_get_first>
    7ed8:	2302      	movs	r3, #2
    7eda:	6060      	str	r0, [r4, #4]
    7edc:	2200      	movs	r2, #0
    7ede:	7043      	strb	r3, [r0, #1]
    7ee0:	e7c4      	b.n	7e6c <rt_tsk_prio+0x1c>
    7ee2:	f7ff fb79 	bl	75d8 <rt_put_rdy_first>
    7ee6:	6823      	ldr	r3, [r4, #0]
    7ee8:	2200      	movs	r2, #0
    7eea:	705d      	strb	r5, [r3, #1]
    7eec:	2302      	movs	r3, #2
    7eee:	6066      	str	r6, [r4, #4]
    7ef0:	7073      	strb	r3, [r6, #1]
    7ef2:	e7bb      	b.n	7e6c <rt_tsk_prio+0x1c>
    7ef4:	0038      	movs	r0, r7
    7ef6:	e7ed      	b.n	7ed4 <rt_tsk_prio+0x84>
    7ef8:	2000606c 	.word	0x2000606c
    7efc:	20006038 	.word	0x20006038
    7f00:	0000869c 	.word	0x0000869c
    7f04:	20004ce4 	.word	0x20004ce4

00007f08 <rt_tsk_create>:
    7f08:	b5f0      	push	{r4, r5, r6, r7, lr}
    7f0a:	4647      	mov	r7, r8
    7f0c:	b480      	push	{r7}
    7f0e:	001f      	movs	r7, r3
    7f10:	23ff      	movs	r3, #255	; 0xff
    7f12:	400b      	ands	r3, r1
    7f14:	4690      	mov	r8, r2
    7f16:	001a      	movs	r2, r3
    7f18:	4253      	negs	r3, r2
    7f1a:	4153      	adcs	r3, r2
    7f1c:	0006      	movs	r6, r0
    7f1e:	4831      	ldr	r0, [pc, #196]	; (7fe4 <rt_tsk_create+0xdc>)
    7f20:	18cc      	adds	r4, r1, r3
    7f22:	f7fe ff95 	bl	6e50 <rt_alloc_box>
    7f26:	1e05      	subs	r5, r0, #0
    7f28:	d032      	beq.n	7f90 <rt_tsk_create+0x88>
    7f2a:	4643      	mov	r3, r8
    7f2c:	2101      	movs	r1, #1
    7f2e:	62c3      	str	r3, [r0, #44]	; 0x2c
    7f30:	2300      	movs	r3, #0
    7f32:	0a22      	lsrs	r2, r4, #8
    7f34:	7041      	strb	r1, [r0, #1]
    7f36:	b2e4      	uxtb	r4, r4
    7f38:	3123      	adds	r1, #35	; 0x23
    7f3a:	b292      	uxth	r2, r2
    7f3c:	7003      	strb	r3, [r0, #0]
    7f3e:	84c2      	strh	r2, [r0, #38]	; 0x26
    7f40:	61c7      	str	r7, [r0, #28]
    7f42:	7084      	strb	r4, [r0, #2]
    7f44:	5444      	strb	r4, [r0, r1]
    7f46:	2100      	movs	r1, #0
    7f48:	6043      	str	r3, [r0, #4]
    7f4a:	6083      	str	r3, [r0, #8]
    7f4c:	60c3      	str	r3, [r0, #12]
    7f4e:	6103      	str	r3, [r0, #16]
    7f50:	6203      	str	r3, [r0, #32]
    7f52:	8283      	strh	r3, [r0, #20]
    7f54:	82c3      	strh	r3, [r0, #22]
    7f56:	8303      	strh	r3, [r0, #24]
    7f58:	8343      	strh	r3, [r0, #26]
    7f5a:	3325      	adds	r3, #37	; 0x25
    7f5c:	54c1      	strb	r1, [r0, r3]
    7f5e:	2a00      	cmp	r2, #0
    7f60:	d01a      	beq.n	7f98 <rt_tsk_create+0x90>
    7f62:	0031      	movs	r1, r6
    7f64:	0028      	movs	r0, r5
    7f66:	f7fe fe99 	bl	6c9c <rt_init_stack>
    7f6a:	4b1f      	ldr	r3, [pc, #124]	; (7fe8 <rt_tsk_create+0xe0>)
    7f6c:	8819      	ldrh	r1, [r3, #0]
    7f6e:	2900      	cmp	r1, #0
    7f70:	d00e      	beq.n	7f90 <rt_tsk_create+0x88>
    7f72:	481e      	ldr	r0, [pc, #120]	; (7fec <rt_tsk_create+0xe4>)
    7f74:	6803      	ldr	r3, [r0, #0]
    7f76:	2b00      	cmp	r3, #0
    7f78:	d02f      	beq.n	7fda <rt_tsk_create+0xd2>
    7f7a:	2201      	movs	r2, #1
    7f7c:	e005      	b.n	7f8a <rt_tsk_create+0x82>
    7f7e:	00a3      	lsls	r3, r4, #2
    7f80:	3b04      	subs	r3, #4
    7f82:	58c3      	ldr	r3, [r0, r3]
    7f84:	2b00      	cmp	r3, #0
    7f86:	d00c      	beq.n	7fa2 <rt_tsk_create+0x9a>
    7f88:	0022      	movs	r2, r4
    7f8a:	1c54      	adds	r4, r2, #1
    7f8c:	428c      	cmp	r4, r1
    7f8e:	d9f6      	bls.n	7f7e <rt_tsk_create+0x76>
    7f90:	2000      	movs	r0, #0
    7f92:	bc04      	pop	{r2}
    7f94:	4690      	mov	r8, r2
    7f96:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7f98:	4815      	ldr	r0, [pc, #84]	; (7ff0 <rt_tsk_create+0xe8>)
    7f9a:	f7fe ff59 	bl	6e50 <rt_alloc_box>
    7f9e:	62e8      	str	r0, [r5, #44]	; 0x2c
    7fa0:	e7df      	b.n	7f62 <rt_tsk_create+0x5a>
    7fa2:	b2e3      	uxtb	r3, r4
    7fa4:	0092      	lsls	r2, r2, #2
    7fa6:	4e13      	ldr	r6, [pc, #76]	; (7ff4 <rt_tsk_create+0xec>)
    7fa8:	5085      	str	r5, [r0, r2]
    7faa:	70eb      	strb	r3, [r5, #3]
    7fac:	6830      	ldr	r0, [r6, #0]
    7fae:	78aa      	ldrb	r2, [r5, #2]
    7fb0:	7883      	ldrb	r3, [r0, #2]
    7fb2:	429a      	cmp	r2, r3
    7fb4:	d807      	bhi.n	7fc6 <rt_tsk_create+0xbe>
    7fb6:	2301      	movs	r3, #1
    7fb8:	480f      	ldr	r0, [pc, #60]	; (7ff8 <rt_tsk_create+0xf0>)
    7fba:	706b      	strb	r3, [r5, #1]
    7fbc:	0029      	movs	r1, r5
    7fbe:	f7ff fad1 	bl	7564 <rt_put_prio>
    7fc2:	0020      	movs	r0, r4
    7fc4:	e7e5      	b.n	7f92 <rt_tsk_create+0x8a>
    7fc6:	f7ff fb07 	bl	75d8 <rt_put_rdy_first>
    7fca:	2301      	movs	r3, #1
    7fcc:	6832      	ldr	r2, [r6, #0]
    7fce:	0020      	movs	r0, r4
    7fd0:	7053      	strb	r3, [r2, #1]
    7fd2:	3301      	adds	r3, #1
    7fd4:	6075      	str	r5, [r6, #4]
    7fd6:	706b      	strb	r3, [r5, #1]
    7fd8:	e7db      	b.n	7f92 <rt_tsk_create+0x8a>
    7fda:	2301      	movs	r3, #1
    7fdc:	2200      	movs	r2, #0
    7fde:	2401      	movs	r4, #1
    7fe0:	e7e0      	b.n	7fa4 <rt_tsk_create+0x9c>
    7fe2:	46c0      	nop			; (mov r8, r8)
    7fe4:	20000910 	.word	0x20000910
    7fe8:	0000869c 	.word	0x0000869c
    7fec:	20004ce4 	.word	0x20004ce4
    7ff0:	200009f0 	.word	0x200009f0
    7ff4:	2000606c 	.word	0x2000606c
    7ff8:	20006038 	.word	0x20006038

00007ffc <rt_tsk_delete>:
    7ffc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7ffe:	4644      	mov	r4, r8
    8000:	465f      	mov	r7, fp
    8002:	4656      	mov	r6, sl
    8004:	464d      	mov	r5, r9
    8006:	4b5a      	ldr	r3, [pc, #360]	; (8170 <rt_tsk_delete+0x174>)
    8008:	b4f0      	push	{r4, r5, r6, r7}
    800a:	4698      	mov	r8, r3
    800c:	681c      	ldr	r4, [r3, #0]
    800e:	2800      	cmp	r0, #0
    8010:	d00e      	beq.n	8030 <rt_tsk_delete+0x34>
    8012:	78e3      	ldrb	r3, [r4, #3]
    8014:	4298      	cmp	r0, r3
    8016:	d00b      	beq.n	8030 <rt_tsk_delete+0x34>
    8018:	4b56      	ldr	r3, [pc, #344]	; (8174 <rt_tsk_delete+0x178>)
    801a:	881a      	ldrh	r2, [r3, #0]
    801c:	23ff      	movs	r3, #255	; 0xff
    801e:	4290      	cmp	r0, r2
    8020:	d952      	bls.n	80c8 <rt_tsk_delete+0xcc>
    8022:	0018      	movs	r0, r3
    8024:	bc3c      	pop	{r2, r3, r4, r5}
    8026:	4690      	mov	r8, r2
    8028:	4699      	mov	r9, r3
    802a:	46a2      	mov	sl, r4
    802c:	46ab      	mov	fp, r5
    802e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8030:	2300      	movs	r3, #0
    8032:	7063      	strb	r3, [r4, #1]
    8034:	f7fc fa57 	bl	44e6 <rt_get_PSP>
    8038:	62a0      	str	r0, [r4, #40]	; 0x28
    803a:	f7ff fe8b 	bl	7d54 <rt_stk_check>
    803e:	4643      	mov	r3, r8
    8040:	681a      	ldr	r2, [r3, #0]
    8042:	4f4d      	ldr	r7, [pc, #308]	; (8178 <rt_tsk_delete+0x17c>)
    8044:	6a14      	ldr	r4, [r2, #32]
    8046:	2c00      	cmp	r4, #0
    8048:	d023      	beq.n	8092 <rt_tsk_delete+0x96>
    804a:	2601      	movs	r6, #1
    804c:	e016      	b.n	807c <rt_tsk_delete+0x80>
    804e:	0020      	movs	r0, r4
    8050:	f7ff faae 	bl	75b0 <rt_get_first>
    8054:	0005      	movs	r5, r0
    8056:	2100      	movs	r1, #0
    8058:	f7fe fe78 	bl	6d4c <rt_ret_val>
    805c:	0028      	movs	r0, r5
    805e:	f7ff fbdf 	bl	7820 <rt_rmv_dly>
    8062:	706e      	strb	r6, [r5, #1]
    8064:	0029      	movs	r1, r5
    8066:	0038      	movs	r0, r7
    8068:	f7ff fa7c 	bl	7564 <rt_put_prio>
    806c:	68e3      	ldr	r3, [r4, #12]
    806e:	6a2a      	ldr	r2, [r5, #32]
    8070:	8066      	strh	r6, [r4, #2]
    8072:	60a5      	str	r5, [r4, #8]
    8074:	60e2      	str	r2, [r4, #12]
    8076:	622c      	str	r4, [r5, #32]
    8078:	1e1c      	subs	r4, r3, #0
    807a:	d008      	beq.n	808e <rt_tsk_delete+0x92>
    807c:	6863      	ldr	r3, [r4, #4]
    807e:	2b00      	cmp	r3, #0
    8080:	d1e5      	bne.n	804e <rt_tsk_delete+0x52>
    8082:	68e2      	ldr	r2, [r4, #12]
    8084:	8063      	strh	r3, [r4, #2]
    8086:	60a3      	str	r3, [r4, #8]
    8088:	60e3      	str	r3, [r4, #12]
    808a:	1e14      	subs	r4, r2, #0
    808c:	d1f6      	bne.n	807c <rt_tsk_delete+0x80>
    808e:	4643      	mov	r3, r8
    8090:	681a      	ldr	r2, [r3, #0]
    8092:	2400      	movs	r4, #0
    8094:	78d3      	ldrb	r3, [r2, #3]
    8096:	4939      	ldr	r1, [pc, #228]	; (817c <rt_tsk_delete+0x180>)
    8098:	3b01      	subs	r3, #1
    809a:	009b      	lsls	r3, r3, #2
    809c:	505c      	str	r4, [r3, r1]
    809e:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    80a0:	4837      	ldr	r0, [pc, #220]	; (8180 <rt_tsk_delete+0x184>)
    80a2:	f7fe fef5 	bl	6e90 <rt_free_box>
    80a6:	4643      	mov	r3, r8
    80a8:	6819      	ldr	r1, [r3, #0]
    80aa:	4836      	ldr	r0, [pc, #216]	; (8184 <rt_tsk_delete+0x188>)
    80ac:	62cc      	str	r4, [r1, #44]	; 0x2c
    80ae:	f7fe feef 	bl	6e90 <rt_free_box>
    80b2:	4643      	mov	r3, r8
    80b4:	601c      	str	r4, [r3, #0]
    80b6:	0038      	movs	r0, r7
    80b8:	f7ff fa7a 	bl	75b0 <rt_get_first>
    80bc:	4643      	mov	r3, r8
    80be:	6058      	str	r0, [r3, #4]
    80c0:	2302      	movs	r3, #2
    80c2:	7043      	strb	r3, [r0, #1]
    80c4:	2300      	movs	r3, #0
    80c6:	e7ac      	b.n	8022 <rt_tsk_delete+0x26>
    80c8:	4a2c      	ldr	r2, [pc, #176]	; (817c <rt_tsk_delete+0x180>)
    80ca:	1e46      	subs	r6, r0, #1
    80cc:	4692      	mov	sl, r2
    80ce:	00b2      	lsls	r2, r6, #2
    80d0:	4693      	mov	fp, r2
    80d2:	4652      	mov	r2, sl
    80d4:	4659      	mov	r1, fp
    80d6:	5856      	ldr	r6, [r2, r1]
    80d8:	2e00      	cmp	r6, #0
    80da:	d0a2      	beq.n	8022 <rt_tsk_delete+0x26>
    80dc:	0030      	movs	r0, r6
    80de:	f7ff fb89 	bl	77f4 <rt_rmv_list>
    80e2:	0030      	movs	r0, r6
    80e4:	f7ff fb9c 	bl	7820 <rt_rmv_dly>
    80e8:	2301      	movs	r3, #1
    80ea:	6a34      	ldr	r4, [r6, #32]
    80ec:	4f22      	ldr	r7, [pc, #136]	; (8178 <rt_tsk_delete+0x17c>)
    80ee:	4699      	mov	r9, r3
    80f0:	2c00      	cmp	r4, #0
    80f2:	d11a      	bne.n	812a <rt_tsk_delete+0x12e>
    80f4:	e022      	b.n	813c <rt_tsk_delete+0x140>
    80f6:	0020      	movs	r0, r4
    80f8:	f7ff fa5a 	bl	75b0 <rt_get_first>
    80fc:	0005      	movs	r5, r0
    80fe:	2100      	movs	r1, #0
    8100:	f7fe fe24 	bl	6d4c <rt_ret_val>
    8104:	0028      	movs	r0, r5
    8106:	f7ff fb8b 	bl	7820 <rt_rmv_dly>
    810a:	464b      	mov	r3, r9
    810c:	0029      	movs	r1, r5
    810e:	706b      	strb	r3, [r5, #1]
    8110:	0038      	movs	r0, r7
    8112:	f7ff fa27 	bl	7564 <rt_put_prio>
    8116:	464a      	mov	r2, r9
    8118:	68e3      	ldr	r3, [r4, #12]
    811a:	8062      	strh	r2, [r4, #2]
    811c:	6a2a      	ldr	r2, [r5, #32]
    811e:	60a5      	str	r5, [r4, #8]
    8120:	60e2      	str	r2, [r4, #12]
    8122:	622c      	str	r4, [r5, #32]
    8124:	001c      	movs	r4, r3
    8126:	2c00      	cmp	r4, #0
    8128:	d008      	beq.n	813c <rt_tsk_delete+0x140>
    812a:	6863      	ldr	r3, [r4, #4]
    812c:	2b00      	cmp	r3, #0
    812e:	d1e2      	bne.n	80f6 <rt_tsk_delete+0xfa>
    8130:	68e2      	ldr	r2, [r4, #12]
    8132:	8063      	strh	r3, [r4, #2]
    8134:	60a3      	str	r3, [r4, #8]
    8136:	60e3      	str	r3, [r4, #12]
    8138:	0014      	movs	r4, r2
    813a:	e7f4      	b.n	8126 <rt_tsk_delete+0x12a>
    813c:	4653      	mov	r3, sl
    813e:	465a      	mov	r2, fp
    8140:	2400      	movs	r4, #0
    8142:	509c      	str	r4, [r3, r2]
    8144:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    8146:	480e      	ldr	r0, [pc, #56]	; (8180 <rt_tsk_delete+0x184>)
    8148:	f7fe fea2 	bl	6e90 <rt_free_box>
    814c:	0031      	movs	r1, r6
    814e:	62f4      	str	r4, [r6, #44]	; 0x2c
    8150:	480c      	ldr	r0, [pc, #48]	; (8184 <rt_tsk_delete+0x188>)
    8152:	f7fe fe9d 	bl	6e90 <rt_free_box>
    8156:	4643      	mov	r3, r8
    8158:	6819      	ldr	r1, [r3, #0]
    815a:	687b      	ldr	r3, [r7, #4]
    815c:	789a      	ldrb	r2, [r3, #2]
    815e:	788b      	ldrb	r3, [r1, #2]
    8160:	429a      	cmp	r2, r3
    8162:	d9af      	bls.n	80c4 <rt_tsk_delete+0xc8>
    8164:	2301      	movs	r3, #1
    8166:	0038      	movs	r0, r7
    8168:	704b      	strb	r3, [r1, #1]
    816a:	f7ff f9fb 	bl	7564 <rt_put_prio>
    816e:	e7a2      	b.n	80b6 <rt_tsk_delete+0xba>
    8170:	2000606c 	.word	0x2000606c
    8174:	0000869c 	.word	0x0000869c
    8178:	20006038 	.word	0x20006038
    817c:	20004ce4 	.word	0x20004ce4
    8180:	200009f0 	.word	0x200009f0
    8184:	20000910 	.word	0x20000910

00008188 <rt_sys_init>:
    8188:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    818a:	4b2b      	ldr	r3, [pc, #172]	; (8238 <rt_sys_init+0xb0>)
    818c:	881a      	ldrh	r2, [r3, #0]
    818e:	2a00      	cmp	r2, #0
    8190:	d004      	beq.n	819c <rt_sys_init+0x14>
    8192:	0092      	lsls	r2, r2, #2
    8194:	2100      	movs	r1, #0
    8196:	4829      	ldr	r0, [pc, #164]	; (823c <rt_sys_init+0xb4>)
    8198:	f7fc fbd8 	bl	494c <memset>
    819c:	4b28      	ldr	r3, [pc, #160]	; (8240 <rt_sys_init+0xb8>)
    819e:	2234      	movs	r2, #52	; 0x34
    81a0:	8819      	ldrh	r1, [r3, #0]
    81a2:	4828      	ldr	r0, [pc, #160]	; (8244 <rt_sys_init+0xbc>)
    81a4:	f7fe fe28 	bl	6df8 <_init_box>
    81a8:	2280      	movs	r2, #128	; 0x80
    81aa:	4b27      	ldr	r3, [pc, #156]	; (8248 <rt_sys_init+0xc0>)
    81ac:	0612      	lsls	r2, r2, #24
    81ae:	881b      	ldrh	r3, [r3, #0]
    81b0:	4f26      	ldr	r7, [pc, #152]	; (824c <rt_sys_init+0xc4>)
    81b2:	431a      	orrs	r2, r3
    81b4:	4b26      	ldr	r3, [pc, #152]	; (8250 <rt_sys_init+0xc8>)
    81b6:	0038      	movs	r0, r7
    81b8:	6819      	ldr	r1, [r3, #0]
    81ba:	f7fe fe1d 	bl	6df8 <_init_box>
    81be:	4b25      	ldr	r3, [pc, #148]	; (8254 <rt_sys_init+0xcc>)
    81c0:	2208      	movs	r2, #8
    81c2:	6818      	ldr	r0, [r3, #0]
    81c4:	4b24      	ldr	r3, [pc, #144]	; (8258 <rt_sys_init+0xd0>)
    81c6:	2600      	movs	r6, #0
    81c8:	8819      	ldrh	r1, [r3, #0]
    81ca:	f7fe fe15 	bl	6df8 <_init_box>
    81ce:	23ff      	movs	r3, #255	; 0xff
    81d0:	2500      	movs	r5, #0
    81d2:	4c22      	ldr	r4, [pc, #136]	; (825c <rt_sys_init+0xd4>)
    81d4:	0038      	movs	r0, r7
    81d6:	70e3      	strb	r3, [r4, #3]
    81d8:	3bfe      	subs	r3, #254	; 0xfe
    81da:	7063      	strb	r3, [r4, #1]
    81dc:	3323      	adds	r3, #35	; 0x23
    81de:	54e6      	strb	r6, [r4, r3]
    81e0:	3301      	adds	r3, #1
    81e2:	54e6      	strb	r6, [r4, r3]
    81e4:	84e5      	strh	r5, [r4, #38]	; 0x26
    81e6:	7026      	strb	r6, [r4, #0]
    81e8:	70a6      	strb	r6, [r4, #2]
    81ea:	6065      	str	r5, [r4, #4]
    81ec:	60a5      	str	r5, [r4, #8]
    81ee:	60e5      	str	r5, [r4, #12]
    81f0:	6125      	str	r5, [r4, #16]
    81f2:	6225      	str	r5, [r4, #32]
    81f4:	82a5      	strh	r5, [r4, #20]
    81f6:	82e5      	strh	r5, [r4, #22]
    81f8:	8325      	strh	r5, [r4, #24]
    81fa:	8365      	strh	r5, [r4, #26]
    81fc:	f7fe fe28 	bl	6e50 <rt_alloc_box>
    8200:	4917      	ldr	r1, [pc, #92]	; (8260 <rt_sys_init+0xd8>)
    8202:	62e0      	str	r0, [r4, #44]	; 0x2c
    8204:	0020      	movs	r0, r4
    8206:	f7fe fd49 	bl	6c9c <rt_init_stack>
    820a:	2204      	movs	r2, #4
    820c:	4b15      	ldr	r3, [pc, #84]	; (8264 <rt_sys_init+0xdc>)
    820e:	701a      	strb	r2, [r3, #0]
    8210:	605d      	str	r5, [r3, #4]
    8212:	4b15      	ldr	r3, [pc, #84]	; (8268 <rt_sys_init+0xe0>)
    8214:	701a      	strb	r2, [r3, #0]
    8216:	60dd      	str	r5, [r3, #12]
    8218:	611d      	str	r5, [r3, #16]
    821a:	829d      	strh	r5, [r3, #20]
    821c:	4b13      	ldr	r3, [pc, #76]	; (826c <rt_sys_init+0xe4>)
    821e:	4a14      	ldr	r2, [pc, #80]	; (8270 <rt_sys_init+0xe8>)
    8220:	601c      	str	r4, [r3, #0]
    8222:	2302      	movs	r3, #2
    8224:	7812      	ldrb	r2, [r2, #0]
    8226:	7063      	strb	r3, [r4, #1]
    8228:	4b12      	ldr	r3, [pc, #72]	; (8274 <rt_sys_init+0xec>)
    822a:	701e      	strb	r6, [r3, #0]
    822c:	705e      	strb	r6, [r3, #1]
    822e:	70da      	strb	r2, [r3, #3]
    8230:	f000 f85a 	bl	82e8 <rt_init_robin>
    8234:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8236:	46c0      	nop			; (mov r8, r8)
    8238:	0000869c 	.word	0x0000869c
    823c:	20004ce4 	.word	0x20004ce4
    8240:	000086c8 	.word	0x000086c8
    8244:	20000910 	.word	0x20000910
    8248:	000086a0 	.word	0x000086a0
    824c:	200009f0 	.word	0x200009f0
    8250:	000086cc 	.word	0x000086cc
    8254:	20004d20 	.word	0x20004d20
    8258:	000086f0 	.word	0x000086f0
    825c:	20006074 	.word	0x20006074
    8260:	00001a21 	.word	0x00001a21
    8264:	20006038 	.word	0x20006038
    8268:	20006050 	.word	0x20006050
    826c:	2000606c 	.word	0x2000606c
    8270:	000086d4 	.word	0x000086d4
    8274:	20004c60 	.word	0x20004c60

00008278 <rt_sys_start>:
    8278:	21ff      	movs	r1, #255	; 0xff
    827a:	4b16      	ldr	r3, [pc, #88]	; (82d4 <rt_sys_start+0x5c>)
    827c:	0409      	lsls	r1, r1, #16
    827e:	681a      	ldr	r2, [r3, #0]
    8280:	b510      	push	{r4, lr}
    8282:	430a      	orrs	r2, r1
    8284:	601a      	str	r2, [r3, #0]
    8286:	681b      	ldr	r3, [r3, #0]
    8288:	4913      	ldr	r1, [pc, #76]	; (82d8 <rt_sys_start+0x60>)
    828a:	025b      	lsls	r3, r3, #9
    828c:	680a      	ldr	r2, [r1, #0]
    828e:	0e9b      	lsrs	r3, r3, #26
    8290:	069b      	lsls	r3, r3, #26
    8292:	4313      	orrs	r3, r2
    8294:	600b      	str	r3, [r1, #0]
    8296:	f7ff fd0d 	bl	7cb4 <os_tick_init>
    829a:	4c10      	ldr	r4, [pc, #64]	; (82dc <rt_sys_start+0x64>)
    829c:	6020      	str	r0, [r4, #0]
    829e:	2800      	cmp	r0, #0
    82a0:	db17      	blt.n	82d2 <rt_sys_start+0x5a>
    82a2:	4a0f      	ldr	r2, [pc, #60]	; (82e0 <rt_sys_start+0x68>)
    82a4:	0883      	lsrs	r3, r0, #2
    82a6:	4694      	mov	ip, r2
    82a8:	2218      	movs	r2, #24
    82aa:	00c0      	lsls	r0, r0, #3
    82ac:	4010      	ands	r0, r2
    82ae:	32e7      	adds	r2, #231	; 0xe7
    82b0:	4082      	lsls	r2, r0
    82b2:	009b      	lsls	r3, r3, #2
    82b4:	4463      	add	r3, ip
    82b6:	6819      	ldr	r1, [r3, #0]
    82b8:	430a      	orrs	r2, r1
    82ba:	490a      	ldr	r1, [pc, #40]	; (82e4 <rt_sys_start+0x6c>)
    82bc:	601a      	str	r2, [r3, #0]
    82be:	468c      	mov	ip, r1
    82c0:	211f      	movs	r1, #31
    82c2:	6822      	ldr	r2, [r4, #0]
    82c4:	0953      	lsrs	r3, r2, #5
    82c6:	400a      	ands	r2, r1
    82c8:	391e      	subs	r1, #30
    82ca:	4091      	lsls	r1, r2
    82cc:	009b      	lsls	r3, r3, #2
    82ce:	4463      	add	r3, ip
    82d0:	6019      	str	r1, [r3, #0]
    82d2:	bd10      	pop	{r4, pc}
    82d4:	e000ed20 	.word	0xe000ed20
    82d8:	e000ed1c 	.word	0xe000ed1c
    82dc:	20006068 	.word	0x20006068
    82e0:	e000e400 	.word	0xe000e400
    82e4:	e000e100 	.word	0xe000e100

000082e8 <rt_init_robin>:
    82e8:	2200      	movs	r2, #0
    82ea:	4b03      	ldr	r3, [pc, #12]	; (82f8 <rt_init_robin+0x10>)
    82ec:	601a      	str	r2, [r3, #0]
    82ee:	4a03      	ldr	r2, [pc, #12]	; (82fc <rt_init_robin+0x14>)
    82f0:	6812      	ldr	r2, [r2, #0]
    82f2:	80da      	strh	r2, [r3, #6]
    82f4:	4770      	bx	lr
    82f6:	46c0      	nop			; (mov r8, r8)
    82f8:	200060a8 	.word	0x200060a8
    82fc:	000086a4 	.word	0x000086a4

00008300 <rt_chk_robin>:
    8300:	b510      	push	{r4, lr}
    8302:	4a0f      	ldr	r2, [pc, #60]	; (8340 <rt_chk_robin+0x40>)
    8304:	4c0f      	ldr	r4, [pc, #60]	; (8344 <rt_chk_robin+0x44>)
    8306:	6811      	ldr	r1, [r2, #0]
    8308:	6863      	ldr	r3, [r4, #4]
    830a:	4299      	cmp	r1, r3
    830c:	d014      	beq.n	8338 <rt_chk_robin+0x38>
    830e:	6013      	str	r3, [r2, #0]
    8310:	4b0d      	ldr	r3, [pc, #52]	; (8348 <rt_chk_robin+0x48>)
    8312:	8819      	ldrh	r1, [r3, #0]
    8314:	88d3      	ldrh	r3, [r2, #6]
    8316:	3b01      	subs	r3, #1
    8318:	18cb      	adds	r3, r1, r3
    831a:	b29b      	uxth	r3, r3
    831c:	8093      	strh	r3, [r2, #4]
    831e:	4299      	cmp	r1, r3
    8320:	d000      	beq.n	8324 <rt_chk_robin+0x24>
    8322:	bd10      	pop	{r4, pc}
    8324:	2300      	movs	r3, #0
    8326:	0020      	movs	r0, r4
    8328:	6013      	str	r3, [r2, #0]
    832a:	f7ff f941 	bl	75b0 <rt_get_first>
    832e:	0001      	movs	r1, r0
    8330:	0020      	movs	r0, r4
    8332:	f7ff f917 	bl	7564 <rt_put_prio>
    8336:	e7f4      	b.n	8322 <rt_chk_robin+0x22>
    8338:	4b03      	ldr	r3, [pc, #12]	; (8348 <rt_chk_robin+0x48>)
    833a:	8819      	ldrh	r1, [r3, #0]
    833c:	8893      	ldrh	r3, [r2, #4]
    833e:	e7ee      	b.n	831e <rt_chk_robin+0x1e>
    8340:	200060a8 	.word	0x200060a8
    8344:	20006038 	.word	0x20006038
    8348:	20006034 	.word	0x20006034
    834c:	00000000 	.word	0x00000000

00008350 <__eeprom_program_word_veneer>:
    8350:	b401      	push	{r0}
    8352:	4802      	ldr	r0, [pc, #8]	; (835c <__eeprom_program_word_veneer+0xc>)
    8354:	4684      	mov	ip, r0
    8356:	bc01      	pop	{r0}
    8358:	4760      	bx	ip
    835a:	bf00      	nop
    835c:	20100151 	.word	0x20100151

00008360 <__eeprom_erase_page_veneer>:
    8360:	b401      	push	{r0}
    8362:	4802      	ldr	r0, [pc, #8]	; (836c <__eeprom_erase_page_veneer+0xc>)
    8364:	4684      	mov	ip, r0
    8366:	bc01      	pop	{r0}
    8368:	4760      	bx	ip
    836a:	bf00      	nop
    836c:	2010002d 	.word	0x2010002d

00008370 <__eeprom_read_word_veneer>:
    8370:	b401      	push	{r0}
    8372:	4802      	ldr	r0, [pc, #8]	; (837c <__eeprom_read_word_veneer+0xc>)
    8374:	4684      	mov	ip, r0
    8376:	bc01      	pop	{r0}
    8378:	4760      	bx	ip
    837a:	bf00      	nop
    837c:	20100229 	.word	0x20100229

00008380 <threadPacketParserDef>:
    8380:	00003001 00000001 00000001 00000400     .0..............

00008390 <threadFSMProceedDef>:
    8390:	000003bd 00000000 00000001 00000400     ................

000083a0 <threadDUTProceedDef>:
    83a0:	00000251 00000000 00000001 00000400     Q...............

000083b0 <message_def>:
    83b0:	00000004 20000868                       ....h.. 

000083b8 <os_mutex_def_MutexMdbReg>:
    83b8:	2000088c                                ... 

000083bc <owen_crc16_tab>:
    83bc:	8f570000 1eae91f9 23f2aca5 b20b3d5c     ..W........#\=..
    83cc:	594ad61d c8b347e4 f5ef7ab8 6416eb41     ..JY.G...z..A..d
    83dc:	ac3a236d 3dc3b294 009f8fc8 91661e31     m#:....=....1.f.
    83ec:	7a27f570 ebde6489 d68259d5 477bc82c     p.'z.d...Y..,.{G
    83fc:	c98d46da 5874d723 6528ea7f f4d17b86     .F..#.tX..(e.{..
    840c:	1f9090c7 8e69013e b3353c62 22ccad9b     ....>.i.b<5...."
    841c:	eae065b7 7b19f44e 4645c912 d7bc58eb     .e..N..{..EF.X..
    842c:	3cfdb3aa ad042253 90581f0f 01a18ef6     ...<S"....X.....
    843c:	02e38db4 931a1c4d ae462111 3fbfb0e8     ....M....!F....?
    844c:	d4fe5ba9 4507ca50 785bf70c e9a266f5     .[..P..E..[x.f..
    845c:	218eaed9 b0773f20 8d2b027c 1cd29385     ...! ?w.|.+.....
    846c:	f79378c4 666ae93d 5b36d461 cacf4598     .x..=.jfa.6[.E..
    847c:	4439cb6e d5c05a97 e89c67cb 7965f632     n.9D.Z...g..2.ey
    848c:	92241d73 03dd8c8a 3e81b1d6 af78202f     s.$........>/ x.
    849c:	6754e803 f6ad79fa cbf144a6 5a08d55f     ..Tg.y...D.._..Z
    84ac:	b1493e1e 20b0afe7 1dec92bb 8c150342     .>I.... ....B...
    84bc:	1b68943f 8a9105c6 b7cd389a 2634a963     ?.h......8..c.4&
    84cc:	cd754222 5c8cd3db 61d0ee87 f0297f7e     "Bu....\...a~.).
    84dc:	3805b752 a9fc26ab 94a01bf7 05598a0e     R..8.&........Y.
    84ec:	ee18614f 7fe1f0b6 42bdcdea d3445c13     Oa.........B.\D.
    84fc:	5db2d2e5 cc4b431c f1177e40 60eeefb9     ...].CK.@~.....`
    850c:	8baf04f8 1a569501 270aa85d b6f339a4     ......V.]..'.9..
    851c:	7edff188 ef266071 d27a5d2d 4383ccd4     ...~q`&.-]z....C
    852c:	a8c22795 393bb66c 04678b30 959e1ac9     .'..l.;90.g.....
    853c:	96dc198b 07258872 3a79b52e ab8024d7     ....r.%...y:.$..
    854c:	40c1cf96 d1385e6f ec646333 7d9df2ca     ...@o^8.3cd....}
    855c:	b5b13ae6 2448ab1f 19149643 88ed07ba     .:....H$C.......
    856c:	63acecfb f2557d02 cf09405e 5ef0d1a7     ...c.}U.^@.....^
    857c:	d0065f51 41ffcea8 7ca3f3f4 ed5a620d     Q_.....A...|.bZ.
    858c:	061b894c 97e218b5 aabe25e9 3b47b410     L........%....G;
    859c:	f36b7c3c 6292edc5 5fced099 ce374160     <|k....b..._`A7.
    85ac:	2576aa21 b48f3bd8 89d30684 182a977d     !.v%.;......}.*.
    85bc:	00000001 0000000a 00000064 000003e8     ........d.......
    85cc:	00002710 000186a0 000f4240 00989680     .'......@B......
    85dc:	0000000a 00000064 000003e8 00002710     ....d........'..
    85ec:	0000ea60 000927c0 0036ee80 02255100     `....'....6..Q%.
    85fc:	74697865 00000000 70616548 646e6120     exit....Heap and
    860c:	61747320 63206b63 696c6c6f 6e6f6973      stack collision
    861c:	0000000a 00001442 00001430 0000144e     ....B...0...N...
    862c:	0000145a 0000145a 0000145a 0000145a     Z...Z...Z...Z...
    863c:	0000145a 0000145a 0000145a 0000145a     Z...Z...Z...Z...
    864c:	0000145a 0000145a 00001448 0000145a     Z...Z...H...Z...
    865c:	0000145a 0000145a 000013d4 0000145a     Z...Z.......Z...
    866c:	0000144e 0000145a 0000145a 00001454     N...Z...Z...T...
    867c:	6c383025 00002058 32302520 00000058     %08lX .. %02X...
    868c:	34302520 00000058 38302520 0000584c      %04X... %08LX..

0000869c <os_maxtaskrun>:
    869c:	00000004                                ....

000086a0 <os_stackinfo>:
    86a0:	01021000                                ....

000086a4 <os_rrobin>:
    86a4:	00010005                                ....

000086a8 <os_tickfreq>:
    86a8:	04c4b400                                ....

000086ac <os_tickus_i>:
    86ac:	00000050                                         P.

000086ae <os_tickus_f>:
	...

000086b0 <os_trv>:
    86b0:	0001387f                                .8..

000086b4 <os_flags>:
    86b4:	00000001                                ....

000086b8 <CMSIS_RTOS_API_Version>:
    86b8:	00010002                                ....

000086bc <CMSIS_RTOS_RTX_Version>:
    86bc:	00040052                                R...

000086c0 <os_clockrate>:
    86c0:	000003e8                                ....

000086c4 <os_timernum>:
    86c4:	00000000                                ....

000086c8 <mp_tcb_size>:
    86c8:	000000dc                                ....

000086cc <mp_stk_size>:
    86cc:	00003010                                .0..

000086d0 <os_stack_sz>:
    86d0:	00001260                                `...

000086d4 <os_fifo_size>:
    86d4:	00000010                                ....

000086d8 <os_thread_def_osTimerThread>:
    86d8:	00005f05 00000002 00000001 00000200     ._..............

000086e8 <os_messageQ_def_osTimerMessageQ>:
    86e8:	00000004 20004cf8                       .....L. 

000086f0 <mp_tmr_size>:
    86f0:	00000000                                ....

000086f4 <os_thread_def_main>:
    86f4:	000000c1 00000000 00000001 00000040     ............@...

00008704 <os_mutex_def_readpackMutex>:
    8704:	20005324                                $S. 

00008708 <os_mutex_def_sendpackMutex>:
    8708:	20005338                                8S. 

0000870c <crc_table>:
    870c:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    871c:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    872c:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    873c:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    874c:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    875c:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    876c:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    877c:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    878c:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    879c:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    87ac:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    87bc:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    87cc:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    87dc:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    87ec:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    87fc:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    880c:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    881c:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    882c:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    883c:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    884c:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    885c:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    886c:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    887c:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    888c:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    889c:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    88ac:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    88bc:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    88cc:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    88dc:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    88ec:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    88fc:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    890c:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    891c:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    892c:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    893c:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    894c:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    895c:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    896c:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    897c:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    898c:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    899c:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    89ac:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    89bc:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    89cc:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    89dc:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    89ec:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    89fc:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8a0c:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8a1c:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8a2c:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8a3c:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8a4c:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    8a5c:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    8a6c:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    8a7c:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    8a8c:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    8a9c:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    8aac:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    8abc:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8acc:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8adc:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8aec:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8afc:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008b0c <crc_table_low>:
    8b0c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8b1c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b2c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b3c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8b4c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b5c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8b6c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8b7c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b8c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b9c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8bac:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8bbc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8bcc:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8bdc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8bec:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8bfc:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

00008c0c <crc_table_high>:
    8c0c:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    8c1c:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    8c2c:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    8c3c:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    8c4c:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    8c5c:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    8c6c:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    8c7c:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    8c8c:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    8c9c:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    8cac:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    8cbc:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    8ccc:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    8cdc:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    8cec:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    8cfc:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

00008d0c <defBsiParam>:
    8d0c:	56789abc 00011234 00020a00 00000a00     ..xV4...........
    8d1c:	00000000                                ....

00008d20 <device_additional_info>:
    8d20:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    8d30:	00000000                                ....

00008d34 <proc_PDU_table>:
    8d34:	00003f99 00003f99 00003f99 00003e5d     .?...?...?..]>..
    8d44:	00003909 00003f99 00003f99 00003f99     .9...?...?...?..
    8d54:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8d64:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8d74:	00003a59 00003871 00003f99 00003f99     Y:..q8...?...?..
    8d84:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8d94:	00003c5d 00003f99 00003f99 00003f99     ]<...?...?...?..
    8da4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8db4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8dc4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8dd4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8de4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8df4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e04:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e14:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e24:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e34:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e44:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e54:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e64:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e74:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e84:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8e94:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8ea4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8eb4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8ec4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8ed4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8ee4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8ef4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f04:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f14:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f24:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f34:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f44:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f54:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f64:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f74:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f84:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8f94:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8fa4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8fb4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8fc4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8fd4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8fe4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    8ff4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9004:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9014:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9024:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9034:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9044:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9054:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9064:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9074:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9084:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9094:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    90a4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    90b4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    90c4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    90d4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    90e4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    90f4:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9104:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9114:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..
    9124:	00003f99 00003f99 00003f99 00003f99     .?...?...?...?..

00009134 <_global_impure_ptr>:
    9134:	20000018                                ... 

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
