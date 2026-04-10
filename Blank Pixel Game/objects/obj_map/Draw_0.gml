for (var xx = 0; xx < grid_width; xx++){
	for (var yy = 0; yy < grid_height; yy++){
		if (grid[# xx, yy] == 1){
			draw_sprite(spr_grid_cell, 1, xx * cell_size, yy * cell_size)
		} else if(grid[# xx, yy] == 2){
			draw_sprite(spr_grid_cell, 0, xx * cell_size, yy * cell_size)
		}
	}
}