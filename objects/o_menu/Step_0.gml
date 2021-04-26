if(room == rm_start || room == rm_potat || room == rm_victory || room == rm_scene5_2 || room == rm_game_end){
	visible = false;
}
else if(!visible){
	visible = true;
}
if(room == rm_game && x != xPosAlt){
	x = xPosAlt;
}
else if(room != rm_game && x != xPos){
	x = xPos;
}