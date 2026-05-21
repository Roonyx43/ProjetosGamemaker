if (instance_exists(obj_foco)) {
    
    var foco = instance_find(obj_foco, 0);

    var dentro_do_foco =
        x > foco.foco_x1 &&
        x < foco.foco_x2 &&
        y > foco.foco_y1 &&
        y < foco.foco_y2;

    if (dentro_do_foco) {
        show_debug_message(vida_visual);
        vida_visual -= 0.01;
    } else {
        vida_visual += 0.005;
    }

    vida_visual = clamp(vida_visual, 0, 1);
}