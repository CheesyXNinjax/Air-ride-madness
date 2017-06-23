reset = gp_face2

con = 0
gamepad_set_axis_deadzone(con,0.08)

if instance_number(obj_player_par) > 0 {
	pl = instance_find(obj_player_par,0)
	jump = gp_shoulderl
	isplayer = true
	pl.debugmsg = 15 //next line of text for player's debug
} else {
	isplayer = false
}

/////////// debug \\\\\\\\\\\\
debug = false