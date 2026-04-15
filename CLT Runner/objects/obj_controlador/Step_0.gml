if (room != rm_jogo && room != rm_menu){
    onTimelapse = true
} else {
    onTimelapse = false
}

if (keyboard_check_pressed(vk_space) && onTimelapse){
    room_goto_next()
}