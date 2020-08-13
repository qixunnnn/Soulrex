/// @description Insert description here
// You can write your code in this editor


   //4 Pixel to left or -4 Pixel = to right
vsp += grv;



//Horizontal Movement
if(place_meeting(x+hsp,y,oWall))
{
    while(!place_meeting(x+sign(hsp),y,oWall))
    {
        x+= sign(hsp);
    }
    hsp = -hsp;
}

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
    sprite_index = sEnemyJ;
    image_speed = 1;
   
}
else
{
    image_speed = 1;
    if(hsp == 0)
    {
        sprite_index = sEnemy;
    }
    else
    {
        sprite_index = sEnemyR;
    }
}

if(hsp != 0){
    image_xscale = sign(hsp);
}
