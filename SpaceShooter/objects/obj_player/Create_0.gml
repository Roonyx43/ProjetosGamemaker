#region	Variaveis

vel = 2

//Variavel de espera do tiro
espera_tiro = 30

//Variavel do timer do tiro
timer_tiro = 0




#endregion

#region Métodos

//Método de controles
function controlar_player(){
	var _cima, _baixo, _esquerda, _direita, _atirar
	
	_cima	  = keyboard_check(vk_up) or keyboard_check(ord("W"))
	_baixo	  = keyboard_check(vk_down) or keyboard_check(ord("S"))
	_esquerda = keyboard_check(vk_left) or keyboard_check(ord("A"))
	_direita  = keyboard_check(vk_right) or keyboard_check(ord("D"))
	
	_atirar   = keyboard_check(vk_space) or mouse_check_button(mb_left)
	
	var _velh = (_direita - _esquerda) * vel
	var _velv = (_baixo - _cima) * vel
	
	x += _velh
	y += _velv
	
	timer_tiro--
	
	if (_atirar && timer_tiro <= 0){
		var _tiro = instance_create_layer(x, y - 10, "Disparos", obj_tiro_player)
		_tiro.vspeed = -5
	 	timer_tiro = espera_tiro
	}
	
}

#endregion