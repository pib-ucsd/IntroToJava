ind = 0;
x = room_width - 80;
y = room_height - 80;

if(o_not.imgind >= o_not.maxAllowed){
	if(image_blend != c_gray){
		image_blend = c_gray;
		if(!instance_exists(o_next)){
			o_not.next_button = instance_create_layer(0, 0, "instances", o_next);
		}
	}
}
else{
	if(image_blend != c_green){
		image_blend = c_green;
	}
}