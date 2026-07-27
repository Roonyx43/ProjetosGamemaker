if (!bloqueado){
	draw_self()
	draw_set_font(fnt_menu_sm)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	if (comprado) {
		if (indice != global.passaro){
			draw_text(id.x, id.y + 60, "Já possui")
		} else if (indice == global.passaro){
			draw_text_colour(id.x, id.y + 60, "Selecionado", c_green, c_green, c_green, c_green, 1)
		}
	} else {
		draw_text(id.x - 15, id.y + 60, custo)
		draw_sprite_ext(spr_icone_peixe, 0, id.x + 10, id.y + 60, 1, 1, 0, c_white, 1)
	}
	draw_set_font(-1)
	draw_set_valign(-1)
	draw_set_halign(-1)
} else {
	draw_sprite_ext(sprite, 0, x, y, 1, 1, 0, c_black, 0.9)
	draw_set_font(fnt_menu_sm)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_set_colour(c_red)
	draw_text(x, y + 60, "Bloqueado")
	draw_set_colour(c_white)
	draw_text(x, y + 80, string(ceil(global.max_pontos)) + "/" + string(pontos_necessarios))
}