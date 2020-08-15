/// @description Insert description here
// You can write your code in this editor


   //4 Pixel to left or -4 Pixel = to right
vsp += grv;



//Horizontal Movement
if(place_meeting(x+hsp,y,oEnemyWall))
{
    while(!place_meeting(x+sign(hsp),y,oEnemyWall))
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
if(place_meeting(x,y+vsp,oEnemyWall))
{
    while(!place_meeting(x,y+sign(vsp),oEnemyWall))
    {
        y+= sign(vsp);
    }
    vsp = 0;
}

y += vsp;

//Animation
if(!place_meeting(x,y+1,oEnemyWall))
{
    sprite_index = sSlimeR;
    image_speed = 0;
	image_index = 1;
   
}
else
{
    image_speed = 1;
    if(hsp == 0)
    {
        sprite_index = sSlime;
    }
    else
    {
        sprite_index = sSlimeR;
    }
}

if(hsp != 0){
    image_xscale = sign(hsp);
}
