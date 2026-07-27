if (instance_exists(obj_inimigo)){
	var _inimigo = instance_nearest(x, y, obj_inimigo)
	direcao = point_direction(x, y, _inimigo.x, _inimigo.y)
	image_angle += (angle_difference(direcao, image_angle) - 90) * 0.12
}


if (keyboard_check(vk_left)){
	x -= 1
}
if (keyboard_check(vk_right)){
	x += 1
}
if (keyboard_check(vk_up)){
	y -= 1
}
if (keyboard_check(vk_down)){
	y += 1
}