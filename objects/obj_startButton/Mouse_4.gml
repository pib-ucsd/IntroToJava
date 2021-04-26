if(global.paused){
	exit;
}
/// @description trigger fade on mouse click
// You can write your code in this editor
if(flg){
	instance_create_layer(0, 0, "inst_fade", obj_fade);
	flg = false;
}