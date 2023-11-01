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
	.file	"libraryView.c"
	.text
	.align	2
	.global	initLibrary
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLibrary, %function
initLibrary:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #111
	str	lr, [sp, #-4]!
	mov	r0, #16
	mov	lr, #32
	mov	r1, #1
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r2, [r3]
	ldr	r3, .L4+12
	str	r2, [r3]
	ldr	r3, .L4+16
	str	r2, [r3]
	ldr	r3, .L4+20
	str	r2, [r3, #28]
	str	r2, [r3, #24]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	str	ip, [r3, #12]
	ldr	r2, .L4+24
	ldr	ip, .L4+28
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
	.word	prevHOFFItem
	.word	prevVOFFItem
	.word	itemCheck
	.word	player
	.word	libraryCollision
	.word	libraryCollisionBitmap
	.size	initLibrary, .-initLibrary
	.align	2
	.global	initLPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLPlayer, %function
initLPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #111
	mov	r0, #16
	mov	r1, #1
	mov	ip, #32
	ldr	r3, .L8
	str	lr, [r3, #12]
	str	ip, [r3, #8]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #24]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initLPlayer, .-initLPlayer
	.align	2
	.global	drawLPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLPlayer, %function
drawLPlayer:
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
	.size	drawLPlayer, .-drawLPlayer
	.align	2
	.global	drawLibrary
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLibrary, %function
drawLibrary:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L18
	push	{r4, lr}
	str	r2, [r3]
	bl	drawLPlayer
	ldr	r3, .L18+4
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
	ldr	r4, .L18+20
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L18+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L18+28
	ldrh	r1, [r2]
	ldr	r2, .L18+32
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
	.word	drawAmulet
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawLibrary, .-drawLibrary
	.align	2
	.global	updateLibraryMovement
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLibraryMovement, %function
updateLibraryMovement:
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
	rsb	r1, r1, r1, lsl #4
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #4]	@ zero_extendqisi2
	cmp	r2, #0
	add	r0, r0, r1, lsl #4
	beq	.L31
	ldrb	r2, [r0, #3600]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L24:
	ldr	r3, .L33
	ldr	r3, [r3]
	sub	r0, r0, #1
	rsb	r1, r1, r1, lsl #4
	add	r0, r3, r0
	ldrb	r2, [r0, r1, lsl #4]	@ zero_extendqisi2
	cmp	r2, #0
	add	r1, r0, r1, lsl #4
	beq	.L31
	ldrb	r2, [r1, #3600]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L26:
	ldr	r3, .L33
	sub	r1, r1, #1
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r1, r3, r1, lsl #4
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	cmp	r3, #0
	add	r1, r1, r0
	beq	.L31
.L32:
	ldrb	r2, [r1, #15]	@ zero_extendqisi2
	subs	r0, r2, #0
	movne	r0, #1
	bx	lr
.L25:
	ldr	r3, .L33
	add	r1, r1, #16
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r1, r3, r1, lsl #4
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r1, r1, r0
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
	.word	libraryCollision
	.size	updateLibraryMovement, .-updateLibraryMovement
	.align	2
	.global	walkableLibrary
	.syntax unified
	.arm
	.fpu softvfp
	.type	walkableLibrary, %function
walkableLibrary:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L36
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r1, r3, r1, lsl #4
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	bx	lr
.L37:
	.align	2
.L36:
	.word	libraryCollision
	.size	walkableLibrary, .-walkableLibrary
	.align	2
	.global	libraryItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	libraryItems, %function
libraryItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L43
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L43+4
	ldr	lr, [ip, #8]
	ldr	r1, [ip, #12]
	ldr	r0, [r2]
	rsb	r3, lr, lr, lsl #4
	add	r3, r1, r3, lsl #4
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	cmp	r2, #2
	add	r3, r0, r3
	bne	.L39
	mov	r5, #1
	mov	r4, #15
	ldr	r3, .L43+8
	ldr	r2, .L43+12
	ldr	r7, [r3]
	ldr	r3, .L43+16
	str	r7, [r2]
	ldr	r6, [r3]
	ldr	r2, .L43+20
	str	r6, [r2]
	ldr	r2, .L43+24
	ldr	lr, [ip, #16]
	str	r5, [r2]
	ldr	r1, [ip, #20]
	ldr	r2, .L43+28
	add	lr, lr, r4
	str	lr, [ip, #8]
	str	r1, [ip, #12]
	str	r4, [r2]
	rsb	r3, lr, lr, lsl #4
	add	r3, r1, r3, lsl #4
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	add	r3, r0, r3
.L39:
	cmp	r2, #3
	bne	.L40
	mov	r6, #1
	mov	r5, #4
	mov	r4, #2
	ldr	r0, .L43+32
	ldr	r2, .L43+12
	sub	r1, r1, #8
	str	r1, [ip, #28]
	ldr	r1, [r2]
	ldr	r2, [r0]
	add	r2, r2, r6
	str	r2, [r0]
	ldr	r2, .L43+36
	str	r1, [r2]
	ldr	r1, .L43+20
	ldr	r2, .L43+40
	ldr	r1, [r1]
	str	r1, [r2]
	ldr	r2, .L43+24
	ldr	r1, .L43+28
	str	r6, [r2]
	ldr	r2, .L43+44
	str	lr, [ip, #24]
	str	r5, [r1]
	str	r4, [r2]
	ldrb	r2, [r3]	@ zero_extendqisi2
.L40:
	cmp	r2, #4
	bne	.L38
	mov	r2, #1
	mov	r4, #33
	mov	r5, #136
	mov	lr, #7
	ldr	r0, .L43+48
	ldr	r3, [r0]
	ldr	r1, .L43+32
	add	r3, r3, r2
	str	r3, [r0]
	ldr	r3, [r1]
	ldr	r0, .L43+12
	add	r3, r3, r2
	str	r3, [r1]
	ldr	r0, [r0]
	ldr	r3, .L43+36
	ldr	r1, .L43+20
	str	r0, [r3]
	str	r4, [ip, #28]
	ldr	r3, .L43+40
	ldr	r4, [r1]
	ldr	r0, .L43+24
	str	r4, [r3]
	ldr	r1, .L43+28
	ldr	r3, .L43+44
	str	r5, [ip, #24]
	str	r2, [r0]
	str	r2, [r1]
	str	lr, [r3]
.L38:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	player
	.word	libraryCollision
	.word	prevVOFFRoom
	.word	vOff
	.word	prevHOFFRoom
	.word	hOff
	.word	textFlag
	.word	itemCheck
	.word	bCounter
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	clueNumber
	.word	potionFound
	.size	libraryItems, .-libraryItems
	.align	2
	.global	updateLPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLPlayer, %function
updateLPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	bne	.L47
	ldr	r0, .L85+4
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #32]
	subs	r2, r3, r2
	bmi	.L47
	ldr	r1, .L85+8
	ldr	ip, [r0, #12]
	ldr	r1, [r1]
	sub	r3, r3, #1
	rsb	r3, r3, r3, lsl #4
	add	r1, r1, ip
	ldrb	ip, [r1, r3, lsl #4]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r1, r3, lsl #4
	beq	.L47
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r1, .L85+12
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r0, #8]
	blt	.L47
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
.L47:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L50
	ldr	r2, .L85+4
	ldr	r0, [r2, #8]
	ldr	r3, [r2, #44]
	ldr	ip, [r2, #32]
	add	r3, r0, r3
	add	r3, r3, ip
	cmp	r3, #160
	ble	.L83
.L50:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L53
	ldr	r2, .L85+4
	ldr	r0, [r2, #12]
	ldr	ip, [r2, #36]
	cmn	r0, ip
	bmi	.L53
	ldr	r3, .L85+8
	ldr	r1, [r2, #8]
	ldr	r3, [r3]
	sub	lr, r0, #1
	add	r3, r3, lr
	rsb	r1, r1, r1, lsl #4
	ldrb	lr, [r3, r1, lsl #4]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r1, lsl #4
	beq	.L53
	ldrb	r3, [r3, #3600]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L53
	ldr	r1, .L85+16
	ldr	r3, [r1]
	sub	r0, r0, ip
	cmp	r3, #0
	str	r0, [r2, #12]
	blt	.L53
	sub	r0, r0, r3
	cmp	r0, #120
	suble	r3, r3, #1
	strle	r3, [r1]
.L53:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L56
	ldr	r2, .L85+4
	ldr	r1, [r2, #12]
	ldr	r3, [r2, #40]
	ldr	ip, [r2, #36]
	add	r3, r1, r3
	add	r3, r3, ip
	cmp	r3, #240
	bgt	.L56
	ldr	r3, .L85+8
	ldr	r0, [r2, #8]
	ldr	r3, [r3]
	add	lr, r1, #16
	add	r3, r3, lr
	rsb	r0, r0, r0, lsl #4
	ldrb	lr, [r3, r0, lsl #4]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r0, lsl #4
	beq	.L56
	ldrb	r3, [r3, #3600]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L56
	ldr	r0, .L85+16
	ldr	r3, [r0]
	add	r1, r1, ip
	cmp	r3, #0
	str	r1, [r2, #12]
	blt	.L84
.L56:
	ldr	r3, .L85+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	libraryItems
.L83:
	ldr	r3, .L85+8
	ldr	lr, [r2, #12]
	ldr	r1, [r3]
	add	r3, r0, #16
	add	r1, r1, lr
	rsb	r3, r3, r3, lsl #4
	ldrb	lr, [r1, r3, lsl #4]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r1, r3, lsl #4
	beq	.L50
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L50
	ldr	r1, .L85+12
	ldr	r3, [r1]
	add	r0, r0, ip
	cmp	r3, #0
	str	r0, [r2, #8]
	bge	.L50
	sub	r0, r0, r3
	cmp	r0, #79
	addgt	r3, r3, #1
	strgt	r3, [r1]
	b	.L50
.L84:
	sub	r1, r1, r3
	cmp	r1, #119
	addgt	r3, r3, #1
	strgt	r3, [r0]
	b	.L56
.L86:
	.align	2
.L85:
	.word	67109120
	.word	player
	.word	libraryCollision
	.word	vOff
	.word	hOff
	.word	animatePlayer
	.size	updateLPlayer, .-updateLPlayer
	.align	2
	.global	updateLibrary
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLibrary, %function
updateLibrary:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updateLPlayer
	.size	updateLibrary, .-updateLibrary
	.comm	libraryCollision,4,4
	.comm	player,80,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
