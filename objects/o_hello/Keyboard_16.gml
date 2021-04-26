/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_space)) {
	if(keyboard_check_pressed(vk_right)) {
		scr_move_next(room, true);
	}
	else if(keyboard_check_pressed(vk_left)){
		scr_move_next(room, false);
	}
}