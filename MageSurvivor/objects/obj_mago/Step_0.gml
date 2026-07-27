var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

velh = (_right - _left) * spd
velv = (_down - _up) * spd

move_and_collide(velh, velv, 0, 24, 0, 0, spd, spd)

if (velh > 0){
	image_xscale = 1;
}
if (velh < 0) {
	image_xscale = -1
}

if (velh != 0 || velv != 0){
	sprite_index = spr_mage_run
} else {
	sprite_index = spr_mage_idle
}

lifebar = (vida / sprite_get_number(spr_vida))
porcentagem_vida = vida / vida_max