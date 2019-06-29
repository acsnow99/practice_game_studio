if (not room_change and not jumping) {
	alarm[1] = 30;
	
	room_change = true;

	//for fade out effect
	if not instance_exists(obj_fadeout) and not instance_exists(obj_fadein){
		instance_create_layer(0,0,"ForegroundFX",obj_fadeout);
	}
}
