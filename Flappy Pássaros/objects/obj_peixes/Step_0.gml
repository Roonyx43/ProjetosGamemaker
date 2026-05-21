if (global.perdeu) {
	hspeed = approach(hspeed, 0, 0.05  * global.level)
}

if (!global.perdeu) {
	hspeed = -2 - global.level
}

 if (x <= -100) {
	instance_destroy()
 }