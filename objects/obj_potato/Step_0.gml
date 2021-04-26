if(global.paused){
	exit;
}
scr_detect_key();	// initializes up/down keys and space bar
scr_ground_check();	// listens for when space and up/down keys are pressed
scr_jump_check();	// listens for when player is jumping
scr_collision_check();	// prevents player from going inside obj_block
scr_set_sprite();	// set animations of player depending on if standing, jumping, ducking