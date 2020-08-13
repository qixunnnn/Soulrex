/// @description Insert description here
// You can write your code in this editor
sprite_index = sPlayerD;
image_speed = 1;

if(animation_end())
{
	image_index = 31;
	instance_destroy();	
}

//alarm[0] = 60;