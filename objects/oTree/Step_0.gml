/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case TREESTATE.FREE: TreeState_FREE(); break;
	case TREESTATE.HIT: TreeState_Hit(); break;
	case TREESTATE.DEAD: TreeState_Dead();break;
}