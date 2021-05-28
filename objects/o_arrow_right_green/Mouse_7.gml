if(global.paused){
	exit;
}

var maxA = o_not.maxAllowed;
var ind = o_not.imgind;
if(ind < maxA){
	o_not.imgind += 1;
	if(ind == maxA - 1 && !instance_exists(o_next)){
		o_not.next_button = instance_create_layer(0, 0, "instances", o_next);
	}
	else {
		image_blend = c_green;
	}
}
else{
	image_blend = c_gray;
	if(!instance_exists(o_next)){
		// just adding this redundancy in case
		o_not.next_button = instance_create_layer(0, 0, "instances", o_next);
	}
}
