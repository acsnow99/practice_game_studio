alarm_variable1 = global.gametime 30 * 1000;

view_width = 7680/6;
view_height = 4320/6;

window_scale = 3;

window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);