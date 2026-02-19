* = $1000
  !byte $00,$10  ;load address (direct to screen)
instructions_2
  !scr "  on the menu screens   "
  !scr " use joystick to change "
  !scr " boulder dash version,  "
  !scr "    the cave to play    "
  !scr "  and difficulty level  "
  !fill 24," "
  !scr "'fire' to select choice "
  !fill 48," "
  !scr "    score points by     "
  !scr "   gathering diamonds   "
  !fill 24," "
  !scr "   diamonds are more    "
  !scr "  valuable when fewer   "
  !scr "   are available and    "
  !scr "  when rockford's exit  "
  !scr "   is open and there    "
  !scr "  are still some left   "
  !fill 24," "
  !scr "   every 500 points,    "
  !scr "  rockford is awarded   "
  !scr "     a bonus life!      "

  !fill 24," "
  !fill 8," "
  !byte 96,98  ;diamond
  !fill 4," "
  !byte 74,76  ;rock
  !fill 8," "
  !fill 8," "
  !byte 97,99  ;diamond
  !fill 4," "
  !byte 75,77  ;rock
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "
