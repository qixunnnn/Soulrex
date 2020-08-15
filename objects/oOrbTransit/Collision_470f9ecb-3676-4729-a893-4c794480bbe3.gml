with(oPlayer)
{
	if(hascontrol)
	{
		//Take away control before transition
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}