grav = 0.4 //gravity
jsp = 10.5 //jump speed
var playerspeed = 5; //pixels per frame max speed
term = 15 //terminal velocity
low = 0.4 //vertical speed low jump multiplyer
var acceleration = 0.5; //acceleration and deacceleration of player movement 0.5
b_jump[0] = gp_shoulderr
b_jump[1] = gp_shoulderl




/// don't tweak
con = 0
sp = playerspeed * (60 / room_speed)
acc = acceleration * (60 / room_speed)
hsp = 0 
vsp = 0
debug = true
col = obj_col_par //collide parent
xsc = 1 //image x scale
move = 0 //here because used in draw

gamepad_set_axis_deadzone(con,0.08)

