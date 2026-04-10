var raio_spawn = 700;
var ang = irandom_range(0, 359);
var sx = global.cx + lengthdir_x(raio_spawn, ang)
var sy = global.cy + lengthdir_y(raio_spawn, ang)

instance_create_layer(sx, sy, "Inimigos", obj_inimigo_lv1)

alarm[0] = irandom_range(room_speed*0.4, room_speed*0.9);