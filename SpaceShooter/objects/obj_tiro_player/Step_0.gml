if (y <= -16){
	instance_destroy()
}

if ( y <= 3 && !criou_efeito){
	instance_create_layer(x, ceil(y), "VFX", obj_vfx_tiro_impacto)
	criou_efeito = true
}