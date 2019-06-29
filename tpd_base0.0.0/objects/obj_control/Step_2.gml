//if the player dies
if (obj_player.x == -1 and obj_player.y == -1) {
	room_goto(spawnroom);
	obj_player.x = spawnx;
	obj_player.y = spawny;
}