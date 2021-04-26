room_goto(rm_start);
//game_save("game_finished.dat");
if(instance_exists(o_menu)){
	instance_destroy(o_menu);
}
if(instance_exists(o_notebook_widget)){
	instance_destroy(o_notebook_widget);
}