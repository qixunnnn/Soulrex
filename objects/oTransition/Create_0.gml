/// @description Size Variable and mode setup
// You can write your code in this editor

//Seperate screen
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
//checkpoint = global.checkpointR;

//Turning set of order to english readibility
//Enum cannot be chance
enum TRANS_MODE
{
	OFF, //0
	NEXT,//1
	GOTO,//2
	RESTART,//3
	INTRO//4
}

mode = TRANS_MODE.INTRO;
percent = 1; //1 = Black bar = full black
target = room;