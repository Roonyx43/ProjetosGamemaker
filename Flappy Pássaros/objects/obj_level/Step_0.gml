
if (!global.perdeu){
	global.pontos += 0.1 * global.level
	
	if (global.level < 9){
		var _pontos_necessarios = global.lista_pontos[global.level - 1];
		
		if (global.pontos >= _pontos_necessarios) {
			global.level++
			if (!audio_is_playing(snd_sfx_levelup)){
				audio_play_sound(snd_sfx_levelup, 0, 0, 0.3)
			}
		}
		
	}
	
}
