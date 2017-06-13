var maxspeed,jumpspeed;
acc = 0.2
maxspeed = 5
jumpspeed = 3
jhold = 0.5 //in seconds
shake = false
debug = true
grav = 0.2


//don't change
gpslot = 0
vspd = 0
maxspd = maxspeed * (60 / room_speed)
j = jumpspeed * (60 / room_speed)
isjump = false
xsc = 1

gamepad_set_axis_deadzone(gpslot,0.05)
