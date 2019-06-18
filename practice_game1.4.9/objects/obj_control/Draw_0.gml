//OBSOLETE CODE
//move the camera one screen in the correct direction 
//if the player touches the room boundary
/* if (instance_exists(obj_tripline_right) and instance_exists(obj_tripline_left))
{
	if (obj_tripline_right.x - obj_exploreblock.x) < 0
	{
		//one screen to the right
		camera_set_view_pos(view_camera[0], x + 1024, y);
	
		//this will create a new set of boundaries in each room, replacing the old
		instance_create_layer(obj_tripline_right.x - 64, obj_tripline_right.y, "Triplines", obj_tripline_left);
	
		//all boundaries must be destroyed, or the rooms will shift back again, 
		//so I will use the left triplines for reference
		instance_destroy(obj_tripline_right);
		instance_create_layer(obj_tripline_left.x + 1088, obj_tripline_left.y, "Triplines", obj_tripline_right);
	}

	else if (obj_exploreblock.x - obj_tripline_left.x) < 0
	{
		camera_set_view_pos(view_camera[0], x - 1024, y);
	
		instance_create_layer(obj_tripline_left.x + 64, obj_tripline_left.y, "Triplines", obj_tripline_right);
	
		instance_destroy(obj_tripline_left);
		instance_create_layer(obj_tripline_right.x - 1088, obj_tripline_right.y, "Triplines", obj_tripline_left);
	}
}
*/