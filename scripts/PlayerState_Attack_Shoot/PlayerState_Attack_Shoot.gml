hsp = 0;
vsp = 0;

sprite_index = sPlayerC;
image_speed = 1;
if(image_index == 9)
{
	C_HB = instance_create_layer(x, y,"SkillsHB",oPlayerC_HB);
	with(C_HB){
		owner = other.id;
		image_xscale = owner.image_xscale;
		alarm[0] = 4;
	
	
	}
}
if(animation_end())
{
	sprite_index = sPlayer;
	state = PLAYERSTATE.FREE;
}