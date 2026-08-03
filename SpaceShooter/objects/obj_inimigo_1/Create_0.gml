randomise()

vidas = 1

vel_tiros = game_get_speed(gamespeed_fps)

chance_powerup = random(100)

criado_em_sequence = in_sequence

alarm[0] = vel_tiros * random_range(0.5, 1.5)

function atirar(){
	var _tiro = instance_create_layer(x + 1, y, "Disparos", obj_tiro_inimigo_1)
	_tiro.vspeed = 4
	
}

function morrer(){
	instance_destroy()
	
	var _efeito = instance_create_layer(x, y, "VFX", obj_vfx_explosao_inimigo)
	
	_efeito.image_xscale = 0.5
	_efeito.image_yscale = 0.5
	
	dropar_powerup()
}
	
function dropar_powerup(){
	
	powerups = [obj_powerup_speed, obj_powerup_life, obj_powerup_level, obj_powerup_frequency, obj_powerup_dano]
	
	if (chance_powerup < 10){
		
		instance_create_layer(x, y, "PowerUps", powerups[random_range(0, 4)])
	}
	
}
	