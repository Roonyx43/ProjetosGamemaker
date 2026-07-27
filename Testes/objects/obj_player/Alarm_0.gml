alarm[0] = 30

if (instance_exists(obj_inimigo)){
	var _tiro = instance_create_layer(x, y - 3, "Disparos", obj_tiro)


	_tiro.direction = direcao
	_tiro.image_angle = direcao - 90
	_tiro.speed = 2
	_tiro.image_xscale = 0.8
	_tiro.image_yscale = 0.8
}