/// @description Insert description here
// You can write your code in this editor


if ( point_in_rectangle(mouse_x, mouse_y, x, y, x+targetWidth, y+targetHeight)){
	
	if (scenenum != undefined){
		global.scenenum = scenenum; 
		global.rmnum = rmInd;
		global.dia = 0;
		if(scenenum != 1) {
			with(o_notebook_widget) {
				visible = true;
				global.notebookWidgetVisible = true;
			}
		}
	}
	
	
	
	room_goto(rmInd);
}