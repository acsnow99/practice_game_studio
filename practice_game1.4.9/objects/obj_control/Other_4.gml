lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id, c_dkgray);

if (not global.rooms_passed == 0 or obj_exploreblock.ded == true) {
	instance_create_layer(0, 0, "Walls", obj_fadein);
	//instance_create_layer(view_xview, view_yview, "Walls", obj_transition); This object was necessary earlier when the camera would not transition quickly enough when going between rooms.
}
if (not instance_exists(obj_exploreblock)) {
	instance_create_layer(global.playerx, global.playery, "Player", obj_exploreblock);
}