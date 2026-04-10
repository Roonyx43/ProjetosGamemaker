global.isPlayer = false;
global.pause = true;
global.iniciador = true

global.contador = 3
global.timer = 0

global.score1 = 0
global.score2 = 0

function draw_timer(){
	var _xx = display_get_gui_width() / 2 
	var _yy = display_get_gui_height() / room_height

	draw_set_halign(fa_center)
	draw_set_colour(c_purple)
	draw_set_font(fnt_timer)
	draw_text_transformed(_xx, _yy + 14, string(ceil(global.timer)), 3, 3, 0);
}

function draw_iniciador(){
	var _xx = display_get_gui_width() / 2 
	var _yy = display_get_gui_height() / 2
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	
	draw_set_font(fnt_timer)
	draw_set_colour(c_purple)
	draw_text_transformed(_xx, _yy, string(ceil(global.contador)), frac(global.contador) * 10, frac(global.contador) * 10, 0);
}

function draw_score(){
	
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	
	draw_set_font(fnt_timer)
	draw_set_colour(c_purple)

	var _xx = display_get_gui_width() / room_width + 60
	var _yy = display_get_gui_height() / room_height + 40
	
	var _xx2 = display_get_gui_width() - 60
	
	draw_text_transformed(_xx, _yy, string(global.score1), 6, 6, 0);
	draw_text_transformed(_xx2, _yy, string(global.score2), 6, 6, 0);
}