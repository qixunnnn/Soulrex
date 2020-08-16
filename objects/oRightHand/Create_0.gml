/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
vsp = 0;	//Vertical Speped
	//Horizontal speed
grv = 0.3;	//Gravity
walksp = -2;	//Walk Speed
hsp = walksp;


maxhp = 10;
hp = maxhp;

healthbarWidth = 100;
heal = false;

flash = 0;
mercy=false;
mercy_timer=0;


//ds_list_add(elementList,0,2,4,6,8,10,14);
//element = ds_list_find_index(elementList,random_range(-1,8));

//Dark(1) Light(3) Magic(7)
//-----------------------------
//Neutral = 0 (base)
//Dark = 2 (Dark + Dark)
//Chaos = 4 (Dark + Light)
//Light = 6 (Light + Light)
//Aether = 8 (Dark + Magic)
//Spirit = 10 (Light + Magic)
//Magic = 14 (Magic + Magic)

fval = oBoss.fval;
ran = oBoss.ran;
	
fval = floor(ran)
if (fval <= 1)
{
	fval += 2;
}
else if(fval >= 6)
{
	fval -= 2;	
}
else
{
	fval +=2;
}
	
element = oBoss.elementList[| fval];
elementIndi = instance_create_layer(x, y,"Element",oElementIndicator);
with(elementIndi){
owner  = other.id;
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

state = RHSTATE.FREE;

enum RHSTATE
{
	FREE,
	HIT,
	DEAD,
	
}

