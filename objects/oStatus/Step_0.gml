/// @description Insert description here
// You can write your code in this editor
if(playerHP >= playerMaxHP)
{
	playerHP = playerMaxHP;
}
else
{
	playerHP = playerHP + 0.05;
}

if(playerE >= playerMaxE)
{
	playerE = playerMaxE
}
else if(allowERegen == 1)
{
	playerE = playerE + 0.5;	
}
