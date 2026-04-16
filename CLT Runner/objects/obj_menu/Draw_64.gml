var _yy = display_get_gui_height() / 2
var _xx = display_get_gui_width() / 2


draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(fnt_pixels)

for (var i = 0; i < array_length(menu_opcoes); i++){
    
    var _cor = c_white
    
    if (i == atual){
        _cor = c_red
    }
    
    draw_set_color(_cor)
    draw_text(_xx, _yy + (i * 40), menu_opcoes[i])
    draw_set_color(-1)
}