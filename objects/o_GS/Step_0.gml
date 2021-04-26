if(global.paused){
	exit;
}
if(fade){
	if(first){
		image_alpha = 0;
		first = false;
	}
	image_alpha = clamp(image_alpha + 0.02, 0, 1);
	if(image_alpha == 1){
		fade = false;
	}
}
