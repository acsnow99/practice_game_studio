/// Checks/calculations that happen every step
#region code from online(buttery smooth movement tutorial)
var move_speed_current = move_speed * global.dt_steady;

var move_xinput = 0;
var move_yinput = 0;
#endregion


#region Check if they want to move
if (room_change == false and immovable == false){ //if they aren't going through a door or a stairwell or using an item
	#region code from online(buttery smooth movement tutorial)
	for (var i = 0; i < array_length_1d(movement_inputs); i++) {
		var this_key = movement_inputs[i];
		if keyboard_check(this_key) {
			var this_angle = i * 90;
			move_xinput += lengthdir_x(1, this_angle);
			move_yinput += lengthdir_y(1, this_angle);
		}
	}
	
	var moving = (point_distance(0, 0, move_xinput, move_yinput) > 0);
	if moving {
		var move_dir = point_direction(0, 0, move_xinput, move_yinput);
		scr_move(move_speed_current, move_dir);
	}
	#endregion
}
else if (alarmvar_rightside > 0) { //move in a certain direction if they just entered a room
	alarmvar_rightside--
	x -= 2;
}
else if (alarmvar_leftside > 0) {
	alarmvar_leftside--
	x += 2;
}
else if (alarmvar_bottomside > 0) {
	alarmvar_bottomside--
	y -= 2;
}
else if (alarmvar_topside > 0) {
	alarmvar_topside--
	y += 2;
}
else if alarm1_activated == false { //only activates the alarm effect once, so room_change isn't permanently false
	room_change = false;
	alarm1_activated = true;
}

#endregion

if alarmvar_roomchange > 0 {
	alarmvar_roomchange--
}
else if alarm2_activated == false {
	room_change = false;
	alarm2_activated = true;
}

#region jumping?
if (keyboard_check(vk_space) and not immovable and not jumping and not room_change and not pitfall) {
	jumping = true;
	instance_create_layer(x, y, "ForegroundFX", obj_exploreblock_jump);
}
#endregion

//auto-heal
if (health <= 100) {
	health += 0.1;
}

if (keyboard_check(vk_control)) {
	health = 0;
}

#region dashing setup
if keyboard_check(vk_shift)
{
	if dash = 1
	{
		if distance_to_object(obj_launchpad) = 0
		{
			instance_create_layer(x,y, "player", obj_exploreblock_dash);
			if image_index = 0
			{
				obj_exploreblock_dash.color = 0;
			}
			else
			{
				obj_exploreblock_dash.color = 1;
			}
			x = 1;
			y = 1;
		}
	}
}

#endregion

//set the spawn point when touching a pit boundary object
with (instance_nearest(x, y, obj_spawnpoint_pit)) {
	if (place_meeting(x, y, obj_exploreblock) and not other.jumping and not other.pitfall) {
		other.spawnx_pit = x;
		other.spawny_pit = y;
	}
}

//player will get dragged into pits if they are too close and aren't jumping
if (distance_to_object(obj_pit) <= 25 and not jumping) {
	
	x = lerp(x, instance_nearest(x, y, obj_pit).x, pitfall_spd);
	y = lerp(y, instance_nearest(x, y, obj_pit).y, pitfall_spd);
	pitfall_spd += 0.00085;
			
	if (instance_exists(obj_pit_bottomless) 
		and x <= instance_nearest(x, y, obj_pit_bottomless).x + 12 and x >= instance_nearest(x, y, obj_pit_bottomless).x - 12 
		and y <= instance_nearest(x, y, obj_pit_bottomless).y + 12 and y >= instance_nearest(x, y, obj_pit_bottomless).y - 12
		and not jumping) {
			x = spawnx_pit;
			y = spawny_pit;
			
			scr_arrayReset(xlist, ylist, 60);
			
			health -= 10;
	}
	else if (instance_exists(obj_pit_bottomful)
		and x <= instance_nearest(x, y, obj_pit_bottomful).x + 12 and x >= instance_nearest(x, y, obj_pit_bottomful).x - 12 
		and y <= instance_nearest(x, y, obj_pit_bottomful).y + 12 and y >= instance_nearest(x, y, obj_pit_bottomful).y - 12
		and not jumping and not room_change) {
			if not instance_exists(obj_fadeout) and not instance_exists(obj_fadein){ //fade effect
				instance_create_layer(0,0,"ForegroundFX",obj_fadeout);
			}
			alarmvar_roomchange = 60; //wait 60 steps before telling the camera to move normally again
			alarm2_activated = false;
	
			global.playerx = x;
			global.playery = y;
	
			room_coming = 3;
			alarm[3] = 30;
	
			room_change = true;
			global.rooms_passed += 1;
	}
}

if (distance_to_object(obj_pit) > 25) {
	pitfall = false;
	pitfall_spd = 0.075;
}

for (var i = 59; i > 0; --i) {
	xlist[i] = xlist[i-1];
	ylist[i] = ylist[i-1];
}

xlist[0] = x;
ylist[0] = y;

#region old movement code
/*if not place_meeting(x+4, y, obj_wall)
	{
		if keyboard_check(vk_right)
		{
			if not keyboard_check(vk_down)
			{
				if not keyboard_check(vk_up)
				{
					obj_exploreblock.x += 3
				}
			}
		}
	}

	if not place_meeting(x-4, y, obj_wall)
	{
		if keyboard_check(vk_left)
		{
			if not keyboard_check(vk_down)
			{
				if not keyboard_check(vk_up)
				{
					obj_exploreblock.x -= 3
				}
			}
		}
	}

	if not place_meeting(x, y-4, obj_wall)
	{
		if keyboard_check(vk_up)
		{
			if keyboard_check(vk_right)
			{
				if not place_meeting(x+4, y-4, obj_wall)
				{
					obj_exploreblock.x += 2.2
					obj_exploreblock.y -= 2.2
				}
			}
			else if keyboard_check(vk_left)
			{
				if not place_meeting(x-4, y-4, obj_wall)
				{
					obj_exploreblock.x -= 2.2
					obj_exploreblock.y -= 2.2
				}
			}
			else
			{
				obj_exploreblock.y -= 3
			}
		}
	}

	if not place_meeting(x, y+4, obj_wall)
	{
		if keyboard_check(vk_down)
		{
			if keyboard_check(vk_right)
			{
				if not place_meeting(x+4, y+4, obj_wall)
				{
					obj_exploreblock.x += 2.2
						obj_exploreblock.y += 2.2
				}
			}
			else if keyboard_check(vk_left)
			{
				if not place_meeting(x-2, y+2, obj_wall)
				{
					obj_exploreblock.x -= 2.2
					obj_exploreblock.y += 2.2
				}
			}
			else
			{
				obj_exploreblock.y += 3
			}
		}
	}
	*/
#endregion