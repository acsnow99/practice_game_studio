//if the player dies
if (obj_exploreblock.x == -1 and obj_exploreblock.y == -1) {
	room_goto(spawnroom);
	obj_exploreblock.x = spawnx;
	obj_exploreblock.y = spawny;
}