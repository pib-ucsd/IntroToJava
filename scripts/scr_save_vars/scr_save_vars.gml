/// save dynamic data structures into arrays for saving
function scr_save_vars() {
	//global.answers_array_key[0] = "none";
	//global.answers_array_value[0] = "none";
	//if(ds_map_size(global.answers) > 0){
	//	for(var i = 0; i < ds_map_size(global.answers); i++) {
	//		global.answers_array_key[i] = ds_map
	//	}
	//}

	global.console_print_array = "no print";
	if(ds_exists(global.consoleQueue, ds_type_queue)) {
		var size = ds_queue_size(global.consoleQueue);
		if(size > 0) {
			global.console_print_array[size - 1] = ds_queue_tail(global.consoleQueue);
			for(var i = 0; i < size - 1; i++){
				global.console_print_array[i] = ds_queue_dequeue(global.consoleQueue);
			}
		}
	}
	//global.dialogue_events_array[0] = 0;
	//var size = ds_queue_size(global.);
	//if(size > 0) {
	//	global.console_print_array[size - 1] = ds_queue_tail(global.consoleQueue);
	//	for(var i = 0; i < size - 1; i--){
	//		global.console_print_array[i] = ds_queue_head(global.consoleQueue);
	//	}
	//}

	//global.notebook_index_array[0] = 0;
	//var size = ds_queue_size(global.consoleQueue);
	//if(size > 0) {
	//	global.console_print_array[size - 1] = ds_queue_tail(global.consoleQueue);
	//	for(var i = 0; i < size - 1; i--){
	//		global.console_print_array[i] = ds_queue_head(global.consoleQueue);
	//	}
	//}

	global.print_to_console_button = false;
	if(instance_exists(o_run)) {
		global.print_to_console_button = true;
	}

	if(ds_exists(global.answers, ds_type_map)){
		ds_map_secure_save(global.answers, "chlg_ans.dat");
	}

	global.kbstring = keyboard_string;


}
