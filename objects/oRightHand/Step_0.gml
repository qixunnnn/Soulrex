/// @description Insert description here
// You can write your code in this editor

x = owner.x + 35; 
y = owner.y + 29;

if(owner.image_xscale == -1)
{
	x = owner.x - 35; 
	y = owner.y + 29;
	image_xscale = oBoss.image_xscale;
		
}
else if(owner.image_xscale == 1)
{
	x = owner.x + 35; 
	y = owner.y + 29;
	image_xscale = oBoss.image_xscale;
		
}