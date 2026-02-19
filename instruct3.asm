* = $1000
  !byte $00,$10  ;load address (direct to screen)
instructions_3
  !scr "    each cave has a     "
  !scr "  different puzzle for  "
  !scr "  rockford to overcome  "
  !fill 72," "
  !scr " watch out for falling  "
  !scr "   rocks and diamonds   "
  !scr "  which kill rockford!  "
  !fill 48," "
  !scr "    butterflies and     "
  !scr "   fireflies are also   "
  !scr "        lethal!         "
  !fill 24," "
  !scr "rockford can push rocks "
  !scr "into spaces to get past "
  !scr "  obstacles, drop them  "
  !scr " onto fireflies to kill "
  !scr "them, or drop them onto "
  !scr " butterflies to change  "
  !scr "   them into diamonds   "

  !fill 24," "
  !fill 8," "
  !byte 124,126  ;firefly
  !fill 4," "
  !byte 112,114  ;butterfly
  !fill 8," "
  !fill 8," "
  !byte 125,127  ;firefly
  !fill 4," "
  !byte 113,115  ;butterfly
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "
