var _colour = make_colour_rgb(255, 209, 102)

if (onTimelapse == true || room == rm_score){
    var _escala = 0.8 + sin(current_time / 250) * 0.05
    draw_sprite_ext(spr_space, 0, 180, 600, _escala, _escala, 0, c_white, 1)
}

_xx = display_get_gui_width() / 2

if (room == rm_jogo){
    draw_text_colour(_xx - 3, 30, global.pontuacao, _colour, _colour, _colour, _colour, 1)
    draw_set_halign(fa_center)
    draw_set_valign(fa_center)
}
if (room == rm_score){
    var _score = (global.pontuacao * global.timer * global.velBackground) / 10
    draw_text_colour(_xx - 3, 180, round(_score), _colour, _colour, _colour, _colour, 1)
}