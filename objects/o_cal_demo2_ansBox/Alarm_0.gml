/// @description cursor
//Determine if the cursor should show
if(delay == -1){
	cursor = "";
}
else{
	if(cursor=="|") 
		cursor = " "; 
	else cursor = "|";
}
alarm[0] = delay;