/// check if the block is touching it, change to switched on form

if touching = 0
{
	if (place_meeting(x,y,obj_exploreblock) and not obj_exploreblock.jumping)
	{
		if image_index = 0
		{
			image_index = 1
			lay_id = layer_get_id("Background")
			back_id = layer_background_get_id(lay_id);

			layer_background_blend(back_id, c_ltgray)
			touching = 1
			obj_exploreblock.image_index = 1
			instance_destroy(obj_wall_gate_light_closed)
		}
		else
		{
			image_index = 0
			lay_id = layer_get_id("Background")
			back_id = layer_background_get_id(lay_id);

			layer_background_blend(back_id, c_dkgray)
			touching = 1
			obj_exploreblock.image_index = 0
			instance_destroy(obj_wall_gate_light_open)
		}
	}
}

if not place_meeting(x,y,obj_exploreblock)
{
	touching = 0
}