/// @description Insert description here
// You can write your code in this editor
if(flag){
	size_w = clamp((size_w + step_w * deltaMultiplier * deltaMultiplier), 320, 1920);
	size_h = clamp((size_h + step_h * deltaMultiplier * deltaMultiplier), 180, 1080);
	xOrigin = clamp((xOrigin + xOriginDelta * deltaMultiplier * deltaMultiplier), 0, 1024);
	camera_set_view_size(cam, size_w, size_h);
	camera_set_view_pos(cam, xOrigin, 0);

	deltaMultiplier = deltaMultiplier * .999;
}

if(size_w < 330){
	//scr_save_end_game();
	room_goto(rm_game_end);
}