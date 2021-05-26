if(global.paused){
	exit;
}

ind = o_not.imgind;
if(ind > 0){
	o_not.imgind--;
	o_arrow_right_green.image_blend = c_green;
	if(!ind) image_blend = c_gray; else image_blend = c_red;
}
else {
	image_blend = c_grey; // may be redundant, but just adding in case
}
if(o_not.next_button != noone && o_not.imgind < o_not.maxAllowed){
	// this should be an if statement because we want to delete the next
	// button if the notebook is no longer on the last page, even if
	// the notebook is on the first page
	instance_destroy(o_not.next_button);
	o_not.next_button = noone;
}
