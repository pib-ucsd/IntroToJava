if(global.paused){
	exit;
}
if(global.selectedID != false){
	/*if(!ds_map_exists(global.answers, global.selectedID) && !global.selectedID){
		show_message("game file corrupted, please restart the game and don't go home through menu or use load");
		exit;
	}*/
	//target = global.answers[? global.selectedID];
	if(selectedPrev != global.selectedID){
		flag = true;
		selectedPrev = global.selectedID;
	}
	if(flag){
		flag = false;
		show_debug_message(global.answers[? global.selectedID]);
	}
}
if(string_length(keyboard_string) + string_length(aft) < 173){	// HARDCODED, with the current font size, the absolute maximum amount
								// of characters that can fit is 174 characters,**with spacing only at
								// the end of lines
	str = keyboard_string + cursor + aft;
}
else {
	keyboard_string = string_copy(keyboard_string, 1, string_length(keyboard_string) - 1);
}