if (global.perdeu) {
	hspeed = approach(hspeed, 0, 0.5 * global.level)
}

if (queda_arvore){
	image_angle = lerp(image_angle, -15, 0.06)
}

if (!global.perdeu) {
	hspeed = -2 - global.level
}

 if (x <= -100) {
	instance_destroy()
 }