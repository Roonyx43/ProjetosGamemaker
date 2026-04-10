if (x <= 1){
	var _explosao = instance_create_layer(x, y, "Efeitos", obj_explosion_effect)
	_explosao.image_angle = 270
}

if (x >= room_width - 1){
	var _explosao = instance_create_layer(x, y, "Efeitos", obj_explosion_effect)
	_explosao.image_angle = 90
}