/// @description Insert description here
// You can write your code in this editor
draw_self();

if(flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}
if(hp < maxhp)
{
	draw_healthbar(x-16,y+17,x+16,y+14,(hp/maxhp) *100,c_black,c_red,c_green,0,true,true);
	//draw_healthbar(x-16,y-16,x+16,y+14,(hp/maxhp) *100,c_black,c_red,c_green,0,true,true);
}
