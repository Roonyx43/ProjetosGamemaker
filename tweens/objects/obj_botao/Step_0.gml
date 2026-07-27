var _mouse_click =  mouse_check_button_pressed(mb_left)

var _mouse_sobre = position_meeting(mouse_x, mouse_y, id)

if (_mouse_sobre){
	tween(id, "image_xscale", 1.5, tween_animation.back, 20)
	tween(id, "image_yscale", 1.5, tween_animation.back, 20)
	tween(id, "escala_texto", 1.8, tween_animation.back, 20)
	dentro_texto = true
	
	if (_mouse_click){
		image_xscale = 8
		game_end()
	}
	
} else {
	tween(id, "image_xscale", tamanho_original_x,  tween_animation.bounce_out, 60)
	tween(id, "image_yscale", tamanho_original_y,  tween_animation.bounce_out, 60)
	tween(id, "escala_texto", 1, tween_animation.bounce_out, 60)
	dentro_texto = false
}