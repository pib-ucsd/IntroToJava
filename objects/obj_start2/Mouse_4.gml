if(global.paused) {
	exit;
}
/// @description trigger fade on mouse click
// You can write your code in this editor
/*if(file_exists("saveFile.dat")){
	if(!instance_exists(o_confirm)){
		instance_create_depth(544, 672, depth - 1, o_confirm);
		instance_create_depth(1184, 672, depth - 1, o_cancel);
		global.paused = true;
		exit;
	}
}*/
if(flg){
	// start the fade that changes to the next room
	instance_create_layer(0, 0, "inst_fade", obj_fade);
	flg = false;
	
	//create notebook widget and home instance
	instance_create_depth(1762, 45, 0, o_notebook_widget);
	instance_create_depth(1840, 16, 0, o_menu);
	o_menu.image_xscale = .68;
	o_menu.image_yscale = .68;
	
	// make the potat sprite not have a skin
	// scr_setup_no_skin_potat();
	// ^ DO NOT DO
	window_set_cursor(cr_default);
	
}