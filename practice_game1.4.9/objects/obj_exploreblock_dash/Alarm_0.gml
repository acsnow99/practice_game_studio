obj_exploreblock.x = x;
obj_exploreblock.y = y;
obj_exploreblock.dash = 1;
if color = 0
{
	obj_exploreblock.image_index = 0;

}
else 
{
	obj_exploreblock.image_index = 1;
}
instance_destroy();	