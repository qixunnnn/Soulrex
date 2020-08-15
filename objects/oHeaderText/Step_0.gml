/// @description Insert description here
// You can write your code in this editor

if(point_in_circle(x,y,x,y,32)) && (!instance_exists(oText))
{
	with(instance_create_layer(x,y-64,layer,oText))
	{
		text = other.text;
		length = string_length(text);
	}

	with(oCamera)
	{
		follow = other.id;
	}

}

l += 0.5;
print = string_copy(text,1,1);

if(l > string_length(text)+100)
{
	l = 0;
	next++;
	//if(next == array_length_1d[strings]-1)
}
str = strings[next];