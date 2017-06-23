/// @description rolling!
var w, h, isplayer;
w = 960
h = 512
//cam = camera_create()
//camera_set_view_size(cam,w,h)
//camera_set_view_border(cam,w/2,h/2)
//camera_set_view_speed(cam,-1,-1)

if instance_number(obj_player_par) > 0 {
	var pl = instance_find(obj_player_par,0);
	isplayer = true
} else {
	isplayer = false
}

cam = camera_create_view(0,0,w,h,0,pl,-1,-1,w/2,h/2)

view_set_camera(view_current,cam);