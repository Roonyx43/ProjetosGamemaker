if (keyboard_check_pressed(vk_down)){
    atual += 1
}

if (keyboard_check_pressed(vk_up)){
    atual -= 1
}

atual = clamp(atual, 0, array_length(menu_opcoes) - 1)


if (keyboard_check_pressed(vk_enter)){
    switch (atual){
        case 0:
            room_goto(rm_jogo)
            break
        case 1:
            game_end()
            break
    }   
}