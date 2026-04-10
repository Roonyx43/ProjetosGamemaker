vel += 0.4
move_bounce_solid(true)

var _efeito = instance_create_depth(x, y, depth + 5, obj_collision_effect)

_efeito.image_xscale = 1.2
_efeito.image_yscale = 1.2
_efeito.image_blend = c_blue

with(obj_player_1){
	shake = 4
}