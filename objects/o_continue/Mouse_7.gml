if(global.paused){
	exit;
}
	instance_create_depth(0, 0, 100, obj_fade);
	instance_destroy();
	window_set_cursor(cr_default);
/*if(!mouse_clicked) {
	instance_create_depth(0, 0, 100, obj_fade);
	mouse_clicked = true;
}*/