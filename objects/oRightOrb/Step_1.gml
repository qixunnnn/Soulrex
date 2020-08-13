/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x+15;
y = oPlayer.y-39;


if(rightOrb != 0)
{
	switch(rightOrb)
	{
		case 1: sprite_index = sDarkOrb;break
		case 3: sprite_index = sLightOrb;break
		case 7: sprite_index = sMagicOrb;break
	}
	
}
else
{
	sprite_index = 	sEmptyOrb;
}