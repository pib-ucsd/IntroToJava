/// @description delete down

if(string_length(aft) > 1){
	aft = string_copy(aft, 2, string_length(aft));
}
else if(string_length(aft) == 1) {
	aft = "";
}
alarm[6] = del;