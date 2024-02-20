	.file	"load.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.i2c_received,"ax",@progbits
.global	i2c_received
	.type	i2c_received, @function
i2c_received:
.LVL0:
.LFB3:
	.file 1 "load.c"
	.loc 1 28 42 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 5 view .LVU1
	.loc 1 29 12 is_stmt 0 view .LVU2
	lds r25,i2c_recv_index
	mov r30,r25
	ldi r31,0
	.loc 1 29 29 view .LVU3
	subi r30,lo8(-(data_pi))
	sbci r31,hi8(-(data_pi))
	st Z,r24
	.loc 1 30 5 is_stmt 1 view .LVU4
	.loc 1 30 19 is_stmt 0 view .LVU5
	ldi r24,lo8(1)
.LVL1:
	.loc 1 30 19 view .LVU6
	add r24,r25
	.loc 1 31 5 is_stmt 1 view .LVU7
	.loc 1 31 8 is_stmt 0 view .LVU8
	cpi r25,lo8(5)
	breq .L2
	.loc 1 30 19 view .LVU9
	sts i2c_recv_index,r24
	ret
.L2:
	.loc 1 31 30 is_stmt 1 discriminator 1 view .LVU10
	.loc 1 31 45 is_stmt 0 discriminator 1 view .LVU11
	sts i2c_recv_index,__zero_reg__
/* epilogue start */
	.loc 1 32 2 discriminator 1 view .LVU12
	ret
	.cfi_endproc
.LFE3:
	.size	i2c_received, .-i2c_received
	.section	.text.i2c_requested,"ax",@progbits
.global	i2c_requested
	.type	i2c_requested, @function
i2c_requested:
.LFB4:
	.loc 1 34 26 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 36 4 view .LVU14
	.loc 1 36 4 is_stmt 0 view .LVU15
	cbi 0x8,2
	.loc 1 36 14 is_stmt 1 view .LVU16
	.loc 1 37 5 view .LVU17
	lds r30,i2c_send_index
	ldi r31,0
	subi r30,lo8(-(data_po))
	sbci r31,hi8(-(data_po))
	ld r24,Z
.LVL2:
.LBB4:
.LBI4:
	.file 2 "i2c_peripheral.h"
	.loc 2 11 44 view .LVU18
.LBB5:
	.loc 2 13 2 view .LVU19
	.loc 2 13 7 is_stmt 0 view .LVU20
	sts 187,r24
.LVL3:
	.loc 2 13 7 view .LVU21
.LBE5:
.LBE4:
	.loc 1 38 5 is_stmt 1 view .LVU22
	.loc 1 38 19 is_stmt 0 view .LVU23
	lds r24,i2c_send_index
	ldi r25,lo8(1)
	add r25,r24
	.loc 1 39 5 is_stmt 1 view .LVU24
	.loc 1 39 8 is_stmt 0 view .LVU25
	cpi r24,lo8(4)
	breq .L5
	.loc 1 38 19 view .LVU26
	sts i2c_send_index,r25
	ret
.L5:
	.loc 1 39 30 is_stmt 1 discriminator 1 view .LVU27
	.loc 1 39 45 is_stmt 0 discriminator 1 view .LVU28
	sts i2c_send_index,__zero_reg__
/* epilogue start */
	.loc 1 40 1 discriminator 1 view .LVU29
	ret
	.cfi_endproc
.LFE4:
	.size	i2c_requested, .-i2c_requested
	.section	.text.delay_ms,"ax",@progbits
.global	delay_ms
	.type	delay_ms, @function
delay_ms:
.LVL4:
.LFB5:
	.loc 1 43 30 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 44 5 view .LVU31
	.loc 1 45 5 view .LVU32
	.loc 1 46 5 view .LVU33
	.loc 1 46 10 is_stmt 0 view .LVU34
	movw r18,r24
	ldi r26,lo8(125)
	ldi r27,0
	call __umulhisi3
.LVL5:
	.loc 1 47 5 is_stmt 1 view .LVU35
.L8:
	.loc 1 47 10 view .LVU36
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L9
/* epilogue start */
	.loc 1 51 1 is_stmt 0 view .LVU37
	ret
.L9:
	.loc 1 48 10 is_stmt 1 view .LVU38
/* #APP */
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 30 view .LVU39
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 50 view .LVU40
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 70 view .LVU41
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 90 view .LVU42
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 110 view .LVU43
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 130 view .LVU44
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 150 view .LVU45
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 171 view .LVU46
	.loc 1 48 173 view .LVU47
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 193 view .LVU48
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 213 view .LVU49
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 233 view .LVU50
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 253 view .LVU51
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 273 view .LVU52
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 293 view .LVU53
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 313 view .LVU54
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 334 view .LVU55
	.loc 1 48 336 view .LVU56
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 356 view .LVU57
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 376 view .LVU58
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 396 view .LVU59
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 416 view .LVU60
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 436 view .LVU61
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 456 view .LVU62
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 476 view .LVU63
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 497 view .LVU64
	.loc 1 48 499 view .LVU65
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 519 view .LVU66
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 539 view .LVU67
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 559 view .LVU68
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 579 view .LVU69
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 599 view .LVU70
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 619 view .LVU71
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 639 view .LVU72
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 660 view .LVU73
	.loc 1 48 662 view .LVU74
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 682 view .LVU75
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 702 view .LVU76
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 722 view .LVU77
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 742 view .LVU78
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 762 view .LVU79
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 782 view .LVU80
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 802 view .LVU81
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 823 view .LVU82
	.loc 1 48 825 view .LVU83
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 845 view .LVU84
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 865 view .LVU85
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 885 view .LVU86
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 905 view .LVU87
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 925 view .LVU88
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 945 view .LVU89
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 965 view .LVU90
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 986 view .LVU91
	.loc 1 48 988 view .LVU92
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1008 view .LVU93
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1028 view .LVU94
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1048 view .LVU95
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1068 view .LVU96
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1088 view .LVU97
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1108 view .LVU98
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1128 view .LVU99
 ;  48 "load.c" 1
	nop
 ;  0 "" 2
	.loc 1 48 1149 view .LVU100
	.loc 1 49 9 view .LVU101
	.loc 1 49 13 is_stmt 0 view .LVU102
/* #NOAPP */
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
.LVL6:
	.loc 1 49 13 view .LVU103
	rjmp .L8
	.cfi_endproc
.LFE5:
	.size	delay_ms, .-delay_ms
	.section	.text.read_adc,"ax",@progbits
.global	read_adc
	.type	read_adc, @function
read_adc:
.LFB6:
	.loc 1 53 21 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 54 5 view .LVU105
.LVL7:
	.loc 1 55 5 view .LVU106
	.loc 1 56 5 view .LVU107
	.loc 1 57 5 view .LVU108
	.loc 1 57 18 view .LVU109
	.loc 1 60 8 view .LVU110
	.loc 1 60 14 is_stmt 0 view .LVU111
	sts 124,__zero_reg__
	.loc 1 61 8 is_stmt 1 view .LVU112
	.loc 1 61 15 is_stmt 0 view .LVU113
	ldi r24,lo8(-42)
	sts 122,r24
	.loc 1 62 9 is_stmt 1 view .LVU114
.L11:
	.loc 1 62 34 view .LVU115
	.loc 1 62 14 view .LVU116
	.loc 1 62 17 is_stmt 0 view .LVU117
	lds r24,122
	.loc 1 62 14 view .LVU118
	sbrs r24,4
	rjmp .L11
	.loc 1 63 9 is_stmt 1 view .LVU119
	.loc 1 63 11 is_stmt 0 view .LVU120
	lds r24,120
	lds r25,120+1
.LVL8:
	.loc 1 66 9 is_stmt 1 view .LVU121
	.loc 1 67 9 view .LVU122
	.loc 1 68 9 view .LVU123
	.loc 1 69 9 view .LVU124
	.loc 1 70 8 view .LVU125
/* #APP */
 ;  70 "load.c" 1
	cli
 ;  0 "" 2
	.loc 1 71 9 view .LVU126
	.loc 1 72 9 view .LVU127
	.loc 1 71 21 is_stmt 0 view .LVU128
/* #NOAPP */
	sts data_po+1+1,r25
	sts data_po+1,r24
	.loc 1 73 8 is_stmt 1 view .LVU129
/* #APP */
 ;  73 "load.c" 1
	sei
 ;  0 "" 2
	.loc 1 57 26 view .LVU130
.LVL9:
	.loc 1 57 18 view .LVU131
	.loc 1 60 8 view .LVU132
	.loc 1 60 14 is_stmt 0 view .LVU133
/* #NOAPP */
	ldi r24,lo8(1)
.LVL10:
	.loc 1 60 14 view .LVU134
	sts 124,r24
	.loc 1 61 8 is_stmt 1 view .LVU135
	.loc 1 61 15 is_stmt 0 view .LVU136
	ldi r24,lo8(-42)
	sts 122,r24
	.loc 1 62 9 is_stmt 1 view .LVU137
.L12:
	.loc 1 62 34 view .LVU138
	.loc 1 62 14 view .LVU139
	.loc 1 62 17 is_stmt 0 view .LVU140
	lds r24,122
	.loc 1 62 14 view .LVU141
	sbrs r24,4
	rjmp .L12
	.loc 1 63 9 is_stmt 1 view .LVU142
	.loc 1 63 11 is_stmt 0 view .LVU143
	lds r24,120
	lds r25,120+1
.LVL11:
	.loc 1 66 9 is_stmt 1 view .LVU144
	.loc 1 67 9 view .LVU145
	.loc 1 68 9 view .LVU146
	.loc 1 69 9 view .LVU147
	.loc 1 70 8 view .LVU148
/* #APP */
 ;  70 "load.c" 1
	cli
 ;  0 "" 2
	.loc 1 71 9 view .LVU149
	.loc 1 72 9 view .LVU150
	.loc 1 71 21 is_stmt 0 view .LVU151
/* #NOAPP */
	sts data_po+3+1,r25
	sts data_po+3,r24
	.loc 1 73 8 is_stmt 1 view .LVU152
/* #APP */
 ;  73 "load.c" 1
	sei
 ;  0 "" 2
	.loc 1 57 26 view .LVU153
.LVL12:
	.loc 1 57 18 view .LVU154
/* #NOAPP */
/* epilogue start */
	.loc 1 75 1 is_stmt 0 view .LVU155
	ret
	.cfi_endproc
.LFE6:
	.size	read_adc, .-read_adc
	.section	.text.set_leds,"ax",@progbits
.global	set_leds
	.type	set_leds, @function
set_leds:
.LFB7:
	.loc 1 77 21 is_stmt 1 view -0
	.cfi_startproc
	push r28
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 78 5 view .LVU157
	call apa102_start
.LVL13:
	.loc 1 79 5 view .LVU158
.LBB6:
	.loc 1 79 10 view .LVU159
	.loc 1 79 25 view .LVU160
	.loc 1 80 9 view .LVU161
	ldi r28,lo8(data_pi)
	ldi r29,hi8(data_pi)
	ldd r20,Y+2
	ldd r22,Y+1
	ld r24,Y
	call apa102_set_led
.LVL14:
	.loc 1 79 32 view .LVU162
	.loc 1 79 25 view .LVU163
	.loc 1 80 9 view .LVU164
	ldd r20,Y+5
	ldd r22,Y+4
	ldd r24,Y+3
	call apa102_set_led
.LVL15:
	.loc 1 79 32 view .LVU165
	.loc 1 79 25 view .LVU166
.LBE6:
	.loc 1 82 5 view .LVU167
/* epilogue start */
	.loc 1 83 1 is_stmt 0 view .LVU168
	pop r29
	pop r28
	.loc 1 82 5 view .LVU169
	jmp apa102_end
.LVL16:
	.cfi_endproc
.LFE7:
	.size	set_leds, .-set_leds
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB8:
	.loc 1 85 16 is_stmt 1 view -0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 88 4 view .LVU171
	.loc 1 88 9 is_stmt 0 view .LVU172
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 89 4 is_stmt 1 view .LVU173
	.loc 1 89 9 is_stmt 0 view .LVU174
	in r24,0x35
	ori r24,lo8(-128)
	out 0x35,r24
	.loc 1 91 5 is_stmt 1 view .LVU175
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL17:
	.loc 1 94 4 view .LVU176
	.loc 1 94 9 is_stmt 0 view .LVU177
	in r24,0xa
	andi r24,lo8(-16)
	out 0xa,r24
	.loc 1 95 4 is_stmt 1 view .LVU178
	.loc 1 95 10 is_stmt 0 view .LVU179
	in r24,0xb
	ori r24,lo8(15)
	out 0xb,r24
	.loc 1 98 4 is_stmt 1 view .LVU180
	.loc 1 98 9 is_stmt 0 view .LVU181
	sbi 0x7,2
	.loc 1 99 4 is_stmt 1 view .LVU182
	.loc 1 99 4 is_stmt 0 view .LVU183
	cbi 0x8,2
	.loc 1 99 14 is_stmt 1 view .LVU184
	.loc 1 102 5 view .LVU185
	call apa102_init
.LVL18:
	.loc 1 105 5 view .LVU186
	ldi r22,lo8(gs(i2c_requested))
	ldi r23,hi8(gs(i2c_requested))
	ldi r24,lo8(gs(i2c_received))
	ldi r25,hi8(gs(i2c_received))
	call i2c_setCallbacks
.LVL19:
	.loc 1 106 5 view .LVU187
	ldi r24,lo8(16)
	call i2c_init
.LVL20:
	.loc 1 108 4 view .LVU188
/* #APP */
 ;  108 "load.c" 1
	sei
 ;  0 "" 2
	.loc 1 110 5 view .LVU189
/* #NOAPP */
.LBB7:
	.loc 1 110 10 view .LVU190
.LVL21:
	.loc 1 110 21 view .LVU191
.LBE7:
	.loc 1 108 4 is_stmt 0 view .LVU192
	ldi r28,0
.LVL22:
.L19:
.LBB8:
	.loc 1 111 9 is_stmt 1 discriminator 3 view .LVU193
	ldi r20,lo8(6)
	mov r22,r28
	ldi r24,lo8(6)
	call apa102_set_all_leds
.LVL23:
	.loc 1 111 43 discriminator 3 view .LVU194
	ldi r24,lo8(30)
	ldi r25,0
	call delay_ms
.LVL24:
	.loc 1 110 28 discriminator 3 view .LVU195
	.loc 1 110 21 discriminator 3 view .LVU196
	subi r28,lo8(-(1))
	.loc 1 110 5 is_stmt 0 discriminator 3 view .LVU197
	cpi r28,lo8(50)
	brne .L19
	ldi r28,0
.L20:
.LBE8:
.LBB9:
	.loc 1 114 9 is_stmt 1 discriminator 3 view .LVU198
	mov r20,r28
	ldi r22,lo8(3)
	ldi r24,lo8(3)
	call apa102_set_all_leds
.LVL25:
	.loc 1 114 43 discriminator 3 view .LVU199
	ldi r24,lo8(30)
	ldi r25,0
	call delay_ms
.LVL26:
	.loc 1 113 28 discriminator 3 view .LVU200
	.loc 1 113 21 discriminator 3 view .LVU201
	subi r28,lo8(-(1))
	.loc 1 113 5 is_stmt 0 discriminator 3 view .LVU202
	cpi r28,lo8(50)
	brne .L20
	ldi r28,0
.L21:
.LBE9:
.LBB10:
	.loc 1 117 9 is_stmt 1 discriminator 3 view .LVU203
	mov r20,r28
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call apa102_set_all_leds
.LVL27:
	.loc 1 117 43 discriminator 3 view .LVU204
	ldi r24,lo8(30)
	ldi r25,0
	call delay_ms
.LVL28:
	.loc 1 116 28 discriminator 3 view .LVU205
	.loc 1 116 21 discriminator 3 view .LVU206
	subi r28,lo8(-(1))
	.loc 1 116 5 is_stmt 0 discriminator 3 view .LVU207
	cpi r28,lo8(50)
	brne .L21
.LBE10:
	.loc 1 120 13 view .LVU208
	ldi r17,0
.LBB11:
.LBB12:
	.loc 1 151 39 view .LVU209
	ldi r16,lo8(25)
.LBE12:
.LBE11:
.LBB15:
.LBB16:
	.loc 1 165 43 view .LVU210
	ldi r28,lo8(1)
	ldi r29,0
.L34:
.LVL29:
	.loc 1 165 43 view .LVU211
.LBE16:
.LBE15:
	.loc 1 122 5 is_stmt 1 view .LVU212
	.loc 1 125 9 view .LVU213
	.loc 1 125 12 is_stmt 0 view .LVU214
	cpi r17,lo8(10)
	brsh .+2
	rjmp .L22
	.loc 1 126 13 is_stmt 1 view .LVU215
.LVL30:
	.loc 1 128 13 view .LVU216
	call set_leds
.LVL31:
	.loc 1 131 13 view .LVU217
	call read_adc
.LVL32:
	.loc 1 126 22 is_stmt 0 view .LVU218
	ldi r17,0
.LVL33:
.L23:
	.loc 1 135 9 is_stmt 1 view .LVU219
.LBB18:
	.loc 1 135 14 view .LVU220
	.loc 1 135 29 view .LVU221
	ldi r30,lo8(debounce_timer)
	ldi r31,hi8(debounce_timer)
.LBE18:
	.loc 1 126 22 is_stmt 0 view .LVU222
	ldi r19,0
	ldi r18,0
	ldi r20,0
.LVL34:
.L30:
.LBB19:
	.loc 1 138 13 is_stmt 1 view .LVU223
	.loc 1 138 31 is_stmt 0 view .LVU224
	ld r24,Z+
	.loc 1 138 16 view .LVU225
	cpse r24,__zero_reg__
	rjmp .L24
.LBB13:
	.loc 1 140 17 is_stmt 1 view .LVU226
.LVL35:
	.loc 1 143 17 view .LVU227
	.loc 1 143 20 is_stmt 0 view .LVU228
	cpse r18,__zero_reg__
	rjmp .L25
	.loc 1 143 29 is_stmt 1 discriminator 1 view .LVU229
	.loc 1 143 46 is_stmt 0 discriminator 1 view .LVU230
	in r24,0x9
	.loc 1 143 33 discriminator 1 view .LVU231
	andi r24,lo8(1)
.LVL36:
	.loc 1 144 17 is_stmt 1 discriminator 1 view .LVU232
.L28:
	.loc 1 149 17 view .LVU233
	movw r26,r18
	subi r26,lo8(-(buttons))
	sbci r27,hi8(-(buttons))
	.loc 1 149 20 is_stmt 0 view .LVU234
	ld r25,X
	cp r25,r24
	breq .L29
	.loc 1 150 21 is_stmt 1 view .LVU235
	.loc 1 150 32 is_stmt 0 view .LVU236
	st X,r24
	.loc 1 151 21 is_stmt 1 view .LVU237
	.loc 1 151 39 is_stmt 0 view .LVU238
	movw r26,r30
	sbiw r26,1
	st X,r16
	.loc 1 152 21 is_stmt 1 view .LVU239
.LVL37:
	.loc 1 152 36 is_stmt 0 view .LVU240
	ldi r20,lo8(1)
.LVL38:
.L29:
	.loc 1 152 36 view .LVU241
.LBE13:
	.loc 1 135 36 is_stmt 1 discriminator 2 view .LVU242
	.loc 1 135 29 discriminator 2 view .LVU243
	subi r18,-1
	sbci r19,-1
.LVL39:
	.loc 1 135 9 is_stmt 0 discriminator 2 view .LVU244
	cpi r18,4
	cpc r19,__zero_reg__
	brne .L30
.LVL40:
	.loc 1 135 9 discriminator 2 view .LVU245
.LBE19:
	.loc 1 160 9 is_stmt 1 view .LVU246
	.loc 1 160 12 is_stmt 0 view .LVU247
	tst r20
	breq .L31
	.loc 1 160 12 view .LVU248
	ldi r30,lo8(buttons)
	ldi r31,hi8(buttons)
	ldi r25,0
	ldi r24,0
.LBB20:
	.loc 1 163 17 view .LVU249
	ldi r18,0
.L33:
.LVL41:
.LBB17:
	.loc 1 165 17 is_stmt 1 view .LVU250
	.loc 1 165 28 is_stmt 0 view .LVU251
	ld r19,Z+
	.loc 1 165 20 view .LVU252
	tst r19
	breq .L32
	.loc 1 165 33 is_stmt 1 discriminator 1 view .LVU253
	.loc 1 165 43 is_stmt 0 discriminator 1 view .LVU254
	movw r20,r28
	mov r0,r24
	rjmp 2f
	1:
	lsl r20
	2:
	dec r0
	brpl 1b
	.loc 1 165 38 discriminator 1 view .LVU255
	or r18,r20
.LVL42:
.L32:
	.loc 1 164 40 is_stmt 1 discriminator 2 view .LVU256
	.loc 1 164 33 discriminator 2 view .LVU257
	adiw r24,1
.LVL43:
	.loc 1 164 13 is_stmt 0 discriminator 2 view .LVU258
	cpi r24,4
	cpc r25,__zero_reg__
	brne .L33
	.loc 1 164 13 discriminator 2 view .LVU259
.LBE17:
	.loc 1 167 13 is_stmt 1 view .LVU260
	.loc 1 167 24 is_stmt 0 view .LVU261
	sts data_po,r18
	.loc 1 169 12 is_stmt 1 view .LVU262
	.loc 1 169 12 is_stmt 0 view .LVU263
	sbi 0x8,2
	.loc 1 169 21 is_stmt 1 view .LVU264
	.loc 1 170 13 view .LVU265
.LVL44:
.L31:
	.loc 1 170 13 is_stmt 0 view .LVU266
.LBE20:
	.loc 1 173 9 is_stmt 1 view .LVU267
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL45:
	.loc 1 122 10 view .LVU268
	.loc 1 125 12 is_stmt 0 view .LVU269
	rjmp .L34
.LVL46:
.L22:
	.loc 1 133 14 is_stmt 1 view .LVU270
	.loc 1 133 22 is_stmt 0 view .LVU271
	subi r17,lo8(-(1))
.LVL47:
	.loc 1 133 22 view .LVU272
	rjmp .L23
.LVL48:
.L25:
.LBB21:
.LBB14:
	.loc 1 144 17 is_stmt 1 view .LVU273
	.loc 1 144 20 is_stmt 0 view .LVU274
	cpi r18,lo8(1)
	brne .L26
	.loc 1 144 29 is_stmt 1 discriminator 1 view .LVU275
	.loc 1 144 36 is_stmt 0 discriminator 1 view .LVU276
	in r24,0x9
	.loc 1 144 33 discriminator 1 view .LVU277
	lsr r24
	andi r24,1
.LVL49:
	.loc 1 145 17 is_stmt 1 discriminator 1 view .LVU278
	rjmp .L28
.LVL50:
.L26:
	.loc 1 145 17 view .LVU279
	.loc 1 145 20 is_stmt 0 view .LVU280
	cpi r18,lo8(2)
	brne .L27
	.loc 1 145 29 is_stmt 1 discriminator 1 view .LVU281
	.loc 1 145 36 is_stmt 0 discriminator 1 view .LVU282
	in r24,0x9
.LVL51:
	.loc 1 145 33 discriminator 1 view .LVU283
	bst r24,2
	clr r24
	bld r24,0
.LVL52:
	.loc 1 146 17 is_stmt 1 discriminator 1 view .LVU284
	rjmp .L28
.L27:
	.loc 1 146 17 view .LVU285
	.loc 1 146 20 is_stmt 0 view .LVU286
	cpi r18,lo8(3)
	brne .L28
	.loc 1 146 29 is_stmt 1 discriminator 1 view .LVU287
	.loc 1 146 36 is_stmt 0 discriminator 1 view .LVU288
	in r24,0x9
.LVL53:
	.loc 1 146 33 discriminator 1 view .LVU289
	bst r24,3
	clr r24
	bld r24,0
.LVL54:
	.loc 1 146 33 discriminator 1 view .LVU290
	rjmp .L28
.LVL55:
.L24:
	.loc 1 146 33 discriminator 1 view .LVU291
.LBE14:
	.loc 1 156 17 is_stmt 1 view .LVU292
	.loc 1 156 34 is_stmt 0 view .LVU293
	movw r26,r30
	sbiw r26,1
	subi r24,lo8(-(-1))
	st X,r24
	rjmp .L29
.LBE21:
	.cfi_endproc
.LFE8:
	.size	main, .-main
.global	data_pi
	.section	.bss.data_pi,"aw",@nobits
	.type	data_pi, @object
	.size	data_pi, 6
data_pi:
	.zero	6
.global	buttons
	.section	.data.buttons,"aw"
	.type	buttons, @object
	.size	buttons, 4
buttons:
	.ascii	"\001\001\001\001"
.global	debounce_timer
	.section	.bss.debounce_timer,"aw",@nobits
	.type	debounce_timer, @object
	.size	debounce_timer, 4
debounce_timer:
	.zero	4
.global	data_po
	.section	.data.data_po,"aw"
	.type	data_po, @object
	.size	data_po, 5
data_po:
	.string	"\377"
	.string	""
	.string	""
	.string	""
	.text
.Letext0:
	.file 3 "/usr/local/Cellar/avr-gcc@9/9.3.0_3/avr/include/stdint.h"
	.file 4 "apa102.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x516
	.word	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF32
	.byte	0xc
	.long	.LASF33
	.long	.LASF34
	.long	.Ldebug_ranges0+0x90
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x7e
	.byte	0x16
	.long	0x38
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x80
	.byte	0x16
	.long	0x52
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
	.byte	0x82
	.byte	0x16
	.long	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.long	0x2c
	.long	0x91
	.uleb128 0x6
	.long	0x52
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.long	0x81
	.uleb128 0x5
	.byte	0x3
	.long	data_po
	.uleb128 0x5
	.long	0x2c
	.long	0xb3
	.uleb128 0x6
	.long	0x52
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.long	0xa3
	.uleb128 0x5
	.byte	0x3
	.long	debounce_timer
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.long	0xa3
	.uleb128 0x5
	.byte	0x3
	.long	buttons
	.uleb128 0x5
	.long	0x2c
	.long	0xe7
	.uleb128 0x6
	.long	0x52
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x16
	.byte	0x9
	.long	0xd7
	.uleb128 0x5
	.byte	0x3
	.long	data_pi
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0x19
	.byte	0x10
	.long	0x2c
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.long	0x2c
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.long	0x3f
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x327
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x78
	.byte	0xd
	.long	0x2c
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x79
	.byte	0xd
	.long	0x2c
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xb
	.long	.Ldebug_ranges0+0
	.long	0x1a1
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.byte	0xe
	.long	0x3f
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0xd
	.long	.LVL23
	.long	0x4c5
	.long	0x18c
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x36
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0xf
	.long	.LVL24
	.long	0x408
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LBB9
	.long	.LBE9-.LBB9
	.long	0x1eb
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x71
	.byte	0xe
	.long	0x3f
	.uleb128 0xd
	.long	.LVL25
	.long	0x4c5
	.long	0x1d6
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x33
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x33
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL26
	.long	0x408
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LBB10
	.long	.LBE10-.LBB10
	.long	0x235
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.long	0x3f
	.uleb128 0xd
	.long	.LVL27
	.long	0x4c5
	.long	0x220
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x1
	.byte	0x31
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL28
	.long	0x408
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.Ldebug_ranges0+0x18
	.long	0x26b
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x87
	.byte	0x16
	.long	0x2c
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x40
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x8c
	.byte	0x19
	.long	0x2c
	.long	.LLST14
	.long	.LVUS14
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.Ldebug_ranges0+0x60
	.long	0x2a1
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0xa2
	.byte	0x15
	.long	0x2c
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x78
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.byte	0x1a
	.long	0x2c
	.long	.LLST16
	.long	.LVUS16
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LVL17
	.long	0x408
	.long	0x2b9
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.long	.LVL18
	.long	0x4d1
	.uleb128 0xd
	.long	.LVL19
	.long	0x4dd
	.long	0x2ec
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x3
	.long	i2c_received
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x3
	.long	i2c_requested
	.byte	0
	.uleb128 0xd
	.long	.LVL20
	.long	0x4e9
	.long	0x2ff
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.long	.LVL31
	.long	0x327
	.uleb128 0x13
	.long	.LVL32
	.long	0x382
	.uleb128 0xf
	.long	.LVL45
	.long	0x408
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF19
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x382
	.uleb128 0x10
	.long	.LBB6
	.long	.LBE6-.LBB6
	.long	0x36f
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.byte	0x12
	.long	0x2c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x13
	.long	.LVL14
	.long	0x4f5
	.uleb128 0x13
	.long	.LVL15
	.long	0x4f5
	.byte	0
	.uleb128 0x13
	.long	.LVL13
	.long	0x501
	.uleb128 0x15
	.long	.LVL16
	.long	0x50d
	.byte	0
	.uleb128 0x14
	.long	.LASF20
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x408
	.uleb128 0xc
	.string	"ch"
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.long	0x2c
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.long	0x46
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0xc
	.string	"h"
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.long	0x2c
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xc
	.string	"l"
	.byte	0x1
	.byte	0x38
	.byte	0xf
	.long	0x2c
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xc
	.string	"ih"
	.byte	0x1
	.byte	0x38
	.byte	0x11
	.long	0x2c
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xc
	.string	"il"
	.byte	0x1
	.byte	0x38
	.byte	0x15
	.long	0x2c
	.long	.LLST8
	.long	.LVUS8
	.byte	0
	.uleb128 0x14
	.long	.LASF21
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x446
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x2b
	.byte	0x18
	.long	0x46
	.uleb128 0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.long	0x60
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.uleb128 0x14
	.long	.LASF23
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x480
	.uleb128 0x17
	.long	0x4ab
	.long	.LBI4
	.byte	.LVU18
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.uleb128 0x18
	.long	0x4b8
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF24
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ab
	.uleb128 0x19
	.long	.LASF37
	.byte	0x1
	.byte	0x1c
	.byte	0x1b
	.long	0x2c
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x1a
	.long	.LASF38
	.byte	0x2
	.byte	0xb
	.byte	0x2c
	.byte	0x3
	.long	0x4c5
	.uleb128 0x1b
	.long	.LASF39
	.byte	0x2
	.byte	0xb
	.byte	0x45
	.long	0x2c
	.byte	0
	.uleb128 0x1c
	.long	.LASF25
	.long	.LASF25
	.byte	0x4
	.byte	0xf
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF26
	.long	.LASF26
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF27
	.long	.LASF27
	.byte	0x2
	.byte	0x9
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF28
	.long	.LASF28
	.byte	0x2
	.byte	0x7
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF29
	.long	.LASF29
	.byte	0x4
	.byte	0xe
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF30
	.long	.LASF30
	.byte	0x4
	.byte	0xc
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF31
	.long	.LASF31
	.byte	0x4
	.byte	0xd
	.byte	0x6
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS10:
	.uleb128 .LVU211
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 0
.LLST10:
	.long	.LVL29
	.long	.LVL30
	.word	0x1
	.byte	0x61
	.long	.LVL30
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LFE8
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LVUS11:
	.uleb128 .LVU211
	.uleb128 .LVU223
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU266
	.uleb128 .LVU273
.LLST11:
	.long	.LVL29
	.long	.LVL34
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL44
	.long	.LVL48
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS12:
	.uleb128 .LVU191
	.uleb128 .LVU193
.LLST12:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LVUS13:
	.uleb128 .LVU221
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU270
	.uleb128 .LVU273
	.uleb128 0
.LLST13:
	.long	.LVL33
	.long	.LVL34
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34
	.long	.LVL38
	.word	0x1
	.byte	0x62
	.long	.LVL38
	.long	.LVL39
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.word	0x1
	.byte	0x62
	.long	.LVL40
	.long	.LVL46
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL48
	.long	.LFE8
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS14:
	.uleb128 .LVU227
	.uleb128 .LVU232
	.uleb128 .LVU232
	.uleb128 .LVU241
	.uleb128 .LVU273
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU284
	.uleb128 .LVU284
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU291
.LLST14:
	.long	.LVL35
	.long	.LVL36
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL36
	.long	.LVL38
	.word	0x1
	.byte	0x68
	.long	.LVL48
	.long	.LVL49
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL49
	.long	.LVL51
	.word	0x1
	.byte	0x68
	.long	.LVL51
	.long	.LVL52
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x68
	.long	.LVL53
	.long	.LVL54
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS15:
	.uleb128 .LVU250
	.uleb128 .LVU266
.LLST15:
	.long	.LVL41
	.long	.LVL44
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LVUS16:
	.uleb128 .LVU250
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 .LVU266
.LLST16:
	.long	.LVL41
	.long	.LVL42
	.word	0x1
	.byte	0x68
	.long	.LVL42
	.long	.LVL43
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS9:
	.uleb128 .LVU160
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 0
.LLST9:
	.long	.LVL13
	.long	.LVL14
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL15
	.long	.LFE7
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LVUS3:
	.uleb128 .LVU106
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 0
.LLST3:
	.long	.LVL7
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL12
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL12
	.long	.LFE6
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LVUS4:
	.uleb128 .LVU121
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 0
.LLST4:
	.long	.LVL8
	.long	.LVL10
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11
	.word	0x5
	.byte	0x3
	.long	data_po+1
	.long	.LVL11
	.long	.LFE6
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LVUS5:
	.uleb128 .LVU123
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 0
.LLST5:
	.long	.LVL8
	.long	.LVL10
	.word	0x1
	.byte	0x69
	.long	.LVL10
	.long	.LVL11
	.word	0x5
	.byte	0x3
	.long	data_po+2
	.long	.LVL11
	.long	.LFE6
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LVUS6:
	.uleb128 .LVU122
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 0
.LLST6:
	.long	.LVL8
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	.LVL10
	.long	.LVL11
	.word	0x5
	.byte	0x3
	.long	data_po+1
	.long	.LVL11
	.long	.LFE6
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS7:
	.uleb128 .LVU125
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST7:
	.long	.LVL8
	.long	.LVL11
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL11
	.long	.LFE6
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LVUS8:
	.uleb128 .LVU124
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 0
.LLST8:
	.long	.LVL8
	.long	.LVL11
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL11
	.long	.LFE6
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LVUS2:
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x7
	.byte	0x88
	.sleb128 0
	.byte	0xa
	.word	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL5
	.long	.LFE5
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LVUS1:
	.uleb128 .LVU18
	.uleb128 .LVU21
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LFE3
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB7
	.long	.LBE7
	.long	.LBB8
	.long	.LBE8
	.long	0
	.long	0
	.long	.LBB11
	.long	.LBE11
	.long	.LBB18
	.long	.LBE18
	.long	.LBB19
	.long	.LBE19
	.long	.LBB21
	.long	.LBE21
	.long	0
	.long	0
	.long	.LBB12
	.long	.LBE12
	.long	.LBB13
	.long	.LBE13
	.long	.LBB14
	.long	.LBE14
	.long	0
	.long	0
	.long	.LBB15
	.long	.LBE15
	.long	.LBB20
	.long	.LBE20
	.long	0
	.long	0
	.long	.LBB16
	.long	.LBE16
	.long	.LBB17
	.long	.LBE17
	.long	0
	.long	0
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"apa102_init"
.LASF17:
	.string	"button_changed"
.LASF12:
	.string	"buttons"
.LASF27:
	.string	"i2c_setCallbacks"
.LASF19:
	.string	"set_leds"
.LASF18:
	.string	"tmp0"
.LASF20:
	.string	"read_adc"
.LASF39:
	.string	"data"
.LASF25:
	.string	"apa102_set_all_leds"
.LASF1:
	.string	"unsigned char"
.LASF21:
	.string	"delay_ms"
.LASF7:
	.string	"long unsigned int"
.LASF13:
	.string	"data_pi"
.LASF16:
	.string	"ms_count"
.LASF28:
	.string	"i2c_init"
.LASF10:
	.string	"data_po"
.LASF11:
	.string	"debounce_timer"
.LASF35:
	.string	"main"
.LASF32:
	.string	"GNU C99 9.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu99 -funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums -ffunction-sections -fdata-sections"
.LASF38:
	.string	"i2c_transmitByte"
.LASF14:
	.string	"i2c_recv_index"
.LASF34:
	.string	"/Users/owen1/repos/Kaleidoloop/hw/atmega164"
.LASF4:
	.string	"unsigned int"
.LASF23:
	.string	"i2c_requested"
.LASF9:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF36:
	.string	"dtime"
.LASF33:
	.string	"load.c"
.LASF22:
	.string	"time"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"i2c_send_index"
.LASF3:
	.string	"uint16_t"
.LASF24:
	.string	"i2c_received"
.LASF6:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF31:
	.string	"apa102_end"
.LASF29:
	.string	"apa102_set_led"
.LASF37:
	.string	"received_data"
.LASF30:
	.string	"apa102_start"
	.ident	"GCC: (Homebrew AVR GCC 9.3.0_3) 9.3.0"
.global __do_copy_data
.global __do_clear_bss
