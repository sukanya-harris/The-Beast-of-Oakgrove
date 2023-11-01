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
	.file	"battleView.c"
	.text
	.align	2
	.global	initBP
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBP, %function
initBP:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #8
	mov	r4, #97
	mov	lr, #111
	mov	r2, #1
	mov	ip, #100
	mov	r0, #0
	ldr	r3, .L4
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	ip, [r3, #72]
	str	r0, [r3, #76]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initBP, .-initBP
	.align	2
	.global	drawBP
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBP, %function
drawBP:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L12
	ldr	r1, .L12+4
	ldr	r2, [r0, #68]
	ldr	r3, [r1]
	cmp	r2, #0
	add	ip, r3, #1
	beq	.L7
	ldr	r0, .L12+8
	lsl	r3, r3, #3
	ldrh	r2, [r0, r3]
	orr	r2, r2, #512
	str	ip, [r1]
	strh	r2, [r0, r3]	@ movhi
	bx	lr
.L7:
	push	{r4, lr}
	ldr	r2, [r0, #12]
	ldr	lr, .L12+8
	ldrb	r4, [r0, #8]	@ zero_extendqisi2
	lsl	r2, r2, #23
	ldr	r0, .L12+12
	str	ip, [r1]
	lsr	r2, r2, #23
	add	r1, lr, r3, lsl #3
	lsl	r3, r3, #3
	strh	r4, [lr, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.word	shadowIndex
	.word	shadowOAM
	.word	28960
	.size	drawBP, .-drawBP
	.align	2
	.global	updateBP
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBP, %function
updateBP:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L15
	ldr	r3, .L38+4
	ldr	r2, [r3, #12]
	ldr	r1, [r3, #36]
	cmp	r2, r1
	subge	r2, r2, r1
	strge	r2, [r3, #12]
	blt	.L15
.L16:
	ldr	r3, .L38+8
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L19
	ldr	r3, .L38+12
	ldrh	r3, [r3]
	ands	r0, r3, #512
	bne	.L19
	mov	r2, #8
	ldr	r1, .L38+4
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	r3, .L38+16
	ldr	ip, [r1, #8]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	add	r2, ip, r2
	cmp	r2, #25
	str	r0, [r3, #68]
	movle	r2, #1
	movle	r0, #0
	str	lr, [r3, #32]
	ldr	r1, [r1, #12]
	ldrgt	r2, [r3, #32]
	str	r1, [r3, #12]
	ldr	r1, .L38+20
	str	ip, [r3, #8]
	subgt	ip, ip, r2
	str	lr, [r1]
	str	lr, [r3, #36]
	strgt	ip, [r3, #8]
	strle	r0, [r1]
	strle	r2, [r3, #68]
	ldr	lr, [sp], #4
	bx	lr
.L19:
	ldr	r1, .L38+20
	ldr	r3, [r1]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, .L38+16
	ldr	ip, [r3, #8]
	ldr	r2, [r3, #44]
	add	r2, ip, r2
	cmp	r2, #25
	movle	r0, #0
	movle	r2, #1
	ldrgt	r2, [r3, #32]
	subgt	ip, ip, r2
	strgt	ip, [r3, #8]
	strle	r0, [r1]
	strle	r2, [r3, #68]
	bx	lr
.L15:
	ldr	r3, .L38
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L17
	ldr	r3, .L38+4
	add	r0, r3, #36
	ldr	r1, [r3, #12]
	ldm	r0, {r0, r2}
	add	r2, r1, r2
	rsb	ip, r0, #207
	cmp	r2, ip
	addle	r1, r1, r0
	strle	r1, [r3, #12]
	ble	.L16
.L17:
	ldr	r3, .L38
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L37
.L18:
	ldr	r3, .L38
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L16
	ldr	r3, .L38+4
	ldr	r1, [r3, #8]
	ldr	r0, [r3, #32]
	ldr	r2, [r3, #44]
	rsb	ip, r0, #119
	add	r2, r1, r2
	cmp	r2, ip
	addle	r1, r1, r0
	strle	r1, [r3, #8]
	b	.L16
.L37:
	ldr	r3, .L38+4
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #32]
	cmp	r2, r1
	subge	r2, r2, r1
	strge	r2, [r3, #8]
	bge	.L16
	b	.L18
.L39:
	.align	2
.L38:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.word	bullets
	.word	.LANCHOR0
	.size	updateBP, .-updateBP
	.align	2
	.global	initBeast
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBeast, %function
initBeast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #111
	mov	r4, #24
	mov	lr, #4
	mov	r1, #32
	mov	ip, #100
	mov	r0, #1
	ldr	r3, .L42
	str	r5, [r3, #12]
	str	r4, [r3, #8]
	str	lr, [r3, #64]
	str	ip, [r3, #72]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r2, [r3, #60]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #76]
	pop	{r4, r5, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	beast
	.size	initBeast, .-initBeast
	.align	2
	.global	drawBeast
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBeast, %function
drawBeast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L48
	ldr	ip, .L48+4
	ldr	r2, [r0, #68]
	ldr	r3, [ip]
	cmp	r2, #0
	push	{r4, lr}
	add	lr, r3, #1
	beq	.L45
	ldr	r1, .L48+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	str	lr, [ip]
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, lr}
	bx	lr
.L45:
	ldr	r2, [r0, #12]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r1, [r0, #60]
	ldrb	r4, [r0, #8]	@ zero_extendqisi2
	lsl	r1, r1, #7
	ldr	r0, .L48+8
	add	r1, r1, #496
	str	lr, [ip]
	orr	r1, r1, #20480
	add	ip, r0, r3, lsl #3
	lsl	r3, r3, #3
	strh	r4, [r0, r3]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	beast
	.word	shadowIndex
	.word	shadowOAM
	.size	drawBeast, .-drawBeast
	.align	2
	.global	updateBeast
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBeast, %function
updateBeast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L82
	ldr	r3, [r4, #68]
	cmp	r3, #0
	ldr	r2, [r4, #40]
	ldr	r3, [r4, #12]
	sub	sp, sp, #20
	bne	.L51
	cmp	r3, #33
	movgt	r1, #0
	movle	r1, #1
	add	r0, r3, r2
	cmp	r0, #207
	orrgt	r1, r1, #1
	cmp	r1, #0
	ldr	r1, [r4, #36]
	rsbne	r1, r1, #0
	add	r3, r3, r1
	strne	r1, [r4, #36]
	str	r3, [r4, #12]
.L51:
	ldr	r1, .L82+4
	ldr	r1, [r1]
	ldr	ip, .L82+8
	tst	r1, #1
	ldr	r6, [ip, #4]
	ldr	lr, [r4, #8]
	ldr	r0, [r4, #44]
	bne	.L53
	cmp	r6, #0
	beq	.L79
	ldr	r5, .L82+12
	ldr	r1, [r5, #8]
.L64:
	cmp	r1, #117
	movgt	r6, #1
	movgt	r1, #0
	ldrle	ip, [r5, #32]
	addle	r1, ip, r1
	strle	r1, [r5, #8]
	strgt	r6, [r5, #68]
	strgt	r1, [ip, #4]
	b	.L56
.L53:
	cmp	r6, #0
	ldr	r5, .L82+12
	bne	.L76
.L56:
	stm	sp, {r3, lr}
	ldr	r6, .L82+16
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	add	r2, r6, #40
	ldm	r2, {r2, r3}
	ldr	r1, [r6, #8]
	ldr	r0, [r6, #12]
	ldr	r7, .L82+20
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L58
	ldr	r3, [r6, #68]
	cmp	r3, #0
	beq	.L80
.L58:
	ldr	r6, .L82+24
	add	r2, r6, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r6, #44]
	ldr	r1, [r6, #40]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #40
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L60
	ldr	r3, [r5, #68]
	cmp	r3, #0
	beq	.L81
.L60:
	ldr	r2, [r4, #48]
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r1, .L82+28
	add	r3, r3, r3, lsl #16
	ldr	r0, .L82+32
	add	r3, r2, r3, lsl #1
	add	r1, r3, r1
	cmp	r0, r1, ror #2
	bcc	.L62
	add	r1, r4, #60
	ldm	r1, {r1, r3}
	sub	r3, r3, #1
	cmp	r1, r3
	movge	r3, #0
	addlt	r1, r1, #1
	strlt	r1, [r4, #60]
	strge	r3, [r4, #60]
.L62:
	add	r2, r2, #1
	str	r2, [r4, #48]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L81:
	mov	r3, #1
	ldr	r2, .L82+36
	ldr	r2, [r2]
	str	r3, [r5, #68]
	ldr	r3, [r6, #76]
	cmp	r2, #0
	addne	r3, r3, #1
	addeq	r3, r3, #2
	str	r3, [r6, #76]
	b	.L60
.L80:
	mov	r3, #1
	ldr	r2, .L82+36
	ldr	r2, [r2]
	str	r3, [r6, #68]
	ldr	r3, [r4, #76]
	cmp	r2, #0
	addne	r3, r3, #2
	addeq	r3, r3, #1
	str	r3, [r4, #76]
	b	.L58
.L79:
	mov	r7, #1
	ldr	r5, .L82+12
	add	r1, r0, r0, lsr #31
	str	r6, [r5, #68]
	add	r6, r2, r2, lsr #31
	add	r1, lr, r1, asr r7
	add	r6, r3, r6, asr r7
	str	r1, [r5, #8]
	str	r6, [r5, #12]
	str	r7, [ip, #4]
	b	.L64
.L76:
	ldr	r1, [r5, #8]
	b	.L64
.L83:
	.align	2
.L82:
	.word	beast
	.word	battleTimer
	.word	.LANCHOR0
	.word	beastBullet
	.word	bullets
	.word	collision
	.word	player
	.word	715827880
	.word	357913940
	.word	amulet
	.size	updateBeast, .-updateBeast
	.align	2
	.global	updateBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBattle, %function
updateBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L87
	ldr	r3, [r2]
	push	{r4, lr}
	add	r3, r3, #1
	str	r3, [r2]
	bl	updateBP
	bl	updateBeast
	ldr	r3, .L87+4
	ldr	r3, [r3, #76]
	cmp	r3, #10
	moveq	r2, #1
	ldreq	r3, .L87+8
	pop	{r4, lr}
	streq	r2, [r3, #8]
	bx	lr
.L88:
	.align	2
.L87:
	.word	battleTimer
	.word	beast
	.word	.LANCHOR0
	.size	updateBattle, .-updateBattle
	.align	2
	.global	animateBeast
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateBeast, %function
animateBeast:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L92
	ldr	r2, [r1, #48]
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r0, .L92+4
	add	r3, r3, r3, lsl #16
	ldr	ip, .L92+8
	add	r3, r2, r3, lsl #1
	add	r0, r3, r0
	cmp	ip, r0, ror #2
	bcc	.L90
	add	r0, r1, #60
	ldm	r0, {r0, r3}
	sub	r3, r3, #1
	cmp	r0, r3
	movge	r3, #0
	addlt	r0, r0, #1
	strlt	r0, [r1, #60]
	strge	r3, [r1, #60]
.L90:
	add	r2, r2, #1
	str	r2, [r1, #48]
	bx	lr
.L93:
	.align	2
.L92:
	.word	beast
	.word	715827880
	.word	357913940
	.size	animateBeast, .-animateBeast
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	mov	r1, #8
	ldr	r0, .L95
	ldr	r3, .L95+4
	ldr	ip, [r0, #8]
	ldr	r0, [r0, #12]
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #68]
	bx	lr
.L96:
	.align	2
.L95:
	.word	player
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L103
	ldr	r2, .L103+4
	ldr	r0, [r1, #68]
	ldr	r3, [r2]
	cmp	r0, #0
	add	r0, r3, #1
	beq	.L98
	ldr	ip, .L103+8
	lsl	r3, r3, #3
	ldrh	r1, [ip, r3]
	orr	r1, r1, #512
	str	r0, [r2]
	strh	r1, [ip, r3]	@ movhi
	bx	lr
.L98:
	ldr	ip, .L103+8
	str	lr, [sp, #-4]!
	ldr	lr, [r1, #8]
	str	r0, [r2]
	ldr	r1, [r1, #12]
	ldr	r2, .L103+12
	lsl	r0, r3, #3
	add	r3, ip, r3, lsl #3
	strh	lr, [ip, r0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L104:
	.align	2
.L103:
	.word	bullets
	.word	shadowIndex
	.word	shadowOAM
	.word	29038
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initBeastBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBeastBullet, %function
initBeastBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #16
	mov	r2, #1
	mov	r0, #2
	ldr	r3, .L106
	str	r1, [r3, #40]
	str	r1, [r3, #44]
	str	r0, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #68]
	bx	lr
.L107:
	.align	2
.L106:
	.word	beastBullet
	.size	initBeastBullet, .-initBeastBullet
	.align	2
	.global	drawBeastBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBeastBullet, %function
drawBeastBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L114
	ldr	r2, .L114+4
	ldr	r0, [r1, #68]
	ldr	r3, [r2]
	cmp	r0, #0
	add	ip, r3, #1
	beq	.L109
	ldr	r0, .L114+8
	lsl	r3, r3, #3
	ldrh	r1, [r0, r3]
	orr	r1, r1, #512
	str	ip, [r2]
	strh	r1, [r0, r3]	@ movhi
	bx	lr
.L109:
	push	{r4, lr}
	ldr	r0, [r1, #12]
	ldr	lr, .L114+8
	ldr	r4, [r1, #8]
	str	ip, [r2]
	ldr	r2, .L114+12
	orr	r1, r0, #16384
	lsl	r0, r3, #3
	add	r3, lr, r3, lsl #3
	strh	r4, [lr, r0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	beastBullet
	.word	shadowIndex
	.word	shadowOAM
	.word	29039
	.size	drawBeastBullet, .-drawBeastBullet
	.align	2
	.global	initHealthBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealthBar, %function
initHealthBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #0
	mov	r4, #32
	mov	r0, #8
	mov	lr, #10
	mov	ip, #16
	mov	r5, #200
	ldr	r3, .L118
	ldm	r3, {r2, r3}
	str	r4, [r2, #40]
	str	lr, [r2, #64]
	str	r0, [r2, #44]
	str	r0, [r2, #12]
	str	r1, [r2, #60]
	str	r1, [r2, #48]
	str	r1, [r2, #52]
	str	ip, [r2, #8]
	str	r4, [r3, #40]
	str	lr, [r3, #64]
	str	r5, [r3, #12]
	str	r0, [r3, #44]
	str	r1, [r3, #60]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	ip, [r3, #8]
	pop	{r4, r5, lr}
	bx	lr
.L119:
	.align	2
.L118:
	.word	.LANCHOR1
	.size	initHealthBar, .-initHealthBar
	.align	2
	.global	initBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBattle, %function
initBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #8
	push	{r4, r5, r6, r7, r8, lr}
	mov	r1, #0
	mov	r4, #1
	mov	lr, #111
	mov	ip, #100
	mov	r0, #32
	mov	r7, #97
	mov	r6, #24
	mov	r5, #4
	ldr	r2, .L122
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	ldr	r3, .L122+4
	str	r7, [r2, #8]
	str	r4, [r2, #32]
	str	r4, [r2, #36]
	str	lr, [r2, #12]
	str	lr, [r3, #12]
	str	r4, [r3, #36]
	str	r6, [r3, #8]
	str	r5, [r3, #64]
	str	r1, [r2, #76]
	str	r1, [r3, #60]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	r1, [r3, #76]
	str	ip, [r2, #72]
	str	ip, [r3, #72]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	bl	initHealthBar
	mov	r2, #16
	mov	r1, #2
	ldr	r3, .L122+8
	str	r4, [r3, #36]
	str	r4, [r3, #68]
	str	r1, [r3, #32]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L123:
	.align	2
.L122:
	.word	player
	.word	beast
	.word	beastBullet
	.size	initBattle, .-initBattle
	.align	2
	.global	drawHealthBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealthBar, %function
drawHealthBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #1
	ldr	r2, .L133
	ldr	r3, .L133+4
	ldr	r2, [r2, #76]
	ldr	r1, [r3, #76]
	push	{r4, r5, r6, r7, r8, r9, lr}
	lsl	r2, r2, #5
	ldr	lr, .L133+8
	add	r2, r2, #612
	add	r1, r1, #19
	ldr	r5, [lr]
	ldr	r3, .L133+12
	orr	r2, r2, #28672
	lsl	r1, r1, #21
	lsl	r2, r2, #16
	orr	r1, r1, #1879048192
	ldr	r4, .L133+16
	ldr	r7, .L133+20
	lsr	r2, r2, #16
	lsr	r1, r1, #16
	add	r3, r3, r5, lsl #3
.L130:
	ldr	ip, [r4], #4
	ldr	r6, [ip, #68]
	cmp	r6, #0
	add	r6, r0, r5
	beq	.L125
	ldrh	ip, [r3]
	cmp	r0, #2
	orr	ip, ip, #512
	strh	ip, [r3]	@ movhi
	bne	.L128
.L129:
	str	r6, [lr]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L125:
	cmp	r0, #1
	beq	.L132
	ldr	r8, [ip, #12]
	ldrb	r9, [ip, #8]	@ zero_extendqisi2
	and	ip, r8, r7
	orr	ip, ip, #16384
	orr	r8, r9, #16384
	cmp	r0, #2
	strh	ip, [r3, #2]	@ movhi
	strh	r8, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	beq	.L129
.L128:
	add	r0, r0, #1
	add	r3, r3, #8
	b	.L130
.L132:
	ldr	r6, [ip, #12]
	ldrb	r8, [ip, #8]	@ zero_extendqisi2
	and	ip, r6, r7
	orr	ip, ip, #16384
	orr	r6, r8, #16384
	strh	ip, [r3, #2]	@ movhi
	strh	r6, [r3]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	add	r0, r0, #1
	add	r3, r3, #8
	b	.L130
.L134:
	.align	2
.L133:
	.word	player
	.word	beast
	.word	shadowIndex
	.word	shadowOAM
	.word	.LANCHOR1
	.word	511
	.size	drawHealthBar, .-drawHealthBar
	.align	2
	.global	drawBattle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBattle, %function
drawBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	ldr	r3, .L137
	ldr	r4, .L137+4
	str	r2, [r3]
	bl	drawBP
	bl	drawBeast
	bl	drawHealthBar
	bl	drawBullet
	bl	drawBeastBullet
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L137+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	shadowIndex
	.word	DMANow
	.word	shadowOAM
	.size	drawBattle, .-drawBattle
	.global	beastFiring
	.global	fireBullet
	.comm	amulet,4,4
	.global	playerWon
	.comm	battleTimer,4,4
	.comm	beastBullet,80,4
	.comm	bullets,80,4
	.global	healthBars
	.comm	beastBar,80,4
	.comm	playerBar,80,4
	.comm	beast,80,4
	.comm	player,80,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	healthBars, %object
	.size	healthBars, 8
healthBars:
	.word	playerBar
	.word	beastBar
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	fireBullet, %object
	.size	fireBullet, 4
fireBullet:
	.space	4
	.type	beastFiring, %object
	.size	beastFiring, 4
beastFiring:
	.space	4
	.type	playerWon, %object
	.size	playerWon, 4
playerWon:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
