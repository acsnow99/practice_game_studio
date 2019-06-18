if (obj_exploreblock.room_change == true){
	alarm_variable1--;
	if (alarm_variable1 <= 0){
		room_change = true;
		alarm_variable1 = 30;
	}
}
else{
	room_change = false;
	alarm_variable1 = 30;
}
