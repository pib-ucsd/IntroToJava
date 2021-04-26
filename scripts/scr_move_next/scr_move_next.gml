///scr_move_next(room,forward)
function scr_move_next(argument0, argument1) {
	//
	//string room: should accept built in variable 'room'
	//bool forward: true if move forward, false if backwards
	//

	var roomInd = argument0;
	var forward = argument1;
	var name = room_get_name(roomInd);
	if(string_pos("rm_scene", name) || string_pos("rm_opening_dialogue", name)){
		scr_move(forward, true);
		show_debug_message(string(name) + "1" + " " + string(string_pos("rm_scene", name)) + " " + string(string_pos("rm_opening_dialogue", name)));
	}
	else if(string_pos("rm_challenge", name)){
		scr_move(forward, false);
		show_debug_message(string(name) + "2" + " " + string(string_pos("rm_challenge", name)));
	}
	else if(string_pos("rm_enter_computer", name)){
		if(forward){
			global.rmnum ++;
			room_goto_next();
		}
		else{
			global.scenenum --;
			global.rmnum --;
			room_goto_previous();
		}
	}
	else if(string_pos("rm_not2", name)){
		return;
	}
	else{
		scr_move(forward, false);
		show_debug_message(string(name) + "3");
	}



}
