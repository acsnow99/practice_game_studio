with (obj_exploreblock) {
	other.spawnx = instance_nearest(x, y, obj_spawnpoint_code).x;
	other.spawny = instance_nearest(x, y, obj_spawnpoint_code).y;
	other.spawnroom = room;
}