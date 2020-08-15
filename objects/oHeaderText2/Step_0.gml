/// @description Insert description here
// You can write your code in this editor
/*
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
*/


l += 0.5;
print = string_copy(str,1,l);

if(l > string_length(str)+100) && (next < array_length_1d(strings) -1)
{
	l = 0;
	next++;
	//if(next == array_length_1d[strings]-1)
}

str = strings[next];

if(l == 94)
{
	Portal = instance_create_layer(oInvisibleWall1.x - 40, oInvisibleWall1.y,"Signs",oPortal);
	with(Portal){
	owner = other.id;
	}
	//create portal
}


