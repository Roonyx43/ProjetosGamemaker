function MostrarCartas(card_id){
	var p = instance_find(obj_player, 0)
	
	switch(card_id) {
		case "more_damage":
			p.damage += 1
			break
	}
}