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
	.file	"mazeView.c"
	.text
	.align	2
	.global	initMaze
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMaze, %function
initMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	r1, #8
	push	{r4, lr}
	mov	r0, #1
	mov	r4, #3
	mov	lr, #1000
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	ldr	ip, .L4+12
	str	r2, [r3, #12]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	str	r2, [r3, #52]
	str	r1, [r3, #8]
	ldr	r2, .L4+16
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	ldr	r1, .L4+20
	str	r4, [r3, #64]
	str	lr, [ip]
	str	r0, [r3, #32]
	str	r0, [r3, #36]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	vOff
	.word	hOff
	.word	player
	.word	timer
	.word	map
	.word	mazeCollisionMap2Bitmap
	.size	initMaze, .-initMaze
	.align	2
	.global	initPlayerMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerMaze, %function
initPlayerMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #8
	mov	r0, #1
	mov	ip, #3
	ldr	r3, .L7
	str	r2, [r3, #12]
	str	r2, [r3, #48]
	str	r2, [r3, #60]
	str	r2, [r3, #52]
	str	ip, [r3, #64]
	str	r1, [r3, #8]
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r0, [r3, #32]
	str	r0, [r3, #36]
	bx	lr
.L8:
	.align	2
.L7:
	.word	player
	.size	initPlayerMaze, .-initPlayerMaze
	.align	2
	.global	drawPlayerMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerMaze, %function
drawPlayerMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L13
	push	{r4, r5, r6, lr}
	ldr	lr, .L13+4
	ldr	r2, [r0, #68]
	ldr	r3, [lr]
	cmp	r2, #0
	add	r4, r3, #1
	beq	.L10
	ldr	r1, .L13+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	str	r4, [lr]
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L10:
	mov	r5, #256
	ldr	r2, .L13+12
	ldr	r6, [r2]
	ldr	r2, .L13+16
	add	r1, r0, #8
	ldr	ip, [r2]
	ldm	r1, {r1, r2}
	sub	r2, r2, r6
	sub	r1, r1, ip
	ldr	ip, .L13+8
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
.L14:
	.align	2
.L13:
	.word	player
	.word	shadowIndex
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawPlayerMaze, .-drawPlayerMaze
	.align	2
	.global	updatePlayerMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerMaze, %function
updatePlayerMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L49
	ldrh	r3, [r3, #48]
	ldr	r1, .L49+4
	ldr	r0, .L49+8
	tst	r3, #64
	push	{r4, lr}
	ldr	r3, [r1, #8]
	ldr	r2, [r1, #12]
	ldr	r0, [r0]
	bne	.L16
	ldr	ip, [r1, #32]
	subs	ip, r3, ip
	bmi	.L16
	sub	lr, r3, #1
	add	lr, r0, lr, lsl #8
	ldrb	r4, [lr, r2]	@ zero_extendqisi2
	cmp	r4, #0
	add	lr, lr, r2
	beq	.L16
	ldrb	lr, [lr, #7]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L16
	ldr	lr, .L49+12
	ldr	r3, [lr]
	cmp	r3, #0
	str	ip, [r1, #8]
	blt	.L22
	sub	r4, ip, r3
	cmp	r4, #80
	bgt	.L22
	sub	r3, r3, #1
	str	r3, [lr]
	mov	r3, ip
.L16:
	ldr	ip, .L49
	ldrh	ip, [ip, #48]
	tst	ip, #128
	bne	.L17
	ldr	ip, [r1, #44]
	ldr	lr, [r1, #32]
	add	ip, r3, ip
	add	ip, ip, lr
	cmp	ip, #256
	ble	.L48
.L17:
	ldr	ip, .L49
	ldrh	ip, [ip, #48]
	tst	ip, #32
	lsl	r3, r3, #8
	bne	.L18
	ldr	lr, [r1, #36]
	cmn	lr, r2
	bmi	.L18
	sub	ip, r2, #1
	add	ip, r0, ip
	ldrb	r4, [ip, r3]	@ zero_extendqisi2
	cmp	r4, #0
	add	ip, ip, r3
	beq	.L18
	ldrb	ip, [ip, #1792]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L18
	ldr	r4, .L49+16
	ldr	ip, [r4]
	sub	r2, r2, lr
	cmp	ip, #0
	str	r2, [r1, #12]
	blt	.L18
	sub	lr, r2, ip
	cmp	lr, #120
	suble	ip, ip, #1
	strle	ip, [r4]
.L18:
	ldr	ip, .L49
	ldrh	ip, [ip, #48]
	tst	ip, #16
	bne	.L19
	ldr	ip, [r1, #40]
	ldr	lr, [r1, #36]
	add	ip, r2, ip
	add	ip, ip, lr
	cmp	ip, #256
	bgt	.L19
	add	ip, r2, #8
	add	ip, r0, ip
	ldrb	r4, [ip, r3]	@ zero_extendqisi2
	cmp	r4, #0
	add	ip, ip, r3
	beq	.L19
	ldrb	ip, [ip, #1792]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L19
	ldr	r4, .L49+16
	ldr	ip, [r4]
	add	r2, r2, lr
	cmp	ip, #15
	str	r2, [r1, #12]
	bgt	.L19
	sub	r1, r2, ip
	cmp	r1, #119
	addgt	ip, ip, #1
	strgt	ip, [r4]
.L19:
	add	r2, r0, r2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #2
	moveq	r2, #1
	ldreq	r3, .L49+20
	pop	{r4, lr}
	streq	r2, [r3]
	bx	lr
.L48:
	add	ip, r3, #8
	add	ip, r0, ip, lsl #8
	ldrb	r4, [ip, r2]	@ zero_extendqisi2
	cmp	r4, #0
	add	ip, ip, r2
	beq	.L17
	ldrb	ip, [ip, #7]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L17
	ldr	r4, .L49+12
	ldr	ip, [r4]
	add	r3, r3, lr
	cmp	ip, #95
	str	r3, [r1, #8]
	bgt	.L17
	sub	lr, r3, ip
	cmp	lr, #79
	addgt	ip, ip, #1
	strgt	ip, [r4]
	b	.L17
.L22:
	mov	r3, ip
	b	.L16
.L50:
	.align	2
.L49:
	.word	67109120
	.word	player
	.word	map
	.word	vOff
	.word	hOff
	.word	completeMaze
	.size	updatePlayerMaze, .-updatePlayerMaze
	.align	2
	.global	updateMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMaze, %function
updateMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayerMaze
	ldr	r2, .L53
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	timer
	.size	updateMaze, .-updateMaze
	.align	2
	.global	finishMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	finishMaze, %function
finishMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L57
	ldr	r3, .L57+4
	ldr	r1, [r2, #8]
	ldr	r3, [r3]
	ldr	r2, [r2, #12]
	add	r3, r3, r1, lsl #8
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #2
	moveq	r2, #1
	ldreq	r3, .L57+8
	streq	r2, [r3]
	bx	lr
.L58:
	.align	2
.L57:
	.word	player
	.word	map
	.word	completeMaze
	.size	finishMaze, .-finishMaze
	.align	2
	.global	updateMazeMovement
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMazeMovement, %function
updateMazeMovement:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L66
.L62:
	.word	.L65
	.word	.L64
	.word	.L63
	.word	.L61
.L61:
	ldr	r3, .L72
	ldr	r3, [r3]
	add	r0, r0, #8
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r0, r1, lsl #8
	beq	.L70
	ldrb	r2, [r0, #1792]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L63:
	ldr	r3, .L72
	ldr	r3, [r3]
	sub	r0, r0, #1
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r1, r0, r1, lsl #8
	beq	.L70
	ldrb	r2, [r1, #1792]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L65:
	ldr	r3, .L72
	ldr	r3, [r3]
	sub	r1, r1, #1
	add	r1, r3, r1, lsl #8
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	cmp	r3, #0
	add	r0, r1, r0
	beq	.L70
.L71:
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L64:
	ldr	r3, .L72
	ldr	r3, [r3]
	add	r1, r1, #8
	add	r1, r3, r1, lsl #8
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r1, r0
	bne	.L71
.L70:
	mov	r0, r2
	bx	lr
.L66:
	mov	r0, #0
	bx	lr
.L73:
	.align	2
.L72:
	.word	map
	.size	updateMazeMovement, .-updateMazeMovement
	.align	2
	.global	walkableMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	walkableMaze, %function
walkableMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L75
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #8
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L76:
	.align	2
.L75:
	.word	map
	.size	walkableMaze, .-walkableMaze
	.align	2
	.global	drawTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTimer, %function
drawTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L81
	ldr	r3, .L81+4
	ldr	r0, [r2]
	smull	r1, r2, r3, r0
	asr	ip, r0, #31
	rsb	ip, ip, r2, asr #2
	smull	r1, r2, r3, ip
	push	{r4, r5, r6, lr}
	asr	lr, ip, #31
	rsb	lr, lr, r2, asr #2
	smull	r2, r5, r3, lr
	mov	r4, #1
	mov	r1, #120
	asr	r2, lr, #31
	rsb	r2, r2, r5, asr #2
	smull	r5, r3, r2, r3
	asr	r5, r2, #31
	rsb	r3, r5, r3, asr #2
	add	r3, r3, r3, lsl #2
	add	r6, ip, ip, lsl #2
	sub	r3, r2, r3, lsl r4
	ldr	r5, .L81+8
	add	r2, r2, r2, lsl #2
	sub	sp, sp, #32
	sub	r6, r0, r6, lsl r4
	sub	r0, lr, r2, lsl r4
	add	lr, lr, lr, lsl #2
	sub	ip, ip, lr, lsl r4
	ldr	r2, .L81+12
	ldr	lr, [r5]
	str	r0, [sp, #8]
	add	r0, sp, #4
	str	ip, [sp, #4]
	str	r6, [sp]
	add	ip, sp, #8
	str	r3, [sp, #12]
	str	r0, [sp, #24]
	str	sp, [sp, #28]
	str	ip, [sp, #20]
	add	r2, r2, lr, lsl #3
	add	ip, sp, #20
.L79:
	add	r0, r1, #6
	add	r3, r3, #320
	cmp	r1, #138
	strh	r1, [r2, #2]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r4, [r2]	@ movhi
	lsl	r1, r0, #16
	add	r2, r2, #8
	ldrne	r3, [ip], #4
	lsrne	r1, r1, #16
	ldrne	r3, [r3]
	bne	.L79
.L78:
	add	lr, lr, #1
	str	lr, [r5]
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	timer
	.word	1717986919
	.word	shadowIndex
	.word	shadowOAM
	.size	drawTimer, .-drawTimer
	.align	2
	.global	drawMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMaze, %function
drawMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L85
	push	{r4, lr}
	str	r2, [r3]
	bl	drawPlayerMaze
	bl	drawTimer
	ldr	r3, .L85+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L85+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L85+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L85+16
	ldrh	r1, [r2]
	ldr	r2, .L85+20
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L86:
	.align	2
.L85:
	.word	shadowIndex
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawMaze, .-drawMaze
	.comm	timer,4,4
	.comm	map,4,4
	.comm	player,80,4
	.comm	shadowIndex,4,4
	.comm	completeMaze,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
