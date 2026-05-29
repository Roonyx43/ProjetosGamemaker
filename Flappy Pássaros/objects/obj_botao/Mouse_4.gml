image_xscale = lerp(image_xscale, escala_x * 0.2, 0.05)
image_yscale = lerp(image_yscale, escala_y * 2, 0.05)

if (!sair && global.transicao == false){
	global.destino = destino
	layer_sequence_create("Transicao", 0, 0, sq_transicao_1)
	global.transicao = true
	global.foiClicado = true
	
} else if (sair){
	game_end()
}
