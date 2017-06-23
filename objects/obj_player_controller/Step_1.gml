///////// debug
if gamepad_button_check_pressed(con,gp_select) {
	if debug {debug = false} else {debug = true}
	if isplayer {pl.debug = debug}
}

if gamepad_button_check_pressed(con,reset) {room_restart()}

////////////// horizontal
if isplayer {
	pl.move = gamepad_axis_value(con,gp_axislh);
	pl.jump = gamepad_button_check_pressed(con,jump)
	pl.lowjump = gamepad_button_check_released(con,jump)
}
