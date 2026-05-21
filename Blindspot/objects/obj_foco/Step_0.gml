var cam = view_camera[0];

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

foco_x1 = cam_x + (cam_w / 2) - (foco_w / 2);
foco_y1 = cam_y + (cam_h / 2) - (foco_h / 2);

foco_x2 = foco_x1 + foco_w;
foco_y2 = foco_y1 + foco_h;