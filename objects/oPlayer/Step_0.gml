/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(vk_right); // 1 or 0
key_left = keyboard_check(vk_left);
key_jump = keyboard_check(vk_up)|| keyboard_check(vk_space);
key_Attack = keyboard_check(ord("Z"));


switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free();break
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash();break
	case PLAYERSTATE.ATTACK_SHOOT: PlayerState_Attack_Shoot();break
}