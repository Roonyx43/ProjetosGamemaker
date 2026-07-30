#region	Variaveis

//Variaveis padrões do player
dano_tiro = 5
vel = 2
vidas = 3
escudos = 3

//Timer de espera do tiro
espera_tiro = 15

//Timer do tiro
timer_tiro = 0

//Timer de espera do escudo
espera_escudo = 60

//Timer do Escudo
timer_escudo = 0
meu_escudo = noone

//Timer de Invencibilidade
espera_invencivel = game_get_speed(gamespeed_fps)
timer_invencivel = 0



#endregion
#region Métodos

//Método geral de controles do player
function controlar_player(){
	
	//Reduzindo os valores dos timers o tempo todo
	timer_invencivel--
	timer_escudo--
	timer_tiro--
	
	//Definindo as teclas de ações
	var _cima, _baixo, _esquerda, _direita, _atirar, _escudo
	
	_cima	  = keyboard_check(vk_up) or keyboard_check(ord("W"))
	_baixo	  = keyboard_check(vk_down) or keyboard_check(ord("S"))
	_esquerda = keyboard_check(vk_left) or keyboard_check(ord("A"))
	_direita  = keyboard_check(vk_right) or keyboard_check(ord("D"))
	
	_atirar   = keyboard_check(vk_space) or mouse_check_button(mb_left)
	
	_escudo = keyboard_check_pressed(ord("E"))
	
	//Movimentação da nave
	var _velh = (_direita - _esquerda) * vel
	var _velv = (_baixo - _cima) * vel
	
	x += _velh
	y += _velv
	
	//Limitação para o player não sair da area
	x = clamp(x, 16, room_width - 16)
	y = clamp(y, 12, room_height - 12)
	
	
	//Efeito de "puxão" para dentro da tela, para melhorar o Game Juice
	if (x < 22) {
		x = lerp(x, 21, 0.1)
	}
	
	if (x > room_width - 22) {
		x = lerp(x, room_width - 21, 0.05)
	}
	
	if (y < 22) {
		y = lerp(y, 21, 0.05)
	}
	
	if (y > room_height - 22) {
		y = lerp(y, room_height - 21, 0.3)
	}
	
	
	// Chamando as funções de tiro conforme as condições de tecla e timer
	if (_atirar && timer_tiro <= 0){
		if (global.level_tiro == 1){
			tiro_lv1()
		} else if (global.level_tiro == 2){
			tiro_lv2()
		} else if (global.level_tiro == 3){
			tiro_lv3()
		}
		timer_tiro = espera_tiro
	}
	
	// Chamando a função de usar_escudo conforme as condições de tecla, timer e existencia da instancia
	if (_escudo && timer_escudo <= 0 && escudos > 0 && !instance_exists(meu_escudo)){
		usar_escudo()
	}
	
	com_escudo()
}

//Método de geração do tiro no nivel 1
function tiro_lv1(){
	var _tiro = instance_create_layer(x, y - 10, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
}

//Método de geração do tiro no nivel 2
function tiro_lv2(){
	var _tiro = instance_create_layer(x - 9, y - 10, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
	_tiro = instance_create_layer(x + 9, y - 10, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
}

//Método de geração do tiro no nivel 3
function tiro_lv3(){
	var _tiro = instance_create_layer(x - 9, y - 10, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
	_tiro = instance_create_layer(x, y - 13, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
	_tiro.image_xscale = 1.3
	_tiro.image_yscale = 1.3
	_tiro = instance_create_layer(x + 9, y - 10, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
}

//Método para perder vida
function perder_vida(){
	
	if (timer_invencivel > 0) return;
	
	if (vidas > 0){
		vidas--
		timer_invencivel = espera_invencivel
	} else {
		instance_destroy()
	}
}

//Método para usar o escudo
function usar_escudo(){
	escudos--
	meu_escudo = instance_create_layer(x, y, "Escudo", obj_escudo)
	timer_escudo = espera_escudo
}

function com_escudo(){
	// Ajustando a movimentação do escudo para se mover junto ao player
	if (instance_exists(meu_escudo)) {
		meu_escudo.x = x
		meu_escudo.y = y
		
		timer_invencivel = 20
	} else {
		meu_escudo = noone;
	}
}
#endregion