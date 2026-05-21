res_width = 1280;
res_height = 720;

res_scale = 3

global.view_width = res_width / res_scale;
global.view_height = res_height / res_scale;

view_target = obj_player;

view_speed = 0.1;


window_set_size(global.view_width * res_scale, global.view_height * res_scale);

surface_resize(application_surface, global.view_width * res_scale, global.view_height * res_scale)