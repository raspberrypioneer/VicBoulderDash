; cave parameters and map for one cave
cave_parameter_data
param_diamond_value
  !byte $0a                          ; Diamond value
param_diamond_extra_value
  !byte $0f                          ; Diamond extra value
param_diamonds_required
  !byte $0c, $0c, $0c, $0c, $0c      ; Diamonds required for each difficulty level x5
param_cave_time
  !byte $96, $6e, $46, $28, $1e      ; Cave time for each difficulty level x5
param_amoeba_magic_wall_time
  !byte $00                          ; Amoeba or Magic Wall time
param_initial_fill_tile
  !byte $01                          ; Initial fill tile - usually dirt, sometimes space
param_random_seeds
  !byte $0a, $0b, $0c, $0d, $0e      ; Random seed for pseudo-random routine for each difficulty level x5
param_tile_probability
  !byte $3c, $32, $09, $00           ; Tile probability for up to four tiles / objects x4
param_tile_for_probability
  !byte $00, $05, $04, $00           ; Tile / object related to the probability x4
param_intermission
  !byte $00                          ; Intermission indicator (0 for normal cave, 1 for intermission / bonus cave)
param_colours
  !byte $05, $01, $07                ; Used to set colours per cave
param_rockford_start
	!byte $02, $03                   ; Rockford start row and column
param_rockford_end
  !byte $10, $26                     ; Rockford exit row and column
param_slime_permeability
  !byte $00                          ; Slime permeability
param_tile_for_prob_below
  !byte $00, $00, $00, $00           ; Additional tile below the one generated by pseudo-random routine
param_bombs                          ; For homebrew bombs element
  !byte $00                          ; 0 = no bombs, otherwise number of bombs available
param_zero_gravity_time              ; New feature used to control use of gravity (whether rocks/diamonds fall)
  !byte 0                            ; 0 = no zero-gravity time (always gravity/normal), 1-$fe = time until gravity back on, $ff = always zero gravity
param_border_tile                    ; Border tile, for the standard steelwall, set to 3
  !byte $03                          ; Is just applied to the top and bottom rows as the side borders are specified in the cave file
param_future_use
  !byte $00, $00, $00, $00, $00      ; For potential future use (cannot be removed)

cave_map_data  ; 20 x 40 empty cave (BD1 cave A), each byte represents 2 tiles (nibble each)
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $60, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $32, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $2f, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1f, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $f2, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $22, $23
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $03
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
	!byte $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3
