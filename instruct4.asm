* = $1000
  !byte $00,$10  ;load address (direct to screen)
instructions_4
  !scr "  walls restrict where  "
  !scr "    rockford can go     " 
  !fill 24," "
  !scr "   explosions from a    "
  !scr " firefly, butterfly or  "
  !scr "  bomb destroys brick   "
  !scr " but not titanium walls "
  !fill 24," "
  !scr "  drop rocks onto the   "
  !scr "  magic wall to change  "
  !scr "  them into diamonds    "
  !fill 24," "
  !scr " empty space must exist "
  !scr "   below the wall for   "
  !scr "   diamonds to land     "
  !fill 24," "
  !scr "  beware it also turns  "
  !scr "  diamonds into rocks!  "
  !fill 24," "
  !scr "   watch out for the    "
  !scr "growing wall which grows"
  !scr "  into empty space!     "

  !fill 24," "
  !fill 8," "
  !byte 86,86  ;brick wall
  !fill 4," "
  !byte 87,87  ;titanium wall
  !fill 8," "
  !fill 8," "
  !byte 86,86  ;brick wall
  !fill 4," "
  !byte 87,87  ;titanium wall
  !fill 8," "
  !fill 24," "

  !scr "   'down' to continue   "
  !scr "    'fire' to start     "
