if (global.pause){
	return
}

if (y  <= 55) {
	
	y = lerp(y, 55, 0.3)
}

if (y > 425){
	y = lerp(y, 425, 0.3)
}

if (keyboard_check(ord("W"))){
	var _oldX = x
	move_and_collide(0, -vel, obj_ball, 256)
	x = _oldX
}

if (keyboard_check(ord("S"))){
	var _oldX = x
	move_and_collide(0, vel, obj_ball, 256)
	x = _oldX
}

if (shake > 0.1) {
    shake_x = random_range(-shake, shake)
    shake_y = random_range(-shake, shake)
} else {
    shake = 0
    shake_x = 0
    shake_y = 0
}

shake = lerp(shake, 0, 0.1)