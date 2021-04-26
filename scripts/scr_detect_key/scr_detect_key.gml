function scr_detect_key() {
	// initializes up/down keys and space bar
	jumpKey = keyboard_check_pressed(vk_space);
	jumpKeyAlt = keyboard_check_pressed(vk_up);

	// initializes WASD keys for defense elements
	waterKey = keyboard_check_pressed(ord("W"));
	airKey = keyboard_check_pressed(ord("A"));
	earthKey = keyboard_check_pressed(ord("S"));
	fireKey = keyboard_check_pressed(ord("D"));



}
