randomise()

vidas = 10

vel_tiros = game_get_speed(gamespeed_fps)

chance_powerup = random(100)

criado_em_sequence = in_sequence

estado = "chegando"

posicao_inicial_y = 0

espera_carregando = game_get_speed(gamespeed_fps) * 3
timer_carregando = 0

charge_1 = noone
charge_2 = noone
charge_3 = noone

disparos_efetuados = 0

decidir_direcao = false


alarm[0] = vel_tiros * random_range(1.5, 3)

function morrer(){
	destruir_cargas();
	
	var _efeito = instance_create_layer(x, y, "VFX", obj_vfx_explosao_inimigo)
	
	_efeito.image_xscale = 0.5
	_efeito.image_yscale = 0.5
	
	dropar_powerup()
	instance_destroy()
}
	
function dropar_powerup(){
	
	powerups = [obj_powerup_speed, obj_powerup_life, obj_powerup_level, obj_powerup_frequency, obj_powerup_dano]
	
	if (chance_powerup < 20){
		
		instance_create_layer(x, y, "PowerUps", powerups[random_range(0, 4)])
	}
	
}

function maquina_de_estados(){
	switch (estado) {
		case "chegando":
			if (y < 160){
				vspeed = 1.5
			}else {
				estado = choose("carregando_tiro_1", "carregando_tiro_2", "carregando_tiro_3")
				vspeed = 0
				posicao_inicial_y = y
			}
			break
		case "carregando_tiro_1":
			if (!instance_exists(charge_1)){
				charge_1 = instance_create_layer(x, y + 20, "VFX", obj_vfx_carregando_disparo)
				charge_1.dono = id;
				charge_1.image_xscale = 1.8
				charge_1.image_yscale = 1.8
				
			}
			
			timer_carregando++
				
			if (timer_carregando >= espera_carregando){
				estado = "atirar_1"
				timer_carregando = 0
			}
			break
		case "carregando_tiro_2":

		    if (!instance_exists(charge_1)) {
		        charge_1 = instance_create_layer(
		            x - 10,
		            y + 20,
		            "VFX",
		            obj_vfx_carregando_disparo
		        );

		        charge_1.dono = id;
		        charge_1.offset_x = -10;
		        charge_1.offset_y = 20;

		        charge_1.image_xscale = 1.5;
		        charge_1.image_yscale = 1.5;
		    }

		    if (!instance_exists(charge_2)) {
		        charge_2 = instance_create_layer(
		            x + 10,
		            y + 20,
		            "VFX",
		            obj_vfx_carregando_disparo
		        );

		        charge_2.dono = id;
		        charge_2.offset_x = 10;
		        charge_2.offset_y = 20;

		        charge_2.image_xscale = 1.5;
		        charge_2.image_yscale = 1.5;
		    }

		    timer_carregando++;

		    if (timer_carregando >= espera_carregando) {
		        estado = "atirar_2";
		        timer_carregando = 0;
		    }

		    break;
		case "carregando_tiro_3":
		
			if (!instance_exists(charge_1)){
				charge_1 = instance_create_layer(x, y - 60, "VFX", obj_vfx_carregando_disparo)
				charge_1.dono = id;
				charge_1.image_xscale = 2.2
				charge_1.image_yscale = 2.2
			}
			
			
			timer_carregando++
			
			if (timer_carregando >= espera_carregando){
				estado = "atirar_3"
				timer_carregando = 0
			}
			
			break
			
		case "indo_embora":
				
			if (decidir_direcao == false) {
				hspeed = choose(-1, 1)
				decidir_direcao = true
			}
			vspeed = -1
			
			if (y < -64){
				instance_destroy()
			}
			
			break
		case "atirar_1":
			atirar_1()
			break
		case "atirar_2":
			atirar_2()
			break
		case "atirar_3":
			atirar_3()
			break
	}
}

function atirar_1(){
	destruir_cargas();
	
	var _tiro = instance_create_layer(x, y, "Disparos", obj_tiro_inimigo_3)
	_tiro.vspeed = 10
	_tiro.image_xscale = 1.8
	_tiro.image_yscale = 1.8
	y -= 8
	verificar_disparos()
	disparos_efetuados++
}

function atirar_2(){
	destruir_cargas();
	
	
	if (instance_exists(obj_player)){
		var _dir = point_direction(x, y, obj_player.x, obj_player.y)	
		
		var _tiro = instance_create_layer(x - 10, y, "Disparos", obj_tiro_inimigo_3_lv2)
		
		_tiro.vspeed = 4
		_tiro.image_xscale = 1.8
		_tiro.image_yscale = 1.8
		_tiro.direction = _dir
		_tiro.image_angle = _dir + 90
	
		var _tiro_2 = instance_create_layer(x + 10, y, "Disparos", obj_tiro_inimigo_3_lv2)
		_tiro_2.vspeed = 4
		_tiro_2.image_xscale = 1.8
		_tiro_2.image_yscale = 1.8
		_tiro_2.direction = _dir
		_tiro_2.image_angle = _dir + 90
	
	
		y -= 8
		verificar_disparos()
		disparos_efetuados++
	}
}

function atirar_3(){
	destruir_cargas()
	
	if (instance_exists(obj_player)){
		var _dir = point_direction(x, y, obj_player.x, obj_player.y)	
		
		var _ang = 255
		
		repeat(30){
			var _tiro = instance_create_layer(x, y, "Disparos", obj_tiro_inimigo_3_lv2)
			_tiro.vspeed = 3
			_tiro.direction = _ang
			_tiro.image_angle = _ang + 90
			
			_ang += 45
		}
		
		verificar_disparos()
		disparos_efetuados++
	}
	
}

function destruir_cargas() {
    if (instance_exists(charge_1)) {
        instance_destroy(charge_1);
    }

    if (instance_exists(charge_2)) {
        instance_destroy(charge_2);
    }
	
	if (instance_exists(charge_3)) {
        instance_destroy(charge_3);
    }

    charge_1 = noone;
    charge_2 = noone;
	charge_3 = noone;
}

function verificar_disparos(){
	if(disparos_efetuados < 5){
		estado = choose("carregando_tiro_1", "carregando_tiro_2", "carregando_tiro_3")
	} else {
		estado = "indo_embora"
	}
}