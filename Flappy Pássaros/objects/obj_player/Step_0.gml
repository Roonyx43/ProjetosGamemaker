if (global.perdeu) {
	
	hspeed = -1
	image_angle += 4
} else {
	
	if (y >= 352 or y <= 0){
		perde_jogo()
	}
	
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