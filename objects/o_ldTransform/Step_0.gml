if(image_speed){
	if(global.paused){
		image_speed = 0;
		exit;
	}
}
else {
	if(global.paused) {
		image_speed = 1;
	}
}
// ^ im aware that pausing like this is inefficient, but it is a quick
// fix to the problem that needs to be fixed eventually

//if(image_index >= image_number - 1){
//	room_goto_next();
//}
// ^ testing out the animation end event