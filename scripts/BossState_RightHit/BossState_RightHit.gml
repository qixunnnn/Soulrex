if(mercy_timer>0)
{
	mercy_timer--;	
}
else
{
	mercy = false;
	if(hp > 0)
	{
		state = RHSTATE.FREE;
	
	}
	else
	{
		state = RHSTATE.DEAD;	
	}
}
