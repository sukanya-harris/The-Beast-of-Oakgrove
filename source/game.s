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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKey.part.0, %function
drawKey.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L3
	ldr	r3, [ip]
	ldr	r0, .L3+4
	lsl	r1, r3, #3
	ldrh	r2, [r0, r1]
	add	r3, r3, #1
	orr	r2, r2, #512
	str	r3, [ip]
	strh	r2, [r0, r1]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	shadowOAM
	.size	drawKey.part.0, .-drawKey.part.0
	.set	drawAmulet.part.0,drawKey.part.0
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r0, #16
	mov	r4, #40
	mov	lr, #48
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L7
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	str	ip, [r3, #64]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	str	r2, [r3, #52]
	pop	{r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	updateMovement
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMovement, %function
updateMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L16
.L12:
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L11
.L11:
	ldr	r3, .L22
	ldr	r3, [r3]
	add	r0, r0, #16
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r0, r1, lsl #9
	beq	.L20
	add	r0, r0, #7680
	ldrb	r2, [r0]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L13:
	ldr	r3, .L22
	ldr	r3, [r3]
	sub	r0, r0, #1
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	add	r1, r0, r1, lsl #9
	beq	.L20
	add	r1, r1, #7680
	ldrb	r2, [r1]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L15:
	ldr	r3, .L22
	ldr	r3, [r3]
	sub	r1, r1, #1
	add	r1, r3, r1, lsl #9
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	cmp	r3, #0
	add	r0, r1, r0
	beq	.L20
.L21:
	ldrb	r2, [r0, #15]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L14:
	ldr	r3, .L22
	ldr	r3, [r3]
	add	r1, r1, #16
	add	r1, r3, r1, lsl #9
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r1, r0
	bne	.L21
.L20:
	mov	r0, r2
	bx	lr
.L16:
	mov	r0, #0
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR1
	.size	updateMovement, .-updateMovement
	.align	2
	.global	walkable
	.syntax unified
	.arm
	.fpu softvfp
	.type	walkable, %function
walkable:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L25
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L26:
	.align	2
.L25:
	.word	.LANCHOR1
	.size	walkable, .-walkable
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L31
	ldr	ip, .L31+4
	ldr	r2, [r1, #68]
	ldr	r3, [ip]
	cmp	r2, #0
	push	{r4, r5, lr}
	add	lr, r3, #1
	beq	.L28
	ldr	r1, .L31+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	str	lr, [ip]
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L28:
	ldr	r0, .L31+12
	ldr	r2, [r1, #12]
	ldr	r4, [r0]
	ldr	r0, .L31+16
	ldr	r5, [r1, #60]
	sub	r2, r2, r4
	ldr	r4, [r0]
	ldr	r0, [r1, #52]
	ldr	r1, [r1, #8]
	lsl	r2, r2, #23
	sub	r1, r1, r4
	ldr	r4, .L31+8
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
.L32:
	.align	2
.L31:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawPlayer, .-drawPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L46
	ldr	r5, [r4, #48]
	add	r3, r5, r5, lsl r1
	ldr	r2, .L46+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	ldr	r3, .L46+8
	ldr	r6, [r4, #52]
	cmp	r2, r3
	str	r6, [r4, #56]
	str	r1, [r4, #52]
	bcs	.L34
	ldr	r0, [r4, #60]
	ldr	r3, .L46+12
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L34:
	ldr	r3, .L46+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #52]
	ldr	r3, .L46+16
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #52]
	ldr	r3, .L46+16
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L37
	mov	r2, #2
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #52]
	bne	.L39
.L40:
	mov	r3, #3
	str	r3, [r4, #52]
.L39:
	add	r5, r5, #1
	str	r5, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L40
	ldr	r3, [r4, #52]
	cmp	r3, #4
	bne	.L39
	mov	r3, #0
	str	r6, [r4, #52]
	str	r3, [r4, #60]
	str	r3, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	player
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	initSisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSisters, %function
initSisters:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, r2
	mov	lr, #16
	mov	r1, #1
	mov	r4, #3
	mov	r6, #197
	mov	r5, #64
	mov	fp, #372
	mov	r10, #140
	ldr	r0, .L57
	ldr	r9, .L57+4
.L52:
	ldr	r3, [r0], #4
	cmp	r2, #0
	str	lr, [r3, #40]
	str	lr, [r3, #44]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	ip, [r3, #60]
	str	ip, [r3, #48]
	str	r4, [r3, #64]
	beq	.L55
	cmp	r2, #1
	beq	.L56
	cmp	r2, #2
	str	r6, [r3, #12]
	str	r5, [r3, #8]
	str	r1, [r3, #52]
	bne	.L50
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L55:
	mov	r8, #464
	mov	r7, #2
	str	r9, [r3, #8]
	str	r8, [r3, #12]
	str	r7, [r3, #52]
.L50:
	add	r2, r2, #1
	b	.L52
.L56:
	mov	r7, #2
	str	fp, [r3, #12]
	str	r10, [r3, #8]
	str	r7, [r3, #52]
	add	r2, r2, #1
	b	.L52
.L58:
	.align	2
.L57:
	.word	.LANCHOR1+4
	.word	479
	.size	initSisters, .-initSisters
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	mov	r4, #40
	mov	lr, #48
	mov	r0, #16
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L61
	str	r2, [r3]
	ldr	r3, .L61+4
	str	r2, [r3]
	ldr	r3, .L61+8
	str	r2, [r3]
	ldr	r3, .L61+12
	str	r2, [r3]
	ldr	r3, .L61+16
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	pop	{r4, lr}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	str	r2, [r3, #52]
	str	ip, [r3, #64]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	b	initSisters
.L62:
	.align	2
.L61:
	.word	vOff
	.word	hOff
	.word	prevHOFFRoom
	.word	prevVOFFRoom
	.word	player
	.size	initGame, .-initGame
	.align	2
	.global	drawSisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSisters, %function
drawSisters:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L77
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	lr, [r2]
	lsl	r7, lr, #16
	lsr	r7, r7, #16
	mov	r9, #0
	mov	r1, #8
	mov	r10, r7
	ldr	r3, .L77+4
	ldr	fp, .L77+8
	ldr	r5, [r3]
	ldr	r8, [fp]
	lsl	r6, r5, #16
	ldr	r0, .L77+12
	sub	sp, sp, #12
	lsr	r6, r6, #16
.L66:
	ldr	r2, [r0], #4
	ldr	ip, [r2, #8]
	ldr	r3, [r2, #44]
	sub	r7, ip, lr
	cmn	r7, r3
	bmi	.L64
	ldr	r4, [r2, #12]
	ldr	r3, [r2, #40]
	add	r3, r4, r3
	sub	r3, r3, r5
	mvn	r3, r3
	cmp	r7, #160
	lsr	r3, r3, #31
	movgt	r3, #0
	cmp	r3, #0
	bne	.L76
.L64:
	add	r1, r1, #8
	cmp	r1, #32
	bne	.L66
	cmp	r9, #0
	strne	r8, [fp]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L76:
	sub	r7, r4, r5
	cmp	r7, #240
	bgt	.L64
	ldr	r7, [r2, #68]
	cmp	r7, #0
	lsl	r9, r8, #3
	add	r7, r8, #1
	beq	.L65
	mov	ip, r9
	ldr	r4, .L77+16
	ldrh	r2, [r4, r9]
	orr	r2, r2, #512
	mov	r9, r3
	mov	r8, r7
	strh	r2, [r4, ip]	@ movhi
	b	.L64
.L65:
	mov	r9, r3
	ldr	r3, .L77+16
	sub	r4, r4, r6
	add	r3, r3, r8, lsl #3
	lsl	r8, r8, #3
	str	r8, [sp, #4]
	lsl	r4, r4, #23
	mov	r8, r7
	ldr	r7, [r2, #60]
	ldr	r2, [r2, #52]
	lsr	r4, r4, #23
	add	r7, r2, r7, lsl #5
	orr	r4, r4, #16384
	strh	r4, [r3, #2]	@ movhi
	ldr	r2, .L77+16
	ldr	r4, [sp, #4]
	sub	ip, ip, r10
	add	r7, r1, r7, lsl #1
	and	ip, ip, #255
	orr	r7, r7, #4096
	strh	ip, [r2, r4]	@ movhi
	strh	r7, [r3, #4]	@ movhi
	b	.L64
.L78:
	.align	2
.L77:
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	.LANCHOR1+4
	.word	shadowOAM
	.size	drawSisters, .-drawSisters
	.align	2
	.global	animateSisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateSisters, %function
animateSisters:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #0
	ldr	r0, .L85
	ldr	ip, .L85+4
	add	r4, r0, #12
.L82:
	ldr	r1, [r0], #4
	ldr	r2, [r1, #48]
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, ip, r3
	cmp	ip, r3, ror #1
	bcc	.L80
	add	r3, r1, #60
	ldm	r3, {r3, lr}
	sub	lr, lr, #1
	cmp	r3, lr
	add	r3, r3, #1
	strlt	r3, [r1, #60]
	strge	r5, [r1, #60]
.L80:
	add	r2, r2, #1
	cmp	r0, r4
	str	r2, [r1, #48]
	bne	.L82
	pop	{r4, r5, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	.LANCHOR1+4
	.word	143165576
	.size	animateSisters, .-animateSisters
	.align	2
	.global	updateSisters
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSisters, %function
updateSisters:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L138
	ldr	r3, [r6, #4]
	ldr	r2, [r3, #44]
	sub	sp, sp, #36
	str	r2, [sp, #12]
	ldr	r2, [r3, #40]
	str	r2, [sp, #8]
	ldr	r2, [r3, #8]
	str	r2, [sp, #4]
	ldr	r4, .L138+4
	ldr	r2, [r3, #12]
	ldr	r3, [r4, #44]
	str	r2, [sp]
	ldr	r5, .L138+8
	ldr	r2, [r4, #40]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L88
	mov	r3, #0
	mov	ip, #48
	mov	r0, #40
	mov	r2, #1
	ldr	r1, .L138+12
	str	r3, [r1]
	ldr	r1, .L138+16
	str	r3, [r1]
	ldr	r3, .L138+20
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	str	r2, [r3, #4]
.L88:
	ldr	r3, [r6, #8]
	ldr	r2, [r3, #44]
	str	r2, [sp, #12]
	ldr	r2, [r3, #40]
	str	r2, [sp, #8]
	ldr	r2, [r3, #8]
	str	r2, [sp, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r4, #44]
	str	r2, [sp]
	ldr	r2, [r4, #40]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L89
	mov	r3, #0
	mov	ip, #48
	mov	r0, #40
	mov	r2, #2
	ldr	r1, .L138+12
	str	r3, [r1]
	ldr	r1, .L138+16
	str	r3, [r1]
	ldr	r3, .L138+20
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	str	r2, [r3, #4]
.L89:
	ldr	r3, [r6, #12]
	ldr	r2, [r3, #44]
	str	r2, [sp, #12]
	ldr	r2, [r3, #40]
	str	r2, [sp, #8]
	ldr	r2, [r3, #8]
	str	r2, [sp, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r4, #44]
	str	r2, [sp]
	ldr	r2, [r4, #40]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L135
.L90:
	mov	r9, #0
	ldr	fp, .L138+24
	ldr	r5, .L138+28
	ldr	r8, .L138+32
	ldr	r7, .L138+36
	add	r10, fp, #12
	add	r4, sp, #20
.L99:
	ldr	r3, [fp], #4
	ldr	ip, [r3, #52]
	ldm	r5, {r0, r1, r2}
	cmp	ip, #0
	stm	r4, {r0, r1, r2}
	bne	.L91
	ldr	r1, [r3, #8]
	ldr	r0, [r3, #32]
	sub	r0, r1, r0
	cmp	r0, #47
	ble	.L92
	ldr	ip, [r3, #12]
	ldr	r2, [r6]
	sub	r1, r1, #1
	add	r2, r2, ip
	ldrb	ip, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, r1, lsl #9
	beq	.L92
	ldrb	r2, [r2, #15]	@ zero_extendqisi2
	cmp	r2, #0
	strne	r0, [r3, #8]
	bne	.L93
.L92:
	mov	lr, pc
	bx	r8
	smull	r2, r3, r7, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	add	r3, sp, #32
	add	r0, r3, r0, lsl #2
	ldr	ip, [r0, #-12]
	ldr	r3, [fp, #-4]
	str	ip, [r3, #52]
.L91:
	cmp	ip, #1
	beq	.L136
.L94:
	cmp	ip, #2
	beq	.L137
.L96:
	cmp	ip, #3
	bne	.L93
	add	r0, r3, #36
	ldm	r0, {r0, r2}
	ldr	r1, [r3, #12]
	add	r2, r1, r2
	add	r2, r2, r0
	cmp	r2, #512
	str	r9, [sp, #28]
	bgt	.L98
	ldr	ip, [r6]
	ldr	lr, [r3, #8]
	add	r2, r1, #16
	add	r2, ip, r2
	ldrb	ip, [r2, lr, lsl #9]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, lr, lsl #9
	beq	.L98
	add	r2, r2, #7680
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r1, r1, r0
	strne	r1, [r3, #12]
	bne	.L93
.L98:
	mov	lr, pc
	bx	r8
	smull	r2, r3, r7, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	add	r3, sp, #32
	add	r0, r3, r0, lsl #2
	ldr	r2, [r0, #-12]
	ldr	r3, [fp, #-4]
	str	r2, [r3, #52]
.L93:
	bl	animateSisters
	cmp	fp, r10
	bne	.L99
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L137:
	ldr	r1, [r3, #12]
	ldr	r0, [r3, #36]
	cmn	r1, r0
	str	r9, [sp, #24]
	bmi	.L97
	ldr	ip, [r6]
	ldr	lr, [r3, #8]
	sub	r2, r1, #1
	add	r2, ip, r2
	ldrb	ip, [r2, lr, lsl #9]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, lr, lsl #9
	beq	.L97
	add	r2, r2, #7680
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	subne	r1, r1, r0
	strne	r1, [r3, #12]
	bne	.L93
.L97:
	mov	lr, pc
	bx	r8
	smull	r2, r3, r7, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	add	r3, sp, #32
	add	r0, r3, r0, lsl #2
	ldr	ip, [r0, #-12]
	ldr	r3, [fp, #-4]
	str	ip, [r3, #52]
	b	.L96
.L136:
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #44]
	ldr	r0, [r3, #32]
	add	r2, r1, r2
	add	r2, r2, r0
	cmp	r2, #496
	str	r9, [sp, #20]
	bge	.L95
	ldr	lr, [r6]
	ldr	r2, [r3, #12]
	add	ip, r1, #16
	add	r2, lr, r2
	ldrb	lr, [r2, ip, lsl #9]	@ zero_extendqisi2
	cmp	lr, #0
	add	r2, r2, ip, lsl #9
	beq	.L95
	ldrb	r2, [r2, #15]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r1, r1, r0
	strne	r1, [r3, #8]
	bne	.L93
.L95:
	mov	lr, pc
	bx	r8
	smull	r2, r3, r7, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	add	r3, sp, #32
	add	r0, r3, r0, lsl #2
	ldr	ip, [r0, #-12]
	ldr	r3, [fp, #-4]
	str	ip, [r3, #52]
	b	.L94
.L135:
	mov	r0, #48
	mov	r3, #0
	mov	r1, #40
	ldr	r2, .L138+12
	str	r0, [r4, #24]
	ldr	r0, .L138+16
	str	r3, [r2]
	ldr	r2, .L138+32
	str	r3, [r0]
	str	r1, [r4, #28]
	mov	lr, pc
	bx	r2
	cmp	r0, #0
	and	r0, r0, #1
	ldr	r3, .L138+20
	rsblt	r0, r0, #0
	add	r0, r0, #1
	str	r0, [r3, #4]
	b	.L90
.L139:
	.align	2
.L138:
	.word	.LANCHOR1
	.word	player
	.word	collision
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	.LANCHOR0
	.word	.LANCHOR1+4
	.word	.LANCHOR2
	.word	rand
	.word	1431655766
	.size	updateSisters, .-updateSisters
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L147
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, [r3, #16]
	cmp	r6, #0
	ble	.L140
	mov	r2, #10
	mov	r5, #145
	ldr	r8, .L147+4
	ldr	r1, .L147+8
	ldr	r7, [r8]
	ldr	r3, .L147+12
	rsb	r0, r6, r6, lsl #4
	ldr	ip, [r1, #68]
	ldr	r4, .L147+16
	ldr	lr, .L147+20
	add	r3, r3, r7, lsl #3
	add	r0, r0, r2
.L144:
	cmp	ip, #0
	ldrhne	r1, [r3]
	andeq	r1, r2, r4
	orrne	r1, r1, #512
	orreq	r1, r1, #16384
	add	r2, r2, #15
	strhne	r1, [r3]	@ movhi
	strheq	r5, [r3]	@ movhi
	strheq	lr, [r3, #4]	@ movhi
	strheq	r1, [r3, #2]	@ movhi
	cmp	r0, r2
	add	r3, r3, #8
	bne	.L144
	add	r6, r7, r6
	str	r6, [r8]
.L140:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L148:
	.align	2
.L147:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	hearts
	.word	shadowOAM
	.word	511
	.word	24833
	.size	drawLives, .-drawLives
	.align	2
	.global	doorCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	doorCollision, %function
doorCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L165
	push	{r4, r5, r6, r7, r8, lr}
	add	r1, r2, #8
	ldm	r1, {r1, lr}
	add	ip, lr, r1, lsl #9
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L150
	mov	r4, #1
	ldr	r3, .L165+4
	ldr	r5, .L165+8
	ldr	r6, [r3]
	ldr	r3, .L165+12
	ldr	r5, [r5]
	str	r6, [r3]
	ldr	r3, .L165+16
	str	r5, [r3]
	ldr	r3, .L165+20
	str	r1, [r2, #16]
	str	lr, [r2, #20]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
.L150:
	cmp	r3, #3
	bne	.L151
	mov	r5, #1
	mov	r4, #2
	ldr	r6, .L165+4
	ldr	r3, .L165+12
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r6, .L165+8
	ldr	r3, .L165+16
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r3, .L165+20
	str	r1, [r2, #16]
	str	lr, [r2, #20]
	str	r5, [r3, #8]
	str	r4, [r3, #12]
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
.L151:
	cmp	r3, #4
	bne	.L152
	mov	r5, #1
	mov	r4, #3
	ldr	r6, .L165+4
	ldr	r3, .L165+12
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r6, .L165+8
	ldr	r3, .L165+16
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r3, .L165+20
	str	r1, [r2, #16]
	str	lr, [r2, #20]
	str	r5, [r3, #8]
	str	r4, [r3, #12]
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
.L152:
	cmp	r3, #5
	bne	.L153
	mov	r5, #1
	mov	r4, #4
	ldr	r6, .L165+4
	ldr	r3, .L165+12
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r6, .L165+8
	ldr	r3, .L165+16
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r3, .L165+20
	str	r1, [r2, #16]
	str	lr, [r2, #20]
	str	r5, [r3, #8]
	str	r4, [r3, #12]
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
.L153:
	cmp	r3, #7
	bne	.L154
	mov	r5, #1
	mov	r4, #8
	ldr	r6, .L165+4
	ldr	r3, .L165+24
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r6, .L165+8
	ldr	r3, .L165+28
	ldr	r6, [r6]
	str	r6, [r3]
	ldr	r3, .L165+20
	str	r5, [r3, #8]
	ldr	r3, .L165+32
	str	r1, [r2, #24]
	str	lr, [r2, #28]
	str	r4, [r3]
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
.L154:
	cmp	r3, #8
	beq	.L164
.L155:
	cmp	r3, #6
	bne	.L158
	mov	r4, #1
	mov	r8, #0
	mov	r7, #16
	mov	r6, #8
	ldr	r5, .L165+36
	ldr	r3, [r5]
	add	r3, r3, r4
	str	r3, [r5]
	ldr	r5, .L165+4
	ldr	r3, .L165+24
	ldr	r5, [r5]
	str	r5, [r3]
	ldr	r5, .L165+8
	ldr	r3, .L165+28
	ldr	r5, [r5]
	str	r5, [r3]
	ldr	r3, .L165+20
	str	r4, [r3, #8]
	str	r4, [r3, #20]
	str	r8, [r3, #12]
	ldr	r3, .L165+32
	ldr	r4, .L165+40
	str	r7, [r3]
	add	r3, r1, #15
	str	lr, [r2, #28]
	str	r6, [r4]
	str	r3, [r2, #24]
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
.L158:
	cmp	r3, #13
	bne	.L149
	mov	r4, #1
	mov	ip, #0
	mov	r0, #17
	ldr	r3, .L165+4
	ldr	r6, [r3]
	ldr	r3, .L165+8
	add	r1, r1, #15
	ldr	r5, [r3]
	str	r1, [r2, #24]
	ldr	r3, .L165+24
	str	lr, [r2, #28]
	ldr	r2, .L165+28
	str	r6, [r3]
	str	r5, [r2]
	ldr	r3, .L165+20
	ldr	r2, .L165+32
	str	r4, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r2]
.L149:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L164:
	ldr	r4, .L165+20
	ldr	r7, [r4, #16]
	ldr	r6, .L165+4
	ldr	r5, .L165+8
	cmp	r7, #3
	ldr	r6, [r6]
	ldr	r5, [r5]
	beq	.L156
	ldr	r7, [r4, #20]
	cmp	r7, #0
	beq	.L157
.L156:
	mov	r7, #1
	mov	r3, #7
	str	r7, [r4, #8]
	str	r3, [r4, #12]
	ldr	r7, .L165+12
	ldr	r3, .L165+16
	str	r1, [r2, #16]
	str	lr, [r2, #20]
	str	r6, [r7]
	str	r5, [r3]
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
	b	.L155
.L157:
	mov	r8, #1
	str	r3, [r4, #12]
	ldr	r7, .L165+12
	ldr	r3, .L165+16
	str	r1, [r2, #16]
	str	lr, [r2, #20]
	str	r8, [r4, #8]
	str	r6, [r7]
	str	r5, [r3]
	ldrb	r3, [r0, ip]	@ zero_extendqisi2
	b	.L155
.L166:
	.align	2
.L165:
	.word	player
	.word	vOff
	.word	hOff
	.word	prevVOFFRoom
	.word	prevHOFFRoom
	.word	.LANCHOR0
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	itemCheck
	.word	bCounter
	.word	clueNumber
	.size	doorCollision, .-doorCollision
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L208
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	beq	.L168
	ldr	r4, .L208+4
.L169:
	ldr	r3, .L208
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L172
	ldr	r2, .L208+8
	ldr	r1, [r2, #8]
	ldr	r3, [r2, #44]
	ldr	ip, [r2, #32]
	add	r3, r1, r3
	add	r3, r3, ip
	cmp	r3, #512
	ble	.L207
.L172:
	ldr	r3, .L208
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L175
	ldr	r1, .L208+8
	ldr	r0, [r1, #12]
	ldr	ip, [r1, #36]
	cmn	r0, ip
	bmi	.L175
	ldr	r2, [r4]
	ldr	lr, [r1, #8]
	sub	r3, r0, #1
	add	r3, r2, r3
	ldrb	r2, [r3, lr, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, lr, lsl #9
	beq	.L175
	add	r3, r3, #7680
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L175
	ldr	r2, .L208+12
	ldr	r3, [r2]
	sub	r0, r0, ip
	cmp	r3, #0
	str	r0, [r1, #12]
	blt	.L175
	sub	r0, r0, r3
	cmp	r0, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L175:
	ldr	r3, .L208
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L178
	ldr	r2, .L208+8
	ldr	r0, [r2, #12]
	ldr	r3, [r2, #40]
	ldr	ip, [r2, #36]
	add	r3, r0, r3
	add	r3, r3, ip
	cmp	r3, #512
	bgt	.L178
	ldr	r1, [r4]
	ldr	lr, [r2, #8]
	add	r3, r0, #16
	add	r3, r1, r3
	ldrb	r1, [r3, lr, lsl #9]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, lr, lsl #9
	beq	.L178
	add	r3, r3, #7680
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L178
	ldr	r1, .L208+12
	ldr	r3, [r1]
	add	r0, r0, ip
	cmp	r3, #272
	str	r0, [r2, #12]
	bge	.L178
	sub	r0, r0, r3
	cmp	r0, #119
	addgt	r3, r3, #1
	strgt	r3, [r1]
.L178:
	bl	animatePlayer
	ldr	r0, [r4]
	pop	{r4, lr}
	b	doorCollision
.L207:
	ldr	lr, [r2, #12]
	ldr	r3, [r4]
	add	r0, r1, #16
	add	r3, r3, lr
	ldrb	lr, [r3, r0, lsl #9]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r0, lsl #9
	beq	.L172
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L172
	ldr	r0, .L208+16
	ldr	r3, [r0]
	add	r1, r1, ip
	cmp	r3, #352
	str	r1, [r2, #8]
	bge	.L172
	sub	r1, r1, r3
	cmp	r1, #79
	addgt	r3, r3, #1
	strgt	r3, [r0]
	b	.L172
.L168:
	ldr	r0, .L208+8
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #32]
	subs	r2, r3, r2
	ldr	r4, .L208+4
	bmi	.L169
	ldr	ip, [r0, #12]
	ldr	r1, [r4]
	sub	r3, r3, #1
	add	r1, r1, ip
	ldrb	ip, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r1, r3, lsl #9
	beq	.L169
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L169
	ldr	r1, .L208+16
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r0, #8]
	blt	.L169
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
	b	.L169
.L209:
	.align	2
.L208:
	.word	67109120
	.word	.LANCHOR1
	.word	player
	.word	hOff
	.word	vOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	bl	updateSisters
	ldr	r3, .L213
	ldr	r3, [r3, #16]
	cmp	r3, #3
	moveq	r2, #1
	ldreq	r3, .L213+4
	pop	{r4, lr}
	streq	r2, [r3]
	bx	lr
.L214:
	.align	2
.L213:
	.word	.LANCHOR0
	.word	keyPromptFlag
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPotion
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPotion, %function
drawPotion:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L222
	ldr	r6, [r8, #16]
	cmp	r6, #0
	ble	.L215
	mov	r2, #180
	mov	r5, #145
	ldr	r1, .L222+4
	ldr	r7, [r8]
	ldr	r3, .L222+8
	rsb	r0, r6, r6, lsl #4
	ldr	ip, [r1, #68]
	ldr	r4, .L222+12
	ldr	lr, .L222+16
	add	r3, r3, r7, lsl #3
	add	r0, r0, r2
.L219:
	cmp	ip, #0
	ldrhne	r1, [r3]
	andeq	r1, r2, r4
	orrne	r1, r1, #512
	orreq	r1, r1, #16384
	add	r2, r2, #15
	strhne	r1, [r3]	@ movhi
	strheq	r5, [r3]	@ movhi
	strheq	lr, [r3, #4]	@ movhi
	strheq	r1, [r3, #2]	@ movhi
	cmp	r0, r2
	add	r3, r3, #8
	bne	.L219
	add	r6, r7, r6
	str	r6, [r8]
.L215:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L223:
	.align	2
.L222:
	.word	.LANCHOR0
	.word	potions
	.word	shadowOAM
	.word	511
	.word	16736
	.size	drawPotion, .-drawPotion
	.align	2
	.global	drawKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKey, %function
drawKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L233
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, .L233+4
	ldr	r2, [r2, #68]
	cmp	r2, #0
	bne	drawKey.part.0
.L226:
	str	lr, [sp, #-4]!
	mov	lr, #145
	mov	r0, #356
	ldr	r1, [r3]
	ldr	r2, .L233+8
	lsl	ip, r1, #3
	strh	lr, [r2, ip]	@ movhi
	ldr	ip, .L233+12
	add	r2, r2, r1, lsl #3
	add	r1, r1, #1
	str	r1, [r3]
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L234:
	.align	2
.L233:
	.word	.LANCHOR0
	.word	key
	.word	shadowOAM
	.word	16549
	.size	drawKey, .-drawKey
	.align	2
	.global	drawAmulet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAmulet, %function
drawAmulet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L244
	ldr	r2, [r3, #20]
	cmp	r2, #0
	bxeq	lr
	ldr	r2, .L244+4
	ldr	r2, [r2, #68]
	cmp	r2, #0
	bne	drawAmulet.part.0
.L237:
	str	lr, [sp, #-4]!
	mov	lr, #145
	ldr	r1, [r3]
	ldr	r2, .L244+8
	lsl	r0, r1, #3
	strh	lr, [r2, r0]	@ movhi
	ldr	ip, .L244+12
	ldr	r0, .L244+16
	add	r2, r2, r1, lsl #3
	add	r1, r1, #1
	str	r1, [r3]
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L245:
	.align	2
.L244:
	.word	.LANCHOR0
	.word	familyAmulet
	.word	shadowOAM
	.word	16532
	.word	16738
	.size	drawAmulet, .-drawAmulet
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L248
	push	{r4, lr}
	str	r2, [r3]
	bl	drawPlayer
	bl	drawSisters
	bl	drawLives
	bl	drawPotion
	bl	drawKey
	bl	drawAmulet
	ldr	r3, .L248+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L248+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L248+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L248+16
	ldrh	r1, [r2]
	ldr	r2, .L248+20
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L249:
	.align	2
.L248:
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.global	sisters
	.comm	familyAmulet,80,4
	.comm	key,80,4
	.comm	sapphire,80,4
	.comm	scarlett,80,4
	.comm	sage,80,4
	.comm	textbox,80,4
	.comm	player,80,4
	.comm	potions,80,4
	.comm	hearts,80,4
	.comm	shadowOAM,1024,4
	.global	collisionMap
	.comm	prevVOFF,4,4
	.comm	prevHOFF,4,4
	.global	amulet
	.global	keyFound
	.global	potionFound
	.global	lives
	.comm	keyPromptFlag,4,4
	.global	doorFlag
	.global	textFlag
	.global	mini
	.global	shadowIndex
	.comm	vOff,4,4
	.comm	hOff,4,4
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
.LC0:
	.word	1
	.word	2
	.word	3
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	collisionMapTestBitmap
	.type	sisters, %object
	.size	sisters, 12
sisters:
	.word	sage
	.word	scarlett
	.word	sapphire
	.type	lives, %object
	.size	lives, 4
lives:
	.word	4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	shadowIndex, %object
	.size	shadowIndex, 4
shadowIndex:
	.space	4
	.type	mini, %object
	.size	mini, 4
mini:
	.space	4
	.type	textFlag, %object
	.size	textFlag, 4
textFlag:
	.space	4
	.type	doorFlag, %object
	.size	doorFlag, 4
doorFlag:
	.space	4
	.type	potionFound, %object
	.size	potionFound, 4
potionFound:
	.space	4
	.type	amulet, %object
	.size	amulet, 4
amulet:
	.space	4
	.type	keyFound, %object
	.size	keyFound, 4
keyFound:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
