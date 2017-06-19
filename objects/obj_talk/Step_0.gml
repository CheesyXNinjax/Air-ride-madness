/// @description speed up text
if gamepad_button_check(con,speedup) {
	delay = delay_fast
} else {
	delay = delay_def
}