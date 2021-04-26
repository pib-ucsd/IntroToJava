function scr_set_sprite() {
	// set shield sprites according to key press (WASD)

	if (waterKey) {
	        if (isWater) {
	                sprite_index = spr_potato;
	                isWater = true;
	        } else if (!isWater && sprite_index == spr_water_shield1) {
	                sprite_index = spr_potato;
				
	        } else {
	                sprite_index = spr_water_shield1;
	                isWater = false;
	        }
	}

	if (airKey) {
	        if (isAir) {
	                sprite_index = spr_potato;
	                isAir = true;
	        } else if (!isAir && sprite_index == spr_air_shield1) {
	                sprite_index = spr_potato;
	        } else {
	                sprite_index = spr_air_shield1;
	                isAir = false;
	        }
	}

	if (earthKey) {
	        if (isEarth) {
	                sprite_index = spr_potato;
	                isEarth = true;
	        } else if (!isEarth && sprite_index == spr_earth_shield1) {
	                sprite_index = spr_potato;
	        } else {
	                sprite_index = spr_earth_shield1;
	                isEarth = false;
	        }
	}

	if (fireKey) {
	        if (isFire) {
	                sprite_index = spr_potato;
	                isFire = true;
	        } else if (!isFire && sprite_index == spr_fire_shield1) {
	                sprite_index = spr_potato;
	        } else {
	                sprite_index = spr_fire_shield1;
	                isFire = false;
	        }
	}


}
