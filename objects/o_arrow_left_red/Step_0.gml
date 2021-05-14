if(global.paused){
	exit;
}
ind = o_not.imgind;
if(ind == 0){
	if(image_blend != c_gray){
		image_blend = c_gray;
	}
}
else{
	if(image_blend != c_red){
		image_blend = c_red;
	}
}