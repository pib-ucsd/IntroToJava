shake = false;
if(!mini && !miniMini && !firstBig){
	firstBig = false;
	first = true;
	show_debug_message("before exit")
	//exit;
} else {
	
mini = false;
miniMini = false;
first = true;

// global.scenenum ++; MOVED TO UPON HITTING GREEN ARROW TO PREVENT ERRORS

show_debug_message("before creating multiple choice");
instance_create_depth(0,0,-1600,o_cal_multChoiceTemplate);



}