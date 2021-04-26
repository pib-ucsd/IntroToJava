function scr_load_vars() {
	ds_map_secure_load("chlg_ans.dat");

	if(global.print_to_console_button) {
		instance_create_depth(1475, 689, -1500, o_run);
	}

	global.answers = ds_queue_create();
	if(global.console_print_array != "no print") {
		var size = array_length_1d(global.console_print_array);
		for(var i = 0; i < size; i++) {
			ds_queue_enqueue(global.answers, global.console_print_array[i]);
		}
	}

	keyboard_string = global.kbstring;


}
