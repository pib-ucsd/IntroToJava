if(global.paused){
	exit;
}
if(!mouse_clicked) {
	instance_create_depth(0, 0, 100, obj_fade);
	mouse_clicked = true;
}