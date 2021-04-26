if(global.paused){
	exit;
}
if(shake){
	if(first){
		first = false;
		if(mini){
			range = 5;
			//show_debug_message("mini");
		}
		else if(miniMini){
			range = 2;
			//show_debug_message("miniMini");
		}
		else{
			range = 8;
			//show_debug_message("big");
		}
		alarm[0] = 90;
		//show_debug_message("shaking");
	}
	
	camera_set_view_pos(view_camera[0], view_x + random_range(-range,range), view_y + random_range(-range,range));
}
else{
	camera_set_view_pos(view_camera[0], view_x, view_y);
}