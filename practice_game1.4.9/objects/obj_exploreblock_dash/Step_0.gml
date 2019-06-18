#region dashing
if moving = 0
{
	if keyboard_check(vk_up)
	{
		vspeed = -25;
		alarm[0] = 4;
		moving = 1;
	}
	
	else if keyboard_check(vk_down)
	{
		vspeed = 25;
		alarm[0] = 4;
		moving = 1;
	}

	else if keyboard_check(vk_left)
	{
		hspeed = -25;
		alarm[0] = 4;
		moving = 1;
	}
	
	else if keyboard_check(vk_right)
	{
		hspeed = 25;
		alarm[0] = 4;
		moving = 1;
	}
}

#endregion