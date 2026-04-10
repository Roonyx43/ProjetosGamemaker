function player_state_free(){
	var key_left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	var key_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	var key_jump = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
	var key_dash = keyboard_check_pressed(vk_shift)

	var move = key_right - key_left != 0;

	if (move) {
		sprite_index = spr_player_run
		move_dir = point_direction(0, 0, key_right - key_left, 0)
		move_spd = approach(move_spd,move_spd_max, acc)
	} else {
		move_spd = approach(move_spd, 0, dcc)
		sprite_index = spr_player_idle
	}

	canMove = approach(canMove, 0,.4)

	if (canMove <=0 ){
		hspd = lengthdir_x(move_spd, move_dir)
	}

	if (hspd != 0){
		x_scale = sign(hspd)
	}

	var onGround = place_meeting(x, y+1, obj_wall)
	var onWall = place_meeting(x+1, y, obj_wall) || place_meeting(x-1, y, obj_wall)


	if (onGround){
		jump_count = jump_max
		coyote_time = coyote_time_max
	} else {
		coyote_time--
		if (vspd < 0){
			sprite_index = spr_player_jump
		} else if (vspd > 0) {
			sprite_index = spr_player_fall
		}
	}

	if (coyote_time > 0 and key_jump || key_jump && jump_count > 0){
		jump_count--
		coyote_time = 0
		vspd = 0
		canMove = 5;
		vspd-=jump_height
	}
	
	if (onWall and !onGround){
		if (vspd > 1) {
			jump_count = jump_max
			sprite_index = spr_player_wall
			vspd = 1;
		}
		if(key_jump){
			coyote_time = 0
			vspd = 0
			vspd-=jump_height
			canMove = 5
			hspd-=4 * x_scale
		}
	}
	
	if (key_dash && dash && onGround) {
		hspd = 0
		vspd = 0
		dashTime = 0
		dash = false
		alarm[0] = dashDelay
		sprite_index = spr_player_roll
		state = player_state_dash;
	}
	
	if (!onGround and vspd > 0){
		var _collision_e = instance_place(x, y+1, obj_enemy_parent)
		
		if (_collision_e){
			vspd = 0;
			vspd -= jump_height / 1.3
			instance_destroy(_collision_e.id)
		}
	}
	
	var _collision_e = instance_place(x + hspd, y, obj_enemy_parent)
	if (_collision_e){
		hspd = 0
		vspd = 0
		vspd -= 4
		damage_dir = point_direction(_collision_e.x, _collision_e.y, x, y)
		state = player_state_damage
	}
}

function player_state_dash(){
	
	hspd = lengthdir_x(dashForce, move_dir)
	
	dashTime = approach(dashTime, dashDistance, 1);
	if (dashTime >= dashDistance){
		state = player_state_free
	}
}

function player_state_damage(){
	sprite_index = spr_player_damage
	hspd = lengthdir_x(3, damage_dir)
	damage_time = approach(damage_time, damage_distance, 1)
	
	if (damage_time >= damage_distance){
		hspd = 0
		damage_time = 0
		state = player_state_free
	}
}