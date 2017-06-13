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
	sh *= vspeed/2
	vspeed = 0
	audio_play_sound(bomb,1,0)
	alarm[1] = 60
	shake = true
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

if jump && isjump{
	vspeed += -j
}

if vspeed > 0
{
	audio_play_sound(sd_squeak,0,true)
	audio_sound_pitch(sd_squeak,1/(vspeed*0.05+0.2))
}
else{

	if audio_is_playing(sd_squeak) audio_stop_sound(sd_squeak)
}
if shake {
sh = sh * .95
//camera_set_view_pos(0,irandom_range(-sh,sh),irandom_range(-sh,sh))
view_xport[0]= irandom_range(-sh,sh)
view_yport[0]= irandom_range(-sh,sh)
}
	else{
		view_yport[0]=0
		view_xport[0]=0
		sh = 10
		}

