/// @description Insert description here
// You can write your code in this editor
//draw_text(oPDead.x,oPDead.y, "You Died!");
if(done == 0)
{
	sprite_index = sPlayerD;
	image_speed = 1;
}
if(animation_end())
{
	image_speed = 0;
	image_index = 28;
	done = 1;
	alarm[0] = 30;
	
	
}


	


