/// @description new letter
if l<string_length(str) {
	l++
	audio_sound_pitch(snd,0.8 + random(1))
	audio_play_sound(snd,1,false)
	alarm[0] = delay * room_speed
}
