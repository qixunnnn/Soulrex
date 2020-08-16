if(object_index == 16 )
{
	if(!instance_exists(oRightHand))
	{
		oBoss.hsp *= 1.2;	
		oBoss.element_time = room_speed * 10;
	}
}
if(object_index == 17 )
{
	if(!instance_exists(oLeftHand))
	{
		oBoss.hsp *= 1.2;	
		oBoss.element_time = room_speed * 10
	}
}
with(elementIndi) instance_destroy();
instance_change(oDead,true);
//instance_destroy();
