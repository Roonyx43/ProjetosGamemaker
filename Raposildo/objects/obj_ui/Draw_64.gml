draw_sprite(spr_pineapple, 0, 15, 15)
draw_set_font(fnt_ui)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(30, 15, string(global.pineapple))
ResetGUI()

var minutos = tempo div 60;
var segundos = tempo mod 60;

// formatar com 2 dígitos
var min_str = (minutos < 10 ? "0" : "") + string(minutos);
var seg_str = (segundos < 10 ? "0" : "") + string(segundos);

var texto = min_str + ":" + seg_str;
var largura = string_width(texto)

var _x = (display_get_gui_width()) / 2;
draw_set_font(fnt_ui)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_text(_x, 15, texto);