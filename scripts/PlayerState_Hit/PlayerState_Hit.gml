if(Pmercy_timer>0)
{
	Pmercy_timer--;	
}
else
{
	Pmercy = false;
	if(oStatus.playerHP > 0)
	{
		state = PLAYERSTATE.FREE;
	
	}
	else
	{
		
	}
}
