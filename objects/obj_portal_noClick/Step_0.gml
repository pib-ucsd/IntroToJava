if(global.paused){
	exit;
}
/// @description Insert description here
// You can write your code in this editor
image_angle -= 1;
image_xscale = clamp(image_xscale + (growth * 0.001), .1, 1);
image_yscale = clamp(image_yscale + (growth * 0.001), .1, 1);
