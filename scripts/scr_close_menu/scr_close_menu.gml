function scr_close_menu() {
	o_menu.menu_open = false;
	// make the buttons go away
	if(instance_exists(o_menu.menu_home)){
		instance_destroy(o_menu.menu_home);
		//instance_destroy(o_menu.menu_save);
		instance_destroy(o_menu.menu_mute);
	}


}
