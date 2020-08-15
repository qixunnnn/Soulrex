hsp = 0;
vsp = 0;
if(oStatus.playerE >= 20)
{
//Start of the attack
	if(sprite_index != sPlayerC)
	{
		sprite_index = sPlayerC;
		oStatus.playerE = oStatus.playerE - 20;
		oStatus.allowERegen = 0;
		oStatus.alarm[0] = room_speed * 3;
		image_index = 0; 
		image_speed = 1.8;
		ds_list_clear(hitByAttack);
	
	
	
	}
	if(floor(image_index) == 9)
	{
		audio_sound_pitch(snAttack,choose(0.8,1.0,1.2));
		audio_play_sound(snAttack,5,false);
		image_index = 10;
	}
	//use attack hitbox & check for hits
	mask_index = sPlayerC_HB
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);
	if(hits > 0)
	{
		for (var i =0; i < hits; i++)
		{
			//if this instance has not yet been hit by this attack
			var hitID =  ds_list_find_value(hitByAttackNow,i);
			if(ds_list_find_index(hitByAttack,hitID) == -1)
			{
				ds_list_add(hitByAttackNow,hitID);
				with(hitID)
				{
					Pelement = real(leftOrb) + real(rightOrb);
					EnemyHit(1,Pelement,"C");	
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index= sPlayer;
	if(animation_end())
	{
		sprite_index = sPlayer;
		state = PLAYERSTATE.FREE;
	}
}
else
{
	state = PLAYERSTATE.FREE;
}


/*
if(floor(image_index) == 9)
{
	C_HB = instance_create_layer(x, y,"SkillsHB",oPlayerC_HB);
	with(C_HB){
		
		owner = other.id;
		image_xscale = owner.image_xscale;
		alarm[0] = 4;
		image_index = 10;
	
	}
}

*/