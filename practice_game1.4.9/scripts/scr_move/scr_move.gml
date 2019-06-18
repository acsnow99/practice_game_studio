//this entire script is code from online(buttery smooth movement tutorial)
var spd = argument0;
var dir = argument1;

var xtarg = x + lengthdir_x(spd, dir);
var ytarg = y + lengthdir_y(spd, dir);

if (not place_meeting(xtarg, ytarg, obj_wall_parent)) {
	x = xtarg;
	y = ytarg;
}
else {
	var sweep_interval = 10;
	
	for (var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
		for (var multiplier = -1; multiplier <= 1; multiplier += 2) {
			var angle_to_check = dir + angle * multiplier;
			xtarg = x + lengthdir_x(spd, angle_to_check);
			ytarg = y + lengthdir_y(spd, angle_to_check);
			if (not place_meeting(xtarg, ytarg, obj_wall_parent)) {
				x = xtarg;
				y = ytarg;
				exit;
			}
		}
	}
}