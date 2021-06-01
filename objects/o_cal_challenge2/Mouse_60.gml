if(global.paused){
	exit;
}
/// @description scroll up
// You can write your code in this editor

if (y < 0) {
	y += 15;
	//y = global.challengeY;
	with(o_cal_demo2_whiteBox) y += 15;
}