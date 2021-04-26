if(global.paused){
	exit;
}
//when first dialogue (of scene), change color to (not clickable)
if(o_dialogue.dia==0){
	image_blend = make_color_rgb(255,255,255);
}