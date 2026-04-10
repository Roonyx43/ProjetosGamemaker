function Atirar(_inimigo){

	var _nearest = instance_nearest(obj_player.x, obj_player.y, _inimigo)
	
	if (_nearest != noone) {
	
		var _dir = point_direction(obj_player.x, obj_player.y, _nearest.x, _nearest.y)
		
		var _atirar = instance_create_layer(obj_player.x, obj_player.y,"Instances",obj_bala)
		
		_atirar.direction = _dir
		_atirar.image_angle = _dir - 90
		_atirar.speed = 3
		
	}
}