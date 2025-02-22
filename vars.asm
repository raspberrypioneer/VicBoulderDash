; *************************************************************************************
; sprite addresses
;
sprite_addresses_low
    !byte <sprite_addr_space
    !byte <sprite_addr_boulder1
    !byte <sprite_addr_bubble
    !byte <sprite_addr_diamond1
    !byte <sprite_addr_diamond2
    !byte <sprite_addr_diamond3
    !byte <sprite_addr_diamond4
    !byte <sprite_addr_titanium_wall1
    !byte <sprite_addr_titanium_wall2
    !byte <sprite_addr_box
    !byte <sprite_addr_wall1
    !byte <sprite_addr_wall2
    !byte <sprite_addr_explosion1
    !byte <sprite_addr_explosion2
    !byte <sprite_addr_explosion3
    !byte <sprite_addr_explosion4
    !byte <sprite_addr_magic_wall1
    !byte <sprite_addr_magic_wall2
    !byte <sprite_addr_magic_wall3
    !byte <sprite_addr_magic_wall4
    !byte <sprite_addr_amoeba1
    !byte <sprite_addr_amoeba2
    !byte <sprite_addr_butterfly1
    !byte <sprite_addr_butterfly2
    !byte <sprite_addr_butterfly3
    !byte <sprite_addr_firefly1
    !byte <sprite_addr_firefly2
    !byte <sprite_addr_firefly3
    !byte <sprite_addr_firefly4
    !byte <sprite_addr_earth1
    !byte <sprite_addr_earth2
    !byte <sprite_addr_pathway
    !byte <sprite_addr_rockford_blinking1
    !byte <sprite_addr_rockford_blinking2
    !byte <sprite_addr_rockford_blinking3
    !byte <sprite_addr_rockford_winking1
    !byte <sprite_addr_rockford_winking2
    !byte <sprite_addr_rockford_moving_down1
    !byte <sprite_addr_rockford_moving_down2
    !byte <sprite_addr_rockford_moving_down3
    !byte <sprite_addr_rockford_moving_up1
    !byte <sprite_addr_rockford_moving_up2
    !byte <sprite_addr_rockford_moving_left1
    !byte <sprite_addr_rockford_moving_left2
    !byte <sprite_addr_rockford_moving_left3
    !byte <sprite_addr_rockford_moving_left4
    !byte <sprite_addr_rockford_moving_right1
    !byte <sprite_addr_rockford_moving_right2
    !byte <sprite_addr_rockford_moving_right3
    !byte <sprite_addr_rockford_moving_right4
    !byte <sprite_addr_bomb
    !byte <sprite_addr_bomb3
    !byte <sprite_addr_bomb2
    !byte <sprite_addr_bomb1
    !byte <sprite_addr_boulder2

sprite_addresses_high
    !byte >sprite_addr_space
    !byte >sprite_addr_boulder1
    !byte >sprite_addr_bubble
    !byte >sprite_addr_diamond1
    !byte >sprite_addr_diamond2
    !byte >sprite_addr_diamond3
    !byte >sprite_addr_diamond4
    !byte >sprite_addr_titanium_wall1
    !byte >sprite_addr_titanium_wall2
    !byte >sprite_addr_box
    !byte >sprite_addr_wall1
    !byte >sprite_addr_wall2
    !byte >sprite_addr_explosion1
    !byte >sprite_addr_explosion2
    !byte >sprite_addr_explosion3
    !byte >sprite_addr_explosion4
    !byte >sprite_addr_magic_wall1
    !byte >sprite_addr_magic_wall2
    !byte >sprite_addr_magic_wall3
    !byte >sprite_addr_magic_wall4
    !byte >sprite_addr_amoeba1
    !byte >sprite_addr_amoeba2
    !byte >sprite_addr_butterfly1
    !byte >sprite_addr_butterfly2
    !byte >sprite_addr_butterfly3
    !byte >sprite_addr_firefly1
    !byte >sprite_addr_firefly2
    !byte >sprite_addr_firefly3
    !byte >sprite_addr_firefly4
    !byte >sprite_addr_earth1
    !byte >sprite_addr_earth2
    !byte >sprite_addr_pathway
    !byte >sprite_addr_rockford_blinking1
    !byte >sprite_addr_rockford_blinking2
    !byte >sprite_addr_rockford_blinking3
    !byte >sprite_addr_rockford_winking1
    !byte >sprite_addr_rockford_winking2
    !byte >sprite_addr_rockford_moving_down1
    !byte >sprite_addr_rockford_moving_down2
    !byte >sprite_addr_rockford_moving_down3
    !byte >sprite_addr_rockford_moving_up1
    !byte >sprite_addr_rockford_moving_up2
    !byte >sprite_addr_rockford_moving_left1
    !byte >sprite_addr_rockford_moving_left2
    !byte >sprite_addr_rockford_moving_left3
    !byte >sprite_addr_rockford_moving_left4
    !byte >sprite_addr_rockford_moving_right1
    !byte >sprite_addr_rockford_moving_right2
    !byte >sprite_addr_rockford_moving_right3
    !byte >sprite_addr_rockford_moving_right4
    !byte >sprite_addr_bomb
    !byte >sprite_addr_bomb3
    !byte >sprite_addr_bomb2
    !byte >sprite_addr_bomb1
    !byte >sprite_addr_boulder2

; *************************************************************************************
; Remapped characters for each sprite
;

sprite_addr_space
    !byte 0,0,0,0

sprite_addr_earth1
sprite_addr_earth2
    !byte 1,2,3,4

sprite_addr_wall1
sprite_addr_wall2
sprite_addr_magic_wall2
sprite_addr_magic_wall4
    !byte 5,6,7,8

sprite_addr_magic_wall1
sprite_addr_magic_wall3
    !byte 5,6,7,8

sprite_addr_titanium_wall1  ;reuse characters
sprite_addr_titanium_wall2
    !byte 9,9,9,9

sprite_addr_diamond1
sprite_addr_diamond3
    !byte 10,11,12,13  ;JKLM
sprite_addr_diamond2
sprite_addr_diamond4
    !byte 10,11,12,13

sprite_addr_boulder1
    !byte 14,15,16,17  ;NOPQ
sprite_addr_boulder2
    !byte 14,15,16,17

sprite_addr_firefly1
sprite_addr_firefly2
    !byte 18,19,20,21
sprite_addr_firefly3
sprite_addr_firefly4
    !byte 18,19,20,21

sprite_addr_amoeba1
    !byte 22,23,24,25
sprite_addr_amoeba2
    !byte 26,27,28,29

sprite_addr_box
    !byte 0,0,0,0

sprite_addr_explosion1
    !byte 30,31,32,33
sprite_addr_explosion2
    !byte 34,35,36,37
sprite_addr_explosion3
    !byte 38,39,40,41
sprite_addr_explosion4
    !byte 42,43,44,45

sprite_addr_butterfly1
    !byte 46,47,48,49
sprite_addr_butterfly2
    !byte 50,51,52,53
sprite_addr_butterfly3
    !byte 54,55,56,57

sprite_addr_bubble
    !byte 58,59,60,61

sprite_addr_rockford_blinking1  ;aka 'normal' Rockford
    !byte 62,63,64,65
sprite_addr_rockford_blinking2  ;eyes blink
    ;!byte "b", "c", "`", "a"
    !byte 62,63,64,65
sprite_addr_rockford_blinking3  ;eyes close
    ;!byte "d", "e", "`", "a"
    !byte 62,63,64,65
sprite_addr_rockford_winking1   ;right eye blink
    ;!byte "^", "c", "`", "a"
    !byte 62,63,64,65
sprite_addr_rockford_winking2   ;right eye close
    ;!byte "^", "e", "`", "a"
    !byte 62,63,64,65
sprite_addr_rockford_moving_down1  ;aka wait 1 - fold arms
    ;!byte "^", "_", "f", "g"
    !byte 62,63,64,65
sprite_addr_rockford_moving_down2  ;aka wait 2 - fold arms, tap foot
    ;!byte "^", "_", "h", "g"
    !byte 62,63,64,65
sprite_addr_rockford_moving_down3  ;aka wait 3 - eyes blink, fold arms
    ;!byte "b", "c", "f", "g"
    !byte 62,63,64,65
sprite_addr_rockford_moving_up1  ;aka wait 4 - eyes close, tap foot
    ;!byte "d", "e", "h", "g"
    !byte 62,63,64,65
sprite_addr_rockford_moving_up2  ;aka wait 5 - eyes close, fold arms
    ;!byte "d", "e", "f", "g"
    !byte 62,63,64,65
sprite_addr_rockford_moving_left1  ;head left, legs full
    ;!byte "i", "j", "k", "l"
    !byte 62,63,64,65
sprite_addr_rockford_moving_left2  ;head left, legs part
    ;!byte "i", "j", "m", "n"
    !byte 62,63,64,65
sprite_addr_rockford_moving_left3  ;head left, legs part-stand
    ;!byte "i", "j", "o", "p"
    !byte 62,63,64,65
sprite_addr_rockford_moving_left4  ;head left, legs stand
    ;!byte "i", "j", "o", "q"
    !byte 62,63,64,65
sprite_addr_rockford_moving_right1  ;head right, legs stand
    ;!byte "r", "s", "t", "u"
    !byte 62,63,64,65
sprite_addr_rockford_moving_right2  ;head right, legs part-stand
    ;!byte "r", "s", "v", "u"
    !byte 62,63,64,65
sprite_addr_rockford_moving_right3  ;head right, legs part
    ;!byte "r", "s", "w", "x"
    !byte 62,63,64,65
sprite_addr_rockford_moving_right4  ;head right, legs full
    ;!byte "r", "s", "y", "z"
    !byte 62,63,64,65

sprite_addr_bomb
sprite_addr_bomb2
    !byte 91,92,93,94
sprite_addr_bomb1
sprite_addr_bomb3
    ;!byte 123+128, 124+128, 125+128, 126+128  ;invert sprite_addr_bomb
    !byte 91,92,93,94

sprite_addr_pathway
    !byte 95,95,95,95

; *************************************************************************************
; Mapping table to convert a cell type 0-$7f into a sprite number
; The sprite number points to the sprite address to use (see above)
; By changing the entries of this table on the fly, this table allows the sprite to
; animate without the underlying cell type needing to change.
;
cell_type_to_sprite
    !byte sprite_space                                                                  ; cell type $00 = map_space
    !byte sprite_earth2                                                                 ; cell type $01 = map_earth
    !byte sprite_wall2                                                                  ; cell type $02 = map_wall
    !byte sprite_titanium_wall2                                                         ; cell type $03 = map_titanium_wall
    !byte sprite_diamond1                                                               ; cell type $04 = map_diamond
    !byte sprite_boulder1                                                               ; cell type $05 = map_rock
    !byte sprite_firefly4                                                               ; cell type $06 = map_firefly
;amoeba_animated_sprite0
    !byte sprite_amoeba1                                                                ; cell type $07 = map_amoeba
    !byte sprite_titanium_wall2                                                         ; cell type $03 = map_titanium_wall
;slime_animated_sprite0
    !byte sprite_amoeba1                                                                ; cell type $09 = map_slime
    !byte $4c                                                                           ; cell type $0A = map_explosion
    !byte sprite_bomb1                                                                  ; cell type $0B = map_bomb
    !byte sprite_magic_wall1                                                            ; cell type $0C = map_growing_wall
    !byte sprite_wall2                                                                  ; cell type $0D = map_magic_wall
    !byte sprite_butterfly1                                                             ; cell type $0E = map_butterfly
;rockford_sprite
    !byte sprite_rockford_tapping_foot1                                                 ; cell type $0F = map_rockford
    !byte sprite_explosion4                                                             ; cell type $10 = map_space | map_anim_state1
    !byte sprite_explosion4                                                             ; cell type $11 = map_earth | map_anim_state1
    !byte sprite_explosion4                                                             ; cell type $12 = map_wall | map_anim_state1
    !byte sprite_explosion4                                                             ; cell type $13 = map_large_explosion_state1
    !byte sprite_rockford_winking2                                                      ; cell type $14 = map_diamond | map_anim_state1
    !byte sprite_boulder2                                                               ; cell type $15 = map_rock | map_anim_state1
    !byte sprite_firefly4                                                               ; cell type $16 = map_firefly | map_anim_state1
    !byte sprite_amoeba1                                                                ; cell type $17 = map_amoeba | map_anim_state1
    !byte sprite_box                                                                    ; cell type $18 = map_active_exit
    !byte sprite_amoeba1                                                                ; cell type $19 = map_slime | map_anim_state1
    !byte sprite_firefly4                                                               ; cell type $1A = map_explosion | map_anim_state1
    !byte sprite_bomb2                                                                  ; cell type $1B = map_bomb | map_anim_state1
    !byte sprite_magic_wall1                                                            ; cell type $1C = map_growing_wall | map_anim_state1
    !byte sprite_magic_wall1                                                            ; cell type $1D = map_magic_wall | map_anim_state1
    !byte sprite_butterfly1                                                             ; cell type $1E = map_butterfly | map_anim_state1
    !byte sprite_rockford_moving_left3                                                  ; cell type $1F = map_rockford | map_anim_state1
    !byte sprite_explosion3                                                             ; cell type $20 = map_space | map_anim_state2
    !byte sprite_explosion3                                                             ; cell type $21 = map_earth | map_anim_state2
    !byte sprite_explosion3                                                             ; cell type $22 = map_wall | map_anim_state2
    !byte sprite_explosion3                                                             ; cell type $23 = map_large_explosion_state2
    !byte sprite_diamond2                                                               ; cell type $24 = map_diamond | map_anim_state2
    !byte sprite_bubble                                                                 ; cell type $25 = map_rock | map_anim_state2
    !byte sprite_firefly4                                                               ; cell type $26 = map_firefly | map_anim_state2
    !byte sprite_amoeba2                                                                ; cell type $27 = map_amoeba | map_anim_state2
    !byte sprite_firefly2                                                               ; cell type $28 = map_rockford_appearing_or_end_position | map_anim_state2
    !byte sprite_amoeba2                                                                ; cell type $29 = map_slime | map_anim_state2
    !byte $46                                                                           ; cell type $2A = map_explosion | map_anim_state2
    !byte sprite_bomb3                                                                  ; cell type $2B = map_bomb | map_anim_state2
    !byte sprite_magic_wall1                                                            ; cell type $2C = map_growing_wall | map_anim_state2
    !byte sprite_wall2                                                                  ; cell type $2D = map_magic_wall | map_anim_state2
    !byte sprite_butterfly1                                                             ; cell type $2E = map_butterfly | map_anim_state2
    !byte sprite_rockford_moving_right4                                                 ; cell type $2F = map_rockford | map_anim_state2
    !byte sprite_explosion2                                                             ; cell type $30 = map_space | map_anim_state3
    !byte sprite_explosion2                                                             ; cell type $31 = map_earth | map_anim_state3
    !byte sprite_explosion2                                                             ; cell type $32 = map_wall | map_anim_state3
    !byte sprite_explosion2                                                             ; cell type $33 = map_large_explosion_state3
    !byte sprite_diamond2                                                               ; cell type $34 = map_diamond | map_anim_state3
    !byte sprite_boulder1                                                               ; cell type $35 = map_rock | map_anim_state3
    !byte sprite_firefly4                                                               ; cell type $36 = map_firefly | map_anim_state3
    !byte sprite_amoeba2                                                                ; cell type $37 = map_amoeba | map_anim_state3
    !byte sprite_firefly2                                                               ; cell type $38 = map_rockford_appearing_or_end_position | map_anim_state3
    !byte sprite_amoeba2                                                                ; cell type $39 = map_slime | map_anim_state3
    !byte sprite_firefly4                                                               ; cell type $3A = map_explosion | map_anim_state3
    !byte sprite_bomb4                                                                  ; cell type $3B = map_bomb | map_anim_state3
    !byte sprite_magic_wall1                                                            ; cell type $3C = map_growing_wall | map_anim_state3
    !byte sprite_wall2                                                                  ; cell type $3D = map_magic_wall | map_anim_state3
    !byte sprite_butterfly1                                                             ; cell type $3E = map_butterfly | map_anim_state3
    !byte sprite_rockford_tapping_foot4                                                 ; cell type $3F = map_rockford | map_anim_state3
    !byte sprite_explosion1                                                             ; cell type $40 = map_space | map_anim_state4
    !byte sprite_explosion1                                                             ; cell type $41 = map_earth | map_anim_state4
    !byte sprite_explosion1                                                             ; cell type $42 = map_wall | map_anim_state4
    !byte sprite_explosion1                                                             ; cell type $43 = map_titanium_wall | map_anim_state4
    !byte sprite_diamond1                                                               ; cell type $44 = map_diamond | map_anim_state4
    !byte sprite_boulder1                                                               ; cell type $45 = map_rock | map_anim_state4
    !byte sprite_explosion1                                                             ; cell type $46 = map_start_large_explosion
;amoeba_animated_sprite4
    !byte sprite_amoeba2                                                                ; cell type $47 = map_amoeba | map_anim_state4
    !byte sprite_rockford_moving_right4                                                 ; cell type $48 = map_rockford_appearing_or_end_position | map_anim_state4
;slime_animated_sprite1
    !byte sprite_amoeba2                                                                ; cell type $49 = map_slime | map_anim_state4
    !byte sprite_firefly4                                                               ; cell type $4A = map_explosion | map_anim_state4
    !byte sprite_bomb1                                                                  ; cell type $4B = map_bomb | map_anim_state4
    !byte sprite_magic_wall1                                                            ; cell type $4D = map_growing_wall | map_anim_state4
    !byte sprite_boulder1                                                               ; cell type $4C = map_magic_wall | map_anim_state4
    !byte sprite_butterfly2                                                             ; cell type $4E = map_butterfly | map_anim_state4
    !byte sprite_rockford_moving_right3                                                 ; cell type $4F = map_rockford | map_anim_state4
    !byte sprite_explosion2                                                             ; cell type $50 = map_space | map_anim_state5
    !byte sprite_explosion2                                                             ; cell type $51 = map_earth | map_anim_state5
    !byte sprite_explosion2                                                             ; cell type $52 = map_wall | map_anim_state5
    !byte sprite_explosion2                                                             ; cell type $53 = map_titanium_wall | map_anim_state5
    !byte sprite_rockford_winking2                                                      ; cell type $54 = map_diamond | map_anim_state5
    !byte sprite_boulder1                                                               ; cell type $55 = map_rock | map_anim_state5
    !byte sprite_firefly2                                                               ; cell type $56 = map_firefly | map_anim_state5
    !byte sprite_amoeba1                                                                ; cell type $57 = map_amoeba | map_anim_state5
    !byte sprite_rockford_moving_right4                                                 ; cell type $58 = map_rockford_appearing_or_end_position | map_anim_state5
    !byte sprite_amoeba1                                                                ; cell type $59 = map_slime | map_anim_state5
    !byte sprite_firefly4                                                               ; cell type $5A = map_explosion | map_anim_state5
    !byte sprite_bomb2                                                                  ; cell type $5B = map_bomb | map_anim_state5
    !byte sprite_magic_wall1                                                            ; cell type $5C = map_growing_wall | map_anim_state5
    !byte sprite_magic_wall2                                                            ; cell type $5D = map_magic_wall | map_anim_state5
    !byte sprite_butterfly2                                                             ; cell type $5E = map_butterfly | map_anim_state5
    !byte sprite_rockford_moving_left2                                                  ; cell type $5F = map_rockford | map_anim_state5
    !byte sprite_explosion3                                                             ; cell type $60 = map_space | map_anim_state6
    !byte sprite_explosion3                                                             ; cell type $61 = map_earth | map_anim_state6
    !byte sprite_explosion3                                                             ; cell type $62 = map_wall | map_anim_state6
    !byte sprite_explosion3                                                             ; cell type $63 = map_titanium_wall | map_anim_state6
    !byte sprite_diamond1                                                               ; cell type $64 = map_diamond | map_anim_state6
    !byte sprite_boulder1                                                               ; cell type $65 = map_rock | map_anim_state6
    !byte sprite_firefly2                                                               ; cell type $66 = map_firefly | map_anim_state6
    !byte sprite_amoeba1                                                                ; cell type $67 = map_amoeba | map_anim_state6
    !byte sprite_rockford_moving_right4                                                 ; cell type $68 = map_rockford_appearing_or_end_position | map_anim_state6
    !byte sprite_amoeba1                                                                ; cell type $69 = map_slime | map_anim_state6
    !byte sprite_firefly4                                                               ; cell type $6A = map_explosion | map_anim_state6
    !byte sprite_bomb3                                                                  ; cell type $6B = map_bomb | map_anim_state6
    !byte sprite_magic_wall1                                                            ; cell type $6C = map_growing_wall | map_anim_state6
    !byte sprite_explosion2                                                             ; cell type $6D = map_magic_wall | map_anim_state6
    !byte sprite_butterfly2                                                             ; cell type $6E = map_butterfly | map_anim_state6
    !byte sprite_rockford_tapping_foot4                                                 ; cell type $6F = map_rockford | map_anim_state6
    !byte sprite_explosion4                                                             ; cell type $70 = map_space | map_anim_state7
    !byte sprite_explosion4                                                             ; cell type $71 = map_earth | map_anim_state7
    !byte sprite_explosion4                                                             ; cell type $72 = map_wall | map_anim_state7
    !byte sprite_explosion4                                                             ; cell type $73 = map_titanium_wall | map_anim_state7
    !byte sprite_diamond1                                                               ; cell type $74 = map_diamond | map_anim_state7
    !byte sprite_boulder1                                                               ; cell type $75 = map_rock | map_anim_state7
    !byte sprite_firefly2                                                               ; cell type $76 = map_firefly | map_anim_state7
    !byte sprite_amoeba2                                                                ; cell type $77 = map_amoeba | map_anim_state7
    !byte sprite_rockford_moving_right4                                                 ; cell type $78 = map_rockford_appearing_or_end_position | map_anim_state7
    !byte sprite_amoeba2                                                                ; cell type $79 = map_slime | map_anim_state7
    !byte sprite_firefly4                                                               ; cell type $7A = map_explosion | map_anim_state7
    !byte sprite_bomb4                                                                  ; cell type $7B = map_bomb | map_anim_state7
    !byte sprite_magic_wall1                                                            ; cell type $7C = map_growing_wall | map_anim_state7
    !byte sprite_explosion1                                                             ; cell type $7D = map_magic_wall | map_anim_state7
    !byte sprite_butterfly2                                                             ; cell type $7E = map_butterfly | map_anim_state7
    !byte sprite_explosion1                                                             ; cell type $7F = map_rockford | map_anim_state7
