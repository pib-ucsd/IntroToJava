// when element collides with player, call scr_element_collision
// and increase enemy's health by 5% if not at 100%
with (obj_health) {
        scr_element_collision()

        if (health <= 0) {
			if(global.game_finished) {
				room_goto(rm_start);
			}
			else{
		        room_goto_next();
			}
        }
}

// destroy element when colliding with player
instance_destroy();
