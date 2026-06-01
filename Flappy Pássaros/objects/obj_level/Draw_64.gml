desenhar_level_sala()

draw_set_valign(fa_center)
draw_set_halign(fa_center)
draw_text(window_get_width() / 2, 70, global.lista_pontos[global.level - 1])
draw_set_valign(-1)
draw_set_halign(-1)