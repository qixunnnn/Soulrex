/// @description die

if(!Pmercy)
{
	Pmercy = true;
	Pmercy_timer= room_speed * 1;
	Pflash = room_speed * 1;;
	oStatus.playerHP -= 40;
	oStatus.allowHpRegen = 0;
	oStatus.alarm[1] = room_speed * 3;
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
		state = PLAYERSTATE.FREE;	
	}
}


