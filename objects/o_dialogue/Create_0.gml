/// @description initialize dialogue variables
// You can write your code in this editor
//the challenges MUST be the room after room/scene for the dialogue right before

//show_debug_message(string(global.rmnum) + " " + string(room));
x = 32;
y = 496;
image_speed	= 0;
charTemp	= -1;			// store the created character object
chars		= 0;			// the number characters to display of the dialogue text
frwd		= global.dia;	// the max dialogue in the scene already shown
dia			= global.dia;	// the current dialogue index in the dialogue array to be shown
diaPrev		= dia - 1;
theCurrDia	= "";
global.dia	= 0;			// reset so that the value isn't kept over multiple scenes

draw_set_halign(fa_left);