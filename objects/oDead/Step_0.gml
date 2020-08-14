sprite_index = sSlimeD;
image_speed = 1;

audio_play_sound(snEnemyD,1,false);

if(animation_end())
{
	image_index = 5;
	instance_destroy();	
}


