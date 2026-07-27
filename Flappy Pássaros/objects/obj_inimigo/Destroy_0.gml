if (audio_is_playing(som_asas)) {
    audio_stop_sound(som_asas);
}

audio_emitter_free(emitter_asas);