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
	.file	"potionsLab.c"
	.text
	.align	2
	.global	initPotions
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPotions, %function
initPotions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	ip, #24
	str	lr, [sp, #-4]!
	mov	r0, #16
	mov	lr, #48
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
	.word	potionsMap
	.word	potionsCollisionBitmap
	.size	initPotions, .-initPotions
	.align	2
	.global	initPPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPPlayer, %function
initPPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #24
	mov	r0, #16
	mov	r1, #1
	mov	ip, #48
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
	.size	initPPlayer, .-initPPlayer
	.align	2
	.global	drawPPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPPlayer, %function
drawPPlayer:
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
	.size	drawPPlayer, .-drawPPlayer
	.align	2
	.global	drawPotions
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPotions, %function
drawPotions:
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
	ldr	r4, .L18+16
	bl	drawPPlayer
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
	.size	drawPotions, .-drawPotions
	.align	2
	.global	updatePotionsMove
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePotionsMove, %function
updatePotionsMove:
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
	.word	potionsMap
	.size	updatePotionsMove, .-updatePotionsMove
	.align	2
	.global	walkablePotions
	.syntax unified
	.arm
	.fpu softvfp
	.type	walkablePotions, %function
walkablePotions:
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
	.word	potionsMap
	.size	walkablePotions, .-walkablePotions
	.align	2
	.global	potionsLabItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	potionsLabItems, %function
potionsLabItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L44
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L44+4
	add	ip, r3, #8
	ldm	ip, {ip, lr}
	ldr	r1, [r1]
	add	r0, lr, ip, lsl #8
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r2, #2
	add	r0, r1, r0
	bne	.L39
	mov	r0, #15
	mov	r5, #1
	ldr	lr, .L44+8
	ldr	ip, .L44+12
	ldr	r2, [r3, #16]
	ldr	r4, [ip]
	ldr	r6, [lr]
	add	ip, r2, r0
	ldr	lr, .L44+16
	ldr	r2, .L44+20
	str	r6, [lr]
	str	r4, [r2]
	ldr	lr, [r3, #20]
	ldr	r2, .L44+24
	ldr	r4, .L44+28
	str	r0, [r2]
	str	ip, [r3, #8]
	str	lr, [r3, #12]
	str	r5, [r4]
	add	r0, lr, ip, lsl #8
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	add	r0, r1, r0
.L39:
	cmp	r2, #3
	bne	.L40
	mov	r4, #1
	mov	r7, #200
	mov	r6, #48
	mov	r1, #5
	ldr	r5, .L44+16
	ldr	r2, .L44+32
	ldr	r5, [r5]
	str	r5, [r2]
	ldr	r5, .L44+20
	ldr	r2, .L44+36
	ldr	r5, [r5]
	str	r5, [r2]
	ldr	r2, .L44+28
	str	r4, [r2]
	ldr	r2, .L44+24
	str	r7, [r3, #28]
	str	r6, [r3, #24]
	str	r1, [r2]
	ldrb	r2, [r0]	@ zero_extendqisi2
.L40:
	cmp	r2, #4
	bne	.L41
	mov	r1, #1
	mov	r4, #2
	ldr	r5, .L44+16
	ldr	r2, .L44+32
	ldr	r5, [r5]
	str	r5, [r2]
	ldr	r5, .L44+20
	ldr	r2, .L44+36
	ldr	r5, [r5]
	str	r5, [r2]
	ldr	r2, .L44+28
	str	r1, [r2]
	ldr	r1, .L44+24
	sub	r2, ip, #15
	str	lr, [r3, #28]
	str	r4, [r1]
	str	r2, [r3, #24]
	ldrb	r2, [r0]	@ zero_extendqisi2
.L41:
	cmp	r2, #5
	bne	.L38
	mov	r6, #1
	mov	r5, #6
	mov	r4, #4
	ldr	r0, .L44+40
	add	r2, ip, #15
	str	r2, [r3, #24]
	str	lr, [r3, #28]
	ldr	r3, [r0]
	ldr	r1, .L44+44
	add	r3, r3, r6
	str	r3, [r0]
	ldr	r3, [r1]
	ldr	r2, .L44+16
	add	r3, r3, r6
	ldr	ip, [r2]
	str	r3, [r1]
	ldr	r2, .L44+20
	ldr	r3, .L44+32
	ldr	r2, [r2]
	str	ip, [r3]
	ldr	r3, .L44+36
	ldr	r1, .L44+28
	str	r2, [r3]
	ldr	r2, .L44+24
	ldr	r3, .L44+48
	str	r6, [r1]
	str	r5, [r2]
	str	r4, [r3]
.L38:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	player
	.word	potionsMap
	.word	prevVOFFRoom
	.word	prevHOFFRoom
	.word	vOff
	.word	hOff
	.word	itemCheck
	.word	textFlag
	.word	prevVOFFItem
	.word	prevHOFFItem
	.word	potionFound
	.word	bCounter
	.word	clueNumber
	.size	potionsLabItems, .-potionsLabItems
	.align	2
	.global	updatePPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePPlayer, %function
updatePPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, lr}
	bne	.L48
	ldr	r0, .L85+4
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #32]
	subs	r2, r3, r2
	bmi	.L48
	ldr	r1, .L85+8
	ldr	ip, [r0, #12]
	ldr	r1, [r1]
	sub	r3, r3, #1
	add	r1, r1, ip
	ldrb	ip, [r1, r3, lsl #8]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r1, r3, lsl #8
	beq	.L48
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L48
	ldr	r1, .L85+12
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r0, #8]
	blt	.L48
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
.L48:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L51
	ldr	r2, .L85+4
	ldr	r1, [r2, #8]
	ldr	r3, [r2, #44]
	ldr	ip, [r2, #32]
	add	r3, r1, r3
	add	r3, r3, ip
	cmp	r3, #160
	ble	.L84
.L51:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L54
	ldr	r1, .L85+4
	ldr	r0, [r1, #12]
	ldr	ip, [r1, #36]
	cmn	r0, ip
	bmi	.L54
	ldr	r3, .L85+8
	ldr	r2, [r3]
	ldr	lr, [r1, #8]
	sub	r3, r0, #1
	add	r3, r2, r3
	ldrb	r2, [r3, lr, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, lr, lsl #8
	beq	.L54
	ldrb	r3, [r3, #3840]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L54
	ldr	r2, .L85+16
	ldr	r3, [r2]
	sub	r0, r0, ip
	cmp	r3, #0
	str	r0, [r1, #12]
	blt	.L54
	sub	r0, r0, r3
	cmp	r0, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L54:
	ldr	r3, .L85
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L57
	ldr	r2, .L85+4
	ldr	r0, [r2, #12]
	ldr	r3, [r2, #40]
	ldr	ip, [r2, #36]
	add	r3, r0, r3
	add	r3, r3, ip
	cmp	r3, #256
	bgt	.L57
	ldr	r3, .L85+8
	ldr	r1, [r3]
	ldr	lr, [r2, #8]
	add	r3, r0, #16
	add	r3, r1, r3
	ldrb	r1, [r3, lr, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, lr, lsl #8
	beq	.L57
	ldrb	r3, [r3, #3840]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	ldr	r1, .L85+16
	ldr	r3, [r1]
	add	r0, r0, ip
	cmp	r3, #15
	str	r0, [r2, #12]
	bgt	.L57
	sub	r0, r0, r3
	cmp	r0, #119
	addgt	r3, r3, #1
	strgt	r3, [r1]
.L57:
	ldr	r3, .L85+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	potionsLabItems
.L84:
	ldr	r3, .L85+8
	ldr	lr, [r2, #12]
	ldr	r3, [r3]
	add	r0, r1, #16
	add	r3, r3, lr
	ldrb	lr, [r3, r0, lsl #8]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r0, lsl #8
	beq	.L51
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	ldr	r0, .L85+12
	ldr	r3, [r0]
	add	r1, r1, ip
	cmp	r3, #0
	str	r1, [r2, #8]
	bge	.L51
	sub	r1, r1, r3
	cmp	r1, #79
	addgt	r3, r3, #1
	strgt	r3, [r0]
	b	.L51
.L86:
	.align	2
.L85:
	.word	67109120
	.word	player
	.word	potionsMap
	.word	vOff
	.word	hOff
	.word	animatePlayer
	.size	updatePPlayer, .-updatePPlayer
	.align	2
	.global	updatePotions
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePotions, %function
updatePotions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePPlayer
	.size	updatePotions, .-updatePotions
	.comm	potionsMap,4,4
	.comm	player,80,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
