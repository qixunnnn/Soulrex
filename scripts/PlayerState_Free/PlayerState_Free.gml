//Var = 1 frame 1 loop of every step event
if(Pmercy_timer>0)
{
	Pmercy_timer--;	
}
else
{
	Pmercy = false;
	
}

var move = key_right - key_left;  //-1 = Left | 1 = Right


hsp = move * walksp;   //4 Pixel to left or -4 Pixel = to right
vsp += grv;

if(place_meeting(x,y+1,oWallParent)) && (key_jump)
{
	
    vsp = -7
}

//Horizontal Movement
if(place_meeting(x+hsp,y,oWallParent))
{
    while(!place_meeting(x+sign(hsp),y,oWallParent))
    {
        x+= sign(hsp);
    }
    hsp = 0;
}

x += hsp;

//Vertical Movement
if(place_meeting(x,y+vsp,oWallParent))
{
    while(!place_meeting(x,y+sign(vsp),oWallParent))
    {
        y+= sign(vsp);
    }
    vsp = 0;
}

y += vsp;

//Animation
if(!place_meeting(x,y+1,oWallParent))
{
    sprite_index = sPlayerJ;
    image_speed = 1;
   
}
else
{
	if(sprite_index == sPlayerJ) audio_play_sound(snLand,4,false)
    image_speed = 1;
    if(hsp == 0)
    {
        sprite_index = sPlayer;
    }
    else
    {
        sprite_index = sPlayerR;
    }
}

if(hsp != 0){
    image_xscale = sign(hsp);
}

if (key_Attack) state = PLAYERSTATE.ATTACK_SLASH;
if (key_CAttack) state = PLAYERSTATE.KB;

