/// @description die

if(!Pmercy)
{
	Pmercy = true;
	Pmercy_timer=room_speed/4;
	Pflash = 3;
	oStatus.playerHP -= 15;
	sprite_index = sPlayer;
	image_speed = 0;
	image_index = 2;
	var Pdiff =  other.x - x;
	if((Pdiff > 0 && hsp < 0) || (Pdiff < 0 && hsp > 0))
	{
		
	}
	else
	{
		
	}
	alarm[0] = 5;
	if(oStatus.playerHP <= 0)
	{
		
		with(oLeftOrb) instance_destroy();
		with(oRightOrb) instance_destroy();
		rightOrb = 0;
		leftOrb = 0;
		instance_change(oPDead,true);
	}
	else
	{
		state = PLAYERSTATE.PHIT;	
	}
}


