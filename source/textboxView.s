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
	.file	"textboxView.c"
	.text
	.align	2
	.global	initText
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initText, %function
initText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	textboxPal
	.size	initText, .-initText
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"You cannot go outside until\000"
	.align	2
.LC1:
	.ascii	"you have collected all the\000"
	.align	2
.LC2:
	.ascii	"potions\000"
	.align	2
.LC3:
	.ascii	"Press A\000"
	.align	2
.LC4:
	.ascii	"Would you like to enter\000"
	.align	2
.LC5:
	.ascii	"the room?\000"
	.align	2
.LC6:
	.ascii	"the library?\000"
	.align	2
.LC7:
	.ascii	"the potions lab?\000"
	.align	2
.LC8:
	.ascii	"the office?\000"
	.align	2
.LC9:
	.ascii	"Are you ready to go\000"
	.align	2
.LC10:
	.ascii	"outside?\000"
	.align	2
.LC11:
	.ascii	"the forest?\000"
	.align	2
.LC12:
	.ascii	"This painting has\000"
	.align	2
.LC13:
	.ascii	"been here a while\000"
	.align	2
.LC14:
	.ascii	"Press B\000"
	.align	2
.LC15:
	.ascii	"It looks so old and peeling\000"
	.align	2
.LC16:
	.ascii	"You reach out to touch it\000"
	.align	2
.LC17:
	.ascii	"At the last second it moves\000"
	.align	2
.LC18:
	.ascii	"and you notice something\000"
	.align	2
.LC19:
	.ascii	"shimmering behind it\000"
	.align	2
.LC20:
	.ascii	"You reach out to grab it\000"
	.align	2
.LC21:
	.ascii	"the cold object\000"
	.align	2
.LC22:
	.ascii	"You found your amulet!\000"
	.align	2
.LC23:
	.ascii	"This pumpkin is huge!!\000"
	.align	2
.LC24:
	.ascii	"She looks angry here\000"
	.align	2
.LC25:
	.ascii	"Would you like to enter the\000"
	.align	2
.LC26:
	.ascii	"hallway?\000"
	.align	2
.LC27:
	.ascii	"There are a variety of books\000"
	.align	2
.LC28:
	.ascii	"here\000"
	.align	2
.LC29:
	.ascii	"You found a strange note\000"
	.align	2
.LC30:
	.ascii	"Should I read it?...\000"
	.align	2
.LC31:
	.ascii	"Unfolding the piece of paper\000"
	.align	2
.LC32:
	.ascii	"you read what's written down\000"
	.align	2
.LC33:
	.ascii	"'What you seek can be found\000"
	.align	2
.LC34:
	.ascii	"in a place where a good book\000"
	.align	2
.LC35:
	.ascii	"lives.'\000"
	.align	2
.LC36:
	.ascii	"This plaque doesn't really\000"
	.align	2
.LC37:
	.ascii	"interest you\000"
	.align	2
.LC38:
	.ascii	"This bookshelf seems\000"
	.align	2
.LC39:
	.ascii	"a little dusty\000"
	.align	2
.LC40:
	.ascii	"You notice something\000"
	.align	2
.LC41:
	.ascii	"at the back\000"
	.align	2
.LC42:
	.ascii	"Reaching over you grab\000"
	.align	2
.LC43:
	.ascii	"a cold item\000"
	.align	2
.LC44:
	.ascii	"Wiping off the dust,\000"
	.align	2
.LC45:
	.ascii	"you inspect the item\000"
	.align	2
.LC46:
	.ascii	"You found a potion!\000"
	.align	2
.LC47:
	.ascii	"These books are arranged\000"
	.align	2
.LC48:
	.ascii	"strangely\000"
	.align	2
.LC49:
	.ascii	"The pattern seems important\000"
	.align	2
.LC50:
	.ascii	"Try to remember this pattern\000"
	.align	2
.LC51:
	.ascii	"BLUE\000"
	.align	2
.LC52:
	.ascii	"GREEN\000"
	.align	2
.LC53:
	.ascii	"RED\000"
	.align	2
.LC54:
	.ascii	"Why is this one open?\000"
	.align	2
.LC55:
	.ascii	"You reach up and search\000"
	.align	2
.LC56:
	.ascii	"around with your hand\000"
	.align	2
.LC57:
	.ascii	"You grab something cold\000"
	.align	2
.LC58:
	.ascii	"This is your desk\000"
	.align	2
.LC59:
	.ascii	"The cauldron is bubbling\000"
	.align	2
.LC60:
	.ascii	"You carefully lift the chest\000"
	.align	2
.LC61:
	.ascii	"open\000"
	.align	2
.LC62:
	.ascii	"Sticking your head in, you\000"
	.align	2
.LC63:
	.ascii	"almost fall in\000"
	.align	2
.LC64:
	.ascii	"You grab a piece of paper\000"
	.align	2
.LC65:
	.ascii	"What you seek may be located in\000"
	.align	2
.LC66:
	.ascii	"a high place where ingredients\000"
	.align	2
.LC67:
	.ascii	"are stored ready for mixing\000"
	.align	2
.LC68:
	.ascii	"This pattern seems familiar\000"
	.align	2
.LC69:
	.ascii	"You open each of the\000"
	.align	2
.LC70:
	.ascii	"drawers one...\000"
	.align	2
.LC71:
	.ascii	"by one and in\000"
	.align	2
.LC72:
	.ascii	"the last drawer...\000"
	.align	2
.LC73:
	.ascii	"school?\000"
	.align	2
.LC74:
	.ascii	"the barn?\000"
	.align	2
.LC75:
	.ascii	"Something taken from you is\000"
	.align	2
.LC76:
	.ascii	"hidden within these\000"
	.align	2
.LC77:
	.ascii	"pumpkins\000"
	.align	2
.LC78:
	.ascii	"You can't swim!\000"
	.align	2
.LC79:
	.ascii	"Better step away from\000"
	.align	2
.LC80:
	.ascii	"the pond.\000"
	.align	2
.LC81:
	.ascii	"You push your hand\000"
	.align	2
.LC82:
	.ascii	"into the pumpkin...\000"
	.align	2
.LC83:
	.ascii	"Your wand!\000"
	.align	2
.LC84:
	.ascii	"forest?\000"
	.align	2
.LC85:
	.ascii	"This looks a little creepy\000"
	.align	2
.LC86:
	.ascii	"Turning the doll\000"
	.align	2
.LC87:
	.ascii	"in your hands\000"
	.align	2
.LC88:
	.ascii	"You notice a zipper\000"
	.align	2
.LC89:
	.ascii	"on the back.\000"
	.align	2
.LC90:
	.ascii	"Unzipping it you see...\000"
	.align	2
.LC91:
	.ascii	"You find a key!\000"
	.align	2
.LC92:
	.ascii	"This should unlock\000"
	.align	2
.LC93:
	.ascii	"the stairs\000"
	.align	2
.LC94:
	.ascii	"Looks like someone slept in\000"
	.align	2
.LC95:
	.ascii	"this recently\000"
	.align	2
.LC96:
	.ascii	"This pumpkin is overgrown\000"
	.align	2
.LC97:
	.ascii	"How weird\000"
	.align	2
.LC98:
	.ascii	"Are you ready to\000"
	.align	2
.LC99:
	.ascii	"go up the stairs?\000"
	.align	2
.LC100:
	.ascii	"Do you have everything you need?\000"
	.align	2
.LC101:
	.ascii	"Press B to continue\000"
	.align	2
.LC102:
	.ascii	"Press A to return\000"
	.align	2
.LC103:
	.ascii	"You creak up the\000"
	.align	2
.LC104:
	.ascii	"stairs and call out\000"
	.align	2
.LC105:
	.ascii	"to your brother...\000"
	.align	2
.LC106:
	.ascii	"You can hear growling\000"
	.align	2
.LC107:
	.ascii	"coming from up the\000"
	.align	2
.LC108:
	.ascii	"stairs...\000"
	.align	2
.LC109:
	.ascii	"However you cannot go up\000"
	.align	2
.LC110:
	.ascii	"the stairs, they're locked.\000"
	.align	2
.LC111:
	.ascii	"Try and find the key!\000"
	.text
	.align	2
	.global	drawText
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawText, %function
drawText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L157
	push	{r4, r5, r6, lr}
	ldr	r0, .L157+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L157+8
	ldr	r3, [r3]
	cmp	r3, #2
	bgt	.L7
	ldr	r3, .L157+12
	ldr	r3, [r3]
	cmp	r3, #8
	beq	.L98
.L7:
	ldr	r3, .L157+16
	ldr	r4, [r3]
	cmp	r4, #0
	bne	.L8
	ldr	r5, .L157+12
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L99
	cmp	r4, #2
	beq	.L100
.L10:
	cmp	r4, #3
	beq	.L101
.L11:
	cmp	r4, #4
	beq	.L102
.L12:
	cmp	r4, #6
	beq	.L103
.L13:
	cmp	r4, #7
	beq	.L104
.L14:
	ldr	r3, .L157+20
	ldr	r3, [r3]
	cmp	r3, #16
	beq	.L105
.L15:
	cmp	r3, #8
	beq	.L54
	cmp	r3, #17
	beq	.L106
.L6:
	pop	{r4, r5, r6, lr}
	bx	lr
.L8:
	cmp	r4, #1
	beq	.L107
	cmp	r4, #2
	beq	.L108
	cmp	r4, #3
	beq	.L109
	cmp	r4, #4
	beq	.L110
	cmp	r4, #5
	beq	.L111
	cmp	r4, #7
	bne	.L6
	ldr	r3, .L157+20
	ldr	r3, [r3]
	cmp	r3, #15
	beq	.L112
	cmp	r3, #11
	beq	.L113
	cmp	r3, #10
	beq	.L114
	cmp	r3, #12
	beq	.L115
	cmp	r3, #14
	bne	.L6
	ldr	r3, .L157+24
	ldr	r3, [r3]
	ldr	r5, .L157+28
	cmp	r3, #0
	ldr	r4, [r5]
	beq	.L70
	cmp	r4, #1
	beq	.L116
.L71:
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L117
.L72:
	ldr	r3, [r5]
	cmp	r3, #3
	bne	.L6
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+32
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+36
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+40
.L97:
	mov	r1, #132
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #142
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	b	.L6
.L107:
	ldr	r3, .L157+20
	ldr	r5, [r3]
	cmp	r5, #15
	beq	.L33
	cmp	r5, #1
	beq	.L118
	cmp	r5, #2
	beq	.L119
	cmp	r5, #3
	bne	.L6
	mov	r3, r4
	ldr	r5, .L157+336
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+44
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+48
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r5
	b	.L6
.L105:
	ldr	r5, .L157+28
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L120
.L16:
	cmp	r4, #2
	beq	.L121
.L17:
	cmp	r4, #3
	beq	.L122
.L18:
	cmp	r4, #4
	beq	.L123
.L19:
	cmp	r4, #5
	beq	.L124
.L20:
	cmp	r4, #6
	bne	.L6
	mov	r3, #1
	ldr	r2, .L157+52
	b	.L94
.L98:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+56
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+60
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+64
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #142
	mov	r0, #32
	ldr	r2, .L157+68
	mov	lr, pc
	bx	r4
	b	.L7
.L99:
	mov	r3, r4
	ldr	r6, .L157+336
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+72
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+76
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+68
	mov	lr, pc
	bx	r6
	ldr	r4, [r5]
	cmp	r4, #2
	bne	.L10
.L100:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+72
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+80
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+68
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	cmp	r4, #3
	bne	.L11
.L101:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+72
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+84
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+68
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	cmp	r4, #4
	bne	.L12
.L102:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+72
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+88
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+68
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	cmp	r4, #6
	bne	.L13
.L103:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+92
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+96
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+68
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	cmp	r4, #7
	bne	.L14
.L104:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+72
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+100
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+68
	mov	lr, pc
	bx	r4
	ldr	r3, .L157+20
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L15
	b	.L105
.L109:
	ldr	r3, .L157+20
	ldr	r3, [r3]
	cmp	r3, #15
	beq	.L33
	cmp	r3, #6
	beq	.L125
	cmp	r3, #2
	beq	.L126
	cmp	r3, #5
	bne	.L6
	mov	r3, #1
	ldr	r2, .L157+104
	b	.L94
.L108:
	ldr	r3, .L157+20
	ldr	r3, [r3]
	cmp	r3, #15
	beq	.L33
	cmp	r3, #1
	beq	.L127
	cmp	r3, #4
	bne	.L6
	ldr	r5, .L157+28
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L128
.L39:
	cmp	r4, #2
	beq	.L129
.L40:
	cmp	r4, #3
	beq	.L130
.L41:
	cmp	r4, #4
	bne	.L6
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+108
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+112
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+116
	b	.L97
.L33:
	mov	r3, #1
	ldr	r2, .L157+120
	mov	r1, #112
	mov	r0, #32
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+124
.L95:
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+68
	mov	lr, pc
	bx	r4
	b	.L6
.L54:
	mov	r3, #1
	ldr	r2, .L157+128
.L94:
	ldr	r4, .L157+336
	mov	r1, #112
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	mov	r3, #1
	ldr	r2, .L157+132
	b	.L94
.L125:
	ldr	r5, .L157+28
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L131
.L44:
	cmp	r4, #2
	beq	.L132
.L45:
	cmp	r4, #3
	beq	.L133
.L46:
	cmp	r4, #4
	bne	.L6
.L47:
	mov	r3, #1
	ldr	r2, .L157+136
	b	.L94
.L110:
	ldr	r3, .L157+20
	ldr	r3, [r3]
	cmp	r3, #15
	beq	.L33
	cmp	r3, #7
	beq	.L134
	cmp	r3, #8
	beq	.L54
	cmp	r3, #13
	bne	.L6
	ldr	r5, .L157+28
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L135
.L55:
	cmp	r3, #2
	beq	.L136
.L56:
	cmp	r3, #3
	beq	.L137
.L57:
	cmp	r3, #4
	bne	.L6
	b	.L47
.L119:
	ldr	r5, .L157+28
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L138
.L29:
	cmp	r4, #2
	beq	.L139
.L30:
	cmp	r4, #3
	beq	.L140
.L31:
	cmp	r4, #4
	bne	.L6
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+140
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+144
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+148
	b	.L97
.L124:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+152
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+156
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L20
.L123:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+160
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+164
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+168
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #142
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L19
.L122:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+172
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L18
.L121:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+176
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L17
.L120:
	mov	r3, r4
	ldr	r6, .L157+336
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+180
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+184
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r6
	ldr	r4, [r5]
	b	.L16
.L111:
	ldr	r3, .L157+20
	ldr	r3, [r3]
	cmp	r3, #15
	beq	.L141
	cmp	r3, #9
	beq	.L142
	cmp	r3, #19
	beq	.L143
	cmp	r3, #18
	beq	.L144
	cmp	r3, #20
	bne	.L6
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+188
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+192
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+196
	b	.L97
.L127:
	ldr	r5, .L157+28
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L145
.L35:
	cmp	r4, #2
	beq	.L146
.L36:
	cmp	r4, #3
	beq	.L147
.L37:
	cmp	r4, #4
	beq	.L148
.L38:
	cmp	r4, #5
	bne	.L6
	b	.L47
.L118:
	mov	r3, r5
	ldr	r2, .L157+200
	mov	r1, #112
	mov	r0, #32
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L157+204
.L96:
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	b	.L6
.L134:
	ldr	r5, .L157+28
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L149
.L51:
	cmp	r4, #2
	beq	.L150
.L52:
	cmp	r4, #3
	beq	.L151
.L53:
	cmp	r4, #4
	bne	.L6
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+208
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+212
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+216
	b	.L97
.L126:
	mov	r3, #1
	ldr	r2, .L157+220
	b	.L94
.L139:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+224
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L30
.L138:
	mov	r3, r4
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+228
	ldr	r6, .L157+336
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r6
	ldr	r4, [r5]
	b	.L29
.L140:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+232
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+236
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L31
.L141:
	mov	r3, #1
	ldr	r2, .L157+120
	mov	r1, #112
	mov	r0, #32
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+240
	b	.L95
.L148:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+244
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+248
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L38
.L147:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+252
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+256
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L37
.L146:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+260
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+264
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L36
.L145:
	mov	r3, r4
	ldr	r6, .L157+336
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+268
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+272
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r6
	ldr	r4, [r5]
	b	.L35
.L113:
	ldr	r5, .L157+28
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L152
.L65:
	cmp	r3, #2
	beq	.L153
.L66:
	cmp	r3, #3
	beq	.L154
.L67:
	cmp	r3, #4
	bne	.L6
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+276
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+280
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+284
	b	.L97
.L142:
	mov	r3, #1
	ldr	r2, .L157+72
	mov	r1, #112
	mov	r0, #32
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+288
	b	.L95
.L112:
	mov	r3, #1
	ldr	r2, .L157+120
	mov	r1, #112
	mov	r0, #32
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+292
	b	.L95
.L143:
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+296
	ldr	r4, .L157+336
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+300
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+304
	b	.L97
.L129:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+308
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L40
.L128:
	mov	r3, r4
	ldr	r6, .L157+336
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+312
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+316
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r6
	ldr	r4, [r5]
	b	.L39
.L133:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+320
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L46
.L132:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+324
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+328
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L45
.L158:
	.align	2
.L157:
	.word	drawFullscreenImage4
	.word	textboxBitmap
	.word	potionFound
	.word	doorFlag
	.word	roomNumber
	.word	itemCheck
	.word	keyFound
	.word	bCounter
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC36
	.word	.LC37
	.word	.LC22
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC59
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC25
	.word	.LC26
	.word	.LC23
	.word	.LC24
	.word	.LC46
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC20
	.word	.LC21
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC16
	.word	.LC15
	.word	.LC12
	.word	.LC13
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC27
	.word	.LC28
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC58
	.word	.LC30
	.word	.LC29
	.word	.LC31
	.word	.LC32
	.word	.LC73
	.word	.LC44
	.word	.LC45
	.word	.LC42
	.word	.LC43
	.word	.LC40
	.word	.LC41
	.word	.LC38
	.word	.LC39
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC74
	.word	.LC84
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC49
	.word	.LC47
	.word	.LC48
	.word	.LC57
	.word	.LC55
	.word	.LC56
	.word	.LC54
	.word	drawString4
	.word	.LC50
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC64
	.word	.LC62
	.word	.LC63
	.word	.LC60
	.word	.LC61
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC68
	.word	.LC71
	.word	.LC72
	.word	.LC69
	.word	.LC70
	.word	.LC14
	.word	.LC111
	.word	.LC86
	.word	.LC87
	.word	.LC85
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC109
	.word	.LC110
	.word	drawString4
	.word	.LC106
	.word	.LC107
	.word	.LC108
	.word	.LC14
.L131:
	mov	r3, r4
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+332
	ldr	r6, .L157+336
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r6
	ldr	r4, [r5]
	b	.L44
.L130:
	ldr	r4, .L157+336
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+340
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L41
.L144:
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+344
	ldr	r4, .L157+472
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+348
	mov	r1, #122
	mov	r0, #32
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+352
	b	.L97
.L151:
	ldr	r4, .L157+472
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+356
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L53
.L150:
	ldr	r4, .L157+472
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+360
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+364
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L52
.L149:
	mov	r3, r4
	ldr	r6, .L157+472
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+368
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+372
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r6
	ldr	r4, [r5]
	b	.L51
.L114:
	mov	r3, #1
	ldr	r2, .L157+376
	mov	r1, #112
	mov	r0, #32
	ldr	r4, .L157+472
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+380
	b	.L96
.L115:
	mov	r3, #1
	ldr	r2, .L157+384
	mov	r1, #112
	mov	r0, #32
	ldr	r4, .L157+472
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L157+388
	b	.L96
.L135:
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+392
	ldr	r4, .L157+472
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	b	.L55
.L137:
	ldr	r4, .L157+472
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+396
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+400
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	b	.L57
.L136:
	ldr	r4, .L157+472
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+404
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+408
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+412
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	b	.L56
.L70:
	cmp	r4, #1
	beq	.L155
.L73:
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L156
.L74:
	ldr	r3, [r5]
	cmp	r3, #3
	bne	.L6
	mov	r3, #1
	ldr	r2, .L157+416
	b	.L94
.L153:
	ldr	r4, .L157+472
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+420
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+424
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+488
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	b	.L66
.L152:
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+428
	ldr	r4, .L157+472
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+488
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	b	.L65
.L154:
	ldr	r4, .L157+472
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+432
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+436
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+440
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #142
	mov	r0, #32
	ldr	r2, .L157+488
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	b	.L67
.L116:
	mov	r3, r4
	ldr	r6, .L157+472
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+444
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+448
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+488
	mov	lr, pc
	bx	r6
	b	.L71
.L117:
	ldr	r4, .L157+472
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+452
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+456
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+460
	mov	lr, pc
	bx	r4
	b	.L72
.L156:
	ldr	r4, .L157+472
	mov	r3, #1
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+464
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+468
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+488
	mov	lr, pc
	bx	r4
	b	.L74
.L155:
	ldr	r6, .L157+472
	mov	r3, r4
	mov	r1, #112
	mov	r0, #32
	ldr	r2, .L157+476
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #122
	mov	r0, #32
	ldr	r2, .L157+480
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #132
	mov	r0, #32
	ldr	r2, .L157+484
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #142
	mov	r0, #32
	ldr	r2, .L157+488
	mov	lr, pc
	bx	r6
	b	.L73
	.size	drawText, .-drawText
	.ident	"GCC: (devkitARM release 53) 9.1.0"
