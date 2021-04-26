if(global.paused){
	exit;
}
var tempDiff = difficulty;
with(o_checkbox){
	image_index = 0;
	selectedDiff = tempDiff;
	obj_controller.selectedDiff = tempDiff;
}
image_index = 1;