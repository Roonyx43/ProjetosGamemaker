if (vidas <= 0){
	morrer()
	exit
}

if (!in_sequence && criado_em_sequence){
	instance_destroy()
}

maquina_de_estados()

if (estado == "carregando_tiro_1" or estado == "carregando_tiro_2") {
	y = lerp(y, posicao_inicial_y, 0.05)
}
