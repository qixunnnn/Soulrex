sprite_index = sSlimeD;
image_speed = 1;
if(floor(image_index) == 0)
{
	audio_play_sound(snEnemyD,1,false);
	image_index = 1;
}

if(animation_end())
{
	image_index = 5;
	instance_destroy();	
}


