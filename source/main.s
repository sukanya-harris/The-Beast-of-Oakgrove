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
	.file	"main.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	room.part.0, %function
room.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L4
	push	{r4, lr}
	ldr	r3, .L4+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r2, .L4+12
	ldr	r3, .L4+16
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1044
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.word	initText
	.size	room.part.0, .-room.part.0
	.set	barn.part.0,room.part.0
	.set	forest.part.0,room.part.0
	.set	office.part.0,room.part.0
	.set	potionsLab.part.0,room.part.0
	.set	library.part.0,room.part.0
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #67108864
	mov	r7, #7936
	mov	r6, #0
	ldr	r3, .L8
	ldr	r5, .L8+4
	strh	r3, [r4, #14]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	strh	r7, [r4]	@ movhi
	ldr	r1, .L8+8
	mov	lr, pc
	bx	r5
	mov	r3, #2848
	mov	r0, #3
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	lr, pc
	bx	r5
	ldr	r2, .L8+28
	mov	r3, #1376
	strh	r2, [r4, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L8+32
	ldr	r1, .L8+36
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L8+40
	ldr	r1, .L8+44
	mov	lr, pc
	bx	r5
	ldr	r2, .L8+48
	mov	r3, #1376
	strh	r2, [r4, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L8+52
	ldr	r1, .L8+56
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L8+60
	ldr	r1, .L8+64
	mov	lr, pc
	bx	r5
	mov	r3, #3536
	mov	r2, #100663296
	mov	r0, #3
	strh	r7, [r4, #8]	@ movhi
	ldr	r1, .L8+68
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+72
	ldr	r1, .L8+76
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+80
	ldr	r1, .L8+84
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L8+88
	ldr	r1, .L8+92
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L8+96
	mov	lr, pc
	bx	r3
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L8+100
	mov	lr, pc
	bx	r5
	ldr	r3, .L8+104
	ldrh	r2, [r3]
	ldr	r3, .L8+108
	ldrh	r3, [r3]
	strh	r6, [r4, #16]	@ movhi
	ldr	r1, .L8+112
	strh	r6, [r4, #18]	@ movhi
	strh	r2, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	strh	r2, [r4, #24]	@ movhi
	strh	r3, [r4, #26]	@ movhi
	strh	r2, [r4, #28]	@ movhi
	strh	r3, [r4, #30]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L8+116
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L8+120
	ldr	r3, .L8+124
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+128
	str	r6, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	3844
	.word	DMANow
	.word	mountainBGPal
	.word	100679680
	.word	mountainBGTiles
	.word	100694016
	.word	mountainBGMap
	.word	21768
	.word	100696064
	.word	mountainMountainsBGTiles
	.word	100706304
	.word	mountainMountainsBGMap
	.word	23564
	.word	100712448
	.word	mountainTreesTiles
	.word	100720640
	.word	mountainTreesMap
	.word	titleScreenTiles
	.word	100726784
	.word	titleScreenMap
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	stopSound
	.word	blackCat_length
	.word	blackCat_data
	.word	playSoundA
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #7936
	mov	r1, #4864
	ldr	r2, .L12
	push	{r4, lr}
	strh	r0, [r3, #8]	@ movhi
	ldr	r4, .L12+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	mov	r0, #3
	mov	r3, #16384
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r4
	mov	r1, #0
	ldr	r3, .L12+32
	ldr	r0, .L12+36
	ldrh	ip, [r3, #48]
	ldr	r2, .L12+40
	ldr	r3, .L12+44
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+48
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L13:
	.align	2
.L12:
	.word	-12540
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	setupInterrupts
	.word	setupSounds
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose.part.0, %function
lose.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	initialize
	mov	r3, #0
	mov	r1, #4
	ldr	lr, .L16
	ldr	ip, .L16+4
	ldr	r0, .L16+8
	ldr	r2, .L16+12
	str	r3, [lr]
	str	r3, [ip]
	ldr	lr, .L16+16
	str	r3, [r0]
	str	r3, [r2]
	ldr	ip, .L16+20
	ldr	r0, .L16+24
	ldr	r2, .L16+28
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	bgTimer
	.word	mini
	.word	completeMaze
	.word	amulet
	.word	potionFound
	.word	itemCheck
	.word	keyFound
	.word	lives
	.size	lose.part.0, .-lose.part.0
	.set	win.part.0,lose.part.0
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	mov	r5, #256
	ldr	r3, .L20
	strh	r5, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #7936
	mov	r3, r5
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L20+4
	mov	r2, #83886080
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L20+12
	ldr	r1, .L20+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L20+32
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L20+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	waitForVBlank
	.word	DMANow
	.word	instructionsPal
	.word	5328
	.word	instructions01Tiles
	.word	100726784
	.word	instructions01Map
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r4, #67108864
	ldr	r1, .L24
	ldr	r0, .L24+4
	ldr	r3, .L24+8
	str	r0, [r1]
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L24+12
	ldr	r5, .L24+16
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L24+20
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r3, .L24+24
	ldr	r2, .L24+28
	ldr	r1, .L24+32
	mov	lr, pc
	bx	r5
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L24+36
	ldr	r1, .L24+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L24+44
	ldrh	r2, [r3]
	ldr	r3, .L24+48
	strh	r2, [r4, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r4, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L24+52
	ldr	r1, .L24+56
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L24+60
	ldr	r1, .L24+64
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L24+68
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L24+72
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r1, #2
	ldr	r2, .L24+76
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	collisionMap
	.word	collisionMapTestBitmap
	.word	waitForVBlank
	.word	-9212
	.word	DMANow
	.word	testBGPal
	.word	4624
	.word	100679680
	.word	testBGTiles
	.word	100720640
	.word	testBGMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L38
	ldr	r3, [r4]
	add	r0, r3, #1
	cmp	r0, #0
	addlt	r3, r3, #8
	movge	r3, r0
	mov	ip, #67108864
	ldr	r2, .L38+4
	smull	r1, lr, r2, r0
	add	r1, r0, r0, lsr #31
	asr	r2, r0, #31
	rsb	r2, r2, lr, asr #1
	asr	r3, r3, #3
	asr	r1, r1, #1
	lsl	r3, r3, #16
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	str	r0, [r4]
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	ldr	r4, .L38+8
	strh	r1, [ip, #20]	@ movhi
	strh	r2, [ip, #24]	@ movhi
	ldr	r1, .L38+12
	strh	r3, [ip, #28]	@ movhi
	mov	lr, pc
	bx	r1
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L27
	ldr	r2, .L38+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L36
.L27:
	tst	r3, #1
	beq	.L26
	ldr	r3, .L38+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L37
.L26:
	pop	{r4, lr}
	bx	lr
.L37:
	pop	{r4, lr}
	b	goToInstructions
.L36:
	bl	goToGame
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L27
.L39:
	.align	2
.L38:
	.word	parallaxTimer
	.word	1717986919
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	initGame
	.size	start, .-start
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L55
	ldr	r3, .L55+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L41
	ldr	r2, .L55+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L51
.L41:
	tst	r3, #1
	beq	.L40
	ldr	r3, .L55+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L40
	ldr	r5, .L55+12
	ldr	r4, [r5]
	add	r4, r4, #1
	cmp	r4, #1
	str	r4, [r5]
	beq	.L52
.L45:
	cmp	r4, #2
	beq	.L53
.L46:
	cmp	r4, #3
	beq	.L54
.L40:
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	bl	goToGame
	ldr	r3, .L55+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L41
.L54:
	mov	r0, r4
	ldr	r5, .L55+20
	mov	r3, #3760
	mov	r2, #100663296
	ldr	r1, .L55+24
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L55+28
	ldr	r1, .L55+32
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L55+36
	mov	lr, pc
	bx	r5
	b	.L40
.L53:
	ldr	r4, .L55+20
	mov	r3, #2960
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L55+40
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+28
	ldr	r1, .L55+44
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L55+36
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L46
.L52:
	ldr	r4, .L55+20
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L55+48
	ldr	r1, .L55+52
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+28
	ldr	r1, .L55+56
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L55+36
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L45
.L56:
	.align	2
.L55:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	aCounter
	.word	initGame
	.word	DMANow
	.word	instructionsTiles
	.word	100726784
	.word	instructionsMap
	.word	shadowOAM
	.word	instructions03Tiles
	.word	instructions03Map
	.word	5024
	.word	instructions02Tiles
	.word	instructions02Map
	.size	instructions, .-instructions
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame.part.0, %function
miniGame.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L59
	push	{r4, lr}
	ldr	r3, .L59+4
	ldr	r2, [r1]
	ldr	ip, .L59+8
	ldr	r0, .L59+12
	ldr	r4, [r3, #28]
	ldr	lr, [r3, #24]
	sub	r2, r2, #1
	str	r2, [r1]
	ldr	ip, [ip]
	ldr	r0, [r0]
	ldr	r1, .L59+16
	ldr	r2, .L59+20
	str	r4, [r3, #12]
	str	lr, [r3, #8]
	pop	{r4, lr}
	str	ip, [r1]
	str	r0, [r2]
	b	goToGame
.L60:
	.align	2
.L59:
	.word	lives
	.word	player
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	vOff
	.word	hOff
	.size	miniGame.part.0, .-miniGame.part.0
	.set	maze.part.0,miniGame.part.0
	.align	2
	.global	goToMinigame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMinigame, %function
goToMinigame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	ldr	r3, .L63
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L63+4
	ldr	r4, .L63+8
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+12
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r0, #3
	ldr	r2, .L63+16
	ldr	r1, .L63+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L63+24
	ldr	r1, .L63+28
	mov	lr, pc
	bx	r4
	mov	r2, #56320
	mov	r3, #2176
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L63+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L63+36
	ldr	r1, .L63+40
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+44
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L63+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L63+52
	ldr	r1, .L63+56
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	strh	r3, [r5, #22]	@ movhi
	ldr	r3, .L63+60
	strh	r1, [r5, #20]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	waitForVBlank
	.word	3844
	.word	DMANow
	.word	minigameBGPal
	.word	100679680
	.word	minigameBGTiles
	.word	100694016
	.word	minigameBGMap
	.word	bone2Tiles
	.word	100720640
	.word	bone2Map
	.word	hideSprites
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	state
	.size	goToMinigame, .-goToMinigame
	.align	2
	.global	miniGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	miniGame, %function
miniGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #1
	mov	r0, #67108864
	ldr	r1, .L69
	ldr	r3, [r1]
	add	r3, r3, lr
	ldr	ip, .L69+4
	lsl	r2, r3, #17
	lsr	r2, r2, #16
	str	r3, [r1]
	str	lr, [ip]
	ldr	r3, .L69+8
	strh	r2, [r0, #20]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L65
	ldr	r3, .L69+20
	ldr	r3, [r3]
	cmp	r3, #200
	ble	.L67
	ldr	r3, .L69+24
	ldr	r0, .L69+28
	ldr	r2, [r3, #28]
	ldr	r1, .L69+32
	ldr	lr, [r3, #24]
	ldr	ip, [r0]
	ldr	r1, [r1]
	ldr	r0, .L69+36
	str	r2, [r3, #12]
	ldr	r2, .L69+40
	str	lr, [r3, #8]
	pop	{r4, lr}
	str	ip, [r0]
	str	r1, [r2]
	b	goToGame
.L67:
	pop	{r4, lr}
	b	miniGame.part.0
.L65:
	pop	{r4, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	bgTimer
	.word	mini
	.word	updateMinigame
	.word	drawMinigame
	.word	timer
	.word	score
	.word	player
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	vOff
	.word	hOff
	.size	miniGame, .-miniGame
	.align	2
	.global	goToMaze
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToMaze, %function
goToMaze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r3, .L73
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L73+4
	ldr	r4, .L73+8
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L73+12
	mov	lr, pc
	bx	r4
	mov	r3, #1488
	mov	r0, #3
	ldr	r2, .L73+16
	ldr	r1, .L73+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L73+24
	ldr	r1, .L73+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L73+32
	ldrh	r2, [r3]
	ldr	r3, .L73+36
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L73+40
	ldr	r1, .L73+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L73+48
	ldr	r1, .L73+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L73+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L73+60
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L73+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L74:
	.align	2
.L73:
	.word	waitForVBlank
	.word	3844
	.word	DMANow
	.word	maze2Pal
	.word	100679680
	.word	maze2Tiles
	.word	100694016
	.word	maze2Map
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToMaze, .-goToMaze
	.align	2
	.global	maze
	.syntax unified
	.arm
	.fpu softvfp
	.type	maze, %function
maze:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	ldr	r2, .L81
	push	{r4, lr}
	ldr	r3, .L81+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L79
	ldr	r3, .L81+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L80
	pop	{r4, lr}
	bx	lr
.L80:
	pop	{r4, lr}
	b	maze.part.0
.L79:
	ldr	r3, .L81+20
	ldr	r0, .L81+24
	ldr	r2, [r3, #28]
	ldr	r1, .L81+28
	ldr	lr, [r3, #24]
	ldr	ip, [r0]
	ldr	r1, [r1]
	ldr	r0, .L81+32
	str	r2, [r3, #12]
	ldr	r2, .L81+36
	str	lr, [r3, #8]
	pop	{r4, lr}
	str	ip, [r0]
	str	r1, [r2]
	b	goToGame
.L82:
	.align	2
.L81:
	.word	mini
	.word	updateMaze
	.word	drawMaze
	.word	completeMaze
	.word	timer
	.word	player
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	vOff
	.word	hOff
	.size	maze, .-maze
	.align	2
	.global	goToPopup
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPopup, %function
goToPopup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L85
	push	{r4, lr}
	ldr	r3, .L85+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+8
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L85+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L86:
	.align	2
.L85:
	.word	1044
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToPopup, .-goToPopup
	.align	2
	.global	goToRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToRoom, %function
goToRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r1, .L89
	ldr	r0, .L89+4
	ldr	r3, .L89+8
	str	r0, [r1]
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L89+12
	ldr	r4, .L89+16
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L89+20
	mov	lr, pc
	bx	r4
	mov	r3, #2128
	mov	r0, #3
	ldr	r2, .L89+24
	ldr	r1, .L89+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+32
	ldr	r1, .L89+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+40
	ldrh	r2, [r3]
	ldr	r3, .L89+44
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L89+48
	ldr	r1, .L89+52
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L89+56
	ldr	r1, .L89+60
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+64
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L89+68
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L89+72
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L90:
	.align	2
.L89:
	.word	collisionMap
	.word	roomCollisionMapBitmap
	.word	waitForVBlank
	.word	3844
	.word	DMANow
	.word	roomPal
	.word	100679680
	.word	roomTiles
	.word	100694016
	.word	roomMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToRoom, .-goToRoom
	.align	2
	.global	room
	.syntax unified
	.arm
	.fpu softvfp
	.type	room, %function
room:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	ldr	r2, .L95
	push	{r4, lr}
	ldr	r3, .L95+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L94
	pop	{r4, lr}
	bx	lr
.L94:
	pop	{r4, lr}
	b	room.part.0
.L96:
	.align	2
.L95:
	.word	roomNumber
	.word	updateRoom
	.word	drawRoom
	.word	waitForVBlank
	.word	textFlag
	.size	room, .-room
	.align	2
	.global	goToLibrary
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLibrary, %function
goToLibrary:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r3, .L99
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L99+4
	ldr	r4, .L99+8
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L99+12
	mov	lr, pc
	bx	r4
	mov	r3, #1168
	mov	r0, #3
	ldr	r2, .L99+16
	ldr	r1, .L99+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L99+24
	ldr	r1, .L99+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L99+32
	ldrh	r2, [r3]
	ldr	r3, .L99+36
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L99+40
	ldr	r1, .L99+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L99+48
	ldr	r1, .L99+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L99+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L99+60
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L99+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L100:
	.align	2
.L99:
	.word	waitForVBlank
	.word	3844
	.word	DMANow
	.word	libraryPal
	.word	100679680
	.word	libraryTiles
	.word	100694016
	.word	libraryMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLibrary, .-goToLibrary
	.align	2
	.global	library
	.syntax unified
	.arm
	.fpu softvfp
	.type	library, %function
library:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #2
	ldr	r2, .L105
	push	{r4, lr}
	ldr	r3, .L105+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L105+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L104
	pop	{r4, lr}
	bx	lr
.L104:
	pop	{r4, lr}
	b	library.part.0
.L106:
	.align	2
.L105:
	.word	roomNumber
	.word	updateLibrary
	.word	drawLibrary
	.word	waitForVBlank
	.word	textFlag
	.size	library, .-library
	.align	2
	.global	goToPotionsLab
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPotionsLab, %function
goToPotionsLab:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r3, .L109
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L109+4
	ldr	r4, .L109+8
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L109+12
	mov	lr, pc
	bx	r4
	mov	r3, #1776
	mov	r0, #3
	ldr	r2, .L109+16
	ldr	r1, .L109+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L109+24
	ldr	r1, .L109+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L109+32
	ldrh	r2, [r3]
	ldr	r3, .L109+36
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L109+40
	ldr	r1, .L109+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L109+48
	ldr	r1, .L109+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L109+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L109+60
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L109+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L110:
	.align	2
.L109:
	.word	waitForVBlank
	.word	3844
	.word	DMANow
	.word	potionsRoomPal
	.word	100679680
	.word	potionsRoomTiles
	.word	100694016
	.word	potionsRoomMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPotionsLab, .-goToPotionsLab
	.align	2
	.global	potionsLab
	.syntax unified
	.arm
	.fpu softvfp
	.type	potionsLab, %function
potionsLab:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #3
	ldr	r2, .L115
	push	{r4, lr}
	ldr	r3, .L115+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L115+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L114
	pop	{r4, lr}
	bx	lr
.L114:
	pop	{r4, lr}
	b	potionsLab.part.0
.L116:
	.align	2
.L115:
	.word	roomNumber
	.word	updatePotions
	.word	waitForVBlank
	.word	drawPotions
	.word	textFlag
	.size	potionsLab, .-potionsLab
	.align	2
	.global	goToOffice
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToOffice, %function
goToOffice:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r3, .L119
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L119+4
	ldr	r4, .L119+8
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L119+12
	mov	lr, pc
	bx	r4
	mov	r3, #3616
	mov	r0, #3
	ldr	r2, .L119+16
	ldr	r1, .L119+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L119+24
	ldr	r1, .L119+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L119+32
	ldrh	r2, [r3]
	ldr	r3, .L119+36
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L119+40
	ldr	r1, .L119+44
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L119+48
	ldr	r1, .L119+52
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L119+56
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L119+60
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L119+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L120:
	.align	2
.L119:
	.word	waitForVBlank
	.word	3844
	.word	DMANow
	.word	officePal
	.word	100679680
	.word	officeTiles
	.word	100694016
	.word	officeMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToOffice, .-goToOffice
	.align	2
	.global	office
	.syntax unified
	.arm
	.fpu softvfp
	.type	office, %function
office:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	ldr	r2, .L125
	push	{r4, lr}
	ldr	r3, .L125+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L125+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L124
	pop	{r4, lr}
	bx	lr
.L124:
	pop	{r4, lr}
	b	office.part.0
.L126:
	.align	2
.L125:
	.word	roomNumber
	.word	updateOffice
	.word	drawOffice
	.word	waitForVBlank
	.word	textFlag
	.size	office, .-office
	.align	2
	.global	goToForest
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToForest, %function
goToForest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r5, #67108864
	ldr	r3, .L129
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L129+4
	ldr	r4, .L129+8
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L129+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L129+16
	ldr	r2, .L129+20
	ldr	r1, .L129+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L129+28
	ldr	r1, .L129+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L129+36
	ldrh	r2, [r3]
	ldr	r3, .L129+40
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L129+44
	ldr	r1, .L129+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L129+52
	ldr	r1, .L129+56
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L129+60
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L129+64
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L129+68
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L130:
	.align	2
.L129:
	.word	waitForVBlank
	.word	7940
	.word	DMANow
	.word	forestPal
	.word	4832
	.word	100679680
	.word	forestTiles
	.word	100726784
	.word	forestMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToForest, .-goToForest
	.align	2
	.global	forest
	.syntax unified
	.arm
	.fpu softvfp
	.type	forest, %function
forest:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #5
	ldr	r2, .L135
	push	{r4, lr}
	ldr	r3, .L135+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L134
	pop	{r4, lr}
	bx	lr
.L134:
	pop	{r4, lr}
	b	forest.part.0
.L136:
	.align	2
.L135:
	.word	roomNumber
	.word	updateForest
	.word	waitForVBlank
	.word	drawForest
	.word	textFlag
	.size	forest, .-forest
	.align	2
	.global	goToBarn
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBarn, %function
goToBarn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #4608
	mov	r4, #67108864
	ldr	r3, .L139
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L139+4
	mov	r3, #256
	strh	r2, [r4, #10]	@ movhi
	mov	r0, #3
	ldr	r4, .L139+8
	mov	r2, #83886080
	ldr	r1, .L139+12
	mov	lr, pc
	bx	r4
	mov	r3, #2800
	mov	r0, #3
	ldr	r2, .L139+16
	ldr	r1, .L139+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L139+24
	ldr	r1, .L139+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L139+32
	ldr	r1, .L139+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L139+40
	ldr	r1, .L139+44
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L139+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L139+52
	mov	lr, pc
	bx	r4
	mov	r2, #11
	ldr	r3, .L139+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L140:
	.align	2
.L139:
	.word	waitForVBlank
	.word	7940
	.word	DMANow
	.word	barnRoomPal
	.word	100679680
	.word	barnRoomTiles
	.word	100726784
	.word	barnRoomMap
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToBarn, .-goToBarn
	.align	2
	.global	barn
	.syntax unified
	.arm
	.fpu softvfp
	.type	barn, %function
barn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #7
	ldr	r2, .L145
	push	{r4, lr}
	ldr	r3, .L145+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L144
	pop	{r4, lr}
	bx	lr
.L144:
	pop	{r4, lr}
	b	barn.part.0
.L146:
	.align	2
.L145:
	.word	roomNumber
	.word	updateBarn
	.word	waitForVBlank
	.word	drawBarn
	.word	textFlag
	.size	barn, .-barn
	.align	2
	.global	goToBossBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToBossBattle, %function
goToBossBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4352
	mov	r4, #67108864
	ldr	r5, .L149
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r2, .L149+4
	mov	r3, #256
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	ldr	r4, .L149+8
	mov	r2, #83886080
	ldr	r1, .L149+12
	mov	lr, pc
	bx	r4
	mov	r3, #928
	mov	r0, #3
	ldr	r2, .L149+16
	ldr	r1, .L149+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L149+24
	ldr	r1, .L149+28
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L149+32
	ldr	r1, .L149+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L149+40
	ldr	r1, .L149+44
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L149+48
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L149+52
	mov	lr, pc
	bx	r4
	mov	r2, #12
	ldr	r3, .L149+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L150:
	.align	2
.L149:
	.word	waitForVBlank
	.word	7172
	.word	DMANow
	.word	bossBattlePal
	.word	100679680
	.word	bossBattleTiles
	.word	100720640
	.word	bossBattleMap
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToBossBattle, .-goToBossBattle
	.align	2
	.global	popup
	.syntax unified
	.arm
	.fpu softvfp
	.type	popup, %function
popup:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L222
	ldr	r4, .L222+4
	ldr	r5, .L222+8
	ldr	r7, .L222+12
	ldr	r6, .L222+16
	str	r2, [r3]
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L152
	ldr	r2, .L222+20
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L200
.L152:
	tst	r3, #2
	beq	.L151
	ldr	r3, .L222+20
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L151
	ldr	r7, .L222+24
	ldr	r8, [r7]
	cmp	r8, #0
	beq	.L166
	ldr	r6, .L222+28
.L167:
	ldr	r3, [r6]
	cmp	r3, #16
	beq	.L201
.L175:
	cmp	r3, #2
	beq	.L202
.L177:
	cmp	r3, #1
	beq	.L203
.L179:
	cmp	r3, #4
	beq	.L204
.L181:
	cmp	r3, #13
	beq	.L205
.L183:
	cmp	r3, #6
	beq	.L206
.L185:
	cmp	r3, #7
	beq	.L207
.L187:
	cmp	r3, #11
	beq	.L208
.L189:
	cmp	r3, #14
	bne	.L151
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r6, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r6
	ldr	r3, [r4]
	cmp	r3, #3
	ble	.L209
	mov	r3, #0
	ldr	r2, .L222+48
	ldr	r2, [r2]
	cmp	r2, r3
	str	r3, [r4]
	str	r3, [r7]
	beq	.L192
	bl	goToBossBattle
	ldr	r3, .L222+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+60
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L222+64
	ldr	r3, .L222+68
	mov	lr, pc
	bx	r3
.L151:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L200:
	ldr	r2, .L222+72
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L153
	ldr	r2, .L222+76
	ldr	r8, [r2]
	cmp	r8, #1
	beq	.L210
	cmp	r8, #2
	beq	.L211
	cmp	r8, #3
	beq	.L212
	cmp	r8, #4
	beq	.L213
	cmp	r8, #6
	beq	.L214
	cmp	r8, #7
	beq	.L215
	ldr	r2, .L222+80
	ldr	r2, [r2]
	cmp	r2, #2
	ble	.L160
	ldr	r2, .L222+84
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L152
.L160:
	ldr	r3, .L222+88
	ldr	r1, .L222+92
	ldr	r2, .L222+96
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r2, [r3, #16]
	ldr	ip, [r3, #20]
	add	r2, r2, #15
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	ldr	r2, .L222+100
	ldr	r3, .L222+104
	str	r0, [r2]
	str	r1, [r3]
	bl	goToGame
	ldrh	r3, [r4]
	b	.L152
.L153:
	ldr	r6, .L222+28
	ldr	r3, [r6]
	cmp	r3, #15
	beq	.L216
.L161:
	cmp	r3, #9
	beq	.L162
.L199:
	ldrh	r3, [r4]
	b	.L152
.L166:
	ldr	r9, .L222+72
	ldr	r4, [r9]
	cmp	r4, #1
	beq	.L197
	ldr	r6, .L222+28
.L168:
	cmp	r4, #2
	beq	.L217
.L169:
	cmp	r4, #3
	beq	.L218
.L170:
	cmp	r4, #4
	beq	.L219
.L171:
	cmp	r4, #5
	beq	.L220
.L172:
	cmp	r4, #7
	beq	.L221
.L173:
	cmp	r4, #0
	bne	.L167
	ldr	r3, .L222+36
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L222+40
	ldr	r3, .L222+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+88
	ldr	r1, .L222+108
	ldr	r2, .L222+112
	ldr	r0, [r3, #28]
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r3, #24]
	str	r0, [r3, #12]
	str	r2, [r3, #8]
	ldr	r0, .L222+100
	ldr	r2, .L222+104
	ldr	r3, .L222+32
	str	r4, [r6]
	str	ip, [r0]
	str	r1, [r2]
	str	r4, [r3]
	bl	goToGame
	b	.L167
.L208:
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r8, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	cmp	r3, #4
	bgt	.L190
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	b	.L189
.L207:
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r8, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	cmp	r3, #4
	bgt	.L188
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	b	.L187
.L206:
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r8, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	cmp	r3, #4
	bgt	.L186
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	b	.L185
.L205:
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r8, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	cmp	r3, #4
	bgt	.L184
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	b	.L183
.L204:
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r8, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	cmp	r3, #4
	bgt	.L182
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	b	.L181
.L203:
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r8, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	cmp	r3, #5
	bgt	.L180
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	b	.L179
.L202:
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r8, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	cmp	r3, #4
	bgt	.L178
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	b	.L177
.L201:
	ldr	r4, .L222+32
	ldr	r2, .L222+36
	ldr	r3, [r4]
	ldr	r1, [r2]
	add	r3, r3, #1
	mov	r2, #0
	ldr	r0, .L222+40
	ldr	r8, .L222+44
	str	r3, [r4]
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	cmp	r3, #6
	bgt	.L176
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	b	.L175
.L176:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	r0, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [r0]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+116
	ldr	r3, .L222+104
	ldr	r1, [r1]
	str	r0, [r3]
	ldr	r0, .L222+120
	str	r2, [r4]
	str	r2, [r7]
	mov	lr, pc
	bx	r8
	bl	goToGame
	ldr	r3, [r6]
	b	.L175
.L184:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	r0, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [r0]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+116
	ldr	r3, .L222+104
	ldr	r1, [r1]
	str	r0, [r3]
	ldr	r0, .L222+120
	str	r2, [r4]
	str	r2, [r7]
	mov	lr, pc
	bx	r8
	bl	goToOffice
	ldr	r3, [r6]
	b	.L183
.L186:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	r0, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [r0]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+116
	ldr	r3, .L222+104
	ldr	r1, [r1]
	str	r0, [r3]
	ldr	r0, .L222+120
	str	r2, [r4]
	str	r2, [r7]
	mov	lr, pc
	bx	r8
	bl	goToPotionsLab
	ldr	r3, [r6]
	b	.L185
.L188:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, .L222+108
	ldr	r0, [r3, #28]
	ldr	ip, [r1]
	str	r0, [r3, #12]
	ldr	r1, .L222+112
	ldr	r0, [r3, #24]
	ldr	r1, [r1]
	str	r0, [r3, #8]
	ldr	r3, .L222+104
	ldr	r0, .L222+100
	str	r1, [r3]
	str	r2, [r4]
	str	r2, [r7]
	str	ip, [r0]
	bl	goToOffice
	ldr	r3, [r6]
	b	.L187
.L190:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	r0, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [r0]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+116
	ldr	r3, .L222+104
	ldr	r1, [r1]
	str	r0, [r3]
	ldr	r0, .L222+120
	str	r2, [r4]
	str	r2, [r7]
	mov	lr, pc
	bx	r8
	bl	goToBarn
	ldr	r3, [r6]
	b	.L189
.L180:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	r0, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [r0]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+116
	ldr	r3, .L222+104
	ldr	r1, [r1]
	str	r0, [r3]
	ldr	r0, .L222+120
	str	r2, [r4]
	str	r2, [r7]
	mov	lr, pc
	bx	r8
	bl	goToLibrary
	ldr	r3, [r6]
	b	.L179
.L182:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, .L222+108
	ldr	r0, [r3, #28]
	ldr	ip, [r1]
	str	r0, [r3, #12]
	ldr	r1, .L222+112
	ldr	r0, [r3, #24]
	ldr	r1, [r1]
	str	r0, [r3, #8]
	ldr	r3, .L222+104
	ldr	r0, .L222+100
	str	r1, [r3]
	str	r2, [r4]
	str	r2, [r7]
	str	ip, [r0]
	bl	goToLibrary
	ldr	r3, [r6]
	b	.L181
.L178:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, .L222+108
	ldr	r0, [r3, #28]
	ldr	ip, [r1]
	str	r0, [r3, #12]
	ldr	r1, .L222+112
	ldr	r0, [r3, #24]
	ldr	r1, [r1]
	str	r0, [r3, #8]
	ldr	r3, .L222+104
	ldr	r0, .L222+100
	str	r1, [r3]
	str	r2, [r4]
	str	r2, [r7]
	str	ip, [r0]
	bl	goToRoom
	ldr	r3, [r6]
	b	.L177
.L209:
	mov	lr, pc
	bx	r5
	b	.L151
.L214:
	bl	goToBossBattle
	ldr	r3, .L222+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L152
.L217:
	ldr	r3, .L222+36
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L222+40
	ldr	r3, .L222+44
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	ip, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+104
	ldr	r3, .L222+32
	str	r2, [r6]
	str	r0, [r1]
	str	r2, [r3]
	bl	goToLibrary
	ldr	r4, [r9]
	b	.L169
.L197:
	ldr	r3, .L222+36
	mov	r2, r8
	ldr	r1, [r3]
	ldr	r0, .L222+40
	ldr	r3, .L222+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+88
	ldr	r1, .L222+108
	ldr	r2, .L222+112
	ldr	r0, [r3, #28]
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r3, #24]
	str	r0, [r3, #12]
	str	r2, [r3, #8]
	ldr	r0, .L222+100
	ldr	r2, .L222+104
	ldr	r3, .L222+32
	ldr	r6, .L222+28
	str	ip, [r0]
	str	r1, [r2]
	str	r8, [r3]
	str	r8, [r6]
	bl	goToRoom
	ldr	r4, [r9]
	b	.L168
.L221:
	ldr	r3, .L222+36
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L222+40
	ldr	r3, .L222+44
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	ip, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+104
	ldr	r3, .L222+32
	str	r2, [r6]
	str	r0, [r1]
	str	r2, [r3]
	bl	goToBarn
	ldr	r4, [r9]
	b	.L173
.L220:
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	ip, [r3, #28]
	ldr	r1, .L222+108
	str	ip, [r3, #12]
	ldr	ip, [r3, #24]
	ldr	r0, [r1]
	str	ip, [r3, #8]
	ldr	r1, .L222+112
	ldr	r3, .L222+100
	ldr	r1, [r1]
	str	r0, [r3]
	ldr	r3, .L222+104
	str	r1, [r3]
	ldr	r3, .L222+32
	str	r2, [r6]
	str	r2, [r3]
	bl	goToForest
	ldr	r4, [r9]
	b	.L172
.L219:
	ldr	r3, .L222+36
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L222+40
	ldr	r3, .L222+44
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	ip, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+104
	ldr	r3, .L222+32
	str	r2, [r6]
	str	r0, [r1]
	str	r2, [r3]
	bl	goToOffice
	ldr	r4, [r9]
	b	.L171
.L218:
	ldr	r3, .L222+36
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L222+40
	ldr	r3, .L222+44
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L222+88
	ldr	r1, [r3, #28]
	ldr	ip, .L222+108
	str	r1, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	str	r1, [r3, #8]
	ldr	r0, .L222+112
	ldr	r3, .L222+100
	ldr	r0, [r0]
	str	ip, [r3]
	ldr	r1, .L222+104
	ldr	r3, .L222+32
	str	r0, [r1]
	str	r2, [r3]
	bl	goToPotionsLab
	ldr	r4, [r9]
	b	.L170
.L210:
	ldr	r3, .L222+124
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+128
	mov	r2, r8
	ldr	r1, [r3]
	ldr	r0, .L222+132
	ldr	r3, .L222+68
	mov	lr, pc
	bx	r3
	bl	goToRoom
	ldr	r3, .L222+136
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L152
.L162:
	mov	r3, #0
	mov	r1, #24
	mov	r2, #80
	ldr	r0, .L222+100
	str	r3, [r0]
	ldr	r0, .L222+104
	str	r3, [r0]
	ldr	r3, .L222+88
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	bl	goToBarn
	b	.L199
.L216:
	ldr	r3, .L222+124
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+140
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L222+144
	ldr	r3, .L222+68
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, [r6]
	b	.L161
.L211:
	ldr	r3, .L222+124
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+148
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L222+152
	ldr	r3, .L222+68
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	bl	goToLibrary
	ldr	r3, .L222+156
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L152
.L192:
	ldr	r3, .L222+88
	ldr	r0, .L222+108
	ldr	r2, [r3, #28]
	ldr	r1, .L222+112
	ldr	lr, [r3, #24]
	ldr	ip, [r0]
	ldr	r1, [r1]
	ldr	r0, .L222+100
	str	r2, [r3, #12]
	ldr	r2, .L222+104
	str	lr, [r3, #8]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	ip, [r0]
	str	r1, [r2]
	b	goToBarn
.L212:
	ldr	r3, .L222+124
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+148
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L222+152
	ldr	r3, .L222+68
	mov	lr, pc
	bx	r3
	bl	goToPotionsLab
	ldr	r3, .L222+160
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L152
.L213:
	ldr	r3, .L222+124
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+128
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L222+132
	ldr	r3, .L222+68
	mov	lr, pc
	bx	r3
	bl	goToOffice
	ldr	r3, .L222+164
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L152
.L215:
	ldr	r3, .L222+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L222+168
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L222+172
	ldr	r3, .L222+68
	mov	lr, pc
	bx	r3
	bl	goToForest
	ldr	r3, .L222+176
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L152
.L223:
	.align	2
.L222:
	.word	textFlag
	.word	oldButtons
	.word	drawText
	.word	waitForVBlank
	.word	flipPage
	.word	buttons
	.word	clueNumber
	.word	itemCheck
	.word	bCounter
	.word	dialogue_length
	.word	dialogue_data
	.word	playSoundB
	.word	keyFound
	.word	initBattle
	.word	stopSound
	.word	theBeast_length
	.word	theBeast_data
	.word	playSoundA
	.word	roomNumber
	.word	doorFlag
	.word	potionFound
	.word	amulet
	.word	player
	.word	prevVOFFRoom
	.word	prevHOFFRoom
	.word	vOff
	.word	hOff
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	equip_length
	.word	equip_data
	.word	pauseSound
	.word	blackpinkPrettySavage_length
	.word	blackpinkPrettySavage_data
	.word	initRoom
	.word	blackCat_length
	.word	blackCat_data
	.word	mamamooHIP_length
	.word	mamamooHIP_data
	.word	initLibrary
	.word	initPotions
	.word	initOffice
	.word	Celeste_length
	.word	Celeste_data
	.word	initForest
	.size	popup, .-popup
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	mov	r6, #512
	ldr	r3, .L226
	strh	r6, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L226+4
	ldr	r5, .L226+8
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L226+12
	mov	lr, pc
	bx	r5
	mov	r3, #1824
	mov	r0, #3
	ldr	r2, .L226+16
	ldr	r1, .L226+20
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L226+24
	ldr	r1, .L226+28
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	ldr	r3, .L226+32
	mov	lr, pc
	bx	r3
	mov	r3, r6
	mov	r2, #117440512
	ldr	r1, .L226+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r1, #13
	ldr	r2, .L226+40
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L227:
	.align	2
.L226:
	.word	waitForVBlank
	.word	3844
	.word	DMANow
	.word	pausePal
	.word	100679680
	.word	pauseTiles
	.word	100694016
	.word	pauseMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L240
	ldr	r3, .L240+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L229
	ldr	r2, .L240+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L238
.L229:
	tst	r3, #4
	beq	.L228
	ldr	r3, .L240+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L239
.L228:
	pop	{r4, lr}
	bx	lr
.L239:
	pop	{r4, lr}
	b	goToStart
.L238:
	ldr	r3, .L240+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L229
.L241:
	.align	2
.L240:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	mov	r6, #512
	ldr	r3, .L244
	strh	r6, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L244+4
	ldr	r5, .L244+8
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L244+12
	mov	lr, pc
	bx	r5
	mov	r3, #1712
	mov	r0, #3
	ldr	r2, .L244+16
	ldr	r1, .L244+20
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L244+24
	ldr	r1, .L244+28
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	ldr	r3, .L244+32
	mov	lr, pc
	bx	r3
	mov	r3, r6
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L244+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L244+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L244+44
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L244+48
	ldr	r3, .L244+52
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #14
	ldr	r2, .L244+56
	str	r1, [r2]
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L245:
	.align	2
.L244:
	.word	waitForVBlank
	.word	3844
	.word	DMANow
	.word	losePal
	.word	100679680
	.word	loseTiles
	.word	100694016
	.word	loseMap
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	loseScreen_length
	.word	loseScreen_data
	.word	playSoundA
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, lr}
	ldr	ip, .L264
	ldr	r0, .L264+4
	ldr	r1, .L264+8
	ldr	r4, .L264+12
	ldr	r2, .L264+16
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L264+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L247
	ldr	r3, .L264+28
	ldrh	r2, [r3]
	ands	r5, r2, #8
	beq	.L259
.L247:
	ldr	r3, .L264+32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L260
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L261
.L249:
	cmp	r3, #2
	beq	.L262
.L250:
	ldr	r3, .L264+36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L263
	pop	{r4, r5, r6, lr}
	bx	lr
.L263:
	mov	r2, #67108864
	ldr	r1, .L264+40
	ldr	r3, .L264+44
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+48
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r2, .L264+52
	ldr	r3, .L264+56
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L260:
	bl	goToLose
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L249
.L261:
	bl	goToMinigame
	ldr	r3, .L264+60
	mov	lr, pc
	bx	r3
	b	.L250
.L259:
	ldr	r3, .L264+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L264+68
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L264+72
	ldr	r3, .L264+76
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L247
.L262:
	bl	goToMaze
	ldr	r3, .L264+80
	mov	lr, pc
	bx	r3
	b	.L250
.L265:
	.align	2
.L264:
	.word	completeMaze
	.word	roomNumber
	.word	clueNumber
	.word	mini
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	textFlag
	.word	1044
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.word	initText
	.word	initMinigame
	.word	pauseSound
	.word	pauseScreen_length
	.word	pauseScreen_data
	.word	playSoundB
	.word	initMaze
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L273
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L273+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L266
	ldr	r3, .L273+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L272
.L266:
	pop	{r4, lr}
	bx	lr
.L272:
	pop	{r4, lr}
	b	lose.part.0
.L274:
	.align	2
.L273:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #1792
	mov	r4, #67108864
	ldr	r3, .L277
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #21760
	ldr	r2, .L277+4
	ldr	r1, .L277+8
	ldr	r5, .L277+12
	strh	r3, [r4, #12]	@ movhi
	mov	r0, #3
	strh	r2, [r4, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #8]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L277+16
	mov	lr, pc
	bx	r5
	mov	r3, #1488
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L277+20
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L277+24
	ldr	r1, .L277+28
	mov	lr, pc
	bx	r5
	mov	r3, #1760
	mov	r0, #3
	ldr	r2, .L277+32
	ldr	r1, .L277+36
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L277+40
	ldr	r1, .L277+44
	mov	lr, pc
	bx	r5
	mov	r3, #832
	mov	r0, #3
	ldr	r2, .L277+48
	ldr	r1, .L277+52
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L277+56
	ldr	r1, .L277+60
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	ldr	r3, .L277+64
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L277+68
	mov	r3, #512
	mov	lr, pc
	bx	r5
	ldr	r3, .L277+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L277+76
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L277+80
	ldr	r3, .L277+84
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #15
	ldr	r2, .L277+88
	str	r1, [r2]
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #26]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L278:
	.align	2
.L277:
	.word	waitForVBlank
	.word	23556
	.word	7944
	.word	DMANow
	.word	winBGPal
	.word	winBG1Tiles
	.word	100706304
	.word	winBG1Map
	.word	100679680
	.word	winBGTiles
	.word	100720640
	.word	winBGMap
	.word	100696064
	.word	winTextTiles
	.word	100726784
	.word	winTextMap
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	winScreen_length
	.word	winScreen_data
	.word	playSoundA
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	battle
	.syntax unified
	.arm
	.fpu softvfp
	.type	battle, %function
battle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #6
	ldr	r2, .L285
	push	{r4, lr}
	ldr	r3, .L285+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L285+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L285+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L285+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L283
	ldr	r3, .L285+20
	ldr	r3, [r3, #76]
	cmp	r3, #10
	beq	.L284
	pop	{r4, lr}
	bx	lr
.L283:
	pop	{r4, lr}
	b	goToWin
.L284:
	pop	{r4, lr}
	b	goToLose
.L286:
	.align	2
.L285:
	.word	roomNumber
	.word	updateBattle
	.word	drawBattle
	.word	waitForVBlank
	.word	playerWon
	.word	player
	.size	battle, .-battle
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	lr, .L294
	ldr	r3, [lr]
	add	r1, r3, #1
	cmp	r1, #0
	addlt	r3, r3, #8
	movge	r3, r1
	mov	ip, #67108864
	ldr	r2, .L294+4
	smull	r4, r0, r2, r1
	asr	r2, r1, #31
	rsb	r2, r2, r0, asr #1
	asr	r3, r3, #3
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	str	r1, [lr]
	strh	r2, [ip, #20]	@ movhi
	ldr	r1, .L294+8
	strh	r3, [ip, #24]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L294+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L287
	ldr	r3, .L294+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L293
.L287:
	pop	{r4, lr}
	bx	lr
.L293:
	pop	{r4, lr}
	b	win.part.0
.L295:
	.align	2
.L294:
	.word	parallaxTimer
	.word	1717986919
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L319
	mov	lr, pc
	bx	r3
	ldr	r6, .L319+4
	ldr	r7, .L319+8
	ldr	r5, .L319+12
	ldr	fp, .L319+16
	ldr	r10, .L319+20
	ldr	r9, .L319+24
	ldr	r8, .L319+28
	ldr	r4, .L319+32
.L297:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L298:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #15
	ldrls	pc, [pc, r2, asl #2]
	b	.L298
.L300:
	.word	.L315
	.word	.L314
	.word	.L313
	.word	.L312
	.word	.L311
	.word	.L310
	.word	.L309
	.word	.L308
	.word	.L307
	.word	.L306
	.word	.L305
	.word	.L304
	.word	.L303
	.word	.L302
	.word	.L301
	.word	.L299
.L299:
	ldr	r3, .L319+36
	mov	lr, pc
	bx	r3
	b	.L297
.L301:
	ldr	r3, .L319+40
	mov	lr, pc
	bx	r3
	b	.L297
.L302:
	ldr	r3, .L319+44
	mov	lr, pc
	bx	r3
	b	.L297
.L303:
	ldr	r3, .L319+48
	mov	lr, pc
	bx	r3
	b	.L297
.L304:
	ldr	r3, .L319+52
	mov	lr, pc
	bx	r3
	b	.L297
.L305:
	ldr	r3, .L319+56
	mov	lr, pc
	bx	r3
	b	.L297
.L306:
	ldr	r3, .L319+60
	mov	lr, pc
	bx	r3
	b	.L297
.L307:
	ldr	r3, .L319+64
	mov	lr, pc
	bx	r3
	b	.L297
.L308:
	ldr	r3, .L319+68
	mov	lr, pc
	bx	r3
	b	.L297
.L309:
	ldr	r3, .L319+72
	mov	lr, pc
	bx	r3
	b	.L297
.L310:
	ldr	r3, .L319+76
	mov	lr, pc
	bx	r3
	b	.L297
.L311:
	ldr	r3, .L319+80
	mov	lr, pc
	bx	r3
	b	.L297
.L312:
	mov	lr, pc
	bx	r8
	b	.L297
.L313:
	mov	lr, pc
	bx	r9
	b	.L297
.L314:
	mov	lr, pc
	bx	r10
	b	.L297
.L315:
	mov	lr, pc
	bx	fp
	b	.L297
.L320:
	.align	2
.L319:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	miniGame
	.word	67109120
	.word	win
	.word	lose
	.word	pause
	.word	battle
	.word	barn
	.word	forest
	.word	office
	.word	potionsLab
	.word	library
	.word	room
	.word	popup
	.word	maze
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	parallaxTimer,4,4
	.comm	bgTimer,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	aButton,80,4
	.comm	prevHOFFItem,4,4
	.comm	prevVOFFItem,4,4
	.comm	prevVOFFRoom,4,4
	.comm	prevHOFFRoom,4,4
	.comm	potionFound,4,4
	.comm	clueNumber,4,4
	.comm	aCounter,4,4
	.comm	bCounter,4,4
	.comm	roomNumber,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
