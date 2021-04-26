if(global.paused){
	exit;
}
/// @description scroll down
// You can write your code in this editor

if (y > room_height - sprite_height - o_cal_demo2_ansBox.sprite_height) {
	y -= 10;
	//global.challengeY = y;
	with(o_cal_demo2_whiteBox) y -= 10;
}