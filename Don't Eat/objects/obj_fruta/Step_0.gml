if (y >= 324){
    instance_destroy()
    instance_create_layer(x, y, "Instances", obj_vfx_explosion)
}

if (image_index == 0){
    image_angle += 5
}