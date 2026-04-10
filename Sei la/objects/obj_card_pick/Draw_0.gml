draw_set_color(c_white)
draw_sprite_ext(spr_fundo_carta, 0, x, y - 100, 1, 1,0, c_white, 1)

draw_set_color(c_black)
draw_text(x + 50,y + 10, card_title)
draw_text(x + 45, y + 40, card_desc)