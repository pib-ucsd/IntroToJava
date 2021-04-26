/// @description Insert description here
// You can write your code in this editor
show_debug_message("Leftover console text:");
if(ds_exists(global.consoleQueue, ds_type_queue)){
	while(!ds_queue_empty(global.consoleQueue)){
		show_debug_message(ds_queue_dequeue(global.consoleQueue));
	}
}
