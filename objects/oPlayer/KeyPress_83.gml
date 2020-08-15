if(room != roomTut2){
audio_play_sound(snChangeOrb,10,false);
if(rightOrb == 0)
{
	leftOrb = 3;
	rightOrb = 3;
}
else
{
	rightOrb = leftOrb;
	leftOrb = 3;
}
}