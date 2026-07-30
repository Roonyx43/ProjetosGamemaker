
if (atual < array_length(ondas)){
	var _sequence = layer_sequence_create("Waves", 0, 0, ondas[atual])
	atual++
	
	if (layer_sequence_is_finished(_sequence)){
		alarm[0] = 10
	}
}