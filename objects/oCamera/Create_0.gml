/// @description Set Up Camera
cam = view_camera[0];
follow = oPlayer;

//Get View Model to half
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

//To the player
xTo = xstart;
yTo = ystart;