if (health <= 0) {
	x = -1;
	y = -1;
	ded = true;
	room_change = true;
	alarmvar_roomchange = 5;
	alarm2_activated = false;
	
	obj_camera.alarm_variable1 = 1;
	
	//try to implement a fade out function at death
	//instance_create_layer(0,0, "Walls", obj_fadeout);
}
else {
	ded = false;
}