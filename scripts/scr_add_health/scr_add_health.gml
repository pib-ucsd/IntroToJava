function scr_add_health(argument0) {
	var maxHealth = argument0;
	if (health < maxHealth - 5) {
		health += 5;
	}
	else{
		health = maxHealth;
	}


}
