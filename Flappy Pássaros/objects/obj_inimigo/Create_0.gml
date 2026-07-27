
image_xscale = -1
colisao_passaro = false;


audio_listener_orientation(0, 0, 1, -1, -1, 0)

emitter_asas = audio_emitter_create()

audio_emitter_position(emitter_asas, x, y, 0)
audio_emitter_falloff(emitter_asas, 100, 500, 1);

som_asas = audio_play_sound_on(emitter_asas, snd_sfx_carcara_wings, true, 1, 0.6, random_range(0.5, 1.5))