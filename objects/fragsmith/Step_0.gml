if ani == 3 && wait == 0{
if mouse_check_button_pressed(mb_left){
sprite_index = spr_neu
wait = 1
alarm[0] = 10
ani = 1}}
if ani == 1 && wait == 0{
if mouse_check_button_pressed(mb_left){
sprite_index = spr_talk
wait = 1
alarm[0] = 10
ani = 2}}
if ani == 2 && wait == 0{
if mouse_check_button_pressed(mb_left){
sprite_index = spr_wowza
wait = 1
alarm[0] = 10
ani = 3}}

if !instance_exists(obj_fragtalk){
instance_destroy()
}
x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])
