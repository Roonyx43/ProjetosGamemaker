if (global.pause){
	return
}

if (global.isPlayer){
	if (keyboard_check(vk_up)){
		var _oldX = x
		move_and_collide(0, -vel, obj_ball, 256)
		x = _oldX
	}

	if (keyboard_check(vk_down)) {
		var _oldX = x
		move_and_collide(0, vel, obj_ball, 256)
		x = _oldX
	}
} else {
	y = lerp(y, obj_ball.y, 0.06)
}


if (y  <= 55) {
	
	y = lerp(y, 55, 0.3)
}

if (y > 425){
	y = lerp(y, 425, 0.3)
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