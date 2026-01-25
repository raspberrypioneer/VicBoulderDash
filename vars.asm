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
  !byte <sprite_addr_anti_space

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
  !byte >sprite_addr_anti_space

; *************************************************************************************
; Remapped characters for each sprite
;

sprite_addr_space
  !byte 32,32,32,32

sprite_addr_anti_space
  !byte 65,65,65,65

sprite_addr_pathway
  !byte 66,67,68,69

sprite_addr_earth1
sprite_addr_earth2
  !byte 70,71,72,73

sprite_addr_boulder1
  !byte 74,75,76,77
sprite_addr_boulder2
  !byte 78,79,80,81
sprite_addr_bubble
  !byte 82,83,84,85

sprite_addr_wall1  ;reuse characters
sprite_addr_wall2
  !byte 86,86,86,86

sprite_addr_titanium_wall1  ;reuse characters
sprite_addr_titanium_wall2
  !byte 87,87,87,87

sprite_addr_magic_wall1
  !byte 88,88,88,88
sprite_addr_magic_wall2
  !byte 89,89,89,89
sprite_addr_magic_wall3
  !byte 90,90,90,90
sprite_addr_magic_wall4
  !byte 91,91,91,91

sprite_addr_box
  !byte 92,93,94,95

sprite_addr_diamond1
  !byte 96,97,98,99
sprite_addr_diamond2
  !byte 100,101,102,103
sprite_addr_diamond3
  !byte 104,105,106,107
sprite_addr_diamond4
  !byte 108,109,110,111

sprite_addr_butterfly1
  !byte 112,113,114,115
sprite_addr_butterfly2
  !byte 116,117,118,119
sprite_addr_butterfly3
  !byte 120,121,122,123

sprite_addr_firefly1
  !byte 124,125,126,127
sprite_addr_firefly2
  !byte 128,129,130,131
sprite_addr_firefly3
  !byte 132,133,134,135
sprite_addr_firefly4
  !byte 136,137,138,139

sprite_addr_amoeba1
  !byte 140,141,142,143
sprite_addr_amoeba2
  !byte 144,145,146,147

sprite_addr_bomb
  !byte 148,149,150,151
sprite_addr_bomb1
  !byte 152,153,154,155
sprite_addr_bomb2
  !byte 156,157,158,159
sprite_addr_bomb3
  !byte 160,161,162,163

sprite_addr_explosion1
  !byte 164,165,166,167
sprite_addr_explosion2
  !byte 168,169,170,171
sprite_addr_explosion3
  !byte 172,173,174,175
sprite_addr_explosion4
  !byte 176,177,178,179

lfc = 180  ;left face
rfc = 182  ;right face
lbo = 181  ;left body
rbo = 183  ;right body
leb = 184  ;left eye blink
reb = 185  ;right eye blink
lec = 186  ;left eye close
rec = 187  ;right eye close

sprite_addr_rockford_blinking1  ;aka 'normal' Rockford
  !byte lfc,lbo,rfc,rbo
sprite_addr_rockford_blinking2  ;eyes blink
  !byte leb,lbo,reb,rbo
sprite_addr_rockford_blinking3  ;eyes close
  !byte lec,lbo,rec,rbo
sprite_addr_rockford_winking1   ;right eye blink
  !byte lfc,lbo,reb,rbo
sprite_addr_rockford_winking2   ;right eye close
  !byte lfc,lbo,rec,rbo
sprite_addr_rockford_moving_down1  ;aka wait 1 - fold arms
  !byte lfc,188,rfc,189
sprite_addr_rockford_moving_down2  ;aka wait 2 - fold arms, tap foot
  !byte lfc,190,rfc,189
sprite_addr_rockford_moving_down3  ;aka wait 3 - eyes blink, fold arms
  !byte 184,188,reb,189
sprite_addr_rockford_moving_up1  ;aka wait 4 - eyes close, tap foot
  !byte lec,190,rec,189
sprite_addr_rockford_moving_up2  ;aka wait 5 - eyes close, fold arms
  !byte lec,188,rec,189
sprite_addr_rockford_moving_left1  ;head left, legs full
  !byte 191,193,192,194
sprite_addr_rockford_moving_left2  ;head left, legs part
  !byte 191,195,192,196
sprite_addr_rockford_moving_left3  ;head left, legs part-stand
  !byte 191,197,192,198
sprite_addr_rockford_moving_left4  ;head left, legs stand
  !byte 191,197,192,199
sprite_addr_rockford_moving_right1  ;head right, legs stand
  !byte 200,202,201,203
sprite_addr_rockford_moving_right2  ;head right, legs part-stand
  !byte 200,204,201,203
sprite_addr_rockford_moving_right3  ;head right, legs part
  !byte 200,205,201,206
sprite_addr_rockford_moving_right4  ;head right, legs full
  !byte 200,207,201,208

; *************************************************************************************
; Sprite handler routine addresses
;
handler_table_low
  !byte <handler_basics
  !byte <handler_basics
  !byte <handler_basics
  !byte <handler_basics
  !byte 0
  !byte 0
  !byte <handler_firefly_or_butterfly
  !byte <handler_amoeba
  !byte <handler_rockford_intro_or_exit
  !byte <handler_slime
  !byte <handler_rockford_intro_or_exit
  !byte 0
growing_wall_handler_low
  !byte <handler_growing_wall
  !byte <handler_magic_wall
  !byte <handler_firefly_or_butterfly
rockford_handler_low
  !byte <handler_rockford

handler_table_high
  !byte >handler_basics
  !byte >handler_basics
  !byte >handler_basics
  !byte >handler_basics
  !byte 0
  !byte 0
  !byte >handler_firefly_or_butterfly
  !byte >handler_amoeba
  !byte >handler_rockford_intro_or_exit
  !byte >handler_slime
  !byte >handler_rockford_intro_or_exit
  !byte 0
growing_wall_handler_high
  !byte >handler_growing_wall
  !byte >handler_magic_wall
  !byte >handler_firefly_or_butterfly
rockford_handler_high
  !byte >handler_rockford

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
amoeba_animated_sprite0
  !byte sprite_amoeba1                                                                ; cell type $07 = map_amoeba
  !byte sprite_titanium_wall2                                                         ; cell type $03 = map_titanium_wall
slime_animated_sprite0
  !byte sprite_amoeba1                                                                ; cell type $09 = map_slime
  !byte $4c                                                                           ; cell type $0A = map_explosion
  !byte sprite_bomb1                                                                  ; cell type $0B = map_bomb
growing_wall_sprite
  !byte sprite_wall1                                                                  ; cell type $0C = map_growing_wall
  !byte sprite_wall2                                                                  ; cell type $0D = map_magic_wall
  !byte sprite_butterfly1                                                             ; cell type $0E = map_butterfly
rockford_sprite
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
  !byte sprite_wall1                                                                  ; cell type $1C = map_growing_wall | map_anim_state1
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
  !byte sprite_wall1                                                                  ; cell type $2C = map_growing_wall | map_anim_state2
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
  !byte sprite_wall1                                                                  ; cell type $3C = map_growing_wall | map_anim_state3
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
amoeba_animated_sprite4
  !byte sprite_amoeba2                                                                ; cell type $47 = map_amoeba | map_anim_state4
  !byte sprite_rockford_moving_right4                                                 ; cell type $48 = map_rockford_appearing_or_end_position | map_anim_state4
slime_animated_sprite1
  !byte sprite_amoeba2                                                                ; cell type $49 = map_slime | map_anim_state4
  !byte sprite_firefly4                                                               ; cell type $4A = map_explosion | map_anim_state4
  !byte sprite_bomb1                                                                  ; cell type $4B = map_bomb | map_anim_state4
  !byte sprite_wall1                                                                  ; cell type $4D = map_growing_wall | map_anim_state4
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
  !byte sprite_wall1                                                                  ; cell type $5C = map_growing_wall | map_anim_state5
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
  !byte sprite_wall1                                                                  ; cell type $6C = map_growing_wall | map_anim_state6
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
  !byte sprite_wall1                                                                  ; cell type $7C = map_growing_wall | map_anim_state7
  !byte sprite_explosion1                                                             ; cell type $7D = map_magic_wall | map_anim_state7
  !byte sprite_butterfly2                                                             ; cell type $7E = map_butterfly | map_anim_state7
  !byte sprite_explosion1                                                             ; cell type $7F = map_rockford | map_anim_state7

; *************************************************************************************
; Cell types that animate every tick
; These values are pointers into the cell_type_to_sprite table
;
cell_types_that_always_animate
  !byte                   map_diamond
  !byte map_anim_state4 | map_diamond
  !byte                   map_firefly
  !byte map_anim_state1 | map_firefly
  !byte map_anim_state2 | map_firefly
  !byte map_anim_state3 | map_firefly
exit_cell_type
  !byte                  map_active_exit
  !byte map_anim_state1 | map_magic_wall
  !byte                    map_butterfly
  !byte  map_anim_state1 | map_butterfly
  !byte  map_anim_state2 | map_butterfly
  !byte  map_anim_state3 | map_butterfly
  !byte  map_anim_state2 | map_rockford
  !byte  map_anim_state1 | map_rockford
  !byte  map_slime

; *************************************************************************************
; For animation, points to next sprite to use
;
sprite_to_next_sprite
  !byte 0,0,0
  !byte sprite_diamond2, sprite_diamond3, sprite_diamond4, sprite_diamond1
  !byte 0
  !byte sprite_box, sprite_titanium_wall2
  !byte 0,0
  !byte sprite_explosion1, sprite_explosion2, sprite_explosion3
  !byte 0
  !byte sprite_magic_wall2, sprite_magic_wall3, sprite_magic_wall4, sprite_magic_wall1
  !byte sprite_amoeba1, sprite_amoeba2 
  !byte sprite_butterfly2, sprite_butterfly3, sprite_butterfly1
  !byte sprite_firefly2, sprite_firefly3, sprite_firefly4, sprite_firefly1
  !byte 0,0,0,0,0,0,0,0,0,0,0,0,0
  !byte sprite_rockford_moving_left2, sprite_rockford_moving_left3, sprite_rockford_moving_left4, sprite_rockford_moving_left1
  !byte sprite_rockford_moving_right2, sprite_rockford_moving_right3, sprite_rockford_moving_right4, sprite_rockford_moving_right1
  !byte $32, $32, sprite_diamond1, $32, $32, $0a, $3a, $34, $34, sprite_space, $32, $32, $32, sprite_space, $39, $39
  !byte $38, $36, $39, $38, 0, 0, 0, 0, 0, 0, sprite_space, $33, $3f, sprite_space, $35, sprite_space
  !byte 0, 0, 0, sprite_space, 0, $3e, $33, sprite_space, $5a, $5b, $5c, $5d, $5e, $5f, 7, $0a
  !byte $16, $64, $2a, $66, $2e, 9, $1e, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71
  !byte $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f

; *************************************************************************************
; Butterfly/firefly animation table
;
firefly_and_butterfly_cell_values
  !byte (map_unprocessed | map_anim_state3) | map_firefly
  !byte (map_unprocessed | map_anim_state3) | map_butterfly
  !byte (map_unprocessed | map_anim_state0) | map_firefly
  !byte (map_unprocessed | map_anim_state0) | map_butterfly
  !byte (map_unprocessed | map_anim_state1) | map_firefly
  !byte (map_unprocessed | map_anim_state1) | map_butterfly
  !byte (map_unprocessed | map_anim_state2) | map_firefly
  !byte (map_unprocessed | map_anim_state2) | map_butterfly

; *************************************************************************************
; Sprites to use for idle animation of rockford. They are encoded into the nybbles of
; each byte. First it cycles through the bottom nybbles until near the end of the idle
; animation, then cycles through through the top nybbles
;
idle_animation_data
  !byte 16*(sprite_rockford_tapping_foot4-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot3-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot2-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot3-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot4-32) + sprite_rockford_blinking2-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_blinking3-32
  !byte 16*(sprite_rockford_tapping_foot2-32) + sprite_rockford_blinking2-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot3-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot5-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot5-32) + sprite_rockford_blinking3-32
  !byte 16*(sprite_rockford_tapping_foot3-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_blinking3-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_blinking2-32) + sprite_rockford_blinking2-32
  !byte 16*(sprite_rockford_blinking3-32) + sprite_rockford_blinking3-32
  !byte 16*(sprite_rockford_blinking2-32) + sprite_rockford_blinking2-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_blinking2-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot5-32
  !byte 16*(sprite_rockford_blinking3-32) + sprite_rockford_tapping_foot3-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_blinking3-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot3-32) + sprite_rockford_tapping_foot5-32
  !byte 16*(sprite_rockford_tapping_foot5-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot3-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_blinking3-32) + sprite_rockford_tapping_foot4-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot2-32
  !byte 16*(sprite_rockford_blinking3-32) + sprite_rockford_tapping_foot3-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_blinking3-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_tapping_foot5-32
  !byte 16*(sprite_rockford_tapping_foot1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot2-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_tapping_foot5-32) + sprite_rockford_blinking2-32
  !byte 16*(sprite_rockford_tapping_foot2-32) + sprite_rockford_blinking3-32
  !byte 16*(sprite_rockford_tapping_foot5-32) + sprite_rockford_blinking2-32
  !byte 16*(sprite_rockford_tapping_foot2-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_tapping_foot3-32) + sprite_rockford_blinking1-32
  !byte 16*(sprite_rockford_blinking3-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_blinking2-32) + sprite_rockford_tapping_foot2-32
  !byte 16*(sprite_rockford_blinking2-32) + sprite_rockford_tapping_foot5-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot4-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot5-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot2-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot2-32
  !byte 16*(sprite_rockford_blinking1-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_winking1-32) + sprite_rockford_tapping_foot2-32
  !byte 16*(sprite_rockford_winking2-32) + sprite_rockford_tapping_foot1-32
  !byte 16*(sprite_rockford_winking2-32) + sprite_rockford_tapping_foot4-32
  !byte 16*(sprite_rockford_winking2-32) + sprite_rockford_tapping_foot3-32
  !byte 16*(sprite_rockford_winking1-32) + sprite_rockford_tapping_foot2-32
  !byte 16*(sprite_rockford_winking1-32) + sprite_rockford_tapping_foot1-32

; *************************************************************************************
; Determines what the end of an explosion turns into 
; Also see handler_basics
;
explosion_replacements
  !byte map_rockford | map_unprocessed
  !byte map_rockford | map_unprocessed
  !byte map_diamond | map_unprocessed
  !byte map_space

; *************************************************************************************
; Given a cell type, decide what Rockford is allowed to do
;   $ff means Rockford can move onto the cell freely (e.g. space, earth),
;   $0 means no movement possible (e.g. wall), and
;   $1 means move with a push (e.g rock)
;
obstacle_control
  !byte $ff                                                                           ; map_space
  !byte $ff                                                                           ; map_earth
  !byte 0                                                                             ; map_wall
  !byte 0                                                                             ; map_titanium_wall
  !byte $ff                                                                           ; map_diamond
  !byte 1                                                                             ; map_rock
  !byte 0                                                                             ; map_firefly
  !byte 0                                                                             ; map_amoeba
  !byte 0                                                                             ; map_rockford_appearing_or_end_position
  !byte 0                                                                             ; map_slime
  !byte $ff                                                                           ; map_explosion
  !byte 0                                                                             ; map_bomb
  !byte 0                                                                             ; map_growing_wall
  !byte 0                                                                             ; map_magic_wall
  !byte 0                                                                             ; map_butterfly
  !byte 1                                                                             ; map_rockford

; *************************************************************************************
; Given a cell type, decide if a rock/diamond will fall off them
;   0 = rock/diamond won't fall
;   1 = rock/diamond will slip off the cell (where this is space to do so)
;
cell_types_that_rocks_or_diamonds_will_fall_off
  !byte 0                                                                             ; map_space
  !byte 0                                                                             ; map_earth
  !byte 1                                                                             ; map_wall
  !byte 0                                                                             ; map_titanium_wall
  !byte 1                                                                             ; map_diamond
  !byte 1                                                                             ; map_rock
  !byte 0                                                                             ; map_firefly
  !byte 1                                                                             ; map_amoeba
  !byte 0                                                                             ; map_rockford_appearing_or_end_position
  !byte 0                                                                             ; map_slime
  !byte 0                                                                             ; map_explosion
  !byte 0                                                                             ; map_bomb
  !byte 1                                                                             ; map_growing_wall
  !byte 0                                                                             ; map_magic_wall
  !byte 0                                                                             ; map_butterfly
  !byte 0                                                                             ; map_rockford

; *************************************************************************************
; Given a cell type, decide what it turns into when a rock/diamond falls onto it
; 
update_cell_type_when_below_a_falling_rock_or_diamond
  !byte 0                                                                             ; map_space
  !byte 0                                                                             ; map_earth
  !byte 0                                                                             ; map_wall
  !byte 0                                                                             ; map_titanium_wall
  !byte 0                                                                             ; map_diamond
  !byte 0                                                                             ; map_rock
  !byte map_start_large_explosion                                                     ; map_firefly
  !byte 0                                                                             ; map_amoeba
  !byte 0                                                                             ; map_rockford_appearing_or_end_position
  !byte 0                                                                             ; map_slime
  !byte 0                                                                             ; map_explosion
  !byte map_start_large_explosion                                                     ; map_bomb
  !byte 0                                                                             ; map_growing_wall
  !byte map_anim_state3 | map_magic_wall                                              ; map_magic_wall
  !byte map_anim_state4 | map_butterfly                                               ; map_butterfly
  !byte map_anim_state7 | map_rockford                                                ; map_rockford

; *************************************************************************************
cave_play_order
  !byte 1, 2, 3, 16
  !byte 5, 6, 7, 17
  !byte 9, 10, 11, 18
  !byte 13, 14, 15, 19
  !byte 4, 8, 12, 0

cave_selection_cycle_up
  !byte 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0
cave_selection_cycle_down
  !byte 15,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14

level_selection_cycle_up
  !byte 0,2,3,4,5,1
level_selection_cycle_down
  !byte 0,5,1,2,3,4

; *************************************************************************************
; Given a cell type, decide what it turns into when affected by an explosion
;   0 = not affected
;   $ff = Rockford dies
; The self-mod code using lookup_table_address_low needs this (see show_large_explosion)
; IMPORTANT: this table must not go-over a page boundary
!align 255, 0

cell_types_that_will_turn_into_large_explosion
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_space
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_earth
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_wall
  !byte 0                                                                             ; map_titanium_wall
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_diamond
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_rock
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_firefly
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_amoeba
  !byte 0                                                                             ; map_rockford_appearing_or_end_position
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_slime
  !byte 0                                                                             ; map_explosion
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_bomb
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_growing_wall
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_magic_wall
  !byte map_unprocessed | map_large_explosion_state3                                  ; map_butterfly
  !byte $ff                                                                           ; map_rockford

; *************************************************************************************
; Given a cell type, decide what it turns into when affected by an explosion into diamonds
;   0 = not affected
;   $ff = Rockford dies
;
cell_types_that_will_turn_into_diamonds
  !byte map_unprocessed | map_diamond                                                 ; map_space
  !byte map_unprocessed | map_diamond                                                 ; map_earth
  !byte map_unprocessed | map_diamond                                                 ; map_wall
  !byte 0                                                                             ; map_titanium_wall
  !byte map_unprocessed | map_diamond                                                 ; map_diamond
  !byte map_unprocessed | map_diamond                                                 ; map_rock
  !byte map_unprocessed | map_diamond                                                 ; map_firefly
  !byte map_unprocessed | map_diamond                                                 ; map_amoeba
  !byte 0                                                                             ; map_rockford_appearing_or_end_position
  !byte map_unprocessed | map_diamond                                                 ; map_slime
  !byte 0                                                                             ; map_explosion
  !byte 0                                                                             ; map_bomb
  !byte map_unprocessed | map_diamond                                                 ; map_growing_wall
  !byte map_unprocessed | map_diamond                                                 ; map_magic_wall
  !byte map_unprocessed | map_diamond                                                 ; map_butterfly
  !byte $ff                                                                           ; map_rockford

; *************************************************************************************
; Given a cell type, decide what it turns into when processed by the magic wall
; This just affects rocks/diamonds (rocks become diamonds and visa versa)
;
items_produced_by_the_magic_wall
  !byte 0                                                                             ; map_space
  !byte 0                                                                             ; map_earth
  !byte 0                                                                             ; map_wall
  !byte 0                                                                             ; map_titanium_wall
  !byte map_unprocessed | map_rock                                                    ; map_diamond
  !byte map_unprocessed | map_diamond                                                 ; map_rock
  !byte 0                                                                             ; map_firefly
  !byte 0                                                                             ; map_amoeba
  !byte 0                                                                             ; map_rockford_appearing_or_end_position
  !byte 0                                                                             ; map_slime
  !byte 0                                                                             ; map_explosion
  !byte 0                                                                             ; map_bomb
  !byte 0                                                                             ; map_growing_wall
  !byte 0                                                                             ; map_magic_wall
  !byte 0                                                                             ; map_butterfly
  !byte 0                                                                             ; map_rockford

; *************************************************************************************
; Given a cell type, decide what happens when landing on slime
; Only rocks/diamonds/bombs are allowed through, they don't change
;
items_allowed_through_slime
  !byte 0                                                                             ; map_space
  !byte 0                                                                             ; map_earth
  !byte 0                                                                             ; map_wall
  !byte 0                                                                             ; map_titanium_wall
  !byte map_unprocessed | map_diamond                                                 ; map_diamond
  !byte map_unprocessed | map_rock                                                    ; map_rock
  !byte 0                                                                             ; map_firefly
  !byte 0                                                                             ; map_amoeba
  !byte 0                                                                             ; map_rockford_appearing_or_end_position
  !byte 0                                                                             ; map_slime
  !byte 0                                                                             ; map_explosion
  !byte map_unprocessed | map_bomb                                                    ; map_bomb
  !byte 0                                                                             ; map_growing_wall
  !byte 0                                                                             ; map_magic_wall
  !byte 0                                                                             ; map_butterfly
  !byte 0                                                                             ; map_rockford

; *************************************************************************************
; Direction handling
;
rock_push_directions  ;direction pointer to cell beyond the rock being pushed
  !byte $43, $3f, 0, $c1  ;right, left, up, down. Up can change in game when gravity is on/off

rockford_cell_value_for_direction
  !byte map_unprocessed | map_anim_state2 | map_rockford  ;animation for left
  !byte map_unprocessed | map_anim_state1 | map_rockford  ;animation for right
  !byte 0, 0  ;no animation for up/down - remain as normal Rockford

map_offset_for_direction  ;direction pointer to cells next to Rockford (in $41)
  !byte $42, $40, 1, $81  ;right, left, up, down

neighbour_cell_pointer_from_direction_index  ;direction pointer to surrounding cell reference table (Rockford)
  !byte 5 ;points to cell_right
  !byte 3 ;points to cell_left
  !byte 1 ;points to cell_above
  !byte 7 ;points to cell_below

firefly_neighbour_pointers  ;direction pointer to surrounding cell reference table (butterfly/firefly)
  !byte 3 ;points to cell_left
  !byte 5 ;points to cell_right
  !byte 1 ;points to cell_above
  !byte 1 ;points to cell_above
  !byte 5 ;points to cell_right
  !byte 3 ;points to cell_left
  !byte 7 ;points to cell_below
  !byte 7 ;points to cell_below

firefly_and_butterfly_next_direction_table  ;next direction to consider (butterfly/firefly)
  !byte 2, 3, 4, 5, 6, 7, 0, 1

; *************************************************************************************
; self-mod code table
;
self_mod_code_table
  ;used to reveal-hide_tiles: cmp #map_unprocessed, bcc not_titanium, lda #map_titanium_wall
  !byte $c9, map_unprocessed, $90, 0, $a9, map_titanium_wall
  ;used to nop out the above
  !byte $ea, $ea, $ea, $ea, $ea, $ea

; *************************************************************************************
; status bar and messages
;
status_bar_line1
  !byte 96,98,32,32,148,150
  !fill 16,32
  !byte 180,182

status_bar_line2
  !byte 97,99,32,32,149,151
  !scr "  time  cave Z9 "
  !byte 181,183

status_bar_line3
  !fill 24,32

status_messages
status_message_paused
  !byte 4  ;purple
  !scr "     paused      "
status_message_got_all_diamonds
  !byte 5  ;green
  !scr " got all diamonds"
status_message_no_bombs_left
  !byte 7  ;yellow
  !scr "  no bombs left  "
status_message_hurry
  !byte 7  ;yellow
  !scr "      hurry      "
status_message_out_of_time
  !byte 2  ;red
  !scr "   out of time   "
status_message_bonus_life
  !byte 5  ;green
  !scr "   bonus life    "
status_message_game_over
  !byte 2  ;red
  !scr "    game over    "

game_title
  !scr "boulder dash"

game_options
options_cave_select
  !byte 180,182
  !scr "  cave  a  left right "
options_level_select
  !byte 181,183
  !scr "  level 1  up down    "
options_start
  !scr "  press fire to start   "

; *************************************************************************************
; title theme tune
;
theme_voice_1
  !byte 156,176,189,205,167,181,189,211,193,199,205,213,199,226,202,222
  !byte 156,205,189,167,144,211,167,144,156,205,189,167,193,230,205,193
  !byte 144,199,181,156,185,227,199,185,189,202,137,205,181,181,218,181
  !byte 205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205
  !byte 205,205,205,205,205,205,205,205,205,205,205,205,199,199,199,199
  !byte 205,230,205,227,205,226,205,222,199,227,199,227,199,218,199,227
  !byte 205,205,205,205,205,205,205,205,205,205,205,205,199,199,199,199
  !byte 216,205,189,176,211,199,181,144,216,205,189,176,211,199,181,144
  !byte 0

theme_voice_2
  !byte 156,189,156,172,144,137,144,181,130,130,130,130,144,218,150,213
  !byte 156,156,156,156,144,144,144,144,156,156,156,156,130,130,130,130
  !byte 144,144,144,144,185,185,185,185,189,189,189,189,181,181,156,156
  !byte 156,156,156,156,156,156,156,156,144,144,144,144,144,144,144,144
  !byte 156,216,156,218,156,216,156,218,144,216,144,218,144,211,144,213
  !byte 156,156,156,222,156,156,156,213,144,144,144,144,144,144,144,144
  !byte 156,216,156,218,156,216,156,218,144,216,144,218,144,211,144,213
  !byte 205,189,176,156,199,181,167,144,222,216,205,189,181,167,144,144
  !byte 0
