/// @description Insert description here
// You can write your code in this editor
if(playerHP >= playerMaxHP)
{
	playerHP = playerMaxHP;
}
else if(allowHpRegen == 1)
{
	playerHP = playerHP + 0.03;
}

if(playerE >= playerMaxE)
{
	playerE = playerMaxE
}
else if(allowERegen == 1)
{
	playerE = playerE + 0.5;	
}
