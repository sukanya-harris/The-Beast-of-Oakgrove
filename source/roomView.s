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
	.file	"roomView.c"
	.text
	.align	2
	.global	initRoom
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRoom, %function
initRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	push	{r4, r5, lr}
	mov	r1, #0
	mov	lr, #16
	mov	r5, #34
	mov	r4, #3
	mov	r0, #9
	ldr	r3, .L4
	ldr	r2, [r3, #40]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, ip
	rsb	r2, r2, #112
	str	r2, [r3, #12]
	str	r5, [r3, #8]
	str	r4, [r3, #64]
	str	lr, [r3, #40]
	ldr	r4, .L4+4
	str	lr, [r3, #44]
	str	ip, [r3, #32]
	ldr	lr, .L4+8
	str	ip, [r3, #36]
	ldr	r2, .L4+12
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	r1, [r3, #60]
	ldr	r3, .L4+16
	str	r0, [r4]
	str	r0, [lr]
	str	r3, [r2]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	vOff
	.word	hOff
	.word	collisionMap
	.word	roomCollisionMapBitmap
	.size	initRoom, .-initRoom
	.align	2
	.global	initPlayerInRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerInRoom, %function
initPlayerInRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	lr, #16
	mov	r4, #3
	mov	ip, #1
	ldr	r3, .L8
	str	r4, [r3, #64]
	str	lr, [r3, #40]
	str	lr, [r3, #44]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	ip, [r3, #32]
	str	ip, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initPlayerInRoom, .-initPlayerInRoom
	.align	2
	.global	drawPlayerInRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerInRoom, %function
drawPlayerInRoom:
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
	.size	drawPlayerInRoom, .-drawPlayerInRoom
	.align	2
	.global	drawRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRoom, %function
drawRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L18
	push	{r4, lr}
	str	r2, [r3]
	bl	drawPlayerInRoom
	ldr	r3, .L18+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L18+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L18+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L18+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L18+24
	ldrh	r1, [r2]
	ldr	r2, .L18+28
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
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawRoom, .-drawRoom
	.align	2
	.global	itemCollisionRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	itemCollisionRoom, %function
itemCollisionRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L26
	ldr	r1, .L26+4
	ldr	r5, [r3, #8]
	ldr	r4, [r3, #12]
	ldr	r1, [r1]
	add	r0, r4, r5, lsl #8
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #2
	add	r0, r1, r0
	bne	.L21
	mov	r0, #15
	mov	lr, #1
	ldr	r4, .L26+8
	ldr	r2, [r3, #16]
	ldr	ip, .L26+12
	add	r5, r2, r0
	ldr	ip, [ip]
	ldr	r6, [r4]
	ldr	r2, .L26+16
	ldr	r4, .L26+20
	str	ip, [r2]
	str	r6, [r4]
	ldr	r2, .L26+24
	ldr	r4, [r3, #20]
	ldr	ip, .L26+28
	str	r0, [r2]
	str	r5, [r3, #8]
	str	r4, [r3, #12]
	str	lr, [ip]
	add	r0, r4, r5, lsl #8
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	add	r0, r1, r0
.L21:
	cmp	r2, #3
	bne	.L22
	mov	r1, #1
	ldr	r2, .L26+20
	ldr	ip, .L26+16
	ldr	lr, [r2]
	ldr	r2, .L26+32
	ldr	ip, [ip]
	str	lr, [r2]
	ldr	r2, .L26+36
	str	ip, [r2]
	ldr	r2, .L26+28
	ldr	ip, .L26+24
	str	r1, [r2]
	add	r2, r5, #15
	str	r4, [r3, #28]
	str	r1, [ip]
	str	r2, [r3, #24]
	ldrb	r2, [r0]	@ zero_extendqisi2
.L22:
	cmp	r2, #4
	bne	.L23
	mov	ip, #1
	mov	r6, #2
	ldr	lr, .L26+40
	ldr	r1, [lr]
	ldr	r2, .L26+20
	add	r1, r1, ip
	ldr	r7, [r2]
	str	r1, [lr]
	ldr	r2, .L26+32
	ldr	r1, .L26+16
	str	r7, [r2]
	ldr	r1, [r1]
	ldr	r2, .L26+36
	str	r1, [r2]
	ldr	r2, .L26+28
	str	ip, [r2]
	ldr	r2, .L26+44
	ldr	r1, .L26+24
	str	ip, [r2]
	add	r2, r4, #15
	str	r5, [r3, #24]
	str	r6, [r1]
	str	r2, [r3, #28]
	ldrb	r2, [r0]	@ zero_extendqisi2
.L23:
	cmp	r2, #5
	bne	.L20
	mov	r0, #1
	mov	r1, #3
	ldr	r2, .L26+16
	ldr	ip, .L26+20
	ldr	lr, [r2]
	add	r2, r5, #15
	ldr	r6, [ip]
	str	r2, [r3, #24]
	str	r4, [r3, #28]
	ldr	r3, .L26+32
	ldr	ip, .L26+36
	str	r6, [r3]
	ldr	r2, .L26+28
	ldr	r3, .L26+24
	str	lr, [ip]
	str	r0, [r2]
	str	r1, [r3]
.L20:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	player
	.word	collisionMap
	.word	prevVOFFRoom
	.word	prevHOFFRoom
	.word	hOff
	.word	vOff
	.word	.LANCHOR0
	.word	textFlag
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	bCounter
	.word	clueNumber
	.size	itemCollisionRoom, .-itemCollisionRoom
	.global	__aeabi_idivmod
	.align	2
	.global	animateRoomPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateRoomPlayer, %function
animateRoomPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L41
	ldr	r5, [r4, #48]
	add	r3, r5, r5, lsl r1
	ldr	r2, .L41+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	ldr	r3, .L41+8
	ldr	r6, [r4, #52]
	cmp	r2, r3
	str	r6, [r4, #56]
	str	r1, [r4, #52]
	bcs	.L29
	ldr	r0, [r4, #60]
	ldr	r3, .L41+12
	ldr	r1, [r4, #64]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #60]
.L29:
	ldr	r3, .L41+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #52]
	ldr	r3, .L41+16
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #52]
	ldr	r3, .L41+16
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L32
	mov	r2, #2
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #52]
	bne	.L34
.L35:
	mov	r3, #3
	str	r3, [r4, #52]
.L34:
	add	r5, r5, #1
	str	r5, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L32:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L35
	ldr	r3, [r4, #52]
	cmp	r3, #4
	bne	.L34
	mov	r3, #0
	str	r6, [r4, #52]
	str	r3, [r4, #60]
	str	r3, [r4, #48]
	pop	{r4, r5, r6, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	player
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	67109120
	.size	animateRoomPlayer, .-animateRoomPlayer
	.align	2
	.global	updatePlayerInRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerInRoom, %function
updatePlayerInRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L82
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	bne	.L45
	ldr	r1, .L82+4
	ldr	r3, [r1, #8]
	ldr	r2, [r1, #32]
	subs	r3, r3, r2
	bmi	.L45
	ldr	r2, .L82+8
	ldr	r2, [r2]
	ldr	r0, [r1, #12]
	add	r2, r2, r3, lsl #8
	ldrb	ip, [r2, r0]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, r0
	beq	.L45
	ldr	r0, [r1, #40]
	add	r2, r2, r0
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L45
	ldr	r0, .L82+12
	ldr	r2, [r0]
	cmp	r2, #0
	str	r3, [r1, #8]
	blt	.L45
	sub	r3, r3, r2
	cmp	r3, #80
	suble	r2, r2, #1
	strle	r2, [r0]
.L45:
	ldr	r3, .L82
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L48
	ldr	r2, .L82+4
	ldr	r0, [r2, #8]
	ldr	r1, [r2, #44]
	ldr	lr, [r2, #32]
	add	r3, r0, r1
	add	r3, r3, lr
	cmp	r3, #256
	ble	.L81
.L48:
	ldr	r3, .L82
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L51
	ldr	r2, .L82+4
	ldr	r3, [r2, #12]
	ldr	r0, [r2, #36]
	cmn	r3, r0
	bmi	.L51
	ldr	ip, .L82+8
	ldr	r1, [r2, #8]
	ldr	ip, [ip]
	sub	r3, r3, r0
	add	r0, ip, r1, lsl #8
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L51
	ldr	r0, [r2, #44]
	add	r1, r1, r0
	sub	r1, r1, #1
	add	r1, ip, r1, lsl #8
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L51
	ldr	r0, .L82+16
	ldr	r1, [r0]
	cmp	r1, #0
	str	r3, [r2, #12]
	blt	.L51
	sub	r3, r3, r1
	cmp	r3, #120
	suble	r1, r1, #1
	strle	r1, [r0]
.L51:
	ldr	r3, .L82
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L54
	ldr	r3, .L82+4
	add	r0, r3, #36
	ldm	r0, {r0, r2}
	ldr	ip, [r3, #12]
	add	r1, ip, r2
	add	r1, r1, r0
	cmp	r1, #256
	bgt	.L54
	ldr	r1, .L82+8
	add	r0, ip, r0
	ldr	ip, [r1]
	ldr	r1, [r3, #8]
	add	r2, r2, r0
	sub	r2, r2, #1
	add	lr, ip, r1, lsl #8
	ldrb	lr, [lr, r2]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L54
	ldr	lr, [r3, #44]
	add	r1, r1, lr
	sub	r1, r1, #1
	add	r1, ip, r1, lsl #8
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L54
	ldr	r1, .L82+16
	ldr	r2, [r1]
	cmp	r2, #15
	str	r0, [r3, #12]
	bgt	.L54
	sub	r0, r0, r2
	cmp	r0, #119
	addgt	r2, r2, #1
	strgt	r2, [r1]
.L54:
	bl	animateRoomPlayer
	pop	{r4, lr}
	b	itemCollisionRoom
.L81:
	ldr	ip, .L82+8
	ldr	ip, [ip]
	ldr	r4, [r2, #12]
	sub	r3, r3, #1
	add	r3, ip, r3, lsl #8
	ldrb	r3, [r3, r4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L48
	add	r0, r0, lr
	add	r1, r1, r0
	sub	r1, r1, #1
	add	r1, ip, r1, lsl #8
	ldr	ip, [r2, #40]
	add	r1, r1, r4
	add	r1, r1, ip
	ldrb	r3, [r1, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L48
	ldr	r1, .L82+12
	ldr	r3, [r1]
	cmp	r3, #95
	str	r0, [r2, #8]
	bgt	.L48
	sub	r0, r0, r3
	cmp	r0, #79
	addgt	r3, r3, #1
	strgt	r3, [r1]
	b	.L48
.L83:
	.align	2
.L82:
	.word	67109120
	.word	player
	.word	collisionMap
	.word	vOff
	.word	hOff
	.size	updatePlayerInRoom, .-updatePlayerInRoom
	.align	2
	.global	updateRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRoom, %function
updateRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlayerInRoom
	.size	updateRoom, .-updateRoom
	.comm	collisionMap,4,4
	.global	itemCheck
	.comm	player,80,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	itemCheck, %object
	.size	itemCheck, 4
itemCheck:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
