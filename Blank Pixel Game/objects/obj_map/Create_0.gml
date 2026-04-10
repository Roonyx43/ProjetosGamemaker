cell_size = 32;
grid_width = room_width div cell_size;
grid_height = room_height div cell_size;
grid = ds_grid_create(grid_width, grid_height)
ds_grid_set_region(grid, 0, 0, grid_width, grid_height, 0)

randomize()

var xx = grid_width / 2;
var yy = grid_height / 2;
var dir = irandom(3);
var room_count = 5;
var room_size = 1;

for(var i = 0; i < room_count; i++){
	
	ds_grid_set_region(grid, xx - room_size, yy - room_size, xx + room_size, yy + room_size, 2)
	
	var path_distance = 5;
	
	while(path_distance > 0){
		
		grid[# xx,yy] = 1;
		
		xx += lengthdir_x(1, dir * 90)
		yy += lengthdir_y(1, dir * 90)
		
		xx = clamp(xx, 2, grid_width - 3);
		yy = clamp(yy, 2, grid_height - 3);
		
		path_distance--
		
	}
	
	if (path_distance == 0){
		
		ds_grid_set_region(grid, xx - room_size, yy - room_size, xx + room_size, yy + room_size, 2)
		
		dir = irandom(3)
	}
}