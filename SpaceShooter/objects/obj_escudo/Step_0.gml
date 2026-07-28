if (image_index >= 13 && !animacao_pausada) {
    image_speed = 0;
    animacao_pausada = true;

    alarm[0] = game_get_speed(gamespeed_fps) * 2;
}

x = obj_player.x
y = obj_player.y