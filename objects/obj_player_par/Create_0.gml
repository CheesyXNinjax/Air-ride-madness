grav = 0.4 //gravity
jsp = 10.5 //jump speed
sp = 5; //pixels per frame max speed
wjoff = 7; //horizontal push of wall
term = 15 //terminal velocity
low = 0.4 //vertical speed low jump multiplyer
acc = 0.5; //acceleration and deacceleration of player movement 0.5

/// don't tweak
col = obj_col_par
jsp *= (60 / room_speed)
sp *= (60 / room_speed)
wjoff *= (60 / room_speed)
acc *= (60 / room_speed)
hsp = 0 
vsp = 0
xsc = 1 //image x scale

///////////// controller changes these
jump = false
lowjump = false
move = 0
/////////////////////////////////

//////////// debug
debug = false
debugmsg = 0 //start text lower if controller object


