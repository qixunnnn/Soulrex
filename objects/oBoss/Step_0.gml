/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case BOSSSTATE.FREE: BossState_FREE(); break;
	case BOSSSTATE.HIT: BossState_Hit(); break;
	case BOSSSTATE.LEFTHANDHIT: BossState_LeftHit();break;
	case BOSSSTATE.RIGHTHANDHIT: BossState_RightHit();break;
	case BOSSSTATE.DEAD: BossState_Dead();break;
}