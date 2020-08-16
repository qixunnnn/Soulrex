if(object_index == 16 )
{
	if(!instance_exists(oRightHand))
	{
		oBoss.hsp *= 2;	
	}
}
if(object_index == 17 )
{
	if(!instance_exists(oLeftHand))
	{
		oBoss.hsp *= 2;	
	}
}
with(elementIndi) instance_destroy();
instance_change(oDead,true);
