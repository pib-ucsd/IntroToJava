if(global.paused){
	exit;
}


if(ind > 0){
	o_not.imgind--;
}
else if(o_not.next_button != " " && o_not.imgind < o_not.maxAllowed){
	instance_destroy(o_not.next_button);
	o_not.next_button = " ";
}
