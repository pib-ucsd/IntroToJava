if(keyboard_check(vk_space)) {
	if(keyboard_check_pressed(vk_backspace)) {
		if(instance_exists(o_cal_demo2_whiteBox)){
			instance_destroy(o_cal_demo2_whiteBox);
			o_cal_demo2_ansBox.alarm[1] = 1;
			window_set_cursor(cr_default);
		}
	}
}