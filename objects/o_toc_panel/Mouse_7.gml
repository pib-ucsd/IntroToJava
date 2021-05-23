if(global.paused){
	exit;
}
var pg = 0;
var yOff = 0;
var xOff = string_width(topics[pg]);
//check if mouse clicked on the first 'topic box'
var found = point_in_rectangle(mouse_x, mouse_y, xP, yP + yOff, xP + xOff, yP + yOff + string_height(topics[pg]));
pg++;
while((!found && pg-1 < array_length(img)) && (img[pg] <= global.pageMax)){
	//condition 1: img[++pg] is the page index of the notebook page
	//condition 2: check to see if code has found where user pressed and not out of range of img array
	yOff += 80;
	xOff = string_width(topics[pg]);
	found = point_in_rectangle(mouse_x, mouse_y, xP, yP + yOff, xP + xOff, yP + yOff + string_height(topics[pg]));
	pg++;
}
if(found){
	show_debug_message("found");
	o_not.imgind = img[pg-1];
	if(instance_exists(o_next) && pg != global.pageMax){
		o_not.next_button = noone;
		instance_destroy(o_next);
	}
}