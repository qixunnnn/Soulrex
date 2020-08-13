switch(state)
{
	case ENEMYSTATE.FREE: EnemyState_FREE(); break;
	case ENEMYSTATE.HIT: EnemyState_Hit(); break;
	case ENEMYSTATE.DEAD: EnemyState_Dead();break;
}