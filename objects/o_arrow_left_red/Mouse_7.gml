if(global.paused){
	exit;
}

show_debug_message("notebookl image index: " + string(o_not.image_index) + " " + string(o_not.maxAllowed));


if(ind > 0){
	o_not.image_index--;
}
else if(o_not.next_button != " " && o_not.image_index < o_not.maxAllowed){
	instance_destroy(o_not.next_button);
	o_not.next_button = " ";
}

show_debug_message("notebooklF image index: " + string(o_not.image_index) + " " + string(o_not.maxAllowed));
