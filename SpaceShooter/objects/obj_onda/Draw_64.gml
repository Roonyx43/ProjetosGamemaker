draw_text(20, 20, string(layer_sequence_exists("Waves", layer_seq)))
draw_text(20, 40, string(layer_sequence_is_paused(layer_seq)))
draw_text(20, 60, string(layer_sequence_is_finished(layer_seq)))