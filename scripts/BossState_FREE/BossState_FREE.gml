/// @description Insert description here
// You can write your code in this editor


   //4 Pixel to left or -4 Pixel = to right
vsp += grv;


if(element_time >0 )
{
	element_time --;
}
else if(element_time < 0)
{
	
}
else
{
	element_time = room_speed * 10
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
}
//Horizontal Movement
if(place_meeting(x+hsp,y,oWall))
{
    while(!place_meeting(x+sign(hsp),y,oWall))
    {
        x+= sign(hsp);
    }
    hsp = -hsp;
}
//if(!place_meeting(x+hspd,y+1,par_solid))
//{
	// hsp = -hsp;
//}

	


x += hsp;

//Vertical Movement
if(place_meeting(x,y+vsp,oWall))
{
    while(!place_meeting(x,y+sign(vsp),oWall))
    {
        y+= sign(vsp);
    }
    vsp = 0;
}

y += vsp;

//Animation
if(!place_meeting(x,y+1,oWall))
{
    sprite_index = sBossR;
    image_speed = 0;
	image_index = 1;
   
}
else
{
    image_speed = 1;
    if(hsp == 0)
    {
        sprite_index = sBoss;
    }
    else
    {
        sprite_index = sBossR;
    }
}

if(hsp != 0){
    image_xscale = sign(hsp);
}
