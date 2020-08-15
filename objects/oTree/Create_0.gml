/// @description Insert description here
// You can write your code in this editor
vsp = 0;	//Vertical Speped
	//Horizontal speed
grv = 0.3;	//Gravity
walksp = 0;	//Walk Speed
hsp = walksp;


maxhp = 2;
hp = maxhp;

healthbarWidth = 100;

sprite_index = sTree;
image_speed = 0;
image_index = 0;

flash = 0;
mercy=false;
mercy_timer=0;
element = 0;
state = TREESTATE.FREE;


enum TREESTATE
{
	FREE,
	HIT,
	DEAD
}