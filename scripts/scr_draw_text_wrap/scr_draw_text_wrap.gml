function scr_draw_text_wrap(argument0, argument1) {
	var str = argument0;		// text to draw
	var charInLine = argument1;	// # of characters that fit in line

	var numChars = string_length(str);			// total # of chars in text
	var numRows = floor(numChars / charInLine);	// total # of rows

	// add a line break \n
	for(var i = numRows; i > 0; i--) {
		str = string_insert("\n", str, i * charInLine + 1);
	}

	return str;


}
