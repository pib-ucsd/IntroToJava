if(global.paused){
	exit;
}
switch(scr_check_answer()) {
	case -1: show_debug_message("no box selected"); break;
	case 0: show_debug_message("answer incorrect"); break;
	case 1: 
		show_debug_message("answer correct"); 
		
		// "delete" this white box
		whiteBoxIds[currentWhiteBoxId] = -1;
		
		// if more white boxes exits, move on to next one
		if (instance_exists(o_cal_demo2_whiteBox)){			
			// get the next index (wrap around)
			while (whiteBoxIds[currentWhiteBoxId] == -1)
				currentWhiteBoxId = (currentWhiteBoxId+1)%numOfWhiteBoxs;
			// perform the press event
			with(whiteBoxIds[currentWhiteBoxId])
				event_perform(ev_mouse, ev_left_press);
		}
		
		break;
}

if(!instance_exists(o_cal_demo2_whiteBox)){
	o_cal_chlng1_prompts.alarm[0] = -1;
	o_cal_chlng1_prompts.delay = -1;
	o_cal_chlng1_prompts.prompt = "Good job! Hit the green arrow below to move on.";
	nextArrow = instance_create_depth(1696, 680, -1500,o_cal_demo2_arrow_);
	nextArrow.image_xscale = .5;
	nextArrow.image_yscale = .6;
	instance_create_depth(1475, 689, -1500, o_run);
}



/*
if((keyboard_string + aft) == target || string_replace_all(keyboard_string + aft, " ", "") == string_replace_all(target, " ", "")){
	instance_destroy(global.selectedID);
	str = "";
	keyboard_string = "";
	aft = "";
	target = false;
	feedback = "";
	global.selectedID = 0;
	
	
	
}
else if( target == false){ 
	feedback = "Click a blank space to check if your answer fits!"
} else if(string_count(";", target)==1 and string_count(";",keyboard_string + aft) != 1){
	feedback = "Did you remember the semicolon?"
} else if(string_count("\"", target) != string_count("\"",keyboard_string + aft)){
	feedback = "Did you have the right number of quotes (\")?"
} else if(string_count("(", target) != string_count("(",keyboard_string + aft) || string_count(")", target) != string_count(")",keyboard_string + aft)){
	feedback = "Double check your parentheses!"
} else if(string_count("<", target) != string_count(">",keyboard_string + aft) || string_count(">", target) != string_count(">",keyboard_string + aft)){
	feedback = "Did you use the wrong comparison operator?"
} else if(string_lower(target) == string_lower(keyboard_string + aft)){
	feedback = "Double check your capitalization!"
} else if(string_replace_all(target, " ", "") == string_replace_all(keyboard_string + aft, " ", "")){
	feedback = "Double check your spacing!"
} //else if(string_lettersdigits(target) == string_lettersdigits(keyboard_string + aft)){
	//feedback = "Double check your punctuation!"
//} behavior not as expected
else {
	var types = ["int", "double", "char", "String"];
	var go = true;
	for(var i=0; i<4; i++){
		if(string_count(types[i], target)==1 and string_count(types[i],keyboard_string + aft)!=1){
			feedback = "Did you declare the type of variable?"
			go = false;
		}
	}
	if(go){
		feedback = "Try again!";
	}
}*/