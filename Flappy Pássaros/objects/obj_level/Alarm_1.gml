
alarm[1] = irandom_range(300 / global.level, 600 / global.level)

randomize()

var _inimigo_y = choose(48, 144, 288)

instance_create_layer(704, _inimigo_y, "Inimigo", obj_inimigo)