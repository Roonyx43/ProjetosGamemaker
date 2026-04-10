if (!instance_exists(obj_enemy_parent)){
	if (final_level){
		game_end()
	}
	if (room_exists(next_level)){
		room_goto(next_level)
	}
}