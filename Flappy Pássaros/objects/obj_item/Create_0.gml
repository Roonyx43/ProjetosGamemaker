sprite_index = sprite

image_speed = 0
mouse_saiu = true;

bloqueado = global.itens_bloqueados[indice];

if (bloqueado){
	pode_comprar = false;
} else if (!bloqueado){
	pode_comprar = true;
}