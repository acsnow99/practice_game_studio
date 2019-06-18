if (obj_exploreblock.x > argument0 and obj_exploreblock.x < argument1 and obj_exploreblock.y > argument2 and obj_exploreblock.y < argument3){
	_x = clamp(obj_exploreblock.x - view_width / 2, argument0, argument1 - view_width);
	_y = clamp(obj_exploreblock.y - view_height / 2, argument2, argument3 - view_height);
}