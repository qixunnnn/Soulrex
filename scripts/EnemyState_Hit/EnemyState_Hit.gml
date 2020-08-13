if(mercy_timer>0)
{
	mercy_timer--;	
}
else
{
	mercy = false;
	if(hp >= 0)
	{
		state = EnemyState_FREE();
	
	}
	else
	{
		state = EnemyState_Dead();	
	}
}
