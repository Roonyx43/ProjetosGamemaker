var _move_x = keyboard_check(vk_right) - keyboard_check(vk_left)
var _move_y = keyboard_check(vk_down) - keyboard_check(vk_up);

dir = point_direction(0, 0, _move_x, _move_y)

if (
velh = lengthdir_x(vel, dir)
velv = lengthdir_y(vel, dir)

move_and_collide(velh, velv, all)