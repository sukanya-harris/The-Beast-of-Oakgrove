	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"barnView.c"
	.text
	.align	2
	.global	initBarn
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBarn, %function
initBarn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r0, #16
	mov	lr, #24
	mov	ip, #80
	mov	r2, #0
	mov	r1, #1
	ldr	r3, .L4
	str	lr, [r3, #12]
	str	ip, [r3, #8]
	ldr	lr, .L4+4
	ldr	ip, .L4+8
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	ldr	r0, .L4+12
	str	r2, [lr]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	str	r2, [ip]
	str	r2, [r0]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	vOff
	.word	hOff
	.word	itemCheck
	.size	initBarn, .-initBarn
	.align	2
	.global	initBPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBPlayer, %function
initBPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #24
	mov	r0, #16
	mov	r1, #1
	mov	ip, #80
	ldr	r3, .L8
	str	lr, [r3, #12]
	str	ip, [r3, #8]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initBPlayer, .-initBPlayer
	.align	2
	.global	drawBPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBPlayer, %function
drawBPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L14
	ldr	ip, .L14+4
	ldr	r2, [r1, #68]
	ldr	r3, [ip]
	cmp	r2, #0
	push	{r4, r5, lr}
	add	lr, r3, #1
	beq	.L11
	ldr	r1, .L14+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	str	lr, [ip]
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L11:
	ldr	r0, .L14+12
	ldr	r2, [r1, #12]
	ldr	r4, [r0]
	ldr	r0, .L14+16
	ldr	r5, [r1, #60]
	sub	r2, r2, r4
	ldr	r4, [r0]
	ldr	r0, [r1, #52]
	ldr	r1, [r1, #8]
	lsl	r2, r2, #23
	sub	r1, r1, r4
	ldr	r4, .L14+8
	add	r0, r0, r5, lsl #5
	lsr	r2, r2, #23
	str	lr, [ip]
	orr	r2, r2, #16384
	add	ip, r4, r3, lsl #3
	lsl	r0, r0, #1
	and	r1, r1, #255
	lsl	r3, r3, #3
	strh	r1, [r4, r3]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	player
	.word	shadowIndex
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawBPlayer, .-drawBPlayer
	.align	2
	.global	drawBarn
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBarn, %function
drawBarn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r2, .L18
	push	{r4, lr}
	ldr	r3, .L18+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L18+24
	bl	drawBPlayer
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L18+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L18+32
	ldrh	r1, [r2]
	ldr	r2, .L18+36
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L19:
	.align	2
.L18:
	.word	shadowIndex
	.word	drawLives
	.word	drawPotion
	.word	drawKey
	.word	drawAmulet
	.word	drawWand
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawBarn, .-drawBarn
	.align	2
	.global	updateBarnsMove
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBarnsMove, %function
updateBarnsMove:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L27
.L23:
	.word	.L26
	.word	.L25
	.word	.L24
	.word	.L22
.L22:
	ldr	r3, .L33
	ldr	r3, [r3]
	add	r0, r0, #16
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r0, r1, lsl #8
	beq	.L31
	ldrb	r2, [r0, #3840]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L24:
	ldr	r3, .L33
	ldr	r3, [r3]
	sub	r0, r0, #1
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r1, r0, r1, lsl #8
	beq	.L31
	ldrb	r2, [r1, #3840]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L26:
	ldr	r3, .L33
	ldr	r3, [r3]
	sub	r1, r1, #1
	add	r1, r3, r1, lsl #8
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	cmp	r3, #0
	add	r0, r1, r0
	beq	.L31
.L32:
	ldrb	r2, [r0, #15]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L25:
	ldr	r3, .L33
	ldr	r3, [r3]
	add	r1, r1, #16
	add	r1, r3, r1, lsl #8
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r1, r0
	bne	.L32
.L31:
	mov	r0, r2
	bx	lr
.L27:
	mov	r0, #0
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.size	updateBarnsMove, .-updateBarnsMove
	.align	2
	.global	walkableBarn
	.syntax unified
	.arm
	.fpu softvfp
	.type	walkableBarn, %function
walkableBarn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L36
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #8
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.size	walkableBarn, .-walkableBarn
	.align	2
	.global	barnItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	barnItems, %function
barnItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L45
	ldr	r3, .L45+4
	ldr	r1, [r2, #8]
	ldr	r0, [r2, #12]
	ldr	lr, [r3]
	add	ip, r0, r1, lsl #8
	ldrb	r3, [lr, ip]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L39
	mov	r4, #1
	mov	r5, #15
	ldr	r6, .L45+8
	ldr	r3, .L45+12
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r6, .L45+16
	ldr	r3, .L45+20
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r3, .L45+24
	str	r4, [r3]
	ldr	r4, .L45+28
	add	r3, r1, r5
	str	r0, [r2, #20]
	str	r5, [r4]
	str	r3, [r2, #16]
	ldrb	r3, [lr, ip]	@ zero_extendqisi2
.L39:
	cmp	r3, #4
	bne	.L40
	mov	r4, #1
	mov	r5, #10
	ldr	r6, .L45+8
	ldr	r3, .L45+32
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r6, .L45+16
	ldr	r3, .L45+36
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r3, .L45+24
	str	r4, [r3]
	ldr	r4, .L45+28
	sub	r3, r0, #15
	str	r1, [r2, #24]
	str	r5, [r4]
	str	r3, [r2, #28]
	ldrb	r3, [lr, ip]	@ zero_extendqisi2
.L40:
	cmp	r3, #5
	bne	.L41
	mov	r5, #1
	mov	r7, #11
	ldr	r6, .L45+40
	ldr	r4, [r6]
	ldr	r8, .L45+8
	add	r4, r4, r5
	str	r4, [r6]
	ldr	r8, [r8]
	ldr	r4, .L45+32
	ldr	r6, .L45+16
	str	r8, [r4]
	ldr	r6, [r6]
	ldr	r4, .L45+36
	str	r6, [r4]
	ldr	r4, .L45+24
	str	r5, [r4]
	ldr	r4, .L45+44
	str	r5, [r4]
	ldr	r4, .L45+28
	ldr	r6, .L45+48
	str	r7, [r4]
	sub	r5, r0, #15
	add	r4, r1, #15
	str	r3, [r6]
	str	r5, [r2, #28]
	str	r4, [r2, #24]
	ldrb	r3, [lr, ip]	@ zero_extendqisi2
.L41:
	cmp	r3, #6
	bne	.L42
	mov	r4, #1
	mov	r5, #12
	ldr	r6, .L45+8
	ldr	r3, .L45+32
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r6, .L45+16
	ldr	r3, .L45+36
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r3, .L45+24
	str	r4, [r3]
	ldr	r4, .L45+28
	add	r3, r1, #15
	str	r0, [r2, #28]
	str	r5, [r4]
	str	r3, [r2, #24]
	ldrb	r3, [lr, ip]	@ zero_extendqisi2
.L42:
	cmp	r3, #7
	bne	.L38
	mov	lr, #1
	mov	r5, #14
	mov	r4, #6
	ldr	ip, .L45+40
	ldr	r3, .L45+8
	ldr	r6, [r3]
	ldr	r3, [ip]
	add	r1, r1, #15
	add	r3, r3, lr
	str	r1, [r2, #24]
	str	r0, [r2, #28]
	str	r3, [ip]
	ldr	r2, .L45+16
	ldr	r3, .L45+32
	ldr	r2, [r2]
	str	r6, [r3]
	ldr	r3, .L45+36
	ldr	r1, .L45+28
	str	r2, [r3]
	ldr	r2, .L45+48
	ldr	r3, .L45+24
	str	r5, [r1]
	str	r4, [r2]
	str	lr, [r3]
.L38:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	player
	.word	.LANCHOR0
	.word	vOff
	.word	prevVOFFRoom
	.word	hOff
	.word	prevHOFFRoom
	.word	textFlag
	.word	itemCheck
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	bCounter
	.word	keyFound
	.word	clueNumber
	.size	barnItems, .-barnItems
	.align	2
	.global	updateBPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBPlayer, %function
updateBPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L86
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	bne	.L49
	ldr	r0, .L86+4
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #32]
	subs	r2, r3, r2
	bmi	.L49
	ldr	r1, .L86+8
	ldr	ip, [r0, #12]
	ldr	r1, [r1]
	sub	r3, r3, #1
	add	r1, r1, ip
	ldrb	ip, [r1, r3, lsl #8]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r1, r3, lsl #8
	beq	.L49
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L49
	ldr	r1, .L86+12
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r0, #8]
	blt	.L49
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
.L49:
	ldr	r3, .L86
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L52
	ldr	r2, .L86+4
	ldr	r1, [r2, #8]
	ldr	r3, [r2, #44]
	ldr	ip, [r2, #32]
	add	r3, r1, r3
	add	r3, r3, ip
	cmp	r3, #160
	ble	.L85
.L52:
	ldr	r3, .L86
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L55
	ldr	r1, .L86+4
	ldr	r0, [r1, #12]
	ldr	ip, [r1, #36]
	cmn	r0, ip
	bmi	.L55
	ldr	r3, .L86+8
	ldr	r2, [r3]
	ldr	lr, [r1, #8]
	sub	r3, r0, #1
	add	r3, r2, r3
	ldrb	r2, [r3, lr, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, lr, lsl #8
	beq	.L55
	ldrb	r3, [r3, #3840]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	ldr	r2, .L86+16
	ldr	r3, [r2]
	sub	r0, r0, ip
	cmp	r3, #0
	str	r0, [r1, #12]
	blt	.L55
	sub	r0, r0, r3
	cmp	r0, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L55:
	ldr	r3, .L86
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L58
	ldr	r2, .L86+4
	ldr	r0, [r2, #12]
	ldr	r3, [r2, #40]
	ldr	ip, [r2, #36]
	add	r3, r0, r3
	add	r3, r3, ip
	cmp	r3, #256
	bgt	.L58
	ldr	r3, .L86+8
	ldr	r1, [r3]
	ldr	lr, [r2, #8]
	add	r3, r0, #16
	add	r3, r1, r3
	ldrb	r1, [r3, lr, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, lr, lsl #8
	beq	.L58
	ldrb	r3, [r3, #3840]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L58
	ldr	r1, .L86+16
	ldr	r3, [r1]
	add	r0, r0, ip
	cmp	r3, #15
	str	r0, [r2, #12]
	bgt	.L58
	sub	r0, r0, r3
	cmp	r0, #119
	addgt	r3, r3, #1
	strgt	r3, [r1]
.L58:
	ldr	r3, .L86+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	barnItems
.L85:
	ldr	r3, .L86+8
	ldr	lr, [r2, #12]
	ldr	r3, [r3]
	add	r0, r1, #16
	add	r3, r3, lr
	ldrb	lr, [r3, r0, lsl #8]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r0, lsl #8
	beq	.L52
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L52
	ldr	r0, .L86+12
	ldr	r3, [r0]
	add	r1, r1, ip
	cmp	r3, #0
	str	r1, [r2, #8]
	bge	.L52
	sub	r1, r1, r3
	cmp	r1, #79
	addgt	r3, r3, #1
	strgt	r3, [r0]
	b	.L52
.L87:
	.align	2
.L86:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	vOff
	.word	hOff
	.word	animatePlayer
	.size	updateBPlayer, .-updateBPlayer
	.align	2
	.global	updateBarn
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBarn, %function
updateBarn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updateBPlayer
	.size	updateBarn, .-updateBarn
	.global	barn_CollisionMap
	.comm	player,80,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	barn_CollisionMap, %object
	.size	barn_CollisionMap, 4
barn_CollisionMap:
	.word	barnCollisionBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
