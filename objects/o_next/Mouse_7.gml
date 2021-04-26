if(global.paused){
	exit;
}
if(!global.ignoreNextButton){
	if(instance_exists(o_not.left)){
		instance_destroy(o_not.left,false);
	}
	if(instance_exists(o_not.right)){
		instance_destroy(o_not.right,false);
	}
	o_notebook_widget.visible = true;
	global.notebookByDialogue = false;
	instance_destroy();
	room_goto(global.rmnum);
}