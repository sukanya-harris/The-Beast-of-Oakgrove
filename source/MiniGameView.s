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
	.file	"MiniGameView.c"
	.text
	.align	2
	.global	initMinigame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMinigame, %function
initMinigame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #400
	mov	ip, #800
	mov	r2, #0
	mov	r1, #16
	mov	lr, #80
	mov	r4, #3
	mov	r0, #1
	ldr	r3, .L4
	str	r5, [r3]
	ldr	r3, .L4+4
	str	ip, [r3]
	ldr	r3, .L4+8
	str	r2, [r3]
	ldr	r3, .L4+12
	str	r2, [r3]
	ldr	r3, .L4+16
	ldr	ip, .L4+20
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	str	r2, [r3, #52]
	str	lr, [r3, #8]
	ldr	r2, .L4+24
	ldr	lr, .L4+28
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r1, [r3, #12]
	ldr	r1, .L4+32
	str	r4, [r3, #64]
	str	lr, [ip]
	str	r0, [r3, #32]
	str	r0, [r3, #36]
	str	r1, [r2]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	score
	.word	timer
	.word	hOff
	.word	vOff
	.word	player2
	.word	collisionMap
	.word	collisionMap2
	.word	minigameCollisionMapBitmap
	.word	bonesCollisionMapBitmap
	.size	initMinigame, .-initMinigame
	.align	2
	.global	initMiniGamePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMiniGamePlayer, %function
initMiniGamePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #16
	mov	r2, #0
	mov	lr, #80
	mov	r0, #1
	mov	ip, #3
	ldr	r3, .L8
	str	lr, [r3, #8]
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r1, [r3, #12]
	str	ip, [r3, #64]
	str	r0, [r3, #32]
	str	r0, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	str	r2, [r3, #52]
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	player2
	.size	initMiniGamePlayer, .-initMiniGamePlayer
	.align	2
	.global	updateMiniGamePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMiniGamePlayer, %function
updateMiniGamePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L43
	ldrh	r3, [r3, #48]
	tst	r3, #64
	str	lr, [sp, #-4]!
	bne	.L11
	ldr	r0, .L43+4
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #32]
	subs	r2, r3, r2
	bmi	.L11
	ldr	r1, .L43+8
	ldr	ip, [r0, #12]
	ldr	r1, [r1]
	sub	r3, r3, #1
	rsb	r3, r3, r3, lsl #4
	add	r1, r1, ip
	ldrb	ip, [r1, r3, lsl #4]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r1, r3, lsl #4
	bne	.L40
.L11:
	ldr	r3, .L43
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L12
	ldr	r2, .L43+4
	ldr	r0, [r2, #8]
	ldr	r3, [r2, #44]
	ldr	ip, [r2, #32]
	add	r3, r0, r3
	add	r3, r3, ip
	cmp	r3, #512
	ble	.L41
.L12:
	ldr	r3, .L43
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L13
	ldr	r2, .L43+4
	ldr	r0, [r2, #12]
	ldr	ip, [r2, #36]
	cmn	r0, ip
	bmi	.L13
	ldr	r3, .L43+8
	ldr	r1, [r2, #8]
	ldr	r3, [r3]
	sub	lr, r0, #1
	add	r3, r3, lr
	rsb	r1, r1, r1, lsl #4
	ldrb	lr, [r3, r1, lsl #4]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r1, lsl #4
	bne	.L42
.L13:
	ldr	r3, .L43
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L10
	ldr	r2, .L43+4
	ldr	r0, [r2, #12]
	ldr	r3, [r2, #40]
	ldr	ip, [r2, #36]
	add	r3, r0, r3
	add	r3, r3, ip
	cmp	r3, #256
	bgt	.L10
	ldr	r3, .L43+8
	ldr	r1, [r2, #8]
	ldr	r3, [r3]
	add	lr, r0, #8
	add	r3, r3, lr
	rsb	r1, r1, r1, lsl #4
	ldrb	lr, [r3, r1, lsl #4]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r1, lsl #4
	beq	.L10
	ldrb	r3, [r3, #1680]	@ zero_extendqisi2
	cmp	r3, #0
	addne	r0, r0, ip
	strne	r0, [r2, #12]
.L10:
	ldr	lr, [sp], #4
	bx	lr
.L41:
	ldr	r3, .L43+8
	ldr	lr, [r2, #12]
	ldr	r1, [r3]
	add	r3, r0, #8
	add	r1, r1, lr
	rsb	r3, r3, r3, lsl #4
	ldrb	lr, [r1, r3, lsl #4]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r1, r3, lsl #4
	beq	.L12
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #0
	addne	r0, r0, ip
	strne	r0, [r2, #8]
	b	.L12
.L40:
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #0
	strne	r2, [r0, #8]
	b	.L11
.L42:
	ldrb	r3, [r3, #1680]	@ zero_extendqisi2
	cmp	r3, #0
	subne	r0, r0, ip
	strne	r0, [r2, #12]
	b	.L13
.L44:
	.align	2
.L43:
	.word	67109120
	.word	player2
	.word	collisionMap
	.size	updateMiniGamePlayer, .-updateMiniGamePlayer
	.align	2
	.global	updateScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateScore, %function
updateScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L51
	ldr	r1, .L51+4
	add	r2, r3, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r1]
	add	r3, r3, r2, lsl #8
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #0
	lsl	r2, r2, #8
	beq	.L46
	ldr	r1, .L51+8
	ldr	r1, [r1]
	add	r2, r1, r2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	bxne	lr
.L46:
	ldr	r2, .L51+12
	ldr	r3, [r2]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2]
	bx	lr
.L52:
	.align	2
.L51:
	.word	player2
	.word	collisionMap
	.word	collisionMap2
	.word	score
	.size	updateScore, .-updateScore
	.align	2
	.global	updateMinigame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMinigame, %function
updateMinigame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateMiniGamePlayer
	bl	updateScore
	ldr	r2, .L55
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	timer
	.size	updateMinigame, .-updateMinigame
	.align	2
	.global	drawMiniGamePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMiniGamePlayer, %function
drawMiniGamePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L61
	push	{r4, r5, r6, lr}
	ldr	lr, .L61+4
	ldr	r2, [r0, #68]
	ldr	r3, [lr]
	cmp	r2, #0
	add	r4, r3, #1
	beq	.L58
	ldr	r1, .L61+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	str	r4, [lr]
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	mov	r5, #256
	ldr	r2, .L61+12
	ldr	r6, [r2]
	ldr	r2, .L61+16
	add	r1, r0, #8
	ldr	ip, [r2]
	ldm	r1, {r1, r2}
	sub	r2, r2, r6
	sub	r1, r1, ip
	ldr	ip, .L61+8
	lsl	r2, r2, #23
	add	r0, ip, r3, lsl #3
	lsr	r2, r2, #23
	and	r1, r1, #255
	lsl	r3, r3, #3
	str	r4, [lr]
	strh	r5, [r0, #4]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [ip, r3]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	player2
	.word	shadowIndex
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawMiniGamePlayer, .-drawMiniGamePlayer
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L65
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r1, .L65+4
	ldr	r8, [r3]
	smull	r3, r2, r1, r8
	asr	r3, r8, #31
	rsb	r3, r3, r2, asr #2
	smull	r2, r0, r1, r3
	mov	ip, #1
	mov	r6, #120
	mov	r5, #126
	mov	r4, #132
	asr	r2, r3, #31
	rsb	r2, r2, r0, asr #2
	smull	lr, r0, r1, r2
	ldr	lr, .L65+8
	asr	r1, r2, #31
	rsb	r1, r1, r0, asr #2
	add	r7, r1, r1, lsl #2
	ldr	r0, [lr]
	ldr	r1, .L65+12
	add	r9, r2, r2, lsl #2
	sub	r2, r2, r7, lsl ip
	add	r10, r3, r3, lsl #2
	add	r7, r0, ip
	sub	r3, r3, r9, lsl ip
	add	r2, r2, #320
	add	r9, r1, r0, lsl #3
	strh	r2, [r9, #4]	@ movhi
	str	r7, [lr]
	add	r2, r0, #2
	add	lr, r1, r7, lsl #3
	sub	r8, r8, r10, lsl ip
	add	r3, r3, #320
	strh	r3, [lr, #4]	@ movhi
	add	r8, r8, #320
	add	r3, r1, r2, lsl #3
	lsl	r7, r7, #3
	lsl	r0, r0, #3
	lsl	r2, r2, #3
	strh	r6, [r9, #2]	@ movhi
	strh	ip, [r1, r0]	@ movhi
	strh	r5, [lr, #2]	@ movhi
	strh	ip, [r1, r7]	@ movhi
	strh	r8, [r3, #4]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	ip, [r1, r2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L66:
	.align	2
.L65:
	.word	score
	.word	1717986919
	.word	shadowIndex
	.word	shadowOAM
	.size	drawScore, .-drawScore
	.align	2
	.global	drawMinigame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMinigame, %function
drawMinigame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L69
	push	{r4, lr}
	str	r2, [r3]
	bl	drawMiniGamePlayer
	bl	drawScore
	ldr	r3, .L69+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L69+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L69+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L69+16
	ldrh	r1, [r2]
	ldr	r2, .L69+20
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L70:
	.align	2
.L69:
	.word	shadowIndex
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawMinigame, .-drawMinigame
	.align	2
	.global	updateMiniGameMovement
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMiniGameMovement, %function
updateMiniGameMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L78
.L74:
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L73
.L73:
	ldr	r3, .L84
	ldr	r3, [r3]
	add	r0, r0, #8
	rsb	r1, r1, r1, lsl #4
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #4]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r0, r1, lsl #4
	beq	.L82
	ldrb	r2, [r0, #1680]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L75:
	ldr	r3, .L84
	ldr	r3, [r3]
	sub	r0, r0, #1
	rsb	r1, r1, r1, lsl #4
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #4]	@ zero_extendqisi2
	cmp	r2, #0
	add	r1, r0, r1, lsl #4
	beq	.L82
	ldrb	r2, [r1, #1680]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L77:
	ldr	r3, .L84
	sub	r1, r1, #1
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r1, r3, r1, lsl #4
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	cmp	r3, #0
	add	r1, r1, r0
	beq	.L82
.L83:
	ldrb	r2, [r1, #7]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L76:
	ldr	r3, .L84
	add	r1, r1, #8
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r1, r3, r1, lsl #4
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r1, r1, r0
	bne	.L83
.L82:
	mov	r0, r2
	bx	lr
.L78:
	mov	r0, #0
	bx	lr
.L85:
	.align	2
.L84:
	.word	collisionMap
	.size	updateMiniGameMovement, .-updateMiniGameMovement
	.align	2
	.global	walkableMiniGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	walkableMiniGame, %function
walkableMiniGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L87
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r1, r3, r1, lsl #4
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	bx	lr
.L88:
	.align	2
.L87:
	.word	collisionMap
	.size	walkableMiniGame, .-walkableMiniGame
	.comm	collisionMap2,4,4
	.comm	collisionMap,4,4
	.comm	player2,80,4
	.comm	shadowIndex,4,4
	.comm	score,4,4
	.comm	timer,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
