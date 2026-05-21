alarm[0] = 60
alarm[1] = 160
alarm[2] = 120
arvore_y = choose(384, 448)

function desenhar_level_sala(){
	var _meio_tela = window_get_width() / 2;
	draw_sprite_ext(spr_icone_peixe, 0, 45, 40, 2, 2, 0, c_white, 1)
	draw_sprite_ext(spr_numeros, global.level, 1230, 40, 2, 2, 0, c_white, 1)
	draw_set_font(fnt_moedas)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_text(100, 40, string(global.peixes))
	draw_text(_meio_tela, 40, ceil(string(global.pontos)))
	draw_set_font(-1)
	draw_set_valign(-1)
	draw_set_halign(-1)
}