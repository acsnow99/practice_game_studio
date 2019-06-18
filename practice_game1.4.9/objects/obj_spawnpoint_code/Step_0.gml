if (place_meeting(x,y,obj_exploreblock) and not obj_exploreblock.jumping and not respawn and not touching)
{
	obj_control.alarm[0] = 1;
	game_save("save");
	touching = true;
	saving = true;
	alarm_var = 120;
}
else if not place_meeting(x,y,obj_exploreblock)
{
	touching = false;
	if (not alarm_var > 0)
		saving = false;
	respawn = false;
	alarm_var--;
}