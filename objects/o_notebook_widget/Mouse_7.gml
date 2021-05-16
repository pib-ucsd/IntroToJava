if(visible && image_alpha){
	//show_debug_message("pressed");
	global.pagenum = 0;
	global.ignoreNextButton = true;
	if(instance_exists(o_dialogue)){
		global.dia = array_length_2d(global.dialogue, global.scenenum) - 1;
	}
	if(notebook){ // currently in the notebook
		global.ignoreNextButton = false;
		//room_goto(global.rmnum);
		room_goto(global.currRmId);
		notebook = false;
		room_set_persistent(global.rmnum, false)
		//show_debug_message(room_get_name(global.rmnum));
		//room_persistent = false;
		//alarm[0] = 2;
		exit;
	}
	global.currRmId = room;
	// want to go to notebook
	room_persistent = true;
	notebook = true;
	room_goto(rm_not2);
	window_set_cursor(cr_default);
}