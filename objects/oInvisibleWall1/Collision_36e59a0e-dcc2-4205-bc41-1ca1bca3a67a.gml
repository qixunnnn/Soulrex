/// @description Insert description here
// You can write your code in this editor
if (once == 0)
{
dialog = instance_create_layer(x, y,"Signs",create);
with(dialog){
	owner = other.id;
	
}
once +=1;
}
