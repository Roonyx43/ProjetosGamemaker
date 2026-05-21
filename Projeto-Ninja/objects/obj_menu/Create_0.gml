menu = 0;

//Menu Principal
listaMenuPrincipal = ["Jogar", "Opcoes", "Sair"];
indexMenuPrincipal = 0;

//Menu Opções
listaMenuOpcoes = ["Video", "Audio", "Creditos", "Voltar"]
indexMenuOpcoes = 0;

function alternarOpcoesMenu(){
	if (menu == 0) {
		if (keyboard_check_pressed(vk_down)){
			if (indexMenuPrincipal < array_length(listaMenuPrincipal) - 1){
				indexMenuPrincipal++
			} else {
				indexMenuPrincipal = 0
			}
		} else if (keyboard_check_pressed(vk_up)){
			if (indexMenuPrincipal <= 0){
				indexMenuPrincipal = array_length(listaMenuPrincipal) - 1
			} else {
				indexMenuPrincipal--
			}
		} else if (keyboard_check_pressed(vk_enter)){
			switch (indexMenuPrincipal){
				case 0:
					break;
				case 1:
					menu = 1;
					break
			}
		}
	}
	
	if (menu == 1) {
		if (keyboard_check_pressed(vk_down)){
			if (indexMenuOpcoes < array_length(listaMenuOpcoes) - 1){
				indexMenuOpcoes++
			} else {
				indexMenuOpcoes = 0
			}
		} else if (keyboard_check_pressed(vk_up)){
			if (indexMenuOpcoes <= 0){
				indexMenuOpcoes = array_length(listaMenuOpcoes) - 1
			} else {
				indexMenuOpcoes--
			}
		} else if (keyboard_check_pressed(vk_enter)){
			switch (indexMenuOpcoes){
				case 0:
					break;
				case 1:
					menu = 1;
					break
			}
		}
	}
}