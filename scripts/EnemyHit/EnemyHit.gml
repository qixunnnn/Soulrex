var _damage = argument0;
var Pelement  = argument1;
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
		state = ENEMYSTATE.HIT;
		hitNow = true;
	}
	else
	{
		state = ENEMYSTATE.DEAD;	
	}
}
