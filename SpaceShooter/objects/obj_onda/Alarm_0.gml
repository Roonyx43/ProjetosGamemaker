
if (atual < array_length(ondas)){
	layer_seq = layer_sequence_create("Waves", 0, 0, ondas[atual])
	atual++

	
	if (layer_sequence_is_finished(layer_seq)){
		alarm[0] = 10
	}
}