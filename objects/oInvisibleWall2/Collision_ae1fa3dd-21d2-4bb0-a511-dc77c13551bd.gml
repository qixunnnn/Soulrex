/// @description Insert description here
// You can write your code in this editor
if (once == 0)
{
	
	once +=1;
	with(instance_create_layer(x-200, y - 20,"Enemy",oEnemy))
	{
		walksp = 0;
		hsp = 0;
	}

}
if(!instance_exists(oTextPlayer))
	{
		with(instance_create_layer(x,y-64,"Player",oTextPlayer))
		{
			text = other.text;
			length = string_length(text);
		}
	
	}


