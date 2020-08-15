/// @description Insert description here
// You can write your code in this editor

if(owner.image_xscale == 1)
{
	x = owner.x - 45; 
	y = owner.y + 30;
	image_xscale = oBoss.image_xscale;
		
}
else if(owner.image_xscale == -1)
{
	x = owner.x + 45; 
	y = owner.y + 30;
	image_xscale = oBoss.image_xscale;
		
}