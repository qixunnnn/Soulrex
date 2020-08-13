//Screenshake(Magnitude, Frames)

with(oCamera)
{
	if(argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = game_get_speed(gamespeed_fps);
	}
}