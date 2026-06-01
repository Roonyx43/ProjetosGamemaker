if (global.perdeu) exit;

vspeed = -4

if (image_index >= 1){
	exit
}
	image_speed = 1
	image_index = 1

if (global.passaro_selecionado == spr_arara) {
	audio_play_sound(snd_sfx_wings, 0, 0, 0.7, 0, 1.5)
} else if (global.passaro_selecionado == spr_coruja) {
	audio_play_sound(snd_sfx_wings, 0, 0, 0.8, 0, 1)
} else if (global.passaro_selecionado == spr_carcara) {
	audio_play_sound(snd_sfx_wings, 0, 0, 1, 0, 0.8)
}