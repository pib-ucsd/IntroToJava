/// @description Insert description here
// You can write your code in this editor
/*
NOT DONE:
still need to deal with case of word wraps to new line
and there are no longer 58 characters in the first line

a possible workaround: make new function to display
all the text without wordwrapping, directly have the
characters go until the end of the line
^ recommended (and its like working the command prompt anyway)
*/

var mX = mouse_x;
var mY = mouse_y;
var xOffset = x + 20;
var yOffset = y + 25;
var lineHeight = string_height("l");
var cursorLine = 0;
var cursorChar = 0;

// determine which line the cursor should be on
cursorLine = floor((mY - yOffset) / (lineHeight))
// 0 = line 1, 1 = line 2, 2 = line 3

// determine which character in the line the cursor should be
cursorChar = floor((mX - xOffset) / string_width("m"));

// determine where to place the cursor (include cursor because its already there
var numChars = string_length(keyboard_string + cursor + aft);
if(numChars == 0) {
	exit;
}
// numCharLine = 58; // 58 characters per line
var numLines = numChars / numCharLine;
var lastCharPos = numChars % (numCharLine * numChars);

if(cursorLine > numLines) { // click after the end of the text
	cursorLine = numLines;
	cursorChar = lastCharPos;
}
else if(cursorLine == numLines) {
	if(cursorChar > lastCharPos) { // same line, but click past the end of text
		cursorChar = lastCharPos;
	}
}
/*
at this point:
	cursorChar is the position in the row the cursor will be in
	cursorLine is the row the cursor will be in
*/

var charOffset = cursorLine * numCharLine + cursorChar + 1;
var kblength = string_length(keyboard_string);
if(charOffset == kblength - 1) {
	exit;
}
else if(charOffset > kblength) {
	// take from aft
	charOffset -= kblength;
	keyboard_string = keyboard_string + string_copy(aft, 1, charOffset - 1);
	aft = string_copy(aft, charOffset, string_length(aft) - charOffset + 1);
}
else if(charOffset == kblength) {
	// take one from keyboard_string
	aft = string_copy(keyboard_string, kblength, 1) + aft;
	keyboard_string = string_copy(keyboard_string, 1, kblength - 1);
}
else {
	// take from keyboard_string (click inside the text)
	aft = string_copy(keyboard_string, charOffset, kblength) + aft;
	keyboard_string = string_copy(keyboard_string, 1, charOffset - 1);
}