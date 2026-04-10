/// scr_disparo_dir(cx, cy, spd, dir, offset)
function scr_disparo_dir(cx, cy, spd, dir, offset) {
    var px = cx + lengthdir_x(offset, dir);
    var py = cy + lengthdir_y(offset, dir);
    var p  = instance_create_layer(px, py, "Projeteis", obj_tiro_lv1);
    p.direction = dir;
    p.speed = spd;
    p.image_angle = dir;
}