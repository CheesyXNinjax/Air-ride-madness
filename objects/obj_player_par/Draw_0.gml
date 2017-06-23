draw_sprite_ext(sprite_index, image_index,x,y,xsc,1,0,c_white,1)

if debug {
	var vx, vy, v, buff,msg, i;
	v = view_camera[view_current]
	vx = camera_get_view_x(v)
	vy = camera_get_view_y(v)
	buff = 20
	
	msg[0] = "vsp = " + string(vsp);
	msg[1] = "hsp = " + string(hsp);
	msg[2] = "image speed = " + string(image_speed);
	msg[3] = "move * sp = " + string(move* sp);
	msg[4] = "x =  " + string(x);
	msg[5] = "y =  " + string(y);
	
	draw_set_color(c_black)
	for (i = 0; i < array_length_1d(msg); i++;) {
		draw_text(vx, vy + (i+debugmsg) * buff, msg[i])
	}	
}