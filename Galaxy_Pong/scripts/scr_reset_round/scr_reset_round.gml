global.x_inicial_bola = 359.5
global.y_inicial_bola = 240
global.x_inicial_raquete_1 = 64
global.y_inicial_raquete_1 = 240
global.x_inicial_raquete_2 = 656
global.y_inicial_raquete_2 = 240

function reset_round(){
	if (obj_ball.x < 0){
		global.pause = true
		global.iniciador = true
		global.score2++
		instance_destroy(obj_ball)
		instance_destroy(obj_player_1)
		instance_destroy(obj_player_2)
		instance_create_layer(global.x_inicial_bola, global.y_inicial_bola, "Bola", obj_ball)
		instance_create_layer(global.x_inicial_raquete_1, global.y_inicial_raquete_1, "Raquetes", obj_player_1)
		instance_create_layer(global.x_inicial_raquete_2, global.y_inicial_raquete_2, "Raquetes", obj_player_2)
	}

	if (obj_ball.x > room_width){
		global.pause = true
		global.iniciador = true
		global.score1++
		instance_destroy(obj_ball)
		instance_destroy(obj_player_1)
		instance_destroy(obj_player_2)
		instance_create_layer(global.x_inicial_bola, global.y_inicial_bola, "Bola", obj_ball)
		instance_create_layer(global.x_inicial_raquete_1, global.y_inicial_raquete_1, "Raquetes", obj_player_1)
		instance_create_layer(global.x_inicial_raquete_2, global.y_inicial_raquete_2, "Raquetes", obj_player_2)
	}
}