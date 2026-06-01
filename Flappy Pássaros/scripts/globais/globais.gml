// Variaveis Globais
global.perdeu = false;
global.peixes = 0;
global.pontos = 0;

//Variaveis do Level
global.level = 1;

global.lista_pontos = [100, 250, 500, 800, 1200, 1800, 2500, 3500, 5000]

global.cursor_sprite = spr_pointer

global.destino = rm_jogo

global.transicao = false

global.foiClicado = false

global.itens_bloqueados = [false, true, true]

global.passaro_selecionado = spr_arara

global.passaro = 0;

global.efeitos = true;
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
	alarm[0] = game_get_speed(gamespeed_fps);
	
	global.destino = rm_menu
	
	var _pitch = random_range(0.5, 1.5)
	
	if (!audio_is_playing(snd_sfx_collision)){
		
		audio_play_sound(snd_sfx_collision, 0, 0, 1, 0, _pitch)
	}
	
	layer_sequence_create("Transicao", 0, 0, sq_transicao_1)
	
}

function muda_room(){
	room_goto(global.destino)
	global.foiClicado = true
}

function encerra_transicao(){
	global.transicao = false
}

function ativa_efeitos(){
	layer_enable_fx("Folhas", global.efeitos)
	layer_enable_fx("Water_VFX", global.efeitos)
	layer_enable_fx("Props", global.efeitos)
	layer_enable_fx("Inimigo", global.efeitos)
}