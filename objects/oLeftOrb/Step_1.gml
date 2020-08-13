/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x-39;
y = oPlayer.y-39;

if(leftOrb != 0)
{
	switch(leftOrb)
	{
		case 1: sprite_index = sDarkOrb;break
		case 2: sprite_index = sLightOrb;break
		case 3: sprite_index = sMagicOrb;break
	}
	
}
else
{
	sprite_index = 	sEmptyOrb;
}