var vx, vy, vw, vh, v, i, amt, len, col1, col2;

v = view_camera[view_current]
vx = camera_get_view_x(v)
vy = camera_get_view_y(v)
vw = vx + camera_get_view_width(v)
vh = vy + camera_get_view_height(v)


col1 = make_color_rgb(15,71,255)
col2 = make_color_rgb(191,255,255)

len = 8

//for (i=0;i<y2;i+=len) {
//	amt = i / (vh-len)
//	draw_set_color(merge_color(col2,col1,amt))
//	draw_rectangle(vx,vy + i,vw,i+len,false)
//}

draw_rectangle_color(vx,vy,vw,vh,col2,col2,col1,col1,false)


 