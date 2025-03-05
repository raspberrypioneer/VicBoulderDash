joystick_addr = $9111
keyboard_addr = $9120

setup_IRQ
    sei
    lda #<interrupt_actions
    sta $0314
    lda #>interrupt_actions
    sta $0315
    cli
    rts

interrupt_actions

    ldy #0
check_fire_button
    lda joystick_addr  ;Read joystick address
    and #$20  ;Fire button
    beq .fire_button_pressed
    lda keyboard_addr  ;Read keyboard address
    and #$02  ;Enter key
    beq .fire_button_pressed
    jmp check_right_direction
.fire_button_pressed
    ldy #1

check_right_direction
    lda keyboard_addr  ;Read keyboard address (weird, used for joystick as well!)
    and #$80
    beq .right_direction_ok
    lda keyboard_addr  ;Read keyboard address
    and #$08  ;keys X,V,N etc
    bne check_left_direction
.right_direction_ok
    tya
    ora #2
    tay

check_left_direction
    lda joystick_addr  ;Read joystick address
    and #$10  ;Left direction
    beq .left_direction_ok
    lda keyboard_addr  ;Read keyboard address
    and #$10  ;keys Z,C,B etc
    bne check_up_direction
.left_direction_ok
    tya
    ora #4
    tay

check_up_direction
   lda joystick_addr  ;Read joystick address
   and #$04  ;Up direction
   beq .up_direction_ok
   lda keyboard_addr  ;Read keyboard address
   and #$40  ;keys O,U,T etc
   bne check_down_direction
.up_direction_ok
    tya
    ora #8
    tay

check_down_direction
   lda joystick_addr  ;Read joystick address
   and #$08  ;Down direction
   beq .down_direction_ok
   lda keyboard_addr  ;Read keyboard address
   and #$20  ;Keys K,H,F etc
   bne read_input_end
.down_direction_ok
    tya
    ora #16
    tay

read_input_end
    sty key_press
    jmp $eabf  ;hardware interrupt vector
