////////////// horizontal
var cl = 0.5;
if move!=0 {	
	if abs(move*sp - hsp) < acc {
		hsp = move*sp
	}
	if hsp > move*sp {
		hsp -= acc
	}
	if hsp < move*sp {
		hsp += acc
	}	
} else {
	if abs(hsp)>cl {hsp -= acc * sign(hsp)} else if hsp!=0 {hsp = 0}
}

///// when its broken
//hsp = move * sp * (60 / room_speed)

//////////////// vertical
if place_meeting(x,y+1,col) {
	if jump {vsp = -jsp}
} else {
	if (vsp < term) {vsp += grav} else if vsp!=term {vsp = term}
}
if vsp<0 && lowjump {
	vsp *= low
}

//////////////// horizontal collisions  \\\\\\\\\\\\\\\\\\\\\\\\
var rvar;
rvar = ceil(abs(hsp)) * sign(hsp) //ciel is sign bias
//rvar = round(hsp)
if place_meeting(x + rvar, y, col) {
	while !place_meeting(x + sign(rvar), y,col) {
		x += sign(hsp)
	}
	hsp = 0
}
if hsp!=0 {x += hsp}

//////////////// vertical collisions  \\\\\\\\\\\\\\\\\\\\\\\\
//rvar = ceil(abs(vsp)) * sign(vsp)
rvar = round(vsp)
if place_meeting(x, y + rvar, col) {
	while !place_meeting(x, y + sign(rvar),col) {
		y += sign(vsp)
	}
	vsp = 0
}
if vsp!=0 {y += rvar}

/////// animations
image_speed = abs(move)
if move!=0 {xsc = sign(move)}



