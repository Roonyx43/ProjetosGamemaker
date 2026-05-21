if (colisao_passaro) {
	hspeed = 1
	image_angle -= 4
	image_speed = 0
	gravity = 0.1
}

if (global.perdeu){
	hspeed = approach(hspeed, -3, 0.5 * global.level)
}

if (!global.perdeu) {
	hspeed = -3 - global.level
 }
 
 if (x <= -100) {
	instance_destroy()
 }