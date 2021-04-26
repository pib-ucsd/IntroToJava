if(global.paused){
	exit;
}
if(!point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_width,y+sprite_height)){
	instance_destroy();
	o_toc_bars.toc = false;
}