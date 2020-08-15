hsp = 0;
vsp = 0;

if(oStatus.playerE >= 5)
{
	//Start of the attack
	
	if(sprite_index != sPlayerZ)
	{
		sprite_index = sPlayerZ;
		image_index = 0; 
		ds_list_clear(hitByAttack);
		oStatus.playerE = oStatus.playerE - 5;
		oStatus.allowERegen = 0;
		oStatus.alarm[0] = room_speed * 3;
		audio_sound_pitch(snAttack,choose(0.8,1.0,1.2));
		audio_play_sound(snAttack,1,false);
	
	}

	//use attack hitbox & check for hits
	mask_index = sPlayerZ_HB
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
					EnemyHit(1,Pelement,"Z");	
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
	//not enough Energy
	state = PLAYERSTATE.FREE;
}
