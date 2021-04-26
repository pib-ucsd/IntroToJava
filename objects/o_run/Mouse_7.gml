if(global.paused){
	exit;
}
if(ds_queue_size(global.consoleQueue)){
	o_cal_chlng1_prompts.print = true;
	instance_destroy();
}