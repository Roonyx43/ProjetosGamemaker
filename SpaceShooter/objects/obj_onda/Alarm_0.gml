layer_sequence_create("Waves",0,0, waves[wave_atual])

if (wave_atual < array_length(waves) - 1){
	alarm[0] = 320
	wave_atual++
}