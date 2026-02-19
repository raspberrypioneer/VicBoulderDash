* = $1000
  !byte $00,$10  ;load address (direct to screen)
instructions_6
  !scr " rockford can use bombs "
  !scr "     in some caves      "
  !fill 24," "
  !scr "  they explode after a  "
  !scr "short delay and destroy "
  !scr "    almost anything!    "
  !fill 96," "
  !scr "  some caves have zero  "
  !scr "  gravity where rocks,  "
  !scr "   diamonds and bombs   "
  !scr "      do not fall       "
  !fill 24," "
  !scr "rocks looks like bubbles"
  !scr "  and can be pushed in  "
  !scr "     all directions     "
  !fill 24," "
  !scr "  beware zero gravity   "
  !scr "      can run out!      "
  !fill 24," "

  !fill 24," "
  !fill 8," "
  !byte 148,150  ;bomb
  !fill 4," "
  !byte 82,84  ;bubble
  !fill 8," "
  !fill 8," "
  !byte 149,151  ;bomb
  !fill 4," "
  !byte 83,85  ;bubble
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "
