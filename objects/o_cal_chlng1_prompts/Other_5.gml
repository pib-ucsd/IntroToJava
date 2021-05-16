if(ds_exists(global.consoleQueue, ds_type_queue) && !room_persistent){
	show_debug_message("Room end: Leftover console text:");
	while(!ds_queue_empty(global.consoleQueue)){
		show_debug_message(ds_queue_dequeue(global.consoleQueue));
	}
}
window_set_cursor(cr_default);