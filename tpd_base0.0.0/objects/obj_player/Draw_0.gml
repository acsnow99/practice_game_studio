//if (distance_to_object(instance_nearest(x, y, obj_pit)) <= 25 and not jumping) {
//	var shrink = ((distance_to_object(instance_nearest(x, y, obj_pit)) / 100) + 0.75) * sprite_width;
//	draw_sprite_stretched(spr_exploreblock, image_index, x, y, shrink, shrink);
//}
//else
if (not jumping) {
	draw_sprite(spr_exploreblock, image_index, x, y);
}
else if (not lag) {
	draw_sprite(spr_shadow, 0, x, y)
}



//if (global.test) {
//	draw_set_color(c_blue);
//	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
//}