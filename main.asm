
;map elements defines
map_space=0
map_earth=1
map_wall=2
map_titanium_wall=3
map_diamond=4
map_rock=5
map_firefly=6
map_amoeba=7
map_rockford_appearing_or_end_position=8
map_slime=9
map_explosion=10
map_bomb=11
map_growing_wall=12
map_magic_wall=13
map_butterfly=14
map_rockford=15

;animation states
map_anim_state0=0
map_anim_state1=16
map_anim_state2=32
map_anim_state3=48
map_anim_state4=64
map_anim_state5=80
map_anim_state6=96
map_anim_state7=112

;special map states
map_active_exit=24
map_start_large_explosion=70
map_large_explosion_state1=19
map_large_explosion_state2=35
map_large_explosion_state3=51
map_unprocessed=128
map_deadly=192

;sprite defines
sprite_space=0
sprite_boulder1=1
sprite_boulder2=2
sprite_diamond1=3
sprite_diamond2=4
sprite_diamond3=5
sprite_diamond4=6
sprite_titanium_wall1=7
sprite_titanium_wall2=8
sprite_box=9
sprite_wall1=10
sprite_wall2=11
sprite_explosion1=12
sprite_explosion2=13
sprite_explosion3=14
sprite_explosion4=15
sprite_magic_wall1=16
sprite_magic_wall2=17
sprite_magic_wall3=18
sprite_magic_wall4=19
sprite_amoeba1=20
sprite_amoeba2=21
sprite_butterfly1=22
sprite_butterfly2=23
sprite_butterfly3=24
sprite_firefly1=25
sprite_firefly2=26
sprite_firefly3=27
sprite_firefly4=28
sprite_earth1=29
sprite_earth2=30
sprite_pathway=31
sprite_rockford_blinking1=32
sprite_rockford_blinking2=33
sprite_rockford_blinking3=34
sprite_rockford_winking1=35
sprite_rockford_winking2=36
sprite_rockford_tapping_foot1=37
sprite_rockford_tapping_foot2=38
sprite_rockford_tapping_foot3=39
sprite_rockford_tapping_foot4=40
sprite_rockford_tapping_foot5=41
sprite_rockford_moving_left1=42
sprite_rockford_moving_left2=43
sprite_rockford_moving_left3=44
sprite_rockford_moving_left4=45
sprite_rockford_moving_right1=46
sprite_rockford_moving_right2=47
sprite_rockford_moving_right3=48
sprite_rockford_moving_right4=49
sprite_bomb1=50
sprite_bomb2=51
sprite_bomb3=52
sprite_bomb4=53
sprite_bubble=54

map_address_low = $21
map_address_high = $22

sprite_address_low = $23
sprite_address_high = $24

screen_addr1_low = $40
screen_addr1_high = $41
screen_addr2_low = $42
screen_addr2_high = $43

colour_addr1_low = $44
colour_addr1_high = $45
colour_addr2_low = $46
colour_addr2_high = $47

map_rockford_current_position_addr_low = $48
map_rockford_current_position_addr_high = $49

;* = $1001
; !byte $0b,$10,$01,$00,$9e,$34,$31,$31,$30,$00,$00,$00,$00  ;sys4110 i.e. $100E
;Note                        4   1   1   0            is sys4110

;Without change to start (bottom) of basic
;* = $1201
; !byte $0e,$10,$0a,$00,$9e,$20,$34,$36,$32,$32,$00,$00,$00
;Note                  sys       4   6   2   2         is sys 4622 i.e. $120E

;With change to start (bottom) of basic, needed for 8k+ Vic
;screen start: 4096
;size: 24x28=672
;total: 4768
;start of basic (bottom): 4769 = $12a1

;in VICE enter below then load this program
;see https://techtinkering.com/articles/changing-screen-dimensions-on-the-commodore-vic-20

;poke 783,0:   rem clear the carry
;poke 781,161: rem set x-register to $a1
;poke 782,18:  rem set y-register to $12
;sys 65436:    rem set membot
;sys 58232:    rem cold start basic

;as one line:
;poke783,0:poke781,161:poke782,18:sys65436:sys58232
;TODO: above is for 24x28 screen (as above)

; *************************************************************************************
* = $12a0  ;for PRG load start
  !byte $a2,$12

; *************************************************************************************
* = $12a2  ;start +1 byte after start of basic
  !byte $0e,$10,$0a,$00,$9e,$20,$34,$37,$38,$33,$00,$00,$00
;Note                   sys       4   7   8   3         is sys 4783 i.e. $12af

; *************************************************************************************
; Increase screen size and centre it, change character set location for custom characters

  ;poke 36866,(peek(36866) and 128) or c
  lda 36866
  and #128
  ora #24  ;24 columns
  sta 36866

  ;poke 36867,(peek(36867) and 129) or (2*r)
  lda 36867
  and #129
  ora #(28*2)  ;28 rows
  sta 36867

  ;poke 36864,12:poke 36865,38
  lda #10
  sta 36864  ;horizontal alignment
  lda #29
  sta 36865  ;vertical alignment

  ;poke36878,(peek(36878)and15or32
  lda 36878
  and #15
  ora #32  ;auxillary colour
  sta 36878

  ;poke36869,peek(36869)and240or15
  lda 36869
  and #240
  ora #15  ;custom characters at $1c00 (7168)
  sta 36869

; *************************************************************************************

  ;populate cave map
	jsr populate_cave_from_file
  jsr populate_cave_tiles_pseudo_random

  jsr draw_borders

  ; put the start tile on the map
  jsr set_rockford_start

  ;set start of map
  lda #<tile_map_row_0
  sta map_address_low
  lda #>tile_map_row_0
  sta map_address_high

  jsr draw_grid_of_sprites

;thing1
;  jmp thing1
  rts

difficulty_level
  !byte 1

; *************************************************************************************
; Draw a full grid of sprites, updating the current map position first
; Below is needed to point the program counter to the next page (multiple of 256)
* = $1300
draw_grid_of_sprites

  ;jsr update_map_scroll_position
  ;jsr update_grid_animations

  lda #0  ;skip status bar
  sta temp1  ;grid row counter
loop_plot_row
  tay

  lda char_screen_low,y
  sta screen_addr1_low
  lda char_screen_high,y
  sta screen_addr1_high

  lda char_screen_below_low,y
  sta screen_addr2_low
  lda char_screen_below_high,y
  sta screen_addr2_high

  lda colour_screen_low,y
  sta colour_addr1_low
  lda colour_screen_high,y
  sta colour_addr1_high

  lda colour_screen_below_low,y
  sta colour_addr2_low
  lda colour_screen_below_high,y
  sta colour_addr2_high

  lda #0
  sta temp2  ;grid column counter
loop_plot_column

  ;Get sprite number from map
  tay
  lda (map_address_low),y

  ;Next 6 bytes are changed with self-mod code
  ;skip_tile_check
  ;    cmp #map_growing_wall
  ;    beq skip_null_tile
  ;    nop
  ;    nop
  ;not_titanium

  tay
  lda cell_type_to_sprite,y
  tay

  ;Lookup sprite high/low address in the sprite list table
  lda sprite_addresses_low,y
  sta sprite_address_low
  lda sprite_addresses_high,y
  sta sprite_address_high

  ;Transfer the 4 bytes which make up the sprite tile to the locations below (self-mod code)
  ldy #0
  lda (sprite_address_low),y
  sta top_left_char+1
  iny
  lda (sprite_address_low),y
  sta top_right_char+1
  iny
  lda (sprite_address_low),y
  sta bottom_left_char+1
  iny
  lda (sprite_address_low),y
  sta bottom_right_char+1

  ;Plot the top 2 and bottom 2 characters for the tile
  lda temp2  ;grid column counter
  asl  ;Double the counter number to get the screen offset position
  tay
top_left_char
  lda #65
  sta (screen_addr1_low),y
bottom_left_char
  lda #67
  sta (screen_addr2_low),y

;TODO: Temp
  lda #12
  sta (colour_addr1_low),y
  sta (colour_addr2_low),y
;

  iny

top_right_char
  lda #66
  sta (screen_addr1_low),y
bottom_right_char
  lda #68
  sta (screen_addr2_low),y

;TODO: Temp
  lda #12
  sta (colour_addr1_low),y
  sta (colour_addr2_low),y
;

;skip_null_tile
  inc temp2  ;grid column counter
  lda temp2  ;grid column counter
  cmp #12  ;12 columns
  bcc loop_plot_column

  ; move tile pointer on to next row (64 bytes)
  lda map_address_low
  clc
  adc #$40
  sta map_address_low
  bcc skip_high
  inc map_address_high
skip_high
  inc temp1  ;grid row counter
  lda temp1  ;grid row counter
  cmp #12  ;12 rows (skip status bar in rows 0, 1)
  ;bcc loop_plot_row
  bcs end_draw
  jmp loop_plot_row

end_draw
;TODO: Temp
  lda #15
  sta $900f
;
  rts

temp1
  !byte 0

temp2
  !byte 0

; *************************************************************************************
; screen addresses
;
char_screen_high
  !byte $10, $10, $10, $10, $11, $11, $11, $11, $11, $12, $12, $12

char_screen_low
  !byte $60, $90, $c0, $f0, $20, $50, $80, $b0, $e0, $10, $40, $70

char_screen_below_high
  !byte $10, $10, $10, $11, $11, $11, $11, $11, $11, $12, $12, $12

char_screen_below_low
  !byte $78, $a8, $d8, $08, $38, $68, $98, $c8, $f8, $28, $58, $88

colour_screen_high
  !byte $94, $94, $94, $94, $95, $95, $95, $95, $95, $96, $96, $96

colour_screen_low
  !byte $60, $90, $c0, $f0, $20, $50, $80, $b0, $e0, $10, $40, $70

colour_screen_below_high
  !byte $94, $94, $94, $95, $95, $95, $95, $95, $95, $96, $96, $96

colour_screen_below_low
  !byte $78, $a8, $d8, $08, $38, $68, $98, $c8, $f8, $28, $58, $88

; *************************************************************************************
; Loop over all rows, plotting side borders from the cave file
draw_borders

;    ldx #21
;write_left_and_right_borders_loop
;    ldy #38
;cells_to_processed_loop
;    lda (map_address_low),y
;    ora #map_unprocessed
;    sta (map_address_low),y
;    dey
;    bne cells_to_processed_loop
;    lda #$40
;    jsr add_a_to_ptr
;    dex
;    bne write_left_and_right_borders_loop
  ; write the top and bottom borders using param_border_tile (steelwall if zero)
  lda param_border_tile
  ldx #39
write_top_and_bottom_borders_loop
  sta tile_map_row_0,x
  sta tile_map_row_21,x
  dex
  bpl write_top_and_bottom_borders_loop
  rts

; *************************************************************************************
; Populate game tile map from cave_map_data loaded from file
populate_cave_from_file

  lda #>cave_map_data                ; Point to cave address high byte
  sta plot_cave_tiles_x2+2           ; Store in self-modifying code location
  lda #<cave_map_data                ; Point to cave address low byte
  sta plot_cave_tiles_x2+1           ; Store in self-modifying code location

  lda #$14                           ; Set row counter to 20 (excluding steel top and bottom rows)
  sta load_row_counter
  lda #<tile_map_row_1               ; Point to start of map (low)
  sta map_address_low
  lda #>tile_map_row_1               ; Point to start of map (high)
  sta map_address_high

load_plot_cave_row
  ldy #$00                           ; Set column start to 0
plot_cave_tiles_x2
  lda cave_map_data                  ; The cave_map_data value after LDA is changed in this routine (self-modifying code)
  pha                                ; Store the byte (equates to 2 tiles) on the stack
  lsr                                ; left shift bits x 4 to get the nibble
  lsr
  lsr
  lsr
  sta (map_address_low),y            ; Store nibble as tile value to map
  iny                                ; Add 1 for next tile position
  pla                                ; Pull the byte off the stack
  and #$0f                           ; Get the second nibble
  sta (map_address_low),y            ; Store nibble as tile value to map
  iny                                ; Add 1 for next tile position
  inc plot_cave_tiles_x2+1           ; Move onto the next byte, calculating the high bytes as well
  lda plot_cave_tiles_x2+1
  bne load_skip_inc_high_byte
  inc plot_cave_tiles_x2+2
load_skip_inc_high_byte
  cpy #$28                           ; Check if 40 tiles plotted
  bne plot_cave_tiles_x2             ; Continue if not
  lda #$40                           ; Add 64 to map_address_low
  jsr add_a_to_ptr
  dec load_row_counter               ; Decrease row counter by 1
  lda load_row_counter
  beq populate_cave_return           ; If no more rows (counter is zero), go to end of routine
  jmp load_plot_cave_row             ; Continue to plot the next cave row

populate_cave_return
  rts

load_row_counter
  !byte 0

; *************************************************************************************
add_a_to_ptr

  clc
  adc map_address_low
  sta map_address_low
  bcc add_ptr_return
  inc map_address_high
add_ptr_return
  rts

; *************************************************************************************
map_xy_position_to_map_address

  lda #0
  sta map_address_low
  lda screen_addr1_high
  lsr
  ror map_address_low
  lsr
  ror map_address_low
  ora #>tile_map_row_0
  sta map_address_high
  lda screen_addr1_low
  ora map_address_low
  sta map_address_low
  rts

; *************************************************************************************
set_rockford_start

  lda param_rockford_start
  sta screen_addr1_high
  lda param_rockford_start+1
  sta screen_addr1_low
  jsr map_xy_position_to_map_address
  ldy #0
;TODO: Undo when ready
  lda #map_rockford
;    lda #map_rockford_appearing_or_end_position
  sta (map_address_low),y
  lda map_address_low
  sta map_rockford_current_position_addr_low
  lda map_address_high
  sta map_rockford_current_position_addr_high
  rts

; ****************************************************************************************************
; Populate the cave with tiles using the pseudo-random method
;   Tiles are applied to the map if the tile already there is a 'null' tile (from populate_cave_from_file)
;   These tiles may be the cave default (often dirt) or a tile determined in a pseudo-random fashion
;   A pseudo-random value is calculated by a function using the seed value for the cave difficulty level
;   The pseudo-random value is returned in random_seed1
;   This value is compared with each of the 4 tile probability values for the cave
;   If random_seed1 is not less than the probability value, the corresponding tile is plotted
;   For some caves, a second tile may be required below the pseudo-random one
;   These tiles are held in a 'beneath' row, populated with second tile values from cave parameters
;   If non-zero, the 'beneath' row tile will override random tiles (when on the next row)
; ****************************************************************************************************
populate_cave_tiles_pseudo_random

  ldx difficulty_level               ; Use difficulty_level (values 1 to 5) for the random seed value to use
  dex
  lda param_random_seeds,x           ; Set random_seed2 to cave random seed
  sta random_seed2
  lda #$00                           ; Set random_seed1 to 0
  sta random_seed1

  lda #$16                           ; Set number of rows to 22 (includes steel top and bottom rows)
  sta populate_row_counter
  lda #<tile_map_row_1               ; Point to start of map (low)
  sta map_address_low
  lda #>tile_map_row_1               ; Point to start of map (high)
  sta map_address_high
populate_cave_row
  ldy #$00                           ; Set column start to 0
populate_cave_tile
  lda tile_below_store_row,y         ; Needed for BD2 caves G, K, get previously stored tile
  sta tile_override                  ; The override tile might need to replace the random tile

  ldx param_initial_fill_tile        ; Set cave fill tile
  jsr pseudo_random                  ; Call pseudo-random routine returning random_seed1 in the accumulator
  cmp param_tile_probability         ; Compare pseudo-random value with first cave probability parameter
  bcs check_next_probability1        ; If random_seed1 is not less than cave random compare parameter, don't plot the cave random object, try next one
  ldx param_tile_for_probability     ; Set the designated cave random tile
  lda param_tile_for_prob_below      ; Needed for BD2 caves G, K, set the tile below current one
  sta tile_below_store_row,y         ; to the parameter value for it (this value is 0 for most caves)

check_next_probability1
  lda random_seed1
  cmp param_tile_probability+1       ; Compare pseudo-random value with second cave probability parameter
  bcs check_next_probability2        ; If random_seed1 is not less than cave random compare parameter, don't plot the cave random object, try next one
  ldx param_tile_for_probability+1   ; Set the designated cave random tile
  lda param_tile_for_prob_below+1    ; Needed for BD2 caves G, K, set the tile below current one
  sta tile_below_store_row,y         ; to the parameter value for it (this value is 0 for most caves)

check_next_probability2
  lda random_seed1
  cmp param_tile_probability+2       ; Compare pseudo-random value with third cave probability parameter
  bcs check_next_probability3        ; If random_seed1 is not less than cave random compare parameter, don't plot the cave random object, try next one
  ldx param_tile_for_probability+2   ; Set the designated cave random tile
  lda param_tile_for_prob_below+2    ; Needed for BD2 caves G, K, set the tile below current one
  sta tile_below_store_row,y         ; to the parameter value for it (this value is 0 for most caves)

check_next_probability3
  lda random_seed1
  cmp param_tile_probability+3       ; Compare pseudo-random value with forth cave probability parameter
  bcs check_probability_end          ; If random_seed1 is not less than cave random compare parameter, don't plot the cave random object, continue
  ldx param_tile_for_probability+3   ; Set the designated cave random tile
  lda param_tile_for_prob_below+3    ; Needed for BD2 caves G, K, set the tile below current one
  sta tile_below_store_row,y         ; to the parameter value for it (this value is 0 for most caves)

check_probability_end
  lda (map_address_low),y            ; Get the map tile added when the cave was loaded
  cmp #$0f                           ; Check if a null tile #$0f. This occurs at this late stage to preserve the ongoing random seed calculations
  beq apply_random_tile_ok           ; Allow replacement with the random tile where is currently null
  lda #0                             ; Needed for BD2 caves G, K, reset the tile below current one
  sta tile_below_store_row,y         ; It must not be used later for override
  jmp check_tile_override            ; Now check for a previous override

apply_random_tile_ok
  txa                                ; The loaded map tile was a null, so replace with the random tile instead
  sta (map_address_low),y

check_tile_override
  lda tile_override
  beq skip_below_tile                ; Needed for BD2 caves G, K, check the override tile is 0
  sta (map_address_low),y            ; If not then apply the override tile
  lda #0                             ; Reset the tile below current one for next time
  sta tile_below_store_row,y

skip_below_tile
  iny                                ; Add 1 to column count
  cpy #$28                           ; Check if 40 columns plotted
  bne populate_cave_tile             ; Continue if not
  lda #$40                           ; Add 64 to map_address_low
  jsr add_a_to_ptr
  dec populate_row_counter
  lda populate_row_counter
  beq tiles_pseudo_return            ; Rows are zero, so end
  jmp populate_cave_row              ; Continue to plot the next cave row
tiles_pseudo_return
  rts

populate_row_counter
  !byte 0

tile_override
  !byte 0

; ****************************************************************************************************
; Pseudo-random function
;   Using a seed value, apply various operations to provide a value in random_seed1 used above
;   This value is not random, for a given seed value, the returned value is always predictable
; ****************************************************************************************************
pseudo_random

  lda random_seed1
  ror
  ror
  and #$80
  sta seeded_rand_temp1

  lda random_seed2
  ror
  and #$7f
  sta seeded_rand_temp2

  lda random_seed2
  ror
  ror
  and #$80
  clc
  adc random_seed2
  adc #$13
  sta random_seed2
  lda random_seed1
  adc seeded_rand_temp1
  adc seeded_rand_temp2
  sta random_seed1
  rts

random_seed1
  !byte 0
random_seed2
  !byte 0
seeded_rand_temp1
  !byte 0
seeded_rand_temp2
  !byte 0

; *************************************************************************************
;Custom character set
* = $1c00
!source "spr.asm"

; *************************************************************************************
;Cave tile map
;
;Below is needed to point the program counter to the next page (multiple of 256)
;IMPORTANT: Address must be $1000, $2000 etc, not $1100 for example!
;Each row has 40 bytes used for the tiles in the game, 24 unused
* = $2000

tile_map_row_0  ;top border
  !fill 64
tile_map_row_1  ;1-20 rows between the borders
  !fill (64*19)
tile_map_row_20
  !fill 64
tile_map_row_21  ;bottom border
  !fill 64
tile_below_store_row  ;special row for pseudo-random generated caves with extra-tile below the random one
  !fill 64

; *************************************************************************************
!source "vars.asm"

* = $2900  ;Needed to point to the correct memory location for loading caves
!source "cavedata.asm"
