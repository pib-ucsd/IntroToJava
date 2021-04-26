if(global.paused){
	exit;
}
/// @description fade out

transparency = clamp(transparency + (fade * 0.01), 0, 1);

if (transparency == 1){	
	global.rmnum++;
	//if(room == rm_victory) {
		//global.scenenum++;
	//}
	//global.scenenum++;
	room_goto_next();
	fade = -1;
}
	
if ((transparency < 0.0001) && (fade == -1)){
	instance_destroy();
	scr_save();
}

draw_set_color(c_black);
draw_set_alpha(transparency);
draw_rectangle(0, 0, 1920, 1080, 0);
draw_set_alpha(1);
