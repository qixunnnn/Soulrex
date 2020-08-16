/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oBoss))
{
	
}
else
{
	
	
	if (once == 0)
	{
	dialog = instance_create_layer(x, y,"Signs",oBossHeader);
	with(dialog){
		owner = other.id;
	
	}
	once +=1;
	}

}