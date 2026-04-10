var _right, _left, _up, _down;
_right = keyboard_check(vk_right)
_left = keyboard_check(vk_left)
_up = keyboard_check(vk_up)
_down = keyboard_check(vk_down)

//Movendo o objeto
velh += (_right - _left) * acel
velv += (_down - _up) * acel

image_blend = make_colour_hsv(0, intensidade_cor, 255)

x += clamp(velh, -max_vel, max_vel)
y += clamp(velv, -max_vel, max_vel)

if(!_right or !_left){
	velh = lerp(velh, 0, .05)
}

if(_right or _left){
	intensidade_cor = lerp(intensidade_cor, 255, .01)
} else {
	intensidade_cor = lerp(intensidade_cor, 0, .01)
}

seno++

if(!_up or !_down){
	velv = lerp(velv, 0, .05)
}

x = clamp(x, sprite_width / 2, room_width - sprite_width / 2)
y = clamp(y, sprite_height / 2, room_height - sprite_height / 2)

tempo += delta_time / 1000000

move()

segundos = get_timer() / 1000000
segundos %= 60
minutos = (get_timer() / 60000000)
minutos %= 60
horas  = (get_timer() / 3600000000)
horas %= 24;

if (mouse_x != x){
	//image_xscale = sign(mouse_x - x)
}