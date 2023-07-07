function scr_check_answer() {
	
	if(!global.selectedID){
		scr_answer_feedback(false);
		return -1;
	}
	answers = global.answers[? global.selectedID];
	if(is_array(answers)){
		//show_debug_message("is array");
		for(var i = 0; i < array_length(answers); i++) {
			if(string_replace_all(keyboard_string + aft, " ", "") == string_replace_all(answers[i], " ", "")) {
				instance_destroy(global.selectedID);
				str = "";
				keyboard_string = "";
				aft = "";
				target = false;
				feedback = "";
				global.selectedID = 0;
				return 1;
				//show_debug_message("arr if " + string(i));
			}
			else {
				//show_debug_message("arr else " + string(i));
				var fdbk = feedback;
				scr_answer_feedback(answers[i]);
				show_debug_message(feedback);
				feedback = fdbk;
			}
		}
		scr_answer_feedback(answers[0]);
		return 0;
	}
	else {
		//show_debug_message("is not array");
		if(string_replace_all(keyboard_string + aft, " ", "") == string_replace_all(answers, " ", "")) {
			instance_destroy(global.selectedID);
			str = "";
			keyboard_string = "";
			aft = "";
			target = false;
			feedback = "";
			global.selectedID = 0;
			return 1;
		}
		else {
			//show_debug_message("not arr else");
			scr_answer_feedback(answers);
			return 0;
		}
	}


}
