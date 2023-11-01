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
	.file	"forestView.c"
	.text
	.align	2
	.global	initForest
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initForest, %function
initForest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #17
	str	lr, [sp, #-4]!
	mov	r0, #16
	mov	lr, #144
	mov	r1, #1
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r2, [r3]
	ldr	r3, .L4+12
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	str	ip, [r3, #12]
	ldr	r2, .L4+16
	ldr	ip, .L4+20
	str	lr, [r3, #8]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	ip, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	vOff
	.word	hOff
	.word	itemCheck
	.word	player
	.word	forestCollision
	.word	forestCollisionBitmap
	.size	initForest, .-initForest
	.align	2
	.global	initForestPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initForestPlayer, %function
initForestPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #17
	mov	r0, #16
	mov	r1, #1
	mov	ip, #144
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
	.size	initForestPlayer, .-initForestPlayer
	.align	2
	.global	drawForestPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawForestPlayer, %function
drawForestPlayer:
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
	.size	drawForestPlayer, .-drawForestPlayer
	.align	2
	.global	drawWand
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWand, %function
drawWand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L25
	ldr	r3, [r3]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, .L25+4
	ldr	r2, .L25+8
	ldr	r1, [r3, #68]
	ldr	r3, [r2]
	cmp	r1, #0
	add	r1, r3, #1
	beq	.L18
	ldr	ip, .L25+12
	lsl	r3, r3, #3
	ldrh	r0, [ip, r3]
	orr	r0, r0, #512
	str	r1, [r2]
	strh	r0, [ip, r3]	@ movhi
	bx	lr
.L18:
	str	lr, [sp, #-4]!
	mov	lr, #145
	ldr	r0, .L25+12
	str	r1, [r2]
	ldr	ip, .L25+16
	ldr	r2, .L25+20
	lsl	r1, r3, #3
	add	r3, r0, r3, lsl #3
	strh	lr, [r0, r1]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.word	wand
	.word	shadowIndex
	.word	shadowOAM
	.word	16607
	.word	8550
	.size	drawWand, .-drawWand
	.align	2
	.global	drawForest
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawForest, %function
drawForest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L29
	push	{r4, lr}
	str	r2, [r3]
	bl	drawForestPlayer
	ldr	r3, .L29+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L29+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L29+16
	bl	drawWand
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L29+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L29+24
	ldrh	r1, [r2]
	ldr	r2, .L29+28
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L30:
	.align	2
.L29:
	.word	shadowIndex
	.word	drawPotion
	.word	drawLives
	.word	drawAmulet
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawForest, .-drawForest
	.align	2
	.global	updateForestFloor
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateForestFloor, %function
updateForestFloor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L38
.L34:
	.word	.L37
	.word	.L36
	.word	.L35
	.word	.L33
.L33:
	ldr	r3, .L44
	ldr	r3, [r3]
	add	r0, r0, #16
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r0, r1, lsl #8
	beq	.L42
	ldrb	r2, [r0, #3840]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L35:
	ldr	r3, .L44
	ldr	r3, [r3]
	sub	r0, r0, #1
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r1, r0, r1, lsl #8
	beq	.L42
	ldrb	r2, [r1, #3840]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L37:
	ldr	r3, .L44
	ldr	r3, [r3]
	sub	r1, r1, #1
	add	r1, r3, r1, lsl #8
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	cmp	r3, #0
	add	r0, r1, r0
	beq	.L42
.L43:
	ldrb	r2, [r0, #15]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L36:
	ldr	r3, .L44
	ldr	r3, [r3]
	add	r1, r1, #16
	add	r1, r3, r1, lsl #8
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r1, r0
	bne	.L43
.L42:
	mov	r0, r2
	bx	lr
.L38:
	mov	r0, #0
	bx	lr
.L45:
	.align	2
.L44:
	.word	forestCollision
	.size	updateForestFloor, .-updateForestFloor
	.align	2
	.global	walkableForest
	.syntax unified
	.arm
	.fpu softvfp
	.type	walkableForest, %function
walkableForest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L47
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #8
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L48:
	.align	2
.L47:
	.word	forestCollision
	.size	walkableForest, .-walkableForest
	.align	2
	.global	forestItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	forestItems, %function
forestItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L56
	push	{r4, r5, r6, lr}
	ldr	r1, .L56+4
	add	ip, r2, #8
	ldm	ip, {ip, lr}
	ldr	r1, [r1]
	add	r0, lr, ip, lsl #8
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	cmp	r3, #2
	add	r0, r1, r0
	bne	.L50
	mov	r0, #0
	mov	r5, #1
	ldr	lr, .L56+8
	ldr	ip, .L56+12
	ldr	r3, [r2, #16]
	ldr	r4, [ip]
	ldr	r6, [lr]
	add	ip, r3, #15
	ldr	lr, .L56+16
	ldr	r3, .L56+20
	str	r6, [lr]
	str	r4, [r3]
	ldr	lr, [r2, #20]
	ldr	r3, .L56+24
	ldr	r4, .L56+28
	str	r0, [r3]
	str	ip, [r2, #8]
	str	lr, [r2, #12]
	str	r5, [r4]
	add	r0, lr, ip, lsl #8
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	add	r0, r1, r0
.L50:
	cmp	r3, #3
	bne	.L51
	mov	r4, #1
	mov	r1, #9
	ldr	r3, .L56+28
	str	r4, [r3]
	ldr	r3, .L56+24
	str	r1, [r3]
	ldrb	r3, [r0]	@ zero_extendqisi2
.L51:
	cmp	r3, #10
	bne	.L52
	mov	r1, #1
	mov	r4, #18
	ldr	r5, .L56+16
	ldr	r3, .L56+32
	ldr	r5, [r5]
	str	r5, [r3]
	ldr	r5, .L56+20
	ldr	r3, .L56+36
	ldr	r5, [r5]
	str	r5, [r3]
	ldr	r3, .L56+28
	str	r1, [r3]
	ldr	r1, .L56+24
	sub	r3, ip, #15
	str	lr, [r2, #28]
	str	r4, [r1]
	str	r3, [r2, #24]
	ldrb	r3, [r0]	@ zero_extendqisi2
.L52:
	cmp	r3, #5
	bne	.L53
	mov	r4, #1
	mov	r1, #19
	ldr	r5, .L56+16
	ldr	r3, .L56+32
	ldr	r5, [r5]
	str	r5, [r3]
	ldr	r5, .L56+20
	ldr	r3, .L56+36
	ldr	r5, [r5]
	str	r5, [r3]
	ldr	r3, .L56+28
	str	r4, [r3]
	ldr	r3, .L56+24
	str	lr, [r2, #28]
	str	ip, [r2, #24]
	str	r1, [r3]
	ldrb	r3, [r0]	@ zero_extendqisi2
.L53:
	cmp	r3, #8
	bne	.L49
	mov	r1, #1
	mov	r0, #20
	ldr	r4, .L56+16
	ldr	r3, .L56+20
	ldr	r5, [r4]
	ldr	r4, [r3]
	add	r3, ip, #15
	str	r3, [r2, #24]
	str	lr, [r2, #28]
	ldr	r3, .L56+36
	ldr	r2, .L56+32
	str	r4, [r3]
	str	r5, [r2]
	ldr	ip, .L56+28
	ldr	r2, .L56+40
	ldr	r3, .L56+24
	str	r1, [ip]
	str	r1, [r2]
	str	r0, [r3]
.L49:
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	player
	.word	forestCollision
	.word	prevVOFFRoom
	.word	prevHOFFRoom
	.word	vOff
	.word	hOff
	.word	itemCheck
	.word	textFlag
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	.LANCHOR0
	.size	forestItems, .-forestItems
	.align	2
	.global	updateForestPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateForestPlayer, %function
updateForestPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L97
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	bne	.L60
	ldr	r0, .L97+4
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #32]
	subs	r2, r3, r2
	bmi	.L60
	ldr	r1, .L97+8
	ldr	ip, [r0, #12]
	ldr	r1, [r1]
	sub	r3, r3, #1
	add	r1, r1, ip
	ldrb	ip, [r1, r3, lsl #8]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r1, r3, lsl #8
	beq	.L60
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L60
	ldr	r1, .L97+12
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r0, #8]
	blt	.L60
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
.L60:
	ldr	r3, .L97
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L63
	ldr	r2, .L97+4
	ldr	r1, [r2, #8]
	ldr	r3, [r2, #44]
	ldr	ip, [r2, #32]
	add	r3, r1, r3
	add	r3, r3, ip
	cmp	r3, #256
	ble	.L96
.L63:
	ldr	r3, .L97
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L66
	ldr	r1, .L97+4
	ldr	r0, [r1, #12]
	ldr	ip, [r1, #36]
	cmn	r0, ip
	bmi	.L66
	ldr	r3, .L97+8
	ldr	r2, [r3]
	ldr	lr, [r1, #8]
	sub	r3, r0, #1
	add	r3, r2, r3
	ldrb	r2, [r3, lr, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, lr, lsl #8
	beq	.L66
	ldrb	r3, [r3, #3840]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L66
	ldr	r2, .L97+16
	ldr	r3, [r2]
	sub	r0, r0, ip
	cmp	r3, #0
	str	r0, [r1, #12]
	blt	.L66
	sub	r0, r0, r3
	cmp	r0, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L66:
	ldr	r3, .L97
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L69
	ldr	r2, .L97+4
	ldr	r0, [r2, #12]
	ldr	r3, [r2, #40]
	ldr	ip, [r2, #36]
	add	r3, r0, r3
	add	r3, r3, ip
	cmp	r3, #256
	bgt	.L69
	ldr	r3, .L97+8
	ldr	r1, [r3]
	ldr	lr, [r2, #8]
	add	r3, r0, #16
	add	r3, r1, r3
	ldrb	r1, [r3, lr, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, lr, lsl #8
	beq	.L69
	ldrb	r3, [r3, #3840]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L69
	ldr	r1, .L97+16
	ldr	r3, [r1]
	add	r0, r0, ip
	cmp	r3, #15
	str	r0, [r2, #12]
	bgt	.L69
	sub	r0, r0, r3
	cmp	r0, #119
	addgt	r3, r3, #1
	strgt	r3, [r1]
.L69:
	ldr	r3, .L97+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	forestItems
.L96:
	ldr	r3, .L97+8
	ldr	lr, [r2, #12]
	ldr	r3, [r3]
	add	r0, r1, #16
	add	r3, r3, lr
	ldrb	lr, [r3, r0, lsl #8]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r0, lsl #8
	beq	.L63
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L63
	ldr	r0, .L97+12
	ldr	r3, [r0]
	add	r1, r1, ip
	cmp	r3, #95
	str	r1, [r2, #8]
	bgt	.L63
	sub	r1, r1, r3
	cmp	r1, #79
	addgt	r3, r3, #1
	strgt	r3, [r0]
	b	.L63
.L98:
	.align	2
.L97:
	.word	67109120
	.word	player
	.word	forestCollision
	.word	vOff
	.word	hOff
	.word	animatePlayer
	.size	updateForestPlayer, .-updateForestPlayer
	.align	2
	.global	updateForest
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateForest, %function
updateForest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updateForestPlayer
	.size	updateForest, .-updateForest
	.comm	forestCollision,4,4
	.global	wandFound
	.comm	wand,80,4
	.comm	player,80,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	wandFound, %object
	.size	wandFound, 4
wandFound:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
