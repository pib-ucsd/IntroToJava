if(global.paused){
	exit;
}
global.rmnum++;
if(instance_exists(o_run)){
	instance_destroy(o_run);
}
room_goto_next();
instance_destroy();
scr_save();
window_set_cursor(cr_default);