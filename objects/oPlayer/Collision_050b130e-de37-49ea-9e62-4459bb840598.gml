/// @description die

oStatus.playerHP -= 5;
if(oStatus.playerHP <= 0)
{
	with(oLeftOrb) instance_destroy();
	with(oRightOrb) instance_destroy();
	rightOrb = 0;
	leftOrb = 0;
	instance_change(oPDead,true);
}


