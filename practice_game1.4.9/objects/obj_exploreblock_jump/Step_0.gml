if (alarm_var > 0 and alarm_var <= 3) {
	dist2player += 0.3
}
else if (alarm_var < 0 and alarm_var >= -3) {
	dist2player -= 0.3
}
else if (alarm_var > 3 and alarm_var <= 7) {
	dist2player += 2;
}
else if (alarm_var > 7 and alarm_var <= 12) {
	dist2player += 3;
}
else if (alarm_var > 12 and alarm_var < 16) {
	dist2player += 4;
}
else if (alarm_var < -3 and alarm_var >= -10) {
	dist2player -= 2;
}
else if (alarm_var < -7 and alarm_var >= -12) {
	dist2player -= 3;
}
else if (alarm_var < -12 and alarm_var >= -16) {
	dist2player -= 4;
}
else if (alarm_var >= 16) {
	obj_exploreblock.alarm[2] = 10;
	obj_exploreblock.jumping = false;
	obj_exploreblock.lag = true;
	instance_destroy();
	with (obj_exploreblock) {
		if (distance_to_object(obj_pit) <= 25) {
			pitfall = true;
		}
	}
}

x = obj_exploreblock.x;
y = dist2player + obj_exploreblock.y;

alarm_var++;