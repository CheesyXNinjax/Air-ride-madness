if place_meeting(x,y,obj_player) && roll {
	alarm[0] = 60
	roll = false
	with instance_create_depth(x,y,0,obj_dice) {
	other.msg = roll
	instance_destroy()
	}
}

if image_index!=msg {image_index = msg}
