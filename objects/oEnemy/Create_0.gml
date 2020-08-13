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







elementList = ds_list_create();
var index = 0;
val = 0;
repeat(6)
{
	elementList[| index++] = val;
	val += 2;
}
elementList[| 7] = 14;
//ds_list_add(elementList,0,2,4,6,8,10,14);
//element = ds_list_find_index(elementList,random_range(-1,8));
randomize();
ran = random_range(0,8);
fval = floor(ran)
element = elementList[| fval];
//Dark(1) Light(3) Magic(7)
//-----------------------------
//Neutral = 0 (base)
//Dark = 2 (Dark + Dark)
//Chaos = 4 (Dark + Light)
//Light = 6 (Light + Light)
//Aether = 8 (Dark + Magic)
//Spirit = 10 (Light + Magic)
//Magic = 14 (Magic + Magic)

elementIndi = instance_create_layer(x, y,"Element",oElementIndicator);
with(elementIndi){
	owner = other.id;
	switch(owner.element)
	{
		case 0: image_index = 0; break;
		case 2: image_index = 6; break;
		case 4: image_index = 7; break;
		case 6: image_index = 4; break;
		case 8: image_index = 1; break;
		case 10: image_index = 2; break;
		case 14: image_index = 3; break;
	}
}

state = ENEMYSTATE.FREE;

enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
}