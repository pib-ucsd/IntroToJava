/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("v")) || keyboard_check_pressed(ord("V"))) {
	if(clipboard_has_text()) {
		var str = keyboard_string;
		keyboard_string = keyboard_string + clipboard_get_text();
		if(string_length(keyboard_string) + string_length(aft) > 173) {
			keyboard_string = str;
		}
	}
}