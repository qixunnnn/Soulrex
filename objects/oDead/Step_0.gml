sprite_index = sEnemyD;
image_speed = 1;

if(animation_end())
{
	image_index = 31;
	instance_destroy();	
}


