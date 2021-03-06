/// @description Update Camera
// You can write your code in this editor

//Update Destination
if (instance_exists(follow))
{
	//Camera to go x and y of object oPlayer
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object position
//Get the difference of where we want to be and where we are
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half + buff, room_width - view_w_half);
y = clamp(y, view_h_half + buff, room_height - view_h_half);

//Shake screen
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update Camera View
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);