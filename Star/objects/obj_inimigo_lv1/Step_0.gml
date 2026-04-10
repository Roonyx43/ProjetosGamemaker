var dir = point_direction(x, y, global.cx, global.cy)
var vel = 2.2;
x += lengthdir_x(vel, dir)
y += lengthdir_y(vel, dir)

iframes = max(iframes - 1, 0);
flash_t = max(flash_t - 1, 0);