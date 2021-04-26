global.paused = false;
global.pausedMCQ = false;
show_debug_message("home button clicked");
scr_close_menu();
scr_save();
if(instance_exists(o_menu)){
	instance_destroy(o_menu);
}
if(instance_exists(o_notebook_widget)){
	instance_destroy(o_notebook_widget);
}
room_goto(rm_start);