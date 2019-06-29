#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

if (instance_exists(obj_player) and not (obj_player.x == 1 and obj_player.y == 1)){
	
	var _x;
	var _y;
	
	var assigned = false;
	
	#region explanation of camera setup
	//it stores the values that the camera_set_view_pos function will use 
	//to set the camera in the right spot, depending on the player's location
	#endregion
	#region explanation of previous strategy
	//some of this code is also in a script, but I don't use it to avoid too many if checks
	//(arguments of the scr_camera_location are (min_x, max_x, min_y, max_y) for each screen's width and height)
	//scr_camera_location(0, 1400, 0, 700);
	//scr_camera_location(1400, 2800, 0, 700);
	#endregion
	
	if (room == 0) {
		if (obj_player.x >= -25 and obj_player.x <= 1400 and obj_player.y >= -25 and obj_player.y <= 700){
			_x = clamp(obj_player.x - view_width / 2, 0, 1400 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 720 - view_height);
			assigned = true;
		}
		else if (obj_player.x > 1400 and obj_player.x <= 2825 and obj_player.y >= -25 and obj_player.y <= 2025){
			_x = clamp(obj_player.x - view_width / 2, 1400, 2800 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 2000 - view_height);
			assigned = true;
		}
		else if (obj_player.x >= -25 and obj_player.x <= 1400 and obj_player.y > 700 and obj_player.y <= 2025){
			_x = clamp(obj_player.x - view_width / 2, 0, 1400 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 700, 2000 - view_height);
			assigned = true;
		}
		else {
			exit;
		}
	}
	else if (room == 1) {
		//C
		if (obj_player.x >= -25 and obj_player.x < 2300 and obj_player.y >= -25 and obj_player.y < 500){
			_x = clamp(obj_player.x - view_width / 2, 0, 2800 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 720 - view_height); //Do not make the clamp less than 720(view_height); camera will jump out of bounds if you do
			assigned = true;
		}
		//B
		else if (obj_player.x >= 2300 and obj_player.x <= 2825 and obj_player.y >= 500 and obj_player.y <= 2025){
			_x = clamp(obj_player.x - view_width / 2, 2300, 2800 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 2000 - view_height);
			assigned = true;
		}
		//A
		else if (obj_player.x >= 2300 and obj_player.x <= 2825 and obj_player.y >= -25 and obj_player.y <= 500){
			_x = clamp(obj_player.x - view_width / 2, 1500, 2800 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 1000 - view_height);
			assigned = true;
		}
		//D
		else if (obj_player.x >= -25 and obj_player.x <= 2300 and obj_player.y > 500 and obj_player.y <= 2025){
			_x = clamp(obj_player.x - view_width / 2, 0, 2350 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 450, 2000 - view_height);
			assigned = true;
		}
		else {
			exit;
		}
	}
	else if (room == 2) {
		if (obj_player.x >= -25 and obj_player.x <= 1400 and obj_player.y >= -25 and obj_player.y <= 700){
			_x = clamp(obj_player.x - view_width / 2, 0, 1400 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 720 - view_height);
			assigned = true;
		}
		else if (obj_player.x > 1400 and obj_player.x <= 2825 and obj_player.y >= -25 and obj_player.y <= 2025){
			_x = clamp(obj_player.x - view_width / 2, 1400, 2800 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 2000 - view_height);
			assigned = true;
		}
		else if (obj_player.x >= -25 and obj_player.x <= 1400 and obj_player.y > 700 and obj_player.y <= 2025){
			_x = clamp(obj_player.x - view_width / 2, 0, 1400 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 700, 2000 - view_height);
			assigned = true;
		}
		else {
			exit;
		}
	}
	else if (room == 3) {
		if (obj_player.x >= -25 and obj_player.x <= 1400 and obj_player.y >= -25 and obj_player.y <= 700){
			_x = clamp(obj_player.x - view_width / 2, 0, 1400 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 720 - view_height);
			assigned = true;
		}
		else if (obj_player.x > 1400 and obj_player.x <= 2825 and obj_player.y >= -25 and obj_player.y <= 2025){
			_x = clamp(obj_player.x - view_width / 2, 1400, 2800 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 0, 2000 - view_height);
			assigned = true;
		}
		else if (obj_player.x >= -25 and obj_player.x <= 1400 and obj_player.y > 700 and obj_player.y <= 2025){
			_x = clamp(obj_player.x - view_width / 2, 0, 1400 - view_width);
			_y = clamp(obj_player.y - view_height / 2, 700, 2000 - view_height);
			assigned = true;
		}
		else {
			exit;
		}
	}
	
	//may not need this else if, since I extended the boundaries on all sides for the camera. 
	//the camera doesn't move farther, but the player can be farther outside the room for the camera to be in the same position
	//else if (obj_player.x < 0) {
	//	_x = 0;
	//	_y = clamp(obj_player.y - view_height / 2, 700, 2000 - view_height);
	//}
	
	if assigned {
		var _cur_x = camera_get_view_x(view);
		var _cur_y = camera_get_view_y(view);
	
		//camera switches super fast when the player is moving through a door or up stairs(room_change changes based on the player's room_change variable)
		if (room_change == true){
			var _spd = 1;
		}
		else{
			var _spd = 0.1;
		}
	
		camera_set_view_pos(view, lerp(_cur_x, _x, _spd), lerp(_cur_y, _y, _spd));
	}
}