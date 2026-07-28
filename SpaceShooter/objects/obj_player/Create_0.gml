#region	Variaveis

dano_tiro = 5
vel = 2
vidas = 3
escudos = 3

//Variavel de espera do tiro
espera_tiro = 30

//Variavel do timer do tiro
timer_tiro = 0

//Variavel de espera do escudo
espera_escudo = 60

//Variavel do timer do escudo
timer_escudo = 0



#endregion

#region Métodos

//Método de controles
function controlar_player(){
	var _cima, _baixo, _esquerda, _direita, _atirar, _escudo
	
	_cima	  = keyboard_check(vk_up) or keyboard_check(ord("W"))
	_baixo	  = keyboard_check(vk_down) or keyboard_check(ord("S"))
	_esquerda = keyboard_check(vk_left) or keyboard_check(ord("A"))
	_direita  = keyboard_check(vk_right) or keyboard_check(ord("D"))
	
	_atirar   = keyboard_check(vk_space) or mouse_check_button(mb_left)
	
	_escudo = keyboard_check_pressed(ord("E"))
	
	var _velh = (_direita - _esquerda) * vel
	var _velv = (_baixo - _cima) * vel
	
	x += _velh
	y += _velv
	
	x = clamp(x, 16, room_width - 16)
	y = clamp(y, 12, room_height - 12)
	
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
	
	timer_tiro--
	
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
	
	timer_escudo--
	
	if (_escudo && timer_escudo <= 0 && escudos > 0){
		usar_escudo()
	}
	
	
}

//Método do tiro 1

function tiro_lv1(){
	var _tiro = instance_create_layer(x, y - 10, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
}

function tiro_lv2(){
	var _tiro = instance_create_layer(x - 9, y - 10, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
	_tiro = instance_create_layer(x + 9, y - 10, "Disparos", obj_tiro_player)
	_tiro.vspeed = -8
}

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

function perder_vida(){
	vidas--
	if (vidas < 0) {
		instance_destroy()
	}
}

function usar_escudo(){
	escudos--
	instance_create_layer(x, y, "Escudo", obj_escudo)
	timer_escudo = espera_escudo
}

#endregion