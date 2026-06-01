if (pode_comprar && global.peixes >= custo && !comprado){
	global.peixes = global.peixes - custo
	comprado = true
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