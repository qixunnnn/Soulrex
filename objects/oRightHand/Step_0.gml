/// @description Insert description here
// You can write your code in this editor


if(owner.image_xscale == -1)
{
	x = owner.x + 40; 
	y = owner.y + 29;
		
}
else if(owner.image_xscale == 1)
{
	x = owner.x + 35; 
	y = owner.y + 29;
		
}
if(heal)
{
	if(hp <= maxhp)
	{
		hp += 0.05	

		if(instance_exists(oLeftHand))
		{
			if(oLeftHand.hp <= maxhp)
			{
	
				oLeftHand.hp += 0.05
			}
		}

	}
	
}
switch(state)
{
	case RHSTATE.FREE:; break;
	case RHSTATE.HIT: BossState_LeftHit(); break;
	case RHSTATE.DEAD: BossState_Dead();break;
}