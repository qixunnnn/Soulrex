/// @description Player inputs
// You can write your code in this editor

if(hascontrol)
{
	key_right = keyboard_check(vk_right); // 1 or 0
	key_left = keyboard_check(vk_left);
	key_jump = keyboard_check(vk_up)|| keyboard_check(vk_space);
	key_Attack = keyboard_check(ord("Z"));
	key_CAttack = keyboard_check(ord("C"));
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	key_Attack = 0;
	key_CAttack = 0;
}


switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free();break
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash();break
	case PLAYERSTATE.KB: PlayerState_Attack_KnockBack();break
	case PLAYERSTATE.PHIT: PlayerState_Hit();break
}