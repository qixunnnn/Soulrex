/// @description Move to the next room
// You can write your code in this editor

with(oPlayer)
{
	if(hascontrol)
	{
		//Take away control before transition
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}
