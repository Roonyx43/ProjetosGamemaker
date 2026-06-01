// Daqui 1 segundo, vou chamar o alarm[
alarm[0] = irandom_range(120 / global.level, 300 /  global.level)

randomize()
var _arvore_y = irandom_range(367, 448)
instance_create_layer(704, _arvore_y, "Objetos", obj_arvore)