var _xx = window_get_width() / 2;
var _yy = window_get_height() / 2;

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(fnt_menu)

for (var i = 0; i < array_length(listaMenuPrincipal); i++){
	var _y_gap = _yy - 32 + (i * 32)
	if (menu == 0){
		if (i == indexMenuPrincipal){
			draw_set_colour(c_red)
		} else {
			draw_set_colour(c_white)
		}

		draw_text(_xx, _y_gap, string(listaMenuPrincipal[i]));
	} else if (menu == 1) {
		if (i == indexMenuOpcoes){
			draw_set_colour(c_red)
		} else {
			draw_set_colour(c_white)
		}

		draw_text(_xx, _y_gap, string(listaMenuOpcoes[i]));
	}
	
}

draw_set_colour(-1)
draw_text(20, 20, string(indexMenuPrincipal))
draw_text(20, 40, string(menu))