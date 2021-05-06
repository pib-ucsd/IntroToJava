/// @description Insert description here
// You can write your code in this editor


if ( point_in_rectangle(mouse_x, mouse_y, x, y, x+targetWidth, y+targetHeight)){
	
	show_debug_message("yoho");
	show_debug_message(scenenum);
	show_debug_message(dia);
	
	if (scenenum != undefined){
		global.scenenum = scenenum; 
		global.rmnum = rmInd;
		global.dia = dia;
	}
	
	show_debug_message("going to room");
	room_goto(rmInd);
}