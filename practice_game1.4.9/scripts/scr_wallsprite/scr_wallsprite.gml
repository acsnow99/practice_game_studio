///This code is used to draw the correct image for each wall depending on position

#region all
if place_meeting(x-2,y,obj_wall) and place_meeting(x,y-2,obj_wall) 
and place_meeting(x+2,y,obj_wall) and place_meeting(x,y+2,obj_wall)
{
	image_index = 1
}
#endregion

#region triples

#region left, up, right
else if place_meeting(x-2,y,obj_wall) and place_meeting(x,y-2,obj_wall) 
and place_meeting(x+2,y,obj_wall)
{
	image_index = 13
}
#endregion

#region up, right, down
else if place_meeting(x,y-2,obj_wall) and place_meeting(x+2,y,obj_wall) 
and place_meeting(x,y+2,obj_wall)
{
	image_index = 14
}
#endregion

#region right, down, left
else if place_meeting(x+2,y,obj_wall) and place_meeting(x,y+2,obj_wall) and place_meeting(x-2,y,obj_wall)
{
	image_index = 12
}
#endregion

#region down, left, up
else if place_meeting(x,y+2,obj_wall) and place_meeting(x-2,y,obj_wall) and place_meeting(x,y-2,obj_wall)
{
	image_index = 15
}
#endregion

#endregion

#region doubles

#region up, down
else if place_meeting(x,y-2,obj_wall) and place_meeting(x,y+2,obj_wall)
{
	image_index = 7
}
#endregion

#region left, right
else if place_meeting(x-2,y,obj_wall) and place_meeting(x+2,y,obj_wall)
{
	image_index = 4
}
#endregion

#region left, up
else if place_meeting(x-2,y,obj_wall) and place_meeting(x,y-2,obj_wall)
{
	image_index = 8
}
#endregion

#region up, right
else if place_meeting(x,y-2,obj_wall) and place_meeting(x+2,y,obj_wall)
{
	image_index = 9
}
#endregion

#region right, down
else if place_meeting(x+2,y,obj_wall) and place_meeting(x,y+2,obj_wall)
{
	image_index = 10
}
#endregion

#region down, left
else if place_meeting(x,y+2,obj_wall) and place_meeting(x-2,y,obj_wall)
{
	image_index = 11
}
#endregion

#endregion

#region singles

#region left
else if place_meeting(x-2,y,obj_wall)
{
	image_index = 3
}
#endregion

#region up
else if place_meeting(x,y-2,obj_wall)
{
	image_index = 5
}
#endregion

#region right
else if place_meeting(x+2,y,obj_wall)
{
	image_index = 2
}
#endregion

#region down
else if place_meeting(x,y+2,obj_wall)
{
	image_index = 6
}
#endregion

#endregion