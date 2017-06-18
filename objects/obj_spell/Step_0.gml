/// @description
if fade {
	var amt = 1/(fadeduration*room_speed);
	if a>0 {
		a -= amt
	} else {
		if !fout { //so it only does this once
			fout = true
			a=0
			alarm[1] = afterfade * room_speed
		}
	}
}