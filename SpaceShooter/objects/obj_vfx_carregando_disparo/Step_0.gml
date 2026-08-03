if (!instance_exists(dono)) {
    instance_destroy();
    exit;
}

if (image_index >= 5){
	image_speed = 0.1
}

x = dono.x + offset_x;
y = dono.y + offset_y;

if (dono.estado == "carregando_tiro_1" || dono.estado == "carregando_tiro_2"){
    y = dono.y + 20;
}
else if (dono.estado == "carregando_tiro_3") {
    y = dono.y + 7;
}