if(global.pausedMCQ){
	exit;
}
image_alpha = clamp(image_alpha - 0.01, 0, 1);
if(!image_alpha){
	instance_destroy();
}