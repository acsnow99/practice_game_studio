if (saving) {
	draw_set_color(c_black);
	draw_text(camera_get_view_x(view) + 50, camera_get_view_y(view) + 50, "Game saved, spawn point set.");
}

if (not testprompt) {
	draw_set_color(c_black);
	draw_text(camera_get_view_x(view) + 50, camera_get_view_y(view) + 50, "Press Ctrl to self destruct!");
}