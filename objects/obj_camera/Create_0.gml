var w, h;
w = 960
h = 512
cam = camera_create_view(0,0,w,h,0,obj_player,-1,-1,w/2,h/2)
view_set_camera(view_current,cam)
