var _damage = argument0;
if (!mercy)
{
	hp -= _damage;
	mercy = true;
	mercy_timer=room_speed/4;
	flash = 3;
	if(hp > 0)
	{
		state = ENEMYSTATE.HIT;
		hitNow = true;
	}
	else
	{
		state = ENEMYSTATE.DEAD;	
	}
}
