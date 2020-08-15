/// @description Insert description here
// You can write your code in this editor
//draw_sprite(sGUI,0,0,0);
draw_sprite(sBarBorder,1,10,70);
draw_sprite_ext(sEnergyBar,0,11,70,
max(0,playerE/playerMaxE),1,0,c_white,1);
draw_sprite(sBarGlass,1,10,70);

draw_sprite(sBarBorder,1,10,30);
draw_sprite_ext(sHealthBar,1,11,30,
max(0,playerHP/playerMaxHP),1,0,c_white,1);
draw_sprite(sBarGlass,1,10,30);