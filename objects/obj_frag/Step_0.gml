if image_index = 11{
audio_play_sound(anvil,1,false)
audio_sound_pitch(anvil,random_range(.9,1.1))
}
if image_index = 55{
audio_play_sound(anvil,1,false)
audio_sound_pitch(anvil,random_range(.9,1.1))
}
if image_index = 101{
audio_play_sound(anvil,1,false)
audio_sound_pitch(anvil,random_range(.9,1.1))
}
if place_meeting(x,y,obj_player_par) && gamepad_button_check_pressed(0,gp_face1){
if talk{
instance_destroy(fragtalk)
talk = false
}
else{
alarm[0] = 49
ani = 1
talk= true
fragtalk = instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),0,obj_fragtalk)
}}
