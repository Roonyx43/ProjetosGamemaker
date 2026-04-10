function scr_state_andando(){
	direita  = keyboard_check(ord("D"))
	cima	 = keyboard_check(ord("W"))
	esquerda = keyboard_check(ord("A"))
	baixo	 = keyboard_check(ord("S"))

	hveloc = (direita - esquerda) * veloc
	vveloc = (baixo - cima) * veloc

	move_and_collide(hveloc, vveloc, obj_parede)

	dir = floor((point_direction(x, y, mouse_x, mouse_y) + 45 )/ 90);

	if (hveloc == 0 and vveloc == 0){
		switch (dir){
			default:
				sprite_index = spr_personagem_parado_direita
				break
			case 1:
				sprite_index = spr_personagem_parado_cima
				break
			case 2:
				sprite_index = spr_personagem_parado_esquerda
				break
			case 3:
				sprite_index = spr_personagem_parado_baixo
				break
		}	
	} else {
		switch (dir){
			default:
				sprite_index = spr_personagem_correndo_direita
				break
			case 1:
				sprite_index = spr_personagem_correndo_cima
				break
			case 2:
				sprite_index = spr_personagem_correndo_esquerda
				break
			case 3:
				sprite_index = spr_personagem_correndo_baixo
				break
		}	
	}
	
	if (mouse_check_button_pressed(mb_right)){
		alarm[0] = dash_cdr
		dash_dir = point_direction(x, y, mouse_x, mouse_y)
		state = scr_state_dash
	}
}	

function scr_state_dash(){
	hveloc = lengthdir_x(dash_vel, dash_dir)
	vveloc = lengthdir_y(dash_vel, dash_dir)
	
	x += hveloc
	y += vveloc
	
	var _inst = instance_create_layer(x, y, "Player", obj_dash)
	_inst.sprite_index = sprite_index
}