if(global.pausedMCQ){
	exit;
}
global.rmnum++;
global.scenenum++;
global.mc++;
room_goto_next();
instance_destroy();