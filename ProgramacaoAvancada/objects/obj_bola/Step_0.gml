if (mouse_check_button_pressed(mb_left)){
	var _tiro = instance_create_layer(x, y, "Instances", obj_tiro)
	_tiro.direction = point_direction(x, y, mouse_x, mouse_y)
	_tiro.speed = 2
}