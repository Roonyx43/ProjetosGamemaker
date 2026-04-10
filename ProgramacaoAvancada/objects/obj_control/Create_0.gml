velh = 0
velv = 0
max_vel = 5
acel = .2

tempo = 0;

segundos	= 0
minutos		= 0
horas		= 0


seno = 0


intensidade_cor = 0

function desenhar(_variavel){
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	
	draw_text(room_width / 2, room_height / 2, string(floor(segundos)))
	draw_text(room_width / 2 - 22, room_height / 2, string(floor(minutos)) + ":")
	draw_text(room_width / 2 - 42, room_height / 2, floor(horas))
	
	draw_set_halign(-1)
	draw_set_valign(-1)
}


function move(){
	if (mouse_check_button(mb_left)){
		x = lerp(x, mouse_x, .05)
		y = lerp(y, mouse_y, .05)
	}
}