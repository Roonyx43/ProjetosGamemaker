if (y >= room_height + 16){
	instance_destroy()
}

if ( y >= room_height && !criou_efeito){
	instance_create_layer(x, y, "VFX", obj_vfx_tiro_impacto)
	criou_efeito = true
}