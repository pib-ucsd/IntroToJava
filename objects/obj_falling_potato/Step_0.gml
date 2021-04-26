if(global.paused){
	exit;
}
/// @description increase potato size
// You can write your code in this editor
var i = .995;
//image_xscale = clamp(image_xscale + (growth * 0.002), 1, 1.5);
//image_yscale = clamp(image_yscale + (growth * 0.002), 1, 1.5);
x = clamp(x + (800 * 0.000683), 700, 1100);

image_xscale = clamp(1.5 - (grow * i), 1, 1.6);
image_yscale = clamp(1.5 - (grow * i), 1, 1.6);
grow *= i;