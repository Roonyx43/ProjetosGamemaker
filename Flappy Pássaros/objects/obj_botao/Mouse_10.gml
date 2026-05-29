image_xscale = lerp(image_xscale, escala_x * 1.8, 0.1)
image_yscale = lerp(image_yscale, escala_y * 0.3, 0.1)

if (global.foiClicado == false){
	global.destino = destino
}


global.cursor_sprite = spr_hand_point