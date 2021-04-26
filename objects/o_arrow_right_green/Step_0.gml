if(global.paused){
	exit;
}
ind = o_not.image_index;
if(ind >= o_not.maxAllowed){
	if(image_blend != c_gray){
		image_blend = c_gray;
		if(o_not.next_button == " "){
			o_not.next_button = instance_create_layer(0, 0, "instances", o_next);
		}
	}
}
else{
	if(image_blend != c_lime){
		image_blend = c_lime;
	}
}