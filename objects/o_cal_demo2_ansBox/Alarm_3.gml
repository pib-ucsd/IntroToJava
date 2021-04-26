/// @description right down

if(global.paused){
	exit;
}
if(allow){
	
	//var len1 = string_length(keyboard_string);
	var len2 = string_length(aft);
	
	if(len2 > 0){
		keyboard_string = keyboard_string + string_copy(aft, 1, 1);
		aft = string_copy(aft, 2, len2 - 1);
	}
}
alarm[3] = del;
