if(global.paused){
	speed = 0;
	image_speed = 0;
	exit;
}
/// @description move potato into view
// You can write your code in this editor

if(point_distance(obj_potato_walking.x, obj_potato_walking.y, 350, 196) > 1){
	image_speed = 1;
	move_towards_point(350, 196, 3);
}else{
	speed = 0;
	instance_destroy();
	
	instance_create_layer(1788, 976, "inst_dialogue", o_bckbtn);
	instance_create_layer(1808, 976, "inst_dialogue", o_nxtbtn);
	instance_create_layer(32, 496, "inst_dialogue", o_dialogue);
	
	global.scenenum = 0;
}
