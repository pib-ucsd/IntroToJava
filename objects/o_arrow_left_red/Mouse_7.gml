if(global.paused){
	exit;
}
if(ind > 0){
	o_not.image_index--;
}
if(o_not.next_button != " " && o_not.image_index < o_not.maxAllowed){
	instance_destroy(o_not.next_button);
	o_not.next_button = " ";
}