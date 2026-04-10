// Inherit the parent event
event_inherited();
move_spd = 1.2
move_dir = 1

function state_idle(){
	sprite_index = spr_enemy_01_idle
}

function state_walk(){
	
	sprite_index = spr_enemy_01_run
	
	var ground = place_meeting(x, y+1, obj_wall)
	
	if (ground){
		hspd = move_dir * move_spd
		x_scale = -move_dir
	}
	
	if (place_meeting(x+hspd, y, obj_wall)){
		move_dir *= -1
	}
	
	if(!position_meeting(x + (8 * move_dir), y + 1, obj_wall)){
		move_dir *= -1
	}

}

state = state_walk