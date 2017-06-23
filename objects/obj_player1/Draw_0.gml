draw_sprite_ext(sprite_index, image_index,x,y,xsc,1,0,c_white,1)
var vx, vy, v, buff, msg;
v = view_camera[view_current]
vx = camera_get_view_x(v)
vy = camera_get_view_y(v)
buff = 20

if debug {
	msg[0] = string(gamepad_axis_value(con,gp_axislh));
	msg[1] = string(gamepad_axis_value(con,gp_axislv));
	msg[2] = string(gamepad_axis_value(con,gp_axisrh));
	msg[3] = string(gamepad_axis_value(con,gp_axisrv));
	msg[4] = "dpad up = " +string(gamepad_button_check(con,gp_padu))	;
	msg[5] = "dpad right = " + string(gamepad_button_check(con,gp_padr));
	msg[6] = "dpad down = " + string(gamepad_button_check(con,gp_padd));
	msg[7] = "dpad left = " + string(gamepad_button_check(con,gp_padl));
	msg[8] = string(gamepad_get_description(con));
	msg[9] = string(gamepad_button_check(con,gp_face1));	
	msg[10] = string(gamepad_button_check(con,gp_face2));	
	msg[11] = string(gamepad_button_check(con,gp_face3));	
	msg[12] = string(gamepad_button_check(con,gp_face4));	
	msg[13] = string(gamepad_button_value(con,gp_shoulderlb));
	msg[14] = string(gamepad_button_value(con,gp_shoulderrb));	
	msg[18] = "vsp = " + string(vsp);
	msg[16] = "hsp = " + string(hsp);
	msg[15] = "image speed = " + string(image_speed)	
	msg[17] = "move * sp = " + string(move* sp)
	msg[19] = "x =  " + string(x)
	msg[20] = "y =  " + string(y)

	draw_set_color(c_black)
	for (var i=0;i<array_length_1d(msg);i++;) {
		draw_text(vx, vy + i * buff, msg[i])
	}	
}