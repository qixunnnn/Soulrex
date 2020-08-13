hsp = 0;
vsp = 0;

//Start of the attack
if(sprite_index != sPlayerZ)
{
	sprite_index = sPlayerZ;
	image_index = 0; 
	ds_list_clear(hitByAttack);
	
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
				EnemyHit(1);	
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