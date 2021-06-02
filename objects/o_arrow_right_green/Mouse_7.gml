if(global.paused){
	exit;
}

var maxA = o_not.maxAllowed;
var ind = o_not.imgind;

debug("right arrow ", maxA, ind);

if(ind < maxA){
	o_not.imgind += 1;
	
	// if img ind incremented, we can go backwards
	with (o_arrow_left_red) image_blend = c_red;
	
	if(ind == maxA - 1){ 
		if (!instance_exists(o_next))
			o_not.next_button = instance_create_layer(0, 0, "instances", o_next);
	}
}

else{
	
	if(!instance_exists(o_next)){
		// just adding this redundancy in case
		o_not.next_button = instance_create_layer(0, 0, "instances", o_next);
	}
}


if (o_not.imgind == maxA) image_blend = c_gray;
else image_blend = c_green;