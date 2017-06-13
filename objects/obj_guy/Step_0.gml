hmove = gamepad_axis_value(gpslot,gp_axislh)
jump = gamepad_button_check(gpslot,gp_shoulderl)


if gamepad_button_check(gpslot, gp_face2){
room_restart();
}

if hmove != 0 {
//x += (maxspd - slope / (abs (hmove) + slope)) * sign(hmove)
	x += hmove * maxspd
}

//jumping
if place_meeting(x,y + vspeed,obj_col) && vspeed != 0{
	while !place_meeting (x,y,obj_col){
		y += 1 * sign(vspeed)
	}
	vspeed = 0
}
var inair;
inair = !place_meeting(x,y+1,obj_col)

if inair {
	if gravity != grav {gravity = grav}
}
else{
	if jump {
	isjump = true
	alarm[0] = jhold*room_speed
	}
	else{
		gravity = 0
		
	}
	
}

if hmove!=0 {
	xsc = sign(-hmove)
}

image_speed = hmove*2
