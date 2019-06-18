if not instance_exists(obj_exploreblock_dash)
{
	if obj_exploreblock.image_index = 1
	{
		image_index = index + 16
	}

	else if image_index > 15
	{
	image_index = image_index - 16
	}
}