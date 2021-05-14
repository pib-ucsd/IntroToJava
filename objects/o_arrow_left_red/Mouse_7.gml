if(global.paused){
	exit;
}


if(ind > 0){
	o_not.imgind--;
	o_arrow_right_green.image_blend = c_green;
}
if(o_not.next_button != noone && o_not.image_index < o_not.maxAllowed){
	// this should be an if statement because we want to delete the next
	// button if the notebook is no longer on the last page, even if
	// the notebook is on the first page
	instance_destroy(o_not.next_button);
	o_not.next_button = noone;
}
