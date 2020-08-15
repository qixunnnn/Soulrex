//dark orb pressed

if(room != roomTut2){
	
	audio_play_sound(snChangeOrb,10,false);
	if(rightOrb == 0)
	{
		leftOrb = 1;
		rightOrb = 1;
	}
	else
	{
		rightOrb = leftOrb;
		leftOrb = 1	;
	}
}