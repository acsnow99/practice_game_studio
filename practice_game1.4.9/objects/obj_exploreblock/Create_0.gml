dash = 0;
room_change = false;
immovable = false;
jumping = false;
move_speed = 200;
lag = false;
ded = false;

pitfall_spd = 0.075;
pitfall = false;
spawnx_pit = 0;
spawny_pit = 0;

for (var i = 0; i < 60; ++i) {
	xlist[i] = 0;
	ylist[i] = 0;
}

alarmvar_rightside = 0;
alarmvar_leftside = 0;
alarmvar_bottomside = 0;
alarmvar_topside = 0;
alarmvar_roomchange = 0;
alarm1_activated = false;
alarm2_activated = false;

room_coming = 0;

movement_inputs[0] = vk_right;
movement_inputs[1] = vk_up;
movement_inputs[2] = vk_left;
movement_inputs[3] = vk_down;

health = 100;

//BIG OBVIOUS MESSAGE!!