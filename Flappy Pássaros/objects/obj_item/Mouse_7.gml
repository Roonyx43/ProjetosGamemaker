if (pode_comprar && global.peixes >= custo && !comprado){
	global.peixes = global.peixes - custo
	comprado = true
	if (indice == 0){
		global.passaros_comprados.arara = true;
	} else if (indice == 1) {
		global.passaros_comprados.coruja = true;
	} else if (indice == 2){
		global.passaros_comprados.carcara = true;
	}
	
} else if (comprado) {
	
	switch(indice) {
		case 0:
			global.passaro_selecionado = spr_arara
			global.passaro = 0
			break
		case 1:
			global.passaro_selecionado = spr_coruja
			global.passaro = 1
			break
		case 2:
			global.passaro_selecionado = spr_carcara
			global.passaro = 2
			break
	}
}