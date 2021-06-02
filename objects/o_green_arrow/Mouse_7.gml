if(global.pausedMCQ){
	exit;
}

if(global.indmcq < array_length(global.mcqs[global.mc]) - 1) {
	global.indmcq++;
	instance_destroy();
	instance_destroy(o_cal_multChoiceTemplate);
	//event_perform(ev_create, o_cal_multChoiceTemplate);
	instance_create_depth(0,0,-1600,o_cal_multChoiceTemplate);
}
else {
	global.mc++;
	global.indmcq = 0;
	global.rmnum++;
	global.scenenum++;
	room_goto_next();
	instance_destroy();
}