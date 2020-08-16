/// @description Insert description here
// You can write your code in this editor


	x = owner.x - 45; 
	y = owner.y + 30;
		

if(heal)
{
	if(hp <= maxhp)
	{
		hp += 0.05
		if(instance_exists(oRightHand))
		{
			if(oRightHand.hp <= maxhp)
			{
				oRightHand.hp += 0.05;
			}
			
		}
	}
	
}

/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case LHSTATE.FREE:; break;
	case LHSTATE.HIT: BossState_RightHit(); break;
	case LHSTATE.DEAD: BossState_Dead();break;
}