if (onTimelapse == true){
    var _escala = 0.8 + sin(current_time / 250) * 0.05
    draw_sprite_ext(spr_space, 0, 180, 600, _escala, _escala, 0, c_white, 1)
}