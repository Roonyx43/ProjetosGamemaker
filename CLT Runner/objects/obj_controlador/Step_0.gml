
if (room == rm_jogo){
    global.velBackground = 1 + ((get_timer() / 1000000) / 15) * 3
    global.velBackground = clamp(global.velBackground, 0, 20)
    global.timer = floor(get_timer() / 1000000)
}

if (room != rm_jogo && room != rm_menu && room != rm_score){
    onTimelapse = true
} else {
    onTimelapse = false
}

if (room == rm_jogo){
    layer_vspeed("Background", global.velBackground)
}

if (keyboard_check_pressed(vk_space) && onTimelapse){
    room_goto_next()
}

if (room == rm_score && keyboard_check_pressed(vk_space)){
    room_goto(rm_menu)
}
