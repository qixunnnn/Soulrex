var _damage = argument0;
var Pelement  = argument1;
var AttackInput  = argument2;

if(object_index == 15)
{
	if(instance_exists(oLeftHand) or (instance_exists(oRightHand)))
	{
		_damage = 0;	
		
	}
		
}


if (!mercy)
{
	if(Pelement != element)
	{
		_damage = 0;
		if((object_index == 17) || (object_index == 16))
		{
			//heal when wrong element hit on hands
			if(hp <= (maxhp - 3))
			{
				hp += 2;
			}
		}
	}
	ScreenShake(2);
	
	hp -= _damage;
	mercy = true;
	mercy_timer=room_speed/4;
	flash = 3;
	if(hp > 0)
	{
		
		if(AttackInput == "C")
		{
			if(object_index == 2)
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
			
			if((object_index == 15) or (object_index == 16) or (object_index == 17))
			{
				diff = oPlayer.x - x;
				if((diff > 0 && hsp < 0) || (diff < 0 && hsp > 0))
				{
					hsp = -(hsp);
				}
				else
				{
					hsp = hsp;
				}
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
			}
			
		
			
			
				
			
		}
		else
		{
			if((object_index == 15) or (object_index == 16) or (object_index == 17))
			{
				diff = oPlayer.x - x;
				if((diff > 0 && hsp < 0) || (diff < 0 && hsp > 0))
				{
					hsp = -(hsp);
				}
				else
				{
					hsp = hsp;
				}
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
			}
			
			switch(object_index)
			{
				case 17: state = RHSTATE.HIT;break;
				case 16: state = LHSTATE.HIT;break;
				case 15: state = BOSSSTATE.HIT;break;
				case 2: state = ENEMYSTATE.HIT;break;
				case 18: state = TREESTATE.HIT;break;
			
			}
			if((object_index == 17) || (object_index == 16))
			{
				
				alarm[0] = room_speed * 15;
				heal = false;
			}
			hitNow = true;
		}
	}
	else
	{
		state = ENEMYSTATE.DEAD;	
	}
}
