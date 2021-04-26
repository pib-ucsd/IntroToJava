if(global.paused){
	exit;
}
if(fade){
	image_alpha = clamp(image_alpha - 0.02, 0, 1);
	if(image_alpha == 0){
		fade = false;
		o_nxtbtn.leftReleased = true;
	}
}
if(smoke){
	effect_create_below(ef_smokeup,x + sprite_width / 2,y + sprite_height / 2,2,c_gray);
}