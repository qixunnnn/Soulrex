/// @description Move to the next room
// You can write your code in this editor
if(allowPortal == 0)
{
	with(oPlayer)
	{
		if(hascontrol)
		{
			//Take away control before transition
			hascontrol = false;
			oPortal.visible = false;
			SlideTransition(TRANS_MODE.GOTO,other.target);
		}
	}
}

