if(global.paused){
	exit;
}

ind = o_not.imgind;
if(ind > 0){
	o_not.imgind--;
	o_arrow_right_green.image_blend = c_green;
}

if(!o_not.imgind) image_blend = c_gray; 
else image_blend = c_red;


if(o_not.next_button != noone && o_not.imgind < o_not.maxAllowed){
	// this should be an if statement because we want to delete the next
	// button if the notebook is no longer on the last page, even if
	// the notebook is on the first page
	debug("destroyed", o_not.next_button);
	instance_destroy(o_not.next_button);
	o_not.next_button = noone;
	debug("destroyed2", o_not.next_button);
}
