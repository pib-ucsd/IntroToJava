if(global.paused){
	exit;
}
if(!global.ignoreNextButton){
	if(instance_exists(o_not.left)){
		instance_destroy(o_not.left,false);
	show_debug_message("left to be destroyed");
	}
	if(instance_exists(o_not.right)){
		instance_destroy(o_not.right,false);
	show_debug_message("right to be destroyed");
	}
	show_debug_message("o_next to be destroyed");
	
	if (instance_exists(o_notebook_widget)){
		o_notebook_widget.visible = true;

		global.notebookWidgetVisible = true;
		
	}
	else instance_create_depth(0,0,0,o_notebook_widget);
	
	global.notebookByDialogue = false;
	instance_destroy();
	room_goto(global.chlgRms[global.chlgRmInd]);
	global.chlgRmInd++;
	window_set_cursor(cr_default);
}
