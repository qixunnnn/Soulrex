/// @description Insert description here
// You can write your code in this editor

vsp = 0;	//Vertical Speped
hsp = 0;	//Horizontal speed
grv = 0.3;	//Gravity
walksp = 4;	//Walk Speed
hascontrol = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();
Pelement = 0;

 
Pflash = 0;
Pmercy=false;
Pmercy_timer=0;


globalvar leftOrb;
globalvar rightOrb;

leftOrb = 0;
rightOrb = 0;

enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	KB,
	PHIT,
}

