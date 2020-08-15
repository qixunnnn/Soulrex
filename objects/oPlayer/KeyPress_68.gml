/// @description Insert description here
// You can write your code in this editor
if(room != roomTut2){
audio_play_sound(snChangeOrb,10,false);
if(rightOrb == 0)
{
	leftOrb = 7;
	rightOrb = 7;
}
else
{
	rightOrb = leftOrb;
	leftOrb = 7;
}
}