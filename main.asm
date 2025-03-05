; *************************************************************************************
; Boulder Dash for the Vic20
; by raspberrypioneer Feb 2025
;

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

;keys
KEY_MASK_FIRE=1
KEY_MASK_RIGHT=2
KEY_MASK_LEFT=4
KEY_MASK_UP=8
KEY_MASK_DOWN=16

;status_messages
message_clear=255
message_paused=0
message_got_all_diamonds=18
message_no_bombs_left=36
message_hurry_up=54
message_out_of_time=72
message_bonus_life=90
message_game_over=108
message_std_keymap=126
message_alt_keymap=144

;sounds
no_sound=0
rockford_move_sound=1
got_earth_sound=2
got_diamond_sound=3
got_all_diamonds_sound=4
bonus_life_sound=4  ;same as got_all_diamonds_sound
enter_cave_sound=5
exit_cave_sound=6
rock_move_sound=7
diamond_move_sound=8
hurry_sound=8  ;same as diamond_move_sound
explosion_sound=9
magic_wall_sound=10
growing_wall_sound=10  ;same as magic_wall_sound
amoeba_sound=11

; *************************************************************************************
zero_page_start

neighbour_cell_directions = $00  ;used as a table for the cell variables below
cell_above_left = $00
cell_above = $01
cell_above_right = $02
cell_left = $03
cell_current = $04
cell_right = $05
cell_below_left = $06
cell_below = $07
cell_below_right = $08

neighbour_cell_pointer = $09

key_press = $0a

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

map_address_low = $21
map_address_high = $22

map_rows = $0b
map_cols = $0c

map_rockford_current_position_addr_low = $48
map_rockford_current_position_addr_high = $49

map_rockford_end_position_addr_low = $50
map_rockford_end_position_addr_high = $51

visible_top_left_map_x = $54
visible_top_left_map_y = $55

score_low = $0d
score_high = $0e

temp1 = $0f
temp2 = $10

player_lives = $56
cave_number = $57
difficulty_level = $58
diamonds_required = $59
time_remaining = $5a
bomb_counter = $5b
bomb_delay = $5c
gravity_timer = $5d
magic_wall_state = $5e
magic_wall_timer = $5f
amoeba_growth_interval = $60
amoeba_counter = $61
amoeba_replacement = $62
number_of_amoeba_cells_found = $63
bonus_timer = $64
rockford_cell_value = $65
current_rockford_sprite = $66
rockford_explosion_cell_type = $67
current_amoeba_cell_type = $68
neighbour_cell_contents = $69
delay_trying_to_push_rock = $6a
saved_message = $6b
message_timer = $6c

tick_counter = $6d
sub_second_ticks = $6e
ticks_since_last_direction_key_pressed = $6f
play_sound_fx = $70

zero_page_end  ;last zero page byte
play_ambient_sound = $71

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
; For reading keyboard

  lda #0
  sta $9122
  lda #$ff
  sta $9123

; *************************************************************************************

;TODO: Clear zero page

  ;Setup keyboard
  jsr setup_IRQ

;TODO: temp
  lda #12  ;colour
  sta $9400  ;colour map
  sta $9401  ;colour map
  sta $9418  ;colour map
  sta $9419  ;colour map
  jsr clear_status

;TODO: temp
lda #1
sta player_lives
sta difficulty_level

;game loop for each of the player lives
play_next_life
  jsr play_one_life
  lda player_lives
  bne play_next_life

;TODO: replace
  rts

; *************************************************************************************
; Game action starts here, playing one of Rockford's lives
play_one_life

  ; Load cave parameters and map from file
;  jsr load_cave_data

  ;initialise variables
;  lda #$9f
;  sta rockford_cell_value
;  lda #240
;  sta ticks_since_last_direction_key_pressed
;  lda #31
;  sta tick_counter
;  lda #12
;  sta sub_second_ticks
;  lda #4
;  sta delay_trying_to_push_rock
;  lda #$0d
;  sta magic_wall_state
;  sta amoeba_growth_interval
;  lda #message_clear
;  sta saved_message
;  lda #1
;  sta amoeba_counter
;  sta message_timer
;  lda #0
;  sta amoeba_replacement
;  sta number_of_amoeba_cells_found
;  sta current_rockford_sprite
;  sta rockford_explosion_cell_type
;  sta bonus_timer
;  sta cell_type_to_sprite  ;ensure space is the first sprite in table
;  sta play_sound_fx
;  sta play_ambient_sound
;  sta random_seed

  ;populate cave map
  jsr populate_cave_from_file
  jsr populate_cave_tiles_pseudo_random

  ;set start of map
  lda #<tile_map_row_1
  sta map_address_low
  lda #>tile_map_row_1
  sta map_address_high

  jsr draw_borders
  jsr initialise_stage
;  jsr update_cave_time
;  jsr update_status_bar
;  ldy #message_clear
;  jsr update_status_message

  ;dissolve screen when starting
;  jsr prepare_reveal_hide_code
;  lda #map_space
;  jsr screen_dissolve_effect

  ;for normal game play, nop out the logic applied above in draw grid (self-mod code)
;  ldx #12
;  jsr self_mod_code

  jsr gameplay_loop

  ;check for game over
;  lda player_lives
;  bne not_game_over

;  ldy #message_game_over
;  jsr update_status_message

;not_game_over

  ;un-dissolve screen when ending
;  jsr prepare_reveal_hide_code
;  lda #map_unprocessed
;  jsr screen_dissolve_effect

  rts

; *************************************************************************************
; Loop over all rows, plotting side borders from the cave file
draw_borders

;  ldx #21
;write_left_and_right_borders_loop
;  ldy #38
;cells_to_processed_loop
;  lda (map_address_low),y
;  ora #map_unprocessed
;  sta (map_address_low),y
;  dey
;  bne cells_to_processed_loop
;  lda #$40
;  jsr add_a_to_ptr
;  dex
;  bne write_left_and_right_borders_loop
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
; Apply the parameters for the cave being played
initialise_stage

  lda #20
  sta visible_top_left_map_x
  lsr
  sta visible_top_left_map_y

  ; set the delay between amoeba growth
;  lda param_amoeba_magic_wall_time
;  sta amoeba_growth_interval
;  sta magic_wall_timer

  ; set the gravity timer
;  ldy #0
;  lda param_zero_gravity_time
;  beq dont_allow_rock_push_up
;  ldy #$ee  ;Special value used to detect rock has been pushed up, only applies when gravity is off
;dont_allow_rock_push_up
;  sta gravity_timer
;  sty rock_push_directions+2

  ; initialise random seed for possible use with slime permeability
;  lda #0
;  sta random_seed2

  ; put the end tile on the map
  lda param_rockford_end
  sta screen_addr1_high
  lda param_rockford_end+1
  sta screen_addr1_low
  jsr map_xy_position_to_map_address
  ldy #0
  lda #map_titanium_wall
  sta (map_address_low),y
  lda map_address_low
  sta map_rockford_end_position_addr_low
  lda map_address_high
  sta map_rockford_end_position_addr_high

  ; put the start tile on the map
  jsr set_rockford_start

  ;set cave parameters
;  ldx difficulty_level
;  dex
;  lda param_diamonds_required,x
;  sta diamonds_required
;  lda param_cave_time,x
;  sta time_remaining
;  lda param_bombs
;  sta bomb_counter

  ;cave letter and difficulty level on status bar
;  lda cave_number
;  clc
;  adc #"A"  ; Add letter "A" to get the cave letter for the cave number (which starts from zero)
;  sta status_bar_line1+37
;  lda difficulty_level
;  clc
;  adc #"0"
;  sta status_bar_line1+38

  ;update diamonds required, bombs available, player lives on status bar
;  jsr update_diamonds_required
;  jsr update_bombs_available
;  jsr update_player_lives

  rts

; *************************************************************************************
; Set Rockford start position (row/column) on map
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

; *************************************************************************************
gameplay_loop
;TODO: Add all the missing code

  jsr update_map
  jsr draw_grid_of_sprites

;TODO: Temp
thing1
  lda key_press
  cmp #KEY_MASK_FIRE
  beq do_fire_things

  cmp #KEY_MASK_RIGHT
  beq do_right_things

  cmp #KEY_MASK_LEFT
  beq do_left_things

  cmp #KEY_MASK_UP
  beq do_up_things

  cmp #KEY_MASK_DOWN
  beq do_down_things

  jmp gameplay_loop

;do fire things (show diamond)
do_fire_things
  lda #10
  sta $1000
  lda #11
  sta $1001
  lda #12
  sta $1018
  lda #13
  sta $1019
  jmp gameplay_loop

;do right things (show firefly)
do_right_things
  lda #18
  sta $1000
  lda #19
  sta $1001
  lda #20
  sta $1018
  lda #21
  sta $1019
  jmp gameplay_loop

;do left things (show butterfly)
do_left_things
  lda #46
  sta $1000
  lda #47
  sta $1001
  lda #48
  sta $1018
  lda #49
  sta $1019
  jmp gameplay_loop

;do up things (show bubble)
do_up_things
  lda #58
  sta $1000
  lda #59
  sta $1001
  lda #60
  sta $1018
  lda #61
  sta $1019
  jmp gameplay_loop

;do down things (show Rockford)
do_down_things
  lda #62
  sta $1000
  lda #63
  sta $1001
  lda #64
  sta $1018
  lda #65
  sta $1019
  jmp gameplay_loop

; *************************************************************************************
; Draw a full grid of sprites, updating the current map position first
; Below is needed to point the program counter to the next page (multiple of 256)
* = $1600
draw_grid_of_sprites

  jsr update_map_scroll_position
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

; *************************************************************************************
; Scrolls the map by setting the tile_map_ptr and visible_top_left_map_x and y
; Note: each time Rockford moves and pushes the boundaries, visible_top_left_map_x and y are incremented / decremented
;       this means the visible position is not set based on Rockford's absolute position at the start
update_map_scroll_position

    lda map_rockford_current_position_addr_low
    sta map_address_low
    lda map_rockford_current_position_addr_high
    sta map_address_high
    jsr map_address_to_map_xy_position
    sec
    sbc visible_top_left_map_x
    ldx visible_top_left_map_x
    cmp #9
    bmi check_for_need_to_scroll_left
    cpx #28
    bpl check_for_need_to_scroll_down
    inx
check_for_need_to_scroll_left
    cmp #3
    bpl check_for_need_to_scroll_down
    cpx #1
    bmi check_for_need_to_scroll_down
    dex
check_for_need_to_scroll_down
    ldy visible_top_left_map_y
    lda screen_addr1_high
    sec
    sbc visible_top_left_map_y
    cmp #9
    bmi check_for_need_to_scroll_up
    cpy #$0a
    bpl check_for_bonus_stages
    iny
check_for_need_to_scroll_up
    cmp #3
    bpl check_for_bonus_stages
    cpy #1
    bmi check_for_bonus_stages
    dey
check_for_bonus_stages
    lda param_intermission
    beq skip_bonus_stage
    ; bonus stage is always situated in top left corner
    lda #0
    tax
    tay
skip_bonus_stage
    stx visible_top_left_map_x
    stx screen_addr1_low
    sty visible_top_left_map_y
    sty screen_addr1_high
    jsr map_xy_position_to_map_address
    rts

; *************************************************************************************
; Map address (which start at $1000) becomes row/column in screen_addr1_high and low
; e.g. $1000 is 0,0   $1098 is 2,18   $1140 is 5,0   $110f is 5,15
map_address_to_map_xy_position

    lda map_address_high
    and #7
    sta screen_addr1_high
    lda map_address_low
    asl
    rol screen_addr1_high
    asl
    rol screen_addr1_high
    lda map_address_low
    and #$3f
    sta screen_addr1_low
    rts

; *************************************************************************************
; Convert a grid position (row/column) to a map address
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
; Update the gameplay map with action handlers for each of the game actors
; Includes logic for falling rocks, diamonds, bombs
update_map

    lda #20  ; twenty rows
    sta map_rows
    lda #>tile_map_row_0
    sta map_address_high
    lda #<tile_map_row_0
    sta map_address_low
    ; Each row is stored in the first 40 bytes of every 64 bytes. Here we set Y to
    ; start on the second row, after the titanium wall border
    ldy #$40
    ; loop through the twenty rows of map
tile_map_y_loop
    lda #38  ; 38 columns (cells per row)
    sta map_cols
    lda (map_address_low),y
    sta cell_left
    ; move to the next cell
    iny
    ; read current cell contents into X
    lda (map_address_low),y
    tax
    ; loop through the 38 cells in a row of map
    ; read next cell contents into cell_right
tile_map_x_loop
    ldy #$42
    lda (map_address_low),y
    sta cell_right
    ;Below checks if space, earth, wall, steel wall and just marks as processed, no handlers needed
    cpx #map_diamond
    bmi mark_cell_above_as_processed_and_move_to_next_cell

    ; read cells into cell_above and cell_below variables
    ldy #1
    lda (map_address_low),y
    sta cell_above
    ldy #$81
    lda (map_address_low),y
    sta cell_below

    ; if current cell is already processed (top bit set), then skip to next cell
    txa
    bmi mark_cell_above_as_processed_and_move_to_next_cell
    ; mark current cell as processed (set top bit)
    ora #$80
    tax
    ; the lower four bits are the type, each of which has a handler to process it
    and #$0f
    tay
    lda handler_table_high,y
    ; if we have no handler for this cell type then branch (destination was set
    ; depending on where we entered this routine)
    beq update_rock_or_diamond_that_can_fall
    sta handler_high
    lda handler_table_low,y
    sta handler_low
    ; call the handler for the cell based on the type (0-15)
jsr_handler_instruction
handler_low = jsr_handler_instruction+1
handler_high = jsr_handler_instruction+2
    jsr handler_rockford

    ; the handler may have changed the surrounding cells, store the new cell below
    lda cell_below
    ldy #$81
    sta (map_address_low),y
    ; store the new cell above
    lda cell_above
    and #$7f
    ldy #1
    bpl move_to_next_cell  ; ALWAYS branch

; *************************************************************************************
mark_cell_above_as_processed_and_move_to_next_cell

    ldy #1
    lda (map_address_low),y
    and #$7f
move_to_next_cell
    sta (map_address_low),y
    ; store the new cell left back into the map
    lda cell_left
    ldy #$40
    sta (map_address_low),y
    ; update cell_left with the current cell value (in X)
    stx cell_left
    ; update the current cell value x from the cell_right variable
    ldx cell_right
    ; move ptr to next position
    inc map_address_low
    ; loop back for the rest of the cells in the row
    dec map_cols
    bne tile_map_x_loop
    ; store the final previous_cell for the row
    lda cell_left
    sta (map_address_low),y
    ; move ptr to the start of the next row. Stride is 64, 38 entries done, so
    ; remainder to add is 64-38=26
    lda #26
    jsr add_a_to_ptr
    ; loop back for the rest of the rows
    dec map_rows
    bne tile_map_y_loop
    ; clear top bit in final row
    ldy #38
clear_top_bit_on_final_row_loop
    lda tile_map_row_20,y
    and #$7f
    sta tile_map_row_20,y
    dey
    bne clear_top_bit_on_final_row_loop
    ; clear top bit on end position
    lda (map_rockford_end_position_addr_low),y
    and #$7f
    sta (map_rockford_end_position_addr_low),y
    rts

; *************************************************************************************
; Update for rock/diamond/bomb elements
update_rock_or_diamond_that_can_fall

    cpy #map_bomb
    bne not_a_bomb
;TODO: Add when ready
;    jsr handler_bomb  ;handle the bomb timer before continuing so it behaves like a rock/diamond
not_a_bomb
    lda gravity_timer
    beq gravity_on_as_normal
    ;gravity is off, so a rock/diamond/bomb can float
    cpy #map_rock
    bne mark_cell_above_as_processed_and_move_to_next_cell  ;only want to transition the rock
    ldx #map_rock | map_unprocessed | map_anim_state1  ;switch to a bubble sprite
    lda gravity_timer
    cmp #4
    bcs mark_cell_above_as_processed_and_move_to_next_cell
    ldx #map_rock | map_unprocessed | map_anim_state2  ;switch to a bubble-transition-to-rock sprite instead
    jmp mark_cell_above_as_processed_and_move_to_next_cell  ;bypass rock/diamond/bomb falling when gravity is off
gravity_on_as_normal
    cpx #map_rock | map_unprocessed | map_anim_state2
    bne not_a_rock
    ldx #map_rock | map_unprocessed  ;switch back to rock
not_a_rock
    ldy #$81
    lda (map_address_low),y
    beq cell_below_is_a_space
    ; check current cell
    cpx #map_deadly
    bmi not_c0_or_above
    jsr process_c0_or_above
not_c0_or_above
    and #$4f
    tay
    asl
    bmi process_next_cell
    lda cell_types_that_rocks_or_diamonds_will_fall_off,y
    beq process_next_cell
    lda cell_left
    bne check_if_cell_right_is_empty
    ; cell left is empty, now check below left cell
    ldy #$80
    lda (map_address_low),y
    beq rock_or_diamond_can_fall_left_or_right
check_if_cell_right_is_empty
    lda cell_right
    bne process_next_cell
    ; cell right is empty, now check below right cell
    ldy #$82
    lda (map_address_low),y
    bne process_next_cell
    ; take the rock or diamond, and set bit 6 to indicate it has been moved this scan
    ; (so it won't be moved again). Then store it in the below left or below right cell
rock_or_diamond_can_fall_left_or_right
    txa
    ora #$40
    sta (map_address_low),y
set_to_unprocessed_space
    ldx #$80
    bne process_next_cell  ; ALWAYS branch

    ; take the rock or diamond, and set bit 6 to indicate it has been moved this scan
    ; (so it won't be moved again). Then store it in the cell below.
cell_below_is_a_space
    txa
    ora #$40
    sta (map_address_low),y
    bne set_to_unprocessed_space  ; ALWAYS branch

process_c0_or_above
    pha
    ; look up table based on type
    and #$0f
    tay
    lda update_cell_type_when_below_a_falling_rock_or_diamond,y
    beq play_rock_or_diamond_fall_sound
    ; store in cell below
    ldy #$81
    sta (map_address_low),y
play_rock_or_diamond_fall_sound

    ldy #rock_move_sound
    txa
    and #$0f
    cmp #map_diamond
    bne save_rock_or_diamond_fall_sound
    ldy #diamond_move_sound
save_rock_or_diamond_fall_sound
    sty play_sound_fx

    ; mask off bit 6 for the current cell value
    txa
    and #$bf
    tax
    pla
    rts

;Needed because subroutine is out of range to branch to
process_next_cell
    jmp mark_cell_above_as_processed_and_move_to_next_cell

; *************************************************************************************
; Handler for Rockford's actions - moving, pushing rocks, etc
handler_rockford

    stx current_rockford_sprite
    lda rockford_explosion_cell_type
    bne start_large_explosion
    inx
    bne check_for_direction_key_pressed
start_large_explosion
    ldx #map_start_large_explosion
    stx rockford_explosion_cell_type
    rts

check_for_direction_key_pressed
    lda key_press
    sta temp1
    and #(KEY_MASK_UP | KEY_MASK_DOWN | KEY_MASK_LEFT | KEY_MASK_RIGHT)
    bne direction_key_pressed
    ; player is not moving in any direction
    ldx #map_rockford
update_player_at_current_location
    lda #$41
play_movement_sound_and_update_current_position_address
    clc
    adc map_address_low
    sta map_rockford_current_position_addr_low
    lda map_address_high
    adc #0
    sta map_rockford_current_position_addr_high
    rts

direction_key_pressed
    ldx #0
    stx ticks_since_last_direction_key_pressed
    dex
get_direction_index_loop
    inx
    lda temp1
    and direction_key_table,x
    beq get_direction_index_loop
    lda rockford_cell_value_for_direction,x
    beq skip_storing_rockford_cell_type
    sta rockford_cell_value
skip_storing_rockford_cell_type
    ldy neighbour_cell_pointer_from_direction_index,x
    sty neighbour_cell_pointer
    lda neighbour_cell_directions,y
    sta neighbour_cell_contents
    and #$0f
    tay
    ; branch if movement is not possible
    lda obstacle_control,y
    beq check_if_value_is_empty
    ; branch if movement is freely possible
    bmi check_for_return_pressed
    ; trying to move into something difficult to move (e.g. a rock)
    ldy rock_push_directions,x
    beq check_if_value_is_empty
    cpy #$ee  ;Special value used to detect rock has been pushed up
    beq check_push_up
    lda (map_address_low),y
    bne check_if_value_is_empty
    lda neighbour_cell_contents
    ; don't try pushing a rock that's just fallen this tick (bit 6 set at $24c7)
    cmp #$45
    beq check_if_value_is_empty
    dec delay_trying_to_push_rock
    bne check_if_value_is_empty
    ora #$80
    sta (map_address_low),y
    lda #4
    sta delay_trying_to_push_rock
    lda #rock_move_sound
    sta play_sound_fx
check_for_return_pressed
    lda key_press
    and #KEY_MASK_FIRE
    beq store_rockford_cell_value_without_return_pressed
    ; return and direction is pressed. clear the appropriate cell
    jsr check_if_bombs_used  ;Returns accumulator used below
    ldy neighbour_cell_pointer
    sta neighbour_cell_directions,y

check_if_value_is_empty
    ldx rockford_cell_value
    bne update_player_at_current_location
store_rockford_cell_value_without_return_pressed
    lda play_sound_fx
    bne keep_current_sound2  ;don't override a sound effect with Rockford default movement sound
    lda #rockford_move_sound
    sta play_sound_fx
keep_current_sound2

    lda rockford_cell_value
    ldy neighbour_cell_pointer
    sta neighbour_cell_directions,y
    lda map_offset_for_direction,x
    ldx #$80
;TODO: Tidy
    ;bne play_movement_sound_and_update_current_position_address                         ; ALWAYS branch
    jmp play_movement_sound_and_update_current_position_address

;Subroutine to allow Rockford to push a rock upwards
;Needs to check there is a free space above the rock being pushed, allow for the push delay, then continue like other direction pushes
check_push_up
    lda map_address_high  ;store current line pointer high/low on stack
    pha
    lda map_address_low
    pha
    sec
	lda map_address_low
	sbc #$80  ;Need to point upwards 2 lines, so subtract (64 x 2 = 128) from pointer high/low
	sta map_address_low
    bcs no_up_ptr_high_change
    dec map_address_high
no_up_ptr_high_change
    ldy #$41  ;offset the line pointer with Rockford's position
    lda (map_address_low),y  ;this is the cell value 2 rows above Rockford
    bne end_check_up
    dec delay_trying_to_push_rock  ;ok to push up but delay
    bne end_check_up
    lda #map_rock | map_anim_state1  ;delay over, store a rock in the cell 2 rows above Rockford
    sta (map_address_low),y
    lda #4  ;reset the delay for next time
    sta delay_trying_to_push_rock
;    inc sound4_active_flag
    pla  ;restore current line pointer high/low from stack
    sta map_address_low
    pla
    sta map_address_high
    jmp store_rockford_cell_value_without_return_pressed  ;continue like side/bottom pushes
end_check_up
    pla  ;restore current line pointer high/low from stack
    sta map_address_low
    pla
    sta map_address_high
    jmp check_if_value_is_empty  ;continue like side/bottom non-pushes

;Subroutine called when pressing return + key direction
;if bombs are allowed, place a bomb in the space of the direction, otherwise just clear the space given by the direction
check_if_bombs_used
    lda bomb_counter
    bne bombs_allowed
    lda #0
    rts

bombs_allowed
    lda neighbour_cell_contents
    beq check_bomb_delay
    lda #0
    rts

check_bomb_delay
    lda bomb_delay
    beq create_a_bomb
    lda #0
    rts

create_a_bomb
    lda #3  ;delay creation of next bomb
    sta bomb_delay
    dec bomb_counter  ;one less bomb to use
    bne skip_no_bombs_message
    lda #message_no_bombs_left
    sta saved_message
    lda #$27
    sta message_timer
skip_no_bombs_message
    ;update bombs available on status bar
;TODO: Add when ready
;    jsr update_bombs_available
    lda #map_bomb
    rts

direction_key_table
    !byte KEY_MASK_RIGHT
    !byte KEY_MASK_LEFT
    !byte KEY_MASK_UP
    !byte KEY_MASK_DOWN

; *************************************************************************************
; Handler for Rockford entry, converstion of amoeba into diamonds
; Called once handler_rockford_intro_or_exit sets the last transition to $21 (x is an explosion sprite)
; $21 becomes unprocessed (ora #$80) and subtracted from #$90 = $11 so not processed initially but X is set to $11, set in update_map
; $11 becomes unprocessed (ora #$80) and subtracted from #$90 = $1 and using explosion_replacements table, becomes unprocessed Rockford
handler_basics

    txa
    sec
    sbc #$90
    cmp #$10
    bpl not_in_range_so_change_nothing
    ; cell is in the range $90-$9f (corresponding to $10 to $1f with the top bit set),
    ; so we look up the replacement in a table. This is used to replace the final step
    ; of an explosion, either with rockford during the introduction (offset $01), or a
    ; space for the outro (death) explosion (offset $03)
    tax
    lda explosion_replacements,x
not_in_range_so_change_nothing
    tax
    rts

; *************************************************************************************
; Handler for Rockford's intro/exit
handler_rockford_intro_or_exit

    txa
    and #$7f
    tax
    ; branch if on exit
    cpx #map_active_exit
    beq intro_or_exit_return
    ; we have found the intro square
    ; wait for flashing rockford animation to finish
    lda tick_counter
    cmp #$f0
    bpl intro_or_exit_return
    ; start the explosion just before gameplay starts (x is an explosion sprite)
    ldx #$21
    lda #enter_cave_sound
    sta play_sound_fx

intro_or_exit_return
    rts

; *************************************************************************************
;TODO: Temp function
clear_status

  ;Clear screen with zero values
  lda #0
  sta screen_addr2_low  ;target low
  lda #$10
  sta screen_addr2_high  ;target high

  ;size is ...
  lda #96
  sta clear_size  
  lda #0
  sta clear_size+1

  ;clear to 0
  lda #0
  sta clear_to

  jsr clear_memory  ;clear target for given size and value
  rts

; *************************************************************************************
; Clear a number of bytes in target memory locations, using clear_size and clear_to
clear_memory

  ldy #0
  ldx clear_size+1
  beq clear_remaining_bytes
clear_a_page
  lda clear_to
  sta (screen_addr2_low),y
  iny
  bne clear_a_page
  inc screen_addr2_high
  dex
  bne clear_a_page
clear_remaining_bytes
  ldx clear_size
  beq clear_return
clear_a_byte
  lda clear_to
  sta (screen_addr2_low),y
  iny
  dex
  bne clear_a_byte

clear_return
  rts

clear_size
  !byte 0, 0
clear_to
  !byte 0

; *************************************************************************************
!source "vars.asm"

!source "keyboard.asm"

* = $3200  ;Needed to point to the correct memory location for loading caves
!source "cavedata.asm"
