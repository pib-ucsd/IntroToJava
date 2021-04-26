if(global.paused){
	exit;
}
if(o_not.image_index < o_not.maxAllowed){
	o_not.image_index ++;
}
else{
	image_blend = c_gray;
	if(o_not.next_button == " "){
		o_not.next_button = instance_create_layer(0, 0, "instances", o_next);
	}
}