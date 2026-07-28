var _gui_height = display_get_gui_height()
var _gui_width = display_get_gui_width()



var _espaco_vida = 30
repeat(vidas){
	draw_sprite_ext(spr_vida, 0, _espaco_vida, _gui_height - 28, 1.5, 1.5,0, c_white, 0.4)
	_espaco_vida += 38
}

var _espaco_escudo = 0
repeat(escudos){
	draw_sprite_ext(spr_gui_escudo, 0, (_gui_width - 28) - _espaco_escudo, _gui_height - 28, 1.5, 1.5,0, c_white, 0.4)
	_espaco_escudo += 34
}