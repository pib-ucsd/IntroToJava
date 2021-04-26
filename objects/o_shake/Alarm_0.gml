shake = false;
if(!mini && !miniMini && !firstBig){
	firstBig = false;
	first = true;
	exit;
}
mini = false;
miniMini = false;
first = true;

// global.scenenum ++; MOVED TO UPON HITTING GREEN ARROW TO PREVENT ERRORS
instance_create_depth(0,0,-1600,o_cal_multChoiceTemplate);