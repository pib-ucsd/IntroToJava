/// @description trigger fade on mouse click
// You can write your code in this editor
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
	global.paused = false;
	window_set_cursor(cr_default);
}