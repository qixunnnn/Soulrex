/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(oTextPlayer))
{
	with(instance_create_layer(x,y-64,layer,oTextPlayer))
	{
		text = other.text;
		length = string_length(text);
	}
	
}
