joystick_addr = $9111
keyboard_addr = $9120

read_input

check_fire_button
   lda joystick_addr  ;Read joystick address
   and #$20  ;Fire button
   beq .fire_button_pressed
   lda keyboard_addr  ;Read keyboard address
   and #$02  ;Enter key
   beq .fire_button_pressed
   jmp check_right_direction

.fire_button_pressed
	;do fire things (show diamond)
    lda #10
    sta $1000
    lda #11
    sta $1001
    lda #12
    sta $1018
    lda #13
    sta $1019

check_right_direction
   lda keyboard_addr  ;Read keyboard address (weird, used for joystick as well!)
   and #$80
   beq .right_direction_ok
   lda keyboard_addr  ;Read keyboard address
   and #$08  ;keys Z,C,B etc
   bne check_left_direction

.right_direction_ok
	;do right things (show firefly)
    lda #18
    sta $1000
    lda #19
    sta $1001
    lda #20
    sta $1018
    lda #21
    sta $1019

check_left_direction
   lda joystick_addr  ;Read joystick address
   and #$10  ;Left direction
   beq .left_direction_ok
   lda keyboard_addr  ;Read keyboard address
   and #$10  ;keys X,V,N etc
   bne check_up_direction

.left_direction_ok
	;do left things (show butterfly)
    lda #46
    sta $1000
    lda #47
    sta $1001
    lda #48
    sta $1018
    lda #49
    sta $1019

check_up_direction
   lda joystick_addr  ;Read joystick address
   and #$04  ;Up direction
   beq .up_direction_ok
   lda keyboard_addr  ;Read keyboard address
   and #$40  ;keys O,U,T etc
   bne check_down_direction

.up_direction_ok
	;do up things (show bubble)
    lda #58
    sta $1000
    lda #59
    sta $1001
    lda #60
    sta $1018
    lda #61
    sta $1019

check_down_direction
   lda joystick_addr  ;Read joystick address
   and #$08  ;Down direction
   beq .down_direction_ok
   lda keyboard_addr  ;Read keyboard address
   and #$20  ;Keys K,H,F etc
   bne read_input_end

.down_direction_ok
	;do down things (show Rockford)
    lda #62
    sta $1000
    lda #63
    sta $1001
    lda #64
    sta $1018
    lda #65
    sta $1019

read_input_end
    rts
