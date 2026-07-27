if (vida <= 0){
	instance_destroy()
}

var _player = point_direction(x, y, obj_player.x, obj_player.y)
var _distance = point_distance(x, y, obj_player.x, obj_player.y)

x += lengthdir_x(0.5, _player)
y += lengthdir_y(0.5, _player)

image_angle += angle_difference(_player, image_angle) * 0.1