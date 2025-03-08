joystick_addr = $9111  ;37137
kb_rows = $9120  ;37152
kb_cols = $9121  ;37153
datadir_b = $9122  ;37154
datadir_a = $9123  ;37155

setup_IRQ

    lda #0
    sta datadir_b
    lda #$ff
    sta datadir_a

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
    bne check_right_direction
    ldy #1

check_right_direction
    lda kb_rows  ;Read keyboard address (weird, used for joystick as well!)
    and #$80
    bne check_left_direction
    tya
    ora #2
    tay

check_left_direction
    lda joystick_addr  ;Read joystick address
    and #$10  ;Left direction
    bne check_up_direction
    tya
    ora #4
    tay

check_up_direction
    lda joystick_addr  ;Read joystick address
    and #$04  ;Up direction
    bne check_down_direction
    tya
    ora #8
    tay

check_down_direction
    lda joystick_addr  ;Read joystick address
    and #$08  ;Down direction
    bne check_escape
    tya
    ora #16
    tay

check_escape
    lda #254  ;isolate column with 2q(cbm)(space)(stop)(ctrl)(nothing)1
    sta kb_cols
    lda kb_rows
    cmp #191  ;Q key for quit
    bne check_pause
    tya
    ora #32
    tay

check_pause
    lda #254  ;isolate column with 2q(cbm)(space)(stop)(ctrl)(nothing)1
    sta kb_cols
    lda kb_rows
    cmp #239  ;space key for pause
    bne read_input_end
    tya
    ora #64
    tay

read_input_end
    sty key_press
    jmp $eabf  ;hardware interrupt vector
