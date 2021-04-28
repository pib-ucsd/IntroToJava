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
	o_notebook_widget.visible = true;
	global.notebookByDialogue = false;
	instance_destroy();
	room_goto(global.rmnum);
}