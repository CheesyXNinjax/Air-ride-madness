sprite_index = spr_spellpro
audio_play_sound(sd_spell,0,false)

fadedelay = 3 //seconds
fadeduration = 2.5 //seconds
afterfade = 0.5 //seconds after fade out

fade = false
fout = false
a = 1


var w, h, v,;
w = sprite_width
h = sprite_height
v = view_current
cam = camera_create()
camera_set_view_size(cam,w,h)
view_set_camera(v,cam)