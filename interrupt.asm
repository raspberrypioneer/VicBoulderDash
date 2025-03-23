_JOYSTICK = $9111  ;37137
_KEYB_ROWS = $9120  ;37152
_KEYB_COLS = $9121  ;37153
_DATADIR_B = $9122  ;37154
_DATADIR_A = $9123  ;37155

; *************************************************************************************
setup_IRQ

  lda #0
  sta _DATADIR_B
  lda #$ff
  sta _DATADIR_A

  sei
  lda #<interrupt_actions
  sta $0314
  lda #>interrupt_actions
  sta $0315
  cli
  rts

; *************************************************************************************
interrupt_actions
  jsr update_sounds
  jsr read_user_input
  jmp $eabf  ;hardware interrupt vector

; *************************************************************************************
; Plays the short sound given in play_sound_fx (got diamond, boulder moves)
;   and plays any ambient sound if set (magic wall, amoeba sounds)
update_sounds

  lda play_sound_fx
  beq check_ambient_fx
compare_sound_fx
  cmp #0                     ;has the sound effect changed?
  beq continue_sound_fx      ;if not, continue it
  lda #0                     ;otherwise, sound effect has changed, clear the note and play the new one
  jsr note_clear
continue_sound_fx
  ldy active_sound_offset    ;is the sound effect in progress?
  bne continue_the_sound     ;if so, continue it
  ldy play_sound_fx          ;otherwise, play new sound effect
  sty compare_sound_fx+1
  jmp play_note_fx

check_ambient_fx
  lda play_ambient_sound_fx  ;is there an ambient sound effect?
  beq end_ambient_sound_fx   ;if not, end
  ldy active_sound_offset    ;is the sound effect in progress?
  bne continue_the_sound     ;if so, continue it
  ldy play_ambient_sound_fx  ;otherwise, play new sound effet

  ; create some 'random' audio pitches for amoeba, magic wall ambient sound fx
  jsr get_next_random_byte
  ora #192
  eor cave_number
  and #248
  sta sound_magic_wall+3
  sta sound_amoeba+3

continue_the_sound
  jmp play_note_fx
end_ambient_sound_fx
  rts

; *************************************************************************************
;sound_fx_example
;  duration,volume,noise,sound1,sound2,sound3
;  duration,volume,noise,sound1,sound2,sound3
;  duration,volume,noise,sound1,sound2,sound3
;  if duration is zero, deactivate sound fx
;
!align 255, 0
list_of_sounds
active_sound_offset
  !byte 0

sound_fx_rockford_move
  !byte 3,233,0,0,0,0  ;sound with terminator 0
sound_fx_got_earth
  !byte 4,239,0,0,0,0  ;sound with terminator 0
sound_fx_rock_move
  !byte 15,133,0,0,0
  !byte 12,132,0,0,0
  !byte 9,130,0,0,0,0  ;sound with terminator 0
sound_fx_enter_cave
  !byte 15,200,240,245,150
  !byte 12,190,230,235,140
  !byte 9,180,220,225,130,0  ;sound with terminator 0
sound_fx_explosion
  !byte 15,240,0,155,160
  !byte 15,220,0,145,150
  !byte 11,180,0,135,140,0  ;sound with terminator 0
sound_fx_got_diamond
  !byte 9,0,0,238,250
  !byte 6,0,0,241,247
  !byte 3,0,0,244,244,0  ;sound with terminator 0
sound_fx_diamond_move
  !byte 15,0,0,243,239
  !byte 12,0,0,244,240
  !byte 9,0,0,245,241,0  ;sound with terminator 0
sound_fx_got_all_diamonds
  !byte 15,0,0,230,230
  !byte 12,0,0,238,233
  !byte 9,0,0,241,236
  !byte 6,0,0,244,239,0  ;sound with terminator 0
sound_fx_exit_cave
  !byte 3,0,0,249,249
  !byte 2,0,0,246,246
  !byte 1,0,0,243,243,0  ;sound with terminator 0
sound_magic_wall
  !byte 2,0,0,0,0
  !byte 1,0,230,0,0
  !byte 1,0,235,0,0,0  ;sound with terminator 0
sound_amoeba
  !byte 2,0,0,0,0
  !byte 1,0,170,0,0
  !byte 1,0,180,0,0,0  ;sound with terminator 0
sound_random
  !byte 6,0,0,0,250,0  ;sound with terminator 0

play_note_fx  ;Y is input into this routine, used to get the sound to play
  lda #<list_of_sounds
  sta sound_address_low
  lda #>list_of_sounds
  sta sound_address_high

  lda (sound_address_low),y
  beq note_end
  sta note_volume+1
  lda _VOLUME
  and #240
note_volume
  ora #15
  sta _VOLUME

  iny
  lda (sound_address_low),y
  sta _NOISE
  iny
  lda (sound_address_low),y
  sta _SOUND1
  iny
  lda (sound_address_low),y
  sta _SOUND2
  iny
  lda (sound_address_low),y
  sta _SOUND3
  iny
  sty active_sound_offset
  rts

note_end
  lda #0
  sta play_sound_fx
note_clear
  sta _NOISE
  sta _SOUND1
  sta _SOUND2
  sta _SOUND3
  sta active_sound_offset
  lda _VOLUME
  and #240
  sta _VOLUME
  rts

; *************************************************************************************
;Read user input
read_user_input
  ldy #0
check_fire_button
  lda _JOYSTICK  ;Read joystick address
  and #$20  ;Fire button
  bne check_right_direction
  ldy #1

check_right_direction
  lda _KEYB_ROWS  ;Read keyboard address (weird, used for joystick as well!)
  and #$80
  bne check_left_direction
  tya
  ora #2
  tay

check_left_direction
  lda _JOYSTICK  ;Read joystick address
  and #$10  ;Left direction
  bne check_up_direction
  tya
  ora #4
  tay

check_up_direction
  lda _JOYSTICK  ;Read joystick address
  and #$04  ;Up direction
  bne check_down_direction
  tya
  ora #8
  tay

check_down_direction
  lda _JOYSTICK  ;Read joystick address
  and #$08  ;Down direction
  bne check_escape
  tya
  ora #16
  tay

check_escape
  lda #254  ;isolate column with 2q(cbm)(space)(stop)(ctrl)(nothing)1
  sta _KEYB_COLS
  lda _KEYB_ROWS
  cmp #191  ;Q key for quit
  bne check_pause
  tya
  ora #32
  tay

check_pause
  lda #254  ;isolate column with 2q(cbm)(space)(stop)(ctrl)(nothing)1
  sta _KEYB_COLS
  lda _KEYB_ROWS
  cmp #239  ;space key for pause
  bne read_input_end
  tya
  ora #64
  tay

read_input_end
  sty key_press
  rts
