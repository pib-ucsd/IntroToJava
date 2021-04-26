function scr_ground_check() {
	// when we're touching the ground
	if (place_meeting(x, y+1, obj_block)) {
	        vspd = 0;
	        jumping = false;
	        falling = false;

	        // if player wants to jump
	        if (jumpKey || jumpKeyAlt) {
	                jumping = true;
	                vspd = -jspd;
	        }
	}
	// not touching ground
	else {
	        if (vspd < termVelocity) {
				if(!falling){
	                vspd += grav;
				}
				else{
					vspd += fgrav;
				}
				
	        }

	        if (sign(vspd) == 1) {
	                falling = true;
	        }
	}



}
