; Screen sprite cache used to avoid drawing a sprite if it hasn't changed
; The cache overwrites version data which is just used once at the start
screen_cache_map

; IMPORTANT: this table must not go-over a page boundary
cave_file_names
  !scr "B1CAVES "
  !scr "B2CAVES "
  !scr "B3CAVES "
  !scr "P1CAVES "
  !scr "A1CAVES "
  !scr "A2CAVES "
  !scr "BBCAVES "

version_selection_cycle_up
  !byte 6,0,1,2,3,4,5
version_selection_cycle_down
  !byte 1,2,3,4,5,6,0

big_rockford
  !byte 209,210,211,212,32,32,32,32
  !byte 213,214,79,215,216,32,32,32
  !byte 217,218,219,220,221,32,222,32
  !byte 223,224,225,226,227,228,229,230
  !byte 231,232,233,234,235,236,229,236
  !byte 237,238,32,239,240,241,229,242
  !byte 32,32,32,32,32,32,243,32

loading_text
  !scr "loading...     "
  !byte 0

version_option_text  ;text with end of line indicator (0)
  !scr "select version "
  !byte 0
  !scr "boulder dash 1 "
  !byte 0
  !scr "boulder dash 2 "
  !byte 0
  !scr "boulder dash 3 "
  !byte 0
  !scr "boulder dash +1"
  !byte 0
  !scr "arno dash 1    "
  !byte 0
  !scr "arno dash 2    "
  !byte 0
  !scr "bonus caves    "
  !byte 0

end_of_version_data