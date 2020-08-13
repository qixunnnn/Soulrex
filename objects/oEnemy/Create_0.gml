/// @description Insert description here
// You can write your code in this editor

vsp = 0;	//Vertical Speped
	//Horizontal speed
grv = 0.3;	//Gravity
walksp = -2;	//Walk Speed
hsp = walksp;

hp = 3;
flash = 0;
mercy=false;
mercy_timer=0;

state = ENEMYSTATE.FREE;



enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
}