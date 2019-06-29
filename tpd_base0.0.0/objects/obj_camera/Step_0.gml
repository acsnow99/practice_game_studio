if (obj_player.room_change == true){
	alarm_variable1--;
	if (alarm_variable1 <= global.gametime + 30*1000){
		room_change = true;
		alarm_variable1 = global.gametime + 30*1000;
	}
}
else{
	room_change = false;
	alarm_variable1 = global.gametime + 30*1000;
}
