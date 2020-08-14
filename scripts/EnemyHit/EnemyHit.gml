var _damage = argument0;
var Pelement  = argument1;
var AttackInput  = argument2;


if(Pelement != element)
{
	_damage = 0;
}
if (!mercy)
{
	
	ScreenShake(2);
	
	hp -= _damage;
	mercy = true;
	mercy_timer=room_speed/4;
	flash = 3;
	if(hp > 0)
	{
		if(AttackInput == "C")
		{
			sprite_index = sSlimeR;
			image_speed = 0;
			image_index = 4;
			diff = oPlayer.x - x;
			if((diff > 0 && hsp < 0) || (diff < 0 && hsp > 0))
			{
				hsp = (hsp * 3);
			}
			else
			{
				hsp = -(hsp * 3);
			}
			alarm[0] = 10;
			
		}
		else
		{
			diff = oPlayer.x - x;
			if((diff > 0 && hsp < 0) || (diff < 0 && hsp > 0))
			{
				hsp = (hsp);
			}
			else
			{
				hsp = -(hsp);
			}
			alarm[1] = 10;
			
			state = ENEMYSTATE.HIT;
			hitNow = true;
		}
	}
	else
	{
		state = ENEMYSTATE.DEAD;	
	}
}
