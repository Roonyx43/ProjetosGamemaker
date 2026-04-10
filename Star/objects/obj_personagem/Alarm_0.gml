var alvo = instance_nearest(x, y, obj_inimigo_lv1); // use par_inimigo p/ todos os tipos
if (alvo != noone) {
    var dist = point_distance(x, y, alvo.x, alvo.y);
    var ok = (dist <= range);

    if (only_on_screen) {
        var cam = view_camera[0];
        var cx = camera_get_view_x(cam), cy = camera_get_view_y(cam);
        var cw = camera_get_view_width(cam), ch = camera_get_view_height(cam);
        ok = ok && (alvo.x >= cx && alvo.x <= cx+cw && alvo.y >= cy && alvo.y <= cy+ch);
    }

    if (ok) {
        var dir = point_direction(x, y, alvo.x, alvo.y);
        scr_disparo_dir(x, y, 10, dir, 16); // tua função de disparo direto
    }
}
alarm[0] = fire_rate; // loop