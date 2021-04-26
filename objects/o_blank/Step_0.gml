//if last image isnt same as current and video is showing (page changed)
//destroy video instance when change page (exception with blank/filled while loop)
if(prevNot != o_not.image_index && vidInst != id){
	instance_destroy(vidInst);
	instance_destroy(playInst);
	instance_destroy(restartInst);
	vidInst = id;
}

if(vids[o_not.image_index] != -1 && vidInst == id){
	vidInst = instance_create_depth(0,0,-1501,vids[o_not.image_index]);
	vidInst.image_speed = 0;
	playInst = instance_create_depth(1664 - offset, 0, -1500, o_play_vid);
	restartInst = instance_create_depth(1776 - offset, 0, -1500, o_restart);
}

// show_message("if while loop, use the last sprite");

if(vidInst != id){//stop the video
	if(vidInst.image_index > vidInst.image_number - 1){
		vidInst.image_speed = 0;
		o_play_vid.image_index = 0;
	}
}
prevNot = o_not.image_index;
