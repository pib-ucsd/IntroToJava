if(global.paused){
	exit;
}


if(o_not.imgind < o_not.maxAllowed){
	o_not.imgind += 1;
}
else{
	
	image_blend = c_gray;
	if(o_not.next_button == " "){
		o_not.next_button = instance_create_layer(0, 0, "instances", o_next);
	}
}
