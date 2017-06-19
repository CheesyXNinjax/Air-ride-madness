/// @description only place this once

var w, h ,cam;
w = 960
h = 512
//cam = camera_create()
//camera_set_view_size(cam,w,h)
//camera_set_view_border(cam,w/2,h/2)
//camera_set_view_speed(cam,-1,-1)

cam = camera_create_view(0,0,w,h,0,obj_player,-1,-1,w/2,h/2)

global.playercam = cam

