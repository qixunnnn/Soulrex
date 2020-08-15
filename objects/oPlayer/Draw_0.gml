/// @description Insert description here
// You can write your code in this editor
draw_self();

if(Pflash > 0)
{
	Pflash--;
	if(Pflash % 10 == 1)
	{
		shader_set(shWhite);
		draw_self();
		shader_reset();
	}
	
	
}

