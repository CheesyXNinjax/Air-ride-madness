grav = 0.4 //gravity
jsp = 10.5 //jump speed
var playerspeed = 5; //pixels per frame max speed
term = 15 //terminal velocity
low = 0.4 //vertical speed low jump multiplyer
var acceleration = 0.5; //acceleration and deacceleration of player movement 0.5



/// don't tweak
col = obj_col_par
sp = playerspeed * (60 / room_speed)
acc = acceleration * (60 / room_speed)
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


