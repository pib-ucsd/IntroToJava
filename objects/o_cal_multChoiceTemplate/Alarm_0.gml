/// @description Insert description here
// You can write your code in this editor
var mX = mouse_x;
var mY = mouse_y;
var yP = (mY - y)/sprite_height; // yP stands for y processed
if (mX > xStart && mX < xEnd) {
	if(yP > 0.11481 && yP < 0.18704) {
		window_set_cursor(cr_handpoint);
	}
	else if(yP > 0.34537 && yP < 0.42037) {
		window_set_cursor(cr_handpoint);
	}
	else if(yP > 0.58611 && yP < 0.65926) {
		window_set_cursor(cr_handpoint);
	}
	else if(yP > 0.82407 && yP < 0.89815) {
		window_set_cursor(cr_handpoint);
	}
	else {
		window_set_cursor(cr_default);
	}
}
else {
	window_set_cursor(cr_default);
}
alarm[0] = 10;