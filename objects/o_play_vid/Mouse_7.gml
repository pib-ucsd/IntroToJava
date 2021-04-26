if(global.paused){
	o_blank.vidInst.image_speed = 0;
	image_index = 0;
	exit;
}
if(image_index == 1){
	o_blank.vidInst.image_speed = 0;
	image_index = 0;
}
else{
	if(o_blank.vidInst.image_index > o_blank.vidInst.image_number - 1){
		o_blank.vidInst.image_index = 0;
	}
	o_blank.vidInst.image_speed = 1;
	image_index = 1;
}