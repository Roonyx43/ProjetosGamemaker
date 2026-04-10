if (!global.choosing_card) {
	global.choosing_card = true;
	
	var c = instance_create_layer((room_width/2) - 110, (room_height/2) - 60, "Cartas", obj_card_pick)
}