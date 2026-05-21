// Variaveis Globais
global.perdeu = false;
global.peixes = 0;
global.pontos = 0;

//Variaveis do Level
global.level = 1;

global.lista_pontos = [100, 250, 500, 800, 1200, 1800, 2500, 3500, 5000]

//Funções

function perde_jogo(){
	
	if (global.perdeu == true) exit;
	
	//Avisando o jogo que perdi
	global.perdeu = true;
	global.level = 1
	
	//Aplicando o efeito de "Subir" ao perder
	vspeed = -4

	obj_effects.treme = 20;

	parar_background = true
	if (!instance_exists(obj_vfx_impact)){
		instance_create_depth(x, y, -1, obj_vfx_impact)
	}
	alarm[0] = game_get_speed(gamespeed_fps) * 2;
}