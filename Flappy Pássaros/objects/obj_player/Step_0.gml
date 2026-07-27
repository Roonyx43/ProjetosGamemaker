if (global.perdeu) {
	
	hspeed = -1
	image_angle += 4
} else {
	
	if (y >= 352 or y <= 0){
		perde_jogo()
	}
	
}


if (instance_exists(obj_inimigo)){
	if ((point_distance(x, y, obj_inimigo.x, obj_inimigo.y) <= 80) && !instance_exists(obj_vfx_waterdrop)){
		instance_create_layer(x + 4, y - 2, "Effects", obj_vfx_waterdrop);
	}
}

if (global.pontos >= 500){
	global.itens_bloqueados[1] = false
}
if (global.pontos >= 2000){
	global.itens_bloqueados[2] = false
}


if (parar_background) {
    bg_7_spd = approach(bg_7_spd, 0, 0.005);
    bg_5_spd = approach(bg_5_spd, 0, 0.005);
    bg_4_spd = approach(bg_4_spd, 0, 0.003);
	
	layer_hspeed("bg_7", bg_7_spd);
	layer_hspeed("bg_5", bg_5_spd);
	layer_hspeed("bg_4", bg_4_spd);
} else {
	layer_hspeed("bg_7", bg_7_spd - (global.level * 0.5));
    layer_hspeed("bg_5", bg_5_spd - (global.level * 0.5));
    layer_hspeed("bg_4", bg_4_spd - (global.level * 0.5));
}